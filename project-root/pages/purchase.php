<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Grizzly Paws | My Profile</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <link rel="icon" type="image/x-icon" href="../assets/images/favicon.png" />
    <link rel="stylesheet" href="../assets/css/user-profile.css" />
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/trackorder.css">n
  </head>
  <body>
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

      <!-- Content area would go here -->

      <div class="order-container">
        <div class="order-header">
          <h1>Your Recent Purchase</h1>
        </div>

        <div class="order-status">
          <div class="status-info">
            <div class="status-text">Order Status</div>
            <div class="status-value status-success">Delivered</div>
          </div>
          <div class="status-info">
            <div class="status-text">Order Date</div>
            <div class="status-value">May 6, 2025</div>
          </div>
          <div class="status-info">
            <div class="status-text">Order Number</div>
            <div class="status-value">#PET87654321</div>
          </div>
        </div>

        <div class="progress-container">
          <div class="progress-track">
            <div class="progress-step">
              <div class="step-icon">✓</div>
              <div class="step-text">Order Placed</div>
            </div>
            <div class="progress-step">
              <div class="step-icon">✓</div>
              <div class="step-text">Processing</div>
            </div>
            <div class="progress-step">
              <div class="step-icon">✓</div>
              <div class="step-text">Shipped</div>
            </div>
            <div class="progress-step">
              <div class="step-icon">✓</div>
              <div class="step-text">Delivered May 9, 2025</div>
            </div>
          </div>
        </div>

        <div class="delivery-info">
          <div class="delivery-title">Your delivery</div>
        </div>

        <div class="product-item">
          <div class="product-image">
            <img
              src="/../../Product Images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 1 - Fluval Plant and Shrimp Stratum, 8.8 lbs/Capture.PNG"
              alt="Hill's Science Plan Dog Food"
            />
          </div>
          <div class="product-details">
            <div class="product-name">
              Fluval Plant and Shrimp Staratum
            </div>
            <div class="product-weight">4.4lb</div>
            <div class="product-weight">Quantity: 1</div>
          </div>
          <div class="product-price">₱750</div>
        </div>

        <div class="order-summary">
          <div class="summary-row">
            <div class="summary-label">Subtotal</div>
            <div class="summary-value">₱750</div>
          </div>
          <div class="summary-row">
            <div class="summary-label">Shipping</div>
            <div class="summary-value">₱0.00</div>
          </div>
          <div class="summary-row">
            <div class="summary-label">Tax</div>
            <div class="summary-value">12%</div>
          </div>
          <div class="total-row">
            <div class="total-label">Total</div>
            <div class="total-value">₱ 840</div>
          </div>
        </div>

        <div class="order-actions">
         
          <button class="action-button secondary-button"> <a href="pages/products/item/index.html?id=287&cat-id=aquatic">Reorder</a></button>
          <button class="action-button primary-button">Track Package</button>
        </div>
      </div>
    </main>

    <?php include '../includes/footer.php'; ?>
    <!-- <script src="../assets/js/dynamic-display.js"></script> -->
    <script src="../assets/js/profile.js"></script>


  </body>
</html>