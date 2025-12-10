<?php
session_start();

// Ensure API always returns JSON
if (!headers_sent()) header('Content-Type: application/json');

// Hide errors from users but log them
ini_set('display_errors', '0');
error_reporting(E_ALL);

// Convert errors → exceptions
set_error_handler(function($errno, $errstr, $errfile, $errline){
    throw new ErrorException($errstr, 0, $errno, $errfile, $errline);
});

set_exception_handler(function($e){
    error_log("Uncaught exception: " . $e->getMessage());
    if (!headers_sent()) header('Content-Type: application/json');
    echo json_encode(["status" => "error", "message" => "Server error (see logs)"]);
    exit;
});

// Final fallback
register_shutdown_function(function(){
    $err = error_get_last();
    if ($err !== null) {
        error_log("Shutdown error: " . print_r($err, true));
        if (!headers_sent()) header('Content-Type: application/json');
        echo json_encode(["status" => "error", "message" => "Server error (see logs)"]);
    }
});

require '../config/db.php'; // adjust if needed

// Get JSON body
$data = json_decode(file_get_contents("php://input"), true);

$email = trim($data['email'] ?? '');
$password = $data['password'] ?? '';

// Required fields
if (!$email || !$password) {
    echo json_encode(["status" => "error", "message" => "Email and password are required"]);
    exit;
}

try {
    // Fetch account
    $stmt = $conn->prepare("
        SELECT customer_id, first_name, email, password, status
        FROM customers
        WHERE email = :email
        LIMIT 1
    ");
    $stmt->execute(['email' => $email]);

    if ($stmt->rowCount() === 0) {
        echo json_encode(["status" => "error", "message" => "Account not found"]);
        exit;
    }

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    // Check account status
    if ($user['status'] !== 'active') {
        echo json_encode(["status" => "error", "message" => "Account is not active"]);
        exit;
    }

    // Password check
    if (!password_verify($password, $user['password'])) {
        echo json_encode(["status" => "error", "message" => "Invalid credentials"]);
        exit;
    }

    // Correct session assignment
    $_SESSION['user_id'] = $user['customer_id'];  // FIXED
    $_SESSION['first_name'] = $user['first_name'];
    $_SESSION['email'] = $user['email'];

<<<<<<< HEAD
    echo json_encode(["status" => "success", "message" => "Login successful", "user_id" => $user['customer_id'] ]);
=======
    echo json_encode([
        "status" => "success", 
        "message" => "Login successful",
        "user_id" => $user['customer_id']
    ]);
>>>>>>> 3d5effa14bf27189b5bc5fb9b153280bf7318dc0
    exit;

} catch (PDOException $e) {
    error_log("Database Error: " . $e->getMessage());
    echo json_encode(["status" => "error", "message" => "Database error"]);
    exit;
}
?>
