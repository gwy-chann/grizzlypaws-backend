<?php
session_start();
header('Content-Type: application/json');
require 'db.php';

$data = json_decode(file_get_contents("php://input"), true);
$email = trim($data['email'] ?? '');

if (!$email) {
    echo json_encode(["status" => "error", "message" => "Email is required"]);
    exit;
}

// Map frontend keys to DB columns
$firstName = trim($data['firstname'] ?? '');
$middleName = trim($data['middlename'] ?? '');
$lastName = trim($data['lastname'] ?? '');
$mobileNumber = trim($data['mobile'] ?? '');
$address = trim($data['address'] ?? '');

try {
    // 1. Check if user exists
    $stmt = $conn->prepare("SELECT customer_id FROM customers WHERE email = :email LIMIT 1");
    $stmt->execute(['email' => $email]);
    
    if ($stmt->rowCount() === 0) {
        echo json_encode(["status" => "error", "message" => "User not found"]);
        exit;
    }

    // 2. Update user
    $updateSql = "UPDATE customers SET 
                    first_name = :first_name,
                    middle_name = :middle_name,
                    last_name = :last_name,
                    mobile_number = :mobile_number,
                    address = :address
                  WHERE email = :email";
                  
    $updateStmt = $conn->prepare($updateSql);
    $updateStmt->execute([
        'first_name' => $firstName,
        'middle_name' => $middleName,
        'last_name' => $lastName,
        'mobile_number' => $mobileNumber,
        'address' => $address,
        'email' => $email
    ]);

    echo json_encode(["status" => "success", "message" => "Profile updated successfully"]);

} catch (PDOException $e) {
    echo json_encode(["status" => "error", "message" => "Database error: " . $e->getMessage()]);
}
?>
