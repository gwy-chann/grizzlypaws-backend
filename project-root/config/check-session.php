<?php
    session_start();
    header('Content-Type: application/json');

    if (isset($_SESSION['email'])) {
        // User is logged in on server side
        echo json_encode([
            "status" => "success",
            "logged_in" => true,
            "email" => $_SESSION['email']
        ]);
    } else {
        // User is not logged in
        echo json_encode([
            "status" => "success",
            "logged_in" => false
        ]);
    }
?>
