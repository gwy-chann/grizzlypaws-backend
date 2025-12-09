<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grizzly Paws Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        .content {
            padding: 30px;
            max-width: 2000px;
            margin: 0 auto;
            max-height: calc(100vh - 80px); /* Adjust based on your header height */
            overflow-y: auto;
        }
    </style>
</head>
<body>
    <!-- Header -->
   <?php include 'includes/header.php'; ?>
    <!-- Main Container -->
    <div class="main-container">
        <!-- Sidebar -->
        <?php include 'includes/sidebar.php'; ?>
        <!-- Content Area -->
        <div class="content">
           
            <div class="image-placeholder">
                <img src="assets/images/hero.png" alt="Hero Admin">
            </div>
            
            <div>
                <div class="footer">
                    Copyright © 2025 GrizzlyPaws. All rights reserved
                </div>
            </div>
        </div>
    </div>

</body>
</html>