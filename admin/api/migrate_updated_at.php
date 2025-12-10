<?php
// Migration script to add updated_at column to transactions table
$conn = new mysqli("localhost", "root", "", "grizzlypaws_db");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if updated_at column exists
$check = $conn->query("SHOW COLUMNS FROM transactions LIKE 'updated_at'");

if ($check->num_rows == 0) {
    // Add updated_at column
    $sql = "ALTER TABLE transactions 
            ADD COLUMN updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP AFTER created_at";
    
    if ($conn->query($sql) === TRUE) {
        echo json_encode([
            'success' => true,
            'message' => 'updated_at column added successfully to transactions table'
        ]);
    } else {
        echo json_encode([
            'success' => false,
            'message' => 'Error adding column: ' . $conn->error
        ]);
    }
} else {
    echo json_encode([
        'success' => true,
        'message' => 'updated_at column already exists'
    ]);
}

$conn->close();
?>
