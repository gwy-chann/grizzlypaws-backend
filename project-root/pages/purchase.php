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
    <link rel="stylesheet" href="../assets/css/trackorder.css">
    <link rel="stylesheet" href="../assets/css/purchase.css">
  </head>
  <body>
    <?php include '../includes/header.php'; ?>

    <main class="container">
      <div class="tabs-container">
        <div class="tabs-container">
        <div class="tabs">
          <div class="tab active">
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
          <div class="tab">
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
      <div class="purchase-container">
        <div class="page-header">
          <h1>Your Purchase History</h1>
        </div>

        <div class="filter-bar">
          <div class="filter-group">
            <select class="filter-select">
              <option>All Orders</option>
              <option>Last 30 Days</option>
              <option>Last 3 Months</option>
              <option>Last 6 Months</option>
            </select>
            <select class="filter-select">
              <option>All Status</option>
              <option>Delivered</option>
              <option>Processing</option>
              <option>Shipped</option>
              <option>Canceled</option>
            </select>
          </div>
          <div class="search-box">
            <input type="text" placeholder="Search orders..." />
            <span class="search-icon">🔍</span>
          </div>
        </div>

        <div class="order-list">
          <!-- Order 1 -->
          <div class="order-card">
            <div class="order-header">
              <div class="order-header-group">
                <div class="order-header-item">
                  <div class="header-label">Order Date</div>
                  <div class="header-value">May 6, 2025</div>
                </div>
                <div class="order-header-item">
                  <div class="header-label">Order Number</div>
                  <div class="header-value">#PET87654321</div>
                </div>
                <div class="order-header-item responsive-hide">
                  <div class="header-label">Delivered On</div>
                  <div class="header-value">May 9, 2025</div>
                </div>
              </div>
              <div class="header-action">
                <div class="status-badge status-delivered">Delivered</div>
              </div>
            </div>
            <div class="order-content">
              <div class="order-product">
                <div class="product-image">
                  <img
                    src="/../../Product Images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 1 - Hill_s Prescription Diet/hillsPrescriptionDiet1.jpg"
                    alt="Hill's Prescription Diet Canine z/d Food Sensitivities"
                  />
                </div>
                <div class="product-details">
                  <div class="product-name">
                   Hill's Prescription Diet Canine z/d Food Sensitivities
                  </div>
                  <div class="product-weight">14kg</div>
                  <div class="product-quantity">Quantity: 1</div>
                </div>
              </div>
              <div class="order-summary">
                <div class="order-price">₱3,999</div>
                <div class="order-actions">
                  <button class="action-button secondary-button">
                    View Details
                  </button>
                </div>
              </div>
            </div>
          </div>

          <!-- Order 2 -->
          <div class="order-card">
            <div class="order-header">
              <div class="order-header-group">
                <div class="order-header-item">
                  <div class="header-label">Order Date</div>
                  <div class="header-value">Apr 17, 2025</div>
                </div>
                <div class="order-header-item">
                  <div class="header-label">Order Number</div>
                  <div class="header-value">#PET87623456</div>
                </div>
                <div class="order-header-item responsive-hide">
                  <div class="header-label">Delivered On</div>
                  <div class="header-value">Apr 20, 2025</div>
                </div>
              </div>
              <div class="header-action">
                <div class="status-badge status-delivered">Delivered</div>
              </div>
            </div>
            <div class="order-content">
              <div class="order-product">
                <div class="product-image">
                  <img
                    src="/../../Product Images/bird/food/106033_pla_verselelaga_prestigeloro_parque_african_papageimix_hs_01_9.jpg.jpeg"
                    alt="Lillebro Wild Bird Food with Berries"
                  />
                </div>
                <div class="product-details">
                  <div class="product-name">
                   Lillebro Wild Bird Food with Berries
                  </div>
                  <div class="product-weight">1.5kg</div>
                  <div class="product-quantity">Quantity: 1</div>
                </div>
              </div>
              <div class="order-summary">
                <div class="order-price">₱700</div>
                <div class="order-actions">
                  <button class="action-button secondary-button">
                    View Details
                  </button>
                </div>
              </div>
            </div>
          </div>

          <!-- Order 3 -->
          <div class="order-card">
            <div class="order-header">
              <div class="order-header-group">
                <div class="order-header-item">
                  <div class="header-label">Order Date</div>
                  <div class="header-value">Mar 24, 2025</div>
                </div>
                <div class="order-header-item">
                  <div class="header-label">Order Number</div>
                  <div class="header-value">#PET87622345</div>
                </div>
                <div class="order-header-item responsive-hide">
                  <div class="header-label">Expected Delivery</div>
                  <div class="header-value">May 15, 2025</div>
                </div>
              </div>
              <div class="header-action">
                <div class="status-badge status-shipped">Shipped</div>
              </div>
            </div>
            <div class="order-content">
              <div class="order-product">
                <div class="product-image">
                  <img src="/../../Product Images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 1 - Orijen Original/OrijenCat.png" alt="Orijen Six Fish" />
                </div>
                <div class="product-details">
                  <div class="product-name">
                    Orijen Six Fish
                  </div>
                  <div class="product-weight">2kg</div>
                  <div class="product-quantity">Quantity: 1</div>
                </div>
              </div>
              <div class="order-summary">
                <div class="order-price">₱1,999</div>
                <div class="order-actions">
                  <button class="action-button secondary-button">
                    Track Order
                  </button>
                </div>
              </div>
            </div>
          </div>

          <!-- Order 4 -->
          <div class="order-card">
            <div class="order-header">
              <div class="order-header-group">
                <div class="order-header-item">
                  <div class="header-label">Order Date</div>
                  <div class="header-value">Mar 5, 2025</div>
                </div>
                <div class="order-header-item">
                  <div class="header-label">Order Number</div>
                  <div class="header-value">#PET87612345</div>
                </div>
                <div class="order-header-item responsive-hide">
                  <div class="header-label">Status Update</div>
                  <div class="header-value">Mar 6, 2025</div>
                </div>
              </div>
              <div class="header-action">
                <div class="status-badge status-processing">Processing</div>
              </div>
            </div>
            <div class="order-content">
              <div class="order-product">
                <div class="product-image">
                  <img
                    src="/../../Product Images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 10 - Aquatic Fundamentals Black Scroll Aquarium Stand - for 10 Gallon Aquariums/Capture.PNG"
                    alt="Marineland 5 Gallon Portrait Glass LED Aquarium Kit"
                  />
                </div>
                <div class="product-details">
                  <div class="product-name">
                    Marineland 5 Gallon Portrait Glass LED Aquarium Kit
                  </div>
                  <div class="product-weight">White LED</div>
                  <div class="product-quantity">Quantity: 1</div>
                </div>
              </div>
              <div class="order-summary">
                <div class="order-price">₱ 3,950</div>
                <div class="order-actions">
                  <button class="action-button secondary-button">
                    View Details
                  </button>
                </div>
              </div>
            </div>
          </div>

          <!-- Order 5 -->
          <div class="order-card">
            <div class="order-header">
              <div class="order-header-group">
                <div class="order-header-item">
                  <div class="header-label">Order Date</div>
                  <div class="header-value">Feb 12, 2025</div>
                </div>
                <div class="order-header-item">
                  <div class="header-label">Order Number</div>
                  <div class="header-value">#PET87609876</div>
                </div>
                <div class="order-header-item responsive-hide">
                  <div class="header-label">Status Update</div>
                  <div class="header-value">Feb 13, 2025</div>
                </div>
              </div>
              <div class="header-action">
                <div class="status-badge status-canceled">Canceled</div>
              </div>
            </div>
            <div class="order-content">
              <div class="order-product">
                <div class="product-image">
                  <img src="/../../Product Images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 7 - Monello/MonelloCatFoodAdult.jpg" alt="Monello Cat Food Adult" />
                </div>
                <div class="product-details">
                  <div class="product-name">
                    Monello Cat Food Adult
                  </div>
                  <div class="product-weight">1kg</div>
                  <div class="product-quantity">Quantity: 1</div>
                </div>
              </div>
              <div class="order-summary">
                <div class="order-price">₱ 799</div>
                <div class="order-actions">
                  <button class="action-button primary-button">Reorder</button>
                </div>
              </div>
            </div>
          </div>
        </div>

        

        <!-- <div class="empty-state">
          <div class="empty-icon">📦</div>
          <div class="empty-title">No Orders Found</div>
          <div class="empty-text">
            You haven't placed any orders yet or your search criteria didn't
            match any orders.
          </div>
          <div class="empty-action">
            <button class="action-button primary-button">Start Shopping</button>
          </div>
        </div> -->
      </div>
      <div class="pagination">
        <div class="page-button page-button-inactive">◀</div>
        <div class="page-button page-button-active">1</div>
        <div class="page-button page-button-inactive">2</div>
        <div class="page-button page-button-inactive">3</div>
        <div class="page-button page-button-inactive">4</div>
        <div class="page-button page-button-inactive">5</div>
        <div class="page-button page-button-inactive">▶</div>
      </div>
    </main>

    <?php include '../includes/footer.php'; ?>
    <script src="../dummy-data/category.js"></script>
    <script src="../dummy-data/products.js"></script>
    <script src="../assets/js/dynamic-display.js"></script>
    <script src="../assets/js/actions.js"></script>
  </body>
</html>