<?php
// Disable error display, only return JSON
error_reporting(0);
ini_set('display_errors', 0);

include "db.php";
header('Content-Type: application/json');

try {
    $method = $_SERVER['REQUEST_METHOD'];

    if ($method === 'GET') {
        $order_status = isset($_GET['order_status']) ? $_GET['order_status'] : null;
        $payment_status = isset($_GET['payment_status']) ? $_GET['payment_status'] : null;
        $search = isset($_GET['search']) ? $_GET['search'] : null;
        $limit = isset($_GET['limit']) ? intval($_GET['limit']) : 50;
        $offset = isset($_GET['offset']) ? intval($_GET['offset']) : 0;

        // Check if updated_at column exists
        $columnsCheck = $conn->query("SHOW COLUMNS FROM transactions LIKE 'updated_at'");
        $hasUpdatedAt = $columnsCheck->num_rows > 0;

        // Build query to get transactions with product details
        $updatedAtField = $hasUpdatedAt ? "t.updated_at," : "t.created_at as updated_at,";
        
        $query = "
            SELECT 
                t.id,
                t.customer_id,
                t.order_number,
                t.total_amount,
                t.payment_method,
                t.payment_status,
                t.order_status,
                t.created_at,
                $updatedAtField
                c.first_name,
                c.last_name,
                c.email,
                c.mobile_number,
                c.address,
                GROUP_CONCAT(DISTINCT p.name SEPARATOR ', ') as product_names,
                GROUP_CONCAT(DISTINCT cat.name SEPARATOR ', ') as category_names,
                GROUP_CONCAT(DISTINCT sc.name SEPARATOR ', ') as subcategory_names
            FROM transactions t
            LEFT JOIN customers c ON t.customer_id = c.customer_id
            LEFT JOIN transaction_items ti ON t.id = ti.transaction_id
            LEFT JOIN product p ON ti.product_id = p.id
            LEFT JOIN category cat ON p.category_id = cat.id
            LEFT JOIN sub_categories sc ON p.sub_category_id = sc.id
            WHERE 1=1
        ";

        $params = [];
        $types = "";

        // Only show orders that are not in 'cart' status (checkout and beyond)
        $query .= " AND t.order_status != 'cart'";

        if ($order_status && $order_status !== 'all') {
            $query .= " AND t.order_status = ?";
            $params[] = $order_status;
            $types .= "s";
        }

        if ($payment_status && $payment_status !== 'all') {
            $query .= " AND t.payment_status = ?";
            $params[] = $payment_status;
            $types .= "s";
        }

        if ($search) {
            $query .= " AND (t.order_number LIKE ? OR p.name LIKE ? OR c.first_name LIKE ? OR c.last_name LIKE ?)";
            $searchParam = "%$search%";
            $params[] = $searchParam;
            $params[] = $searchParam;
            $params[] = $searchParam;
            $params[] = $searchParam;
            $types .= "ssss";
        }

        $query .= " GROUP BY t.id ORDER BY t.created_at DESC LIMIT ? OFFSET ?";
        $params[] = $limit;
        $params[] = $offset;
        $types .= "ii";

        $stmt = $conn->prepare($query);
        
        if (!$stmt) {
            throw new Exception("Prepare failed: " . $conn->error);
        }
        
        if (!empty($params)) {
            $stmt->bind_param($types, ...$params);
        }
        
        if (!$stmt->execute()) {
            throw new Exception("Execute failed: " . $stmt->error);
        }
        
        $result = $stmt->get_result();
        $orders = $result->fetch_all(MYSQLI_ASSOC);

        // Get total count for pagination
        $countQuery = "SELECT COUNT(DISTINCT t.id) as total FROM transactions t WHERE t.order_status != 'cart'";
        $countResult = $conn->query($countQuery);
        $totalRow = $countResult->fetch_assoc();
        $totalCount = $totalRow ? $totalRow['total'] : 0;

        echo json_encode([
            'success' => true,
            'data' => $orders,
            'total' => $totalCount,
            'page' => $offset > 0 ? ceil($offset / $limit) + 1 : 1,
            'total_pages' => $limit > 0 ? ceil($totalCount / $limit) : 1
        ]);
    } else {
        echo json_encode([
            'success' => false,
            'message' => 'Invalid request method'
        ]);
    }
} catch (Exception $e) {
    echo json_encode([
        'success' => false,
        'message' => 'Error: ' . $e->getMessage()
    ]);
}

if (isset($conn)) {
    $conn->close();
}
?>
