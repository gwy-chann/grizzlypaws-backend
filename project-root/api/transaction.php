<?php
include "db.php";

header('Content-Type: application/json');
$method = $_SERVER['REQUEST_METHOD'];

// Helper function to verify customer ownership
function verifyCustomerOwnership($conn, $transaction_id, $customer_id) {
    $stmt = $conn->prepare("SELECT id FROM transactions WHERE id = ? AND customer_id = ?");
    $stmt->bind_param("ii", $transaction_id, $customer_id);
    $stmt->execute();
    $result = $stmt->get_result();
    return $result->num_rows > 0;
}

// Helper function to send JSON response
function sendResponse($success, $message, $data = null, $code = 200) {
    http_response_code($code);
    echo json_encode([
        'success' => $success,
        'message' => $message,
        'data' => $data
    ]);
    exit;
}

// DELETE - Delete a transaction
if ($method === "DELETE") {
    $input = json_decode(file_get_contents('php://input'), true);
    
    if (!isset($input['transaction_id']) || !isset($input['customer_id'])) {
        sendResponse(false, 'Transaction ID and Customer ID are required.', null, 400);
    }
    
    $transaction_id = $input['transaction_id'];
    $customer_id = $input['customer_id'];
    
    // Verify ownership
    if (!verifyCustomerOwnership($conn, $transaction_id, $customer_id)) {
        sendResponse(false, 'Access denied. This transaction does not belong to you.', null, 403);
    }
    
    // Delete transaction items first
    $stmt = $conn->prepare("DELETE FROM transaction_items WHERE transaction_id = ?");
    $stmt->bind_param("i", $transaction_id);
    $stmt->execute();
    
    // Delete transaction
    $stmt = $conn->prepare("DELETE FROM transactions WHERE id = ? AND customer_id = ?");
    $stmt->bind_param("ii", $transaction_id, $customer_id);
    
    if ($stmt->execute()) {
        sendResponse(true, 'Transaction deleted successfully.');
    } else {
        sendResponse(false, 'Failed to delete transaction.', null, 500);
    }
}

// GET - Retrieve transactions
if ($method === 'GET') {
    if (!isset($_GET['customer_id'])) {
        sendResponse(false, 'Customer ID is required.', null, 400);
    }
    
    $customer_id = intval($_GET['customer_id']);
    $transaction_id = isset($_GET['transaction_id']) ? intval($_GET['transaction_id']) : null;
    $status = isset($_GET['status']) ? $_GET['status'] : null;
    $payment_method = isset($_GET['payment_method']) ? $_GET['payment_method'] : null;
    $payment_status = isset($_GET['payment_status']) ? $_GET['payment_status'] : null;
    $order_status = isset($_GET['order_status']) ? $_GET['order_status'] : null;
    $date_from = isset($_GET['date_from']) ? $_GET['date_from'] : null;
    $date_to = isset($_GET['date_to']) ? $_GET['date_to'] : null;
    $limit = isset($_GET['limit']) ? intval($_GET['limit']) : 50;
    $offset = isset($_GET['offset']) ? intval($_GET['offset']) : 0;
    
    // Get specific transaction with items
    if ($transaction_id) {
        if (!verifyCustomerOwnership($conn, $transaction_id, $customer_id)) {
            sendResponse(false, 'Access denied. This transaction does not belong to you.', null, 403);
        }
        
        // Get transaction details
        $stmt = $conn->prepare("SELECT * FROM transactions WHERE id = ? AND customer_id = ?");
        $stmt->bind_param("ii", $transaction_id, $customer_id);
        $stmt->execute();
        $transaction = $stmt->get_result()->fetch_assoc();
        
        // Get transaction items
        $stmt = $conn->prepare("SELECT * FROM transaction_items WHERE transaction_id = ?");
        $stmt->bind_param("i", $transaction_id);
        $stmt->execute();
        $items = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
        
        $transaction['items'] = $items;
        sendResponse(true, 'Transaction retrieved successfully.', $transaction);
    }
    
    // Get filtered list of transactions
    $query = "SELECT * FROM transactions WHERE customer_id = ?";
    $params = [$customer_id];
    $types = "i";
    
    if ($status) {
        $query .= " AND status = ?";
        $params[] = $status;
        $types .= "s";
    }
    
    if ($payment_method) {
        $query .= " AND payment_method = ?";
        $params[] = $payment_method;
        $types .= "s";
    }
    
    if ($payment_status) {
        $query .= " AND payment_status = ?";
        $params[] = $payment_status;
        $types .= "s";
    }
    
    if ($order_status) {
        $query .= " AND order_status = ?";
        $params[] = $order_status;
        $types .= "s";
    }
    
    if ($date_from) {
        $query .= " AND created_at >= ?";
        $params[] = $date_from;
        $types .= "s";
    }
    
    if ($date_to) {
        $query .= " AND created_at <= ?";
        $params[] = $date_to;
        $types .= "s";
    }
    
    $query .= " ORDER BY id DESC LIMIT ? OFFSET ?";
    $params[] = $limit;
    $params[] = $offset;
    $types .= "ii";
    
    $stmt = $conn->prepare($query);
    $stmt->bind_param($types, ...$params);
    $stmt->execute();
    $transactions = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    
    sendResponse(true, 'Transactions retrieved successfully.', $transactions);
}

