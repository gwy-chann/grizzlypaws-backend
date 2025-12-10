<?php
// Disable error display, only return JSON
error_reporting(0);
ini_set('display_errors', 0);

include "db.php";
header('Content-Type: application/json');

try {
    $today = date('Y-m-d');
    
    // Get today's orders count
    $ordersQuery = "SELECT COUNT(*) as count FROM transactions WHERE DATE(created_at) = ? AND order_status != 'cart'";
    $stmt = $conn->prepare($ordersQuery);
    $stmt->bind_param("s", $today);
    $stmt->execute();
    $todayOrders = $stmt->get_result()->fetch_assoc()['count'];
    
    // Get today's sales total
    $salesQuery = "SELECT COALESCE(SUM(total_amount), 0) as total FROM transactions WHERE DATE(created_at) = ? AND order_status != 'cart'";
    $stmt = $conn->prepare($salesQuery);
    $stmt->bind_param("s", $today);
    $stmt->execute();
    $todaySales = $stmt->get_result()->fetch_assoc()['total'];
    
    // Get low stock products (stock < 10)
    $lowStockQuery = "SELECT COUNT(DISTINCT product_id) as count FROM product_variations WHERE stock < 10 AND stock > 0";
    $lowStockResult = $conn->query($lowStockQuery);
    $lowStockCount = $lowStockResult->fetch_assoc()['count'];
    
    // Get new users today
    $newUsersQuery = "SELECT 
        customer_id,
        CONCAT(first_name, ' ', last_name) as name,
        email,
        created_at
    FROM customers 
    WHERE DATE(created_at) = ? 
    ORDER BY created_at DESC 
    LIMIT 10";
    $stmt = $conn->prepare($newUsersQuery);
    $stmt->bind_param("s", $today);
    $stmt->execute();
    $newUsers = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    
    // Get preparing orders count
    $preparingQuery = "SELECT COUNT(*) as count FROM transactions WHERE order_status = 'preparing'";
    $preparingResult = $conn->query($preparingQuery);
    $preparingCount = $preparingResult->fetch_assoc()['count'];
    
    // Get low stock product details
    $lowStockDetailsQuery = "SELECT 
        p.id,
        p.name,
        pv.stock,
        pv.unit
    FROM product_variations pv
    JOIN product p ON pv.product_id = p.id
    WHERE pv.stock < 10 AND pv.stock > 0
    ORDER BY pv.stock ASC
    LIMIT 5";
    $lowStockDetails = $conn->query($lowStockDetailsQuery)->fetch_all(MYSQLI_ASSOC);
    
    // Get recent reviews count (pending or needing attention)
    $reviewsQuery = "SELECT COUNT(*) as count FROM reviews WHERE status = 'pending' OR status = 'active'";
    $reviewsResult = $conn->query($reviewsQuery);
    $pendingReviews = $reviewsResult ? $reviewsResult->fetch_assoc()['count'] : 0;
    
    echo json_encode([
        'success' => true,
        'data' => [
            'today_orders' => (int)$todayOrders,
            'today_sales' => (float)$todaySales,
            'low_stock_count' => (int)$lowStockCount,
            'new_users_today' => count($newUsers),
            'new_users' => $newUsers,
            'preparing_orders' => (int)$preparingCount,
            'low_stock_details' => $lowStockDetails,
            'pending_reviews' => (int)$pendingReviews
        ]
    ]);
    
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
