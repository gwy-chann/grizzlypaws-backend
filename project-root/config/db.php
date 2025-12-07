<?php
    $host = "localhost";
    $db_name = "grizzlypaws_db";
    $username = "root"; // change if needed
    $password = "";     // change if needed

    try {
        $conn = new PDO("mysql:host=$host;dbname=$db_name;charset=utf8", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e) {
        // Return a JSON error when called from an API endpoint so client can parse it.
        if (!headers_sent()) {
            header('Content-Type: application/json');
        }
        echo json_encode(["status" => "error", "message" => "Database connection failed"]);
        // Stop execution to avoid further errors
        exit;
    }
?>
