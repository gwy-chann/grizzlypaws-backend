<?php
include "db.php";

$id = $_POST['id'];

$sql = "DELETE FROM product WHERE id='$id'";

if ($conn->query($sql)) {
    echo "success";
} else {
    echo $conn->error;
}
?>
