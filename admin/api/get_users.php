<?php
include "db.php";

header('Content-Type: application/json');

$sql = "SELECT customer_id, first_name, middle_name, last_name, email, mobile_number, address, created_at, status FROM customers ORDER BY created_at DESC";
$result = $conn->query($sql);

$users = [];
while ($row = $result->fetch_assoc()) {
    $middle = !empty($row['middle_name']) ? " " . $row['middle_name'] : "";
    $row['name'] = $row['first_name'] . $middle . " " . $row['last_name'];
    $row['phone'] = $row['mobile_number'];
    $row['registrationDate'] = $row['created_at'];
    // Placeholder for totalOrders if not available
    $row['totalOrders'] = 0; 
    $users[] = $row;
}

echo json_encode($users);
?>
