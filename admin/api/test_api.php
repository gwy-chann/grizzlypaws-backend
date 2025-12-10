<?php
// Test get_orders.php API
header('Content-Type: text/html');

echo "<h2>Testing get_orders.php API</h2>";

$url = "http://localhost/grizzlypaws-backend/admin/api/get_orders.php";

echo "<p>Fetching from: <code>$url</code></p>";

$response = file_get_contents($url);

echo "<h3>Response:</h3>";
echo "<pre>";
echo htmlspecialchars($response);
echo "</pre>";

echo "<hr>";

$data = json_decode($response, true);

if ($data) {
    echo "<h3>Parsed JSON:</h3>";
    echo "<pre>";
    print_r($data);
    echo "</pre>";
    
    if (isset($data['success']) && $data['success']) {
        echo "<p style='color: green;'>✓ API is working! Found " . count($data['data']) . " orders.</p>";
        
        if (count($data['data']) > 0) {
            echo "<h4>First Order:</h4>";
            echo "<pre>";
            print_r($data['data'][0]);
            echo "</pre>";
        }
    } else {
        echo "<p style='color: red;'>✗ API returned success=false</p>";
    }
} else {
    echo "<p style='color: red;'>✗ Failed to parse JSON response</p>";
}
?>