// POST - Create or Update transaction
if ($method === 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);
    
    if (!$input) {
        sendResponse(false, 'Invalid JSON data.', null, 400);
    }
    
    if (!isset($input['customer_id'])) {
        sendResponse(false, 'Customer ID is required.', null, 400);
    }
    
    $customer_id = intval($input['customer_id']);
    $transaction_id = isset($input['transaction_id']) ? intval($input['transaction_id']) : null;
    
    // UPDATE existing transaction
    if ($transaction_id) {
        // Verify ownership
        if (!verifyCustomerOwnership($conn, $transaction_id, $customer_id)) {
            sendResponse(false, 'Access denied. This transaction does not belong to you.', null, 403);
        }
        
        $conn->begin_transaction();
        
        try {
            // Update transaction fields
            $order_number = isset($input['order_number']) ? $input['order_number'] : null;
            $total_amount = isset($input['total_amount']) ? $input['total_amount'] : null;
            $payment_method = isset($input['payment_method']) ? $input['payment_method'] : null;
            $payment_status = isset($input['payment_status']) ? $input['payment_status'] : null;
            $order_status = isset($input['order_status']) ? $input['order_status'] : null;
            
            $updates = [];
            $params = [];
            $types = "";
            
            if ($order_number !== null) {
                $updates[] = "order_number = ?";
                $params[] = $order_number;
                $types .= "s";
            }
            if ($total_amount !== null) {
                $updates[] = "total_amount = ?";
                $params[] = $total_amount;
                $types .= "d";
            }
            if ($payment_method !== null) {
                $updates[] = "payment_method = ?";
                $params[] = $payment_method;
                $types .= "s";
            }
            if ($payment_status !== null) {
                $updates[] = "payment_status = ?";
                $params[] = $payment_status;
                $types .= "s";
            }
            if ($order_status !== null) {
                $updates[] = "order_status = ?";
                $params[] = $order_status;
                $types .= "s";
            }
            
            if (!empty($updates)) {
                $query = "UPDATE transactions SET " . implode(", ", $updates) . " WHERE id = ? AND customer_id = ?";
                $params[] = $transaction_id;
                $params[] = $customer_id;
                $types .= "ii";
                
                $stmt = $conn->prepare($query);
                $stmt->bind_param($types, ...$params);
                $stmt->execute();
            }
            
            // Update transaction items if provided
            if (isset($input['items']) && is_array($input['items'])) {
                // Delete existing items
                $stmt = $conn->prepare("DELETE FROM transaction_items WHERE transaction_id = ?");
                $stmt->bind_param("i", $transaction_id);
                $stmt->execute();
                
                // Insert new items
                foreach ($input['items'] as $item) {
                    $variation_id = isset($item['variation_id']) ? $item['variation_id'] : null;
                    $subtotal = $item['quantity'] * $item['price'];
                    
                    $stmt = $conn->prepare("INSERT INTO transaction_items (transaction_id, product_id, variation_id, quantity, price, subtotal) VALUES (?, ?, ?, ?, ?, ?)");
                    $stmt->bind_param(
                        "iiiiddd",
                        $transaction_id,
                        $item['product_id'],
                        $variation_id,
                        $item['quantity'],
                        $item['price'],
                        $subtotal
                    );
                    $stmt->execute();
                }
            }
            
            $conn->commit();
            sendResponse(true, 'Transaction updated successfully.', ['transaction_id' => $transaction_id]);
            
        } catch (Exception $e) {
            $conn->rollback();
            sendResponse(false, 'Failed to update transaction: ' . $e->getMessage(), null, 500);
        }
    }
    
    // CREATE new transaction
    else {
        if (!isset($input['total_amount']) || !isset($input['items'])) {
            sendResponse(false, 'Missing required fields: total_amount, items.', null, 400);
        }
        
        $conn->begin_transaction();
        
        try {
            // Generate order number if not provided
            $order_number = isset($input['order_number']) ? $input['order_number'] : 'PET-' . time() . '-' . rand(1000, 9999);
            $total_amount = $input['total_amount'];
            $payment_method = isset($input['payment_method']) ? $input['payment_method'] : null;
            $payment_status = isset($input['payment_status']) ? $input['payment_status'] : 'pending';
            $order_status = isset($input['order_status']) ? $input['order_status'] : 'cart';
            
            // Insert transaction
            $stmt = $conn->prepare("INSERT INTO transactions (customer_id, order_number, total_amount, payment_method, payment_status, order_status) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->bind_param(
                "isdsss",
                $customer_id,
                $order_number,
                $total_amount,
                $payment_method,
                $payment_status,
                $order_status
            );
            $stmt->execute();
            $new_transaction_id = $conn->insert_id;
            
            // Insert transaction items
            foreach ($input['items'] as $item) {
                if (!isset($item['product_id']) || !isset($item['quantity']) || !isset($item['price'])) {
                    throw new Exception('Each item must have product_id, quantity, and price.');
                }
                
                $variation_id = isset($item['variation_id']) ? $item['variation_id'] : null;
                $subtotal = $item['quantity'] * $item['price'];
                
                $stmt = $conn->prepare("INSERT INTO transaction_items (transaction_id, product_id, variation_id, quantity, price, subtotal) VALUES (?, ?, ?, ?, ?, ?)");
                $stmt->bind_param(
                    "iiiidd",
                    $new_transaction_id,
                    $item['product_id'],
                    $variation_id,
                    $item['quantity'],
                    $item['price'],
                    $subtotal
                );
                $stmt->execute();
            }
            
            $conn->commit();
            sendResponse(true, 'Transaction created successfully.', ['transaction_id' => $new_transaction_id, 'order_number' => $order_number], 201);
            
        } catch (Exception $e) {
            $conn->rollback();
            sendResponse(false, 'Failed to create transaction: ' . $e->getMessage(), null, 500);
        }
    }
}

// Invalid method
sendResponse(false, 'Method not allowed.', null, 405);
?>