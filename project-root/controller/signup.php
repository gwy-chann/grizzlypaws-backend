<?php
session_start();

// Always return JSON
if (!headers_sent()) header('Content-Type: application/json');

// Hide errors from user but log them
ini_set('display_errors', '0');
error_reporting(E_ALL);

// Convert errors → exceptions
set_error_handler(function($errno, $errstr, $errfile, $errline) {
    throw new ErrorException($errstr, 0, $errno, $errfile, $errline);
});

set_exception_handler(function($e) {
    error_log("Exception: " . $e->getMessage());
    echo json_encode(["status" => "error", "message" => "Server error"]);
    exit;
});

// Last-resort catch
register_shutdown_function(function() {
    $err = error_get_last();
    if ($err) {
        error_log("Shutdown error: " . print_r($err, true));
        echo json_encode(["status" => "error", "message" => "Server error"]);
    }
});

require '../config/db.php';   // <--- adjust path if needed

// Read input JSON
$data = json_decode(file_get_contents("php://input"), true);

// Sanitize
$first_name     = trim($data['first_name'] ?? '');
$middle_name    = trim($data['middle_name'] ?? '');
$last_name      = trim($data['last_name'] ?? '');
$email          = trim($data['email'] ?? '');
$mobile_number  = trim($data['mobile_number'] ?? '');
$address        = trim($data['address'] ?? '');
$password       = $data['password'] ?? '';

$security_q1    = trim($data['security_q1'] ?? '');
$security_a1    = trim($data['security_a1'] ?? '');
$security_q2    = trim($data['security_q2'] ?? '');
$security_a2    = trim($data['security_a2'] ?? '');

// Validation
if (!$first_name || !$last_name || !$email || !$mobile_number || !$address || !$password) {
    echo json_encode(["status" => "error", "message" => "Please fill in all required fields"]);
    exit;
}

// Check duplicate email
$stmt = $conn->prepare("SELECT customer_id FROM customers WHERE email = :email LIMIT 1");
$stmt->execute(['email' => $email]);

if ($stmt->rowCount() > 0) {
    echo json_encode(["status" => "error", "message" => "Email already registered"]);
    exit;
}

// Hash password
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

// Insert
$stmt = $conn->prepare("
    INSERT INTO customers
    (first_name, middle_name, last_name, email, mobile_number, address, password,
     security_q1, security_a1, security_q2, security_a2, status)
    VALUES
    (:first_name, :middle_name, :last_name, :email, :mobile_number, :address, :password,
     :security_q1, :security_a1, :security_q2, :security_a2, 'active')
");

$success = $stmt->execute([
    'first_name'    => $first_name,
    'middle_name'   => $middle_name,
    'last_name'     => $last_name,
    'email'         => $email,
    'mobile_number' => $mobile_number,
    'address'       => $address,
    'password'      => $hashed_password,
    'security_q1'   => $security_q1,
    'security_a1'   => $security_a1,
    'security_q2'   => $security_q2,
    'security_a2'   => $security_a2,
]);

if ($success) {
    $_SESSION['user_id'] = $conn->lastInsertId();
    $_SESSION['first_name'] = $first_name;
    $_SESSION['email'] = $email;

    echo json_encode(["status" => "success", "message" => "Account created successfully"]);
} else {
    echo json_encode(["status" => "error", "message" => "Signup failed"]);
}
?>
