<?php
include "db.php";

$id = $_POST['id'];
$name = $_POST['name'];
$stock = $_POST['stock'];

$sql = "UPDATE product SET 
name='$name',
stock='$stock'
WHERE id='$id'";

if ($conn->query($sql)) {
    echo "success";
} else {
    echo $conn->error;
}
?>
