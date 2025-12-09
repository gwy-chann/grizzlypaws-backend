<?php
$conn = new mysqli("localhost", "root", "", "grizzlypaws_db");

if ($conn->connect_error) {
    die("DB Error: " . $conn->connect_error);
}
?>
