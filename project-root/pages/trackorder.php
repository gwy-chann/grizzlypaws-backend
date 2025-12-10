<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Grizzly Paws | Track Order</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <link rel="icon" type="image/x-icon" href="../assets/images/favicon.png" />
    <link rel="stylesheet" href="../assets/css/user-profile.css" />
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/trackorder.css">
    <link rel="stylesheet" href="../assets/css/trackorder-extra.css">
    <link rel="stylesheet" href="../assets/css/purchase-modal.css">
  </head>
  <body data-customer-id="<?php echo $_SESSION['customer_id'] ?? 1; ?>">
    <?php include '../includes/header.php'; ?>

    <main class="container">
      <div class="tabs-container">
        <div class="tabs">
          <div class="tab">
            <a href="purchase.php" class="tab-link">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
              >
                <path
                  d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"
                ></path>
                <line x1="3" y1="6" x2="21" y2="6"></line>
                <path d="M16 10a4 4 0 0 1-8 0"></path>
              </svg>
              <span>My Purchase</span>
            </a>
          </div>
          <div class="tab">
            <a href="wishlist.php" class="tab-link">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
              >
                <path
                  d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"
                ></path>
              </svg>
              <span>Wishlist</span>
            </a>
          </div>
          <div class="tab active">
            <a href="trackorder.php" class="tab-link">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
              >
                <circle cx="9" cy="21" r="1"></circle>
                <circle cx="20" cy="21" r="1"></circle>
                <path
                  d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"
                ></path>
              </svg>
              <span>Track Order</span>
            </a>
          </div>
        </div>
      </div>

      <!-- Content area -->
      <div class="order-container">
        <div class="loading-container">
          <div class="loading-spinner"></div>
          <p style="text-align:center">Loading order details...</p>
        </div>
      </div>
    </main>

    <?php include '../includes/footer.php'; ?>
    <script src="../assets/js/track-order.js"></script>
  </body>
</html>