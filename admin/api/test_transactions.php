<?php
// Test script to check transactions
$conn = new mysqli("localhost", "root", "", "grizzlypaws_db");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

echo "<h2>Testing Transactions Table</h2>";

// Check if transactions exist
$result = $conn->query("SELECT * FROM transactions ORDER BY created_at DESC LIMIT 10");

echo "<h3>Total transactions: " . $result->num_rows . "</h3>";

if ($result->num_rows > 0) {
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Customer ID</th><th>Order Number</th><th>Total</th><th>Payment Method</th><th>Payment Status</th><th>Order Status</th><th>Created</th></tr>";
    
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['customer_id'] . "</td>";
        echo "<td>" . $row['order_number'] . "</td>";
        echo "<td>" . $row['total_amount'] . "</td>";
        echo "<td>" . ($row['payment_method'] ?? 'N/A') . "</td>";
        echo "<td>" . ($row['payment_status'] ?? 'N/A') . "</td>";
        echo "<td>" . ($row['order_status'] ?? 'N/A') . "</td>";
        echo "<td>" . $row['created_at'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "<p style='color: red;'>No transactions found in the database!</p>";
}

echo "<hr>";

// Check transaction items
$itemsResult = $conn->query("SELECT * FROM transaction_items LIMIT 10");
echo "<h3>Transaction Items: " . $itemsResult->num_rows . "</h3>";

if ($itemsResult->num_rows > 0) {
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Transaction ID</th><th>Product ID</th><th>Variation ID</th><th>Quantity</th><th>Price</th><th>Subtotal</th></tr>";
    
    while ($row = $itemsResult->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['transaction_id'] . "</td>";
        echo "<td>" . $row['product_id'] . "</td>";
        echo "<td>" . ($row['variation_id'] ?? 'N/A') . "</td>";
        echo "<td>" . $row['quantity'] . "</td>";
        echo "<td>" . $row['price'] . "</td>";
        echo "<td>" . ($row['subtotal'] ?? 'N/A') . "</td>";
        echo "</tr>";
    }
    echo "</table>";
}

echo "<hr>";

// Check table structure
echo "<h3>Checking if updated_at column exists:</h3>";
$columns = $conn->query("SHOW COLUMNS FROM transactions");
echo "<ul>";
while ($col = $columns->fetch_assoc()) {
    echo "<li>" . $col['Field'] . " (" . $col['Type'] . ")</li>";
}
echo "</ul>";

$conn->close();
?>
