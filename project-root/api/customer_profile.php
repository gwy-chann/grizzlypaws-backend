<?php
// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

include "db.php";
header('Content-Type: application/json');

try {
    $method = $_SERVER['REQUEST_METHOD'];

    if ($method === 'GET') {
        // Get customer profile
        if (!isset($_GET['customer_id'])) {
            echo json_encode([
                'success' => false,
                'message' => 'Customer ID is required'
            ]);
            exit;
        }

        $customer_id = intval($_GET['customer_id']);

        $query = "SELECT customer_id, first_name, middle_name, last_name, email, mobile_number, address 
                  FROM customers 
                  WHERE customer_id = ?";
        
        $stmt = $conn->prepare($query);
        $stmt->bind_param("i", $customer_id);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($row = $result->fetch_assoc()) {
            echo json_encode([
                'success' => true,
                'data' => $row
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => 'Customer not found'
            ]);
        }

        $stmt->close();

    } elseif ($method === 'POST' || $method === 'PUT') {
        // Update customer profile
        $input = json_decode(file_get_contents('php://input'), true);
        
        // Log incoming data for debugging
        error_log("Profile Update Request: " . print_r($input, true));

        if (!isset($input['customer_id'])) {
            echo json_encode([
                'success' => false,
                'message' => 'Customer ID is required'
            ]);
            exit;
        }

        $customer_id = intval($input['customer_id']);
        
        // Fields that can be updated
        $updates = [];
        $params = [];
        $types = "";

        if (isset($input['first_name'])) {
            $updates[] = "first_name = ?";
            $params[] = $input['first_name'];
            $types .= "s";
        }

        if (isset($input['middle_name'])) {
            $updates[] = "middle_name = ?";
            $params[] = $input['middle_name'];
            $types .= "s";
        }

        if (isset($input['last_name'])) {
            $updates[] = "last_name = ?";
            $params[] = $input['last_name'];
            $types .= "s";
        }

        if (isset($input['email'])) {
            // Check if email already exists for another customer
            $checkEmail = $conn->prepare("SELECT customer_id FROM customers WHERE email = ? AND customer_id != ?");
            $checkEmail->bind_param("si", $input['email'], $customer_id);
            $checkEmail->execute();
            if ($checkEmail->get_result()->num_rows > 0) {
                echo json_encode([
                    'success' => false,
                    'message' => 'Email already in use by another account'
                ]);
                exit;
            }
            
            $updates[] = "email = ?";
            $params[] = $input['email'];
            $types .= "s";
        }

        if (isset($input['mobile_number'])) {
            $updates[] = "mobile_number = ?";
            $params[] = $input['mobile_number'];
            $types .= "s";
        }

        if (isset($input['address'])) {
            $updates[] = "address = ?";
            $params[] = $input['address'];
            $types .= "s";
        }

        if (empty($updates)) {
            echo json_encode([
                'success' => false,
                'message' => 'No fields to update'
            ]);
            exit;
        }

        $query = "UPDATE customers SET " . implode(", ", $updates) . " WHERE customer_id = ?";
        $params[] = $customer_id;
        $types .= "i";
        
        // Log the query for debugging
        error_log("SQL Query: " . $query);
        error_log("Parameters: " . print_r($params, true));

        $stmt = $conn->prepare($query);
        
        if (!$stmt) {
            throw new Exception("Prepare failed: " . $conn->error);
        }
        
        $stmt->bind_param($types, ...$params);

        if ($stmt->execute()) {
            $affectedRows = $stmt->affected_rows;
            error_log("Affected rows: " . $affectedRows);
            
            echo json_encode([
                'success' => true,
                'message' => 'Profile updated successfully',
                'affected_rows' => $affectedRows,
                'debug' => [
                    'customer_id' => $customer_id,
                    'fields_updated' => count($updates)
                ]
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => 'Failed to update profile: ' . $stmt->error
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
