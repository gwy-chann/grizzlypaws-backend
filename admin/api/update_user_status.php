<?php
include "db.php";

header('Content-Type: application/json');

$data = json_decode(file_get_contents("php://input"), true);

if (!isset($data['customer_id']) || !isset($data['status'])) {
    echo json_encode(["status" => "error", "message" => "Missing required fields"]);
    exit;
}

$id = $data['customer_id'];
$status = $data['status'];

// Validate status
$allowed_statuses = ['active', 'inactive', 'suspended'];
if (!in_array($status, $allowed_statuses)) {
    echo json_encode(["status" => "error", "message" => "Invalid status"]);
    exit;
}

$stmt = $conn->prepare("UPDATE customers SET status = ? WHERE customer_id = ?");
$stmt->bind_param("si", $status, $id);

if ($stmt->execute()) {
    echo json_encode(["status" => "success", "message" => "Status updated successfully"]);
} else {
    echo json_encode(["status" => "error", "message" => "Failed to update status"]);
}
?>
