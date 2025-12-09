<?php
include "db.php";

$name = $_POST['name'];
$category_id = $_POST['category_id'];
$sub_category_id = $_POST['sub_category_id'];
$stock = $_POST['stock'];
$description = $_POST['description'];
$image1 = $_POST['image1'];
$image2 = $_POST['image2'];
$image3 = $_POST['image3'];

$sql = "INSERT INTO product 
(category_id, sub_category_id, name, description, stock, image1, image2, image3)
VALUES 
('$category_id', '$sub_category_id', '$name', '$description', '$stock', '$image1', '$image2', '$image3')";

if ($conn->query($sql)) {
    echo json_encode([
        "status" => "success",
        "product_id" => $conn->insert_id
    ]);
} else {
    echo json_encode([
        "status" => "error",
        "message" => $conn->error
    ]);
}
?>
