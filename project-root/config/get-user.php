<?php
    session_start();
    if (!headers_sent()) header('Content-Type: application/json');
    ini_set('display_errors', '0');
    error_reporting(E_ALL);
    set_exception_handler(function($e) {
        error_log("Uncaught exception: " . $e->getMessage());
        if (!headers_sent()) header('Content-Type: application/json');
        echo json_encode(["status" => "error", "message" => "Server error"]);
        exit;
    });

    require 'db.php';

    $data = json_decode(file_get_contents("php://input"), true);
    $email = trim($data['email'] ?? '');

    if (!$email) {
        echo json_encode(["status" => "error", "message" => "Email is required"]);
        exit;
    }

    try {
        $stmt = $conn->prepare("SELECT customer_id, first_name, middle_name, last_name, email, mobile_number, address, status FROM customers WHERE email = :email LIMIT 1");
        $stmt->execute(['email' => $email]);

        if ($stmt->rowCount() === 0) {
            echo json_encode(["status" => "error", "message" => "User not found"]);
            exit;
        }

        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        // Map database columns to frontend format
        $userData = [
            'id' => $user['customer_id'],
            'firstname' => $user['first_name'],
            'middlename' => $user['middle_name'] ?? '',
            'lastname' => $user['last_name'],
            'email' => $user['email'],
            'mobile' => $user['mobile_number'],
            'address' => $user['address'],
            'bio' => '',
            'profilePhoto' => ''
        ];

        echo json_encode(["status" => "success", "user" => $userData]);
        exit;

    } catch (PDOException $e) {
        error_log("Database error: " . $e->getMessage());
        echo json_encode(["status" => "error", "message" => "Database error"]);
        exit;
    }
?>
