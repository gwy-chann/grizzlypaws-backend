<?php
// Disable error display, only return JSON
error_reporting(0);
ini_set('display_errors', 0);

include "db.php";
header('Content-Type: application/json');

try {
    $method = $_SERVER['REQUEST_METHOD'];

    if ($method === 'POST') {
        $input = json_decode(file_get_contents('php://input'), true);

        if (!isset($input['transaction_id'])) {
            echo json_encode([
                'success' => false,
                'message' => 'Transaction ID is required'
            ]);
            exit;
        }

        $transaction_id = intval($input['transaction_id']);
        $order_status = isset($input['order_status']) ? $input['order_status'] : null;
        $payment_status = isset($input['payment_status']) ? $input['payment_status'] : null;

        // Get current transaction details
        $checkStmt = $conn->prepare("SELECT payment_method, order_status FROM transactions WHERE id = ?");
        $checkStmt->bind_param("i", $transaction_id);
        $checkStmt->execute();
        $currentData = $checkStmt->get_result()->fetch_assoc();

        if (!$currentData) {
            echo json_encode([
                'success' => false,
                'message' => 'Transaction not found'
            ]);
            exit;
        }

        $updates = [];
        $params = [];
        $types = "";

        // Auto-mark as paid if COD and delivered
        if ($order_status === 'delivered' && $currentData['payment_method'] === 'cod') {
            $payment_status = 'paid';
        }

        if ($order_status !== null) {
            $updates[] = "order_status = ?";
            $params[] = $order_status;
            $types .= "s";
        }

        if ($payment_status !== null) {
            $updates[] = "payment_status = ?";
            $params[] = $payment_status;
            $types .= "s";
        }

        // Always update the updated_at timestamp if column exists
        $columnsCheck = $conn->query("SHOW COLUMNS FROM transactions LIKE 'updated_at'");
        if ($columnsCheck->num_rows > 0) {
            $updates[] = "updated_at = CURRENT_TIMESTAMP";
        }

        if (empty($updates)) {
            echo json_encode([
                'success' => false,
                'message' => 'No fields to update'
            ]);
            exit;
        }

        $query = "UPDATE transactions SET " . implode(", ", $updates) . " WHERE id = ?";
        $params[] = $transaction_id;
        $types .= "i";

        $stmt = $conn->prepare($query);
        
        if (!$stmt) {
            throw new Exception("Prepare failed: " . $conn->error);
        }
        
        $stmt->bind_param($types, ...$params);

        if ($stmt->execute()) {
            echo json_encode([
                'success' => true,
                'message' => 'Order updated successfully',
                'auto_paid' => ($order_status === 'delivered' && $currentData['payment_method'] === 'cod')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => 'Failed to update order: ' . $stmt->error
            ]);
        }

        $stmt->close();
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
