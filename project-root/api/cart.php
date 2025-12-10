<?php
include "db.php";
session_start();

header('Content-Type: application/json');
$method = $_SERVER['REQUEST_METHOD'];


if ($method === "DELETE") {
    $product_id = $_GET['product-id'] ?? null;
    $variation_id = $_GET['variation-id'] ?? null;
    $customer_id = $_GET['customer-id'] ?? null;
    $item_ids = $_GET['item-ids'] ?? null;

    if (!$customer_id) {
        echo json_encode([
            "status" => "error",
            "message" => "Customer ID is required"
        ]);
        exit();
    }

    if ($item_ids) {
        // Parse comma-separated IDs or JSON array
        if (is_string($item_ids)) {
            $ids_array = json_decode($item_ids, true) ?? explode(',', $item_ids);
        } else {
            $ids_array = (array) $item_ids;
        }

        // Validate and sanitize IDs
        $ids_array = array_filter(array_map('intval', (array) $ids_array));

        if (empty($ids_array)) {
            echo json_encode([
                "status" => "error",
                "message" => "No valid item IDs provided"
            ]);
            exit();
        }   

        // Create placeholders for prepared statement
        $placeholders = implode(',', array_fill(0, count($ids_array), '?'));
        
        $sql = "DELETE ci
                FROM cart_items ci
                JOIN carts c ON ci.cart_id = c.id
                WHERE ci.id IN ($placeholders)
                AND c.customer_id = ?";

        $stmt = $conn->prepare($sql);
        
        // Bind parameters dynamically
        $types = str_repeat('i', count($ids_array)) . 'i';
        $params = array_merge($ids_array, [$customer_id]);
        $stmt->bind_param($types, ...$params);

        if ($stmt->execute()) {
            $affected_rows = $stmt->affected_rows;
            echo json_encode([
                "status" => "success",
                "message" => "Items deleted successfully",
                "deleted_count" => $affected_rows
            ]);
        } else {
            echo json_encode([
                "status" => "error",
                "message" => "Failed to delete items"
            ]);
        }

        exit();
    }

    if (!$product_id) {
        $sql = "DELETE ci
                FROM cart_items ci
                JOIN carts c ON ci.cart_id = c.id
                WHERE c.customer_id = ?;
                ";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $customer_id);

        if ($stmt->execute()) {
            echo json_encode([
                "status" => "success",
                "message" => "User cart cleared successfully"
            ]);
        } else {
            echo json_encode([
                "status" => "error",
                "message" => "Failed to clear cart"
            ]);
        }

        exit();
    }

    // ✅ Delete ONLY the user's item
    $sql = "DELETE ci
            FROM cart_items ci
            JOIN carts c ON ci.cart_id = c.id
            WHERE ci.product_id = ?
            AND ci.variation_id = ?
            AND c.customer_id = ?;
            ";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("iii", $product_id, $variation_id, $customer_id);

    if ($stmt->execute()) {
        echo json_encode([
            "status" => "success",
            "message" => "Item deleted successfully"
        ]);
    } else {
        echo json_encode([
            "status" => "error",
            "message" => "Delete failed"
        ]);
    }
}

if ($method === 'GET') {


    $user_id = $_GET['customer-id'] ?? null;


    $sql = "
     SELECT
        c.id, 
        c.quantity,
        p.name,
        pv.unit,
        pv.price,
        p.image1,
        pv.product_id,
        c.variation_id,
        ct.customer_id,
        (pv.price * c.quantity) AS total_price
    FROM cart_items c
    JOIN product_variations pv ON c.variation_id = pv.id
    JOIN product p ON p.id = pv.product_id
    JOIN carts ct ON ct.id = c.cart_id
    JOIN customers cus ON ct.customer_id = cus.customer_id
    WHERE cus.customer_id = '$user_id'
    ";

    $result = $conn->query($sql);

    $cartItems = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $cartItems[] = $row;
        }
    }

    // ✅ Query to get grand total
    $grandTotalQuery = "
        SELECT SUM(pv.price * c.quantity) AS grand_total
            FROM cart_items c
            JOIN product_variations pv ON pv.id = variation_id
            JOIN carts ct ON ct.id = c.cart_id
        WHERE ct.customer_id = '$user_id';
        ";

    $grandResult = $conn->query($grandTotalQuery);
    $grandRow = $grandResult->fetch_assoc();

    // ✅ Final JSON Response
    echo json_encode([
        "status" => "success",
        "items" => $cartItems,
        "grand_total" => $grandRow["grand_total"] ?? 0
    ]);
}

if ($method === "PUT") {
    $input = file_get_contents('php://input');
    $data = json_decode($input, true);

    $product_id   = $data['product-id'] ?? null;
    $variation_id = $data['variation-id'] ?? null;
    $customer_id  = $data['customer-id'] ?? null;
    $action       = $data['action'] ?? null;

    // if (!$product_id || !$variation_id || !$customer_id || !$action) {
    //     echo json_encode([
    //         "status" => "error",
    //         "message" => "Missing required parameters"
    //     ]);
    //     exit();
    // }

    
    // ✅ Choose Query Based on Action
    if ($action === "plus") {
        $sql = "
            UPDATE cart_items ci
            JOIN carts c ON ci.cart_id = c.id
            SET ci.quantity = ci.quantity + 1
            WHERE ci.variation_id = ?
            AND c.customer_id = ?
            AND ci.product_id = ?
           
        ";
    } elseif ($action === "minus") {
        $sql = "
            UPDATE cart_items ci
            JOIN carts c ON ci.cart_id = c.id
            SET ci.quantity = ci.quantity - 1
            WHERE ci.variation_id = ?
            AND c.customer_id = ?
            AND ci.product_id = ?
            AND ci.quantity > 1
        ";
    } else {
        echo json_encode([
            "status" => "error",
            "message" => "Invalid action"
        ]);
        exit();
    }

    // ✅ Execute Securely
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("iii", $variation_id, $customer_id, $product_id);

    if ($stmt->execute()) {
        echo json_encode([
            "status" => "success",
            "message" => "Quantity updated"
        ]);
    } else {
        echo json_encode([
            "status" => "error",
            "message" => "Update failed"
        ]);
    }


}

if ($method === 'POST') {
    $user_id      = isset($_POST['user_id']) ? $_POST['user_id'] : null;
    $product_id   = $_POST['product_id'];
    $variation_id = isset($_POST['variation_id']) ? $_POST['variation_id'] : null;
    $quantity     = isset($_POST['quantity']) ? $_POST['quantity'] : 1;
    $final_price     = isset($_POST['final_price']) ? $_POST['final_price'] : 1;
    // ✅ GUEST SESSION
    if (!$user_id && !isset($_SESSION['cart_session'])) {
        $_SESSION['cart_session'] = uniqid("cart_", true);
    }
    $session_id = isset($_SESSION['cart_session']) ? $_SESSION['cart_session'] : null;
    // C:\xampp\htdocs\grizzlypaws-backend\project-root\api\add_to_cart.php
    // ✅ GET STOCK & PRICE (NO get_result)
    // $stockSql = "
    // SELECT 
    //     v.stock,
    //     v.price
    // FROM product p
    // LEFT JOIN product_variations v ON v.id = ?
    // WHERE p.id = ?
    // ";

    $stockSql = "
SELECT 
    v.stock,
    v.price
FROM product_variations v
WHERE v.id = ?
";

    $stockStmt = $conn->prepare($stockSql);
    $stockStmt->bind_param("i", $variation_id);
    $stockStmt->execute();
    $stockStmt->bind_result($product_stock, $final_stock);
    $stockStmt->fetch();
    $stockStmt->close();

    if ($final_stock < $quantity) {
        echo json_encode(["status" => "error", "message" => "Out of stock"]);
        exit;
    }

    // ✅ FIND OR CREATE CART (NO get_result)
    $cartSql = "
SELECT id FROM carts 
WHERE (customer_id = ? OR session_id = ?) AND status = 'active'
LIMIT 1
";

    $cartStmt = $conn->prepare($cartSql);
    $cartStmt->bind_param("is", $user_id, $session_id);
    $cartStmt->execute();
    $cartStmt->bind_result($cart_id);
    $cartStmt->fetch();

    if (!$cart_id) {
        $cartStmt->close();

        $insertCart = "
        INSERT INTO carts (customer_id, session_id) 
        VALUES (?, ?)
    ";
        $stmt = $conn->prepare($insertCart);
        $stmt->bind_param("is", $user_id, $session_id);
        $stmt->execute();
        $cart_id = $stmt->insert_id;
        $stmt->close();
    } else {
        $cartStmt->close();
    }

    // ✅ ADD OR UPDATE CART ITEM
    $itemSql = "
INSERT INTO cart_items (cart_id, product_id, variation_id, quantity, price)
VALUES (?, ?, ?, ?, ?)
ON DUPLICATE KEY UPDATE quantity = quantity + ?
";

    $itemStmt = $conn->prepare($itemSql);
    $itemStmt->bind_param(
        "iiiidi",
        $cart_id,
        $product_id,
        $variation_id,
        $quantity,
        $final_price,
        $quantity
    );
    $itemStmt->execute();
    $itemStmt->close();

    echo json_encode([
        "status" => "success",
        "message" => "Item added to cart",
        "cart_id" => $cart_id
    ]);
}
