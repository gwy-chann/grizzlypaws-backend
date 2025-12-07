<header>
      <div class="header-top">
        <div class="logo-container">
          <button class="mobile-menu-button">☰</button>
          <a
            href="/grizzlypaws-backend/project-root/index.php"
            title="Return to Homepage"
            aria-label="Go to Homepage"
          >
            <img src="/grizzlypaws-backend/project-root/assets/images/logo.png" 
            alt="Logo" 
            class="logo">

          </a>
        </div>

        <div class="search-container">
          <form action="/search" method="get" role="search">
            <input
              type="text"
              id="site-search"
              placeholder="Search products..."
              name="search"
              class="search-input"
              for="site-search"
            />
            <button type="submit" class="search-button" aria-label="Search">
              <i class="fas fa-search" aria-hidden="true"></i>
            </button>
          </form>
        </div>
        <div class="basket-container">
          <a
            href="pages/basket.html"
            class="basket-button"
            aria-label="Shopping basket"
          >
            <i class="fas fa-shopping-cart" aria-hidden="true"></i>
            <span>BASKET</span>
          </a>

          <!-- Notification Dropdown -->
          <div class="notification-dropdown">
            <a class="notification-button" aria-label="Notifications">
              <i class="fas fa-bell" aria-hidden="true"></i>
              <span class="notification-badge">2</span>
            </a>
            <div class="dropdown-content notification-content">
              <div class="dropdown-tail"></div>
              <div class="notification-header">
                <h3>Notifications</h3>
                <a href="#" class="mark-all-read">Mark all as read</a>
              </div>
              <div class="notification-list">
                <a href="#" class="notification-item unread">
                  <div class="notification-icon order">
                    <i class="fas fa-box"></i>
                  </div>
                  <div class="notification-text">
                    <p class="notification-title">Order Shipped</p>
                    <p class="notification-message">Your order #12345 has been shipped and will arrive in 2-3 days.</p>
                    <span class="notification-time">2 hours ago</span>
                  </div>
                </a>
                <a href="#" class="notification-item unread">
                  <div class="notification-icon promo">
                    <i class="fas fa-tag"></i>
                  </div>
                  <div class="notification-text">
                    <p class="notification-title">Special Offer!</p>
                    <p class="notification-message">Get 20% off on all electronics. Limited time offer!</p>
                    <span class="notification-time">5 hours ago</span>
                  </div>
                </a>
              </div>
              <a href="#" class="view-all-notifications">View All Notifications</a>
            </div>
          </div>

          <!-- Account Dropdown -->
          <div class="account-dropdown">
            <a class="account-button" aria-label="My account">
              <i class="fas fa-user-circle" aria-hidden="true"></i>
            </a>
            <div class="dropdown-content">
              <div class="dropdown-tail"></div>
              <a href="/grizzlypaws-backend/project-root/pages/user.php">My Account</a>
              <a href="pages/Purchase/purchase.html">My Purchase</a>
              <a href="pages/Purchase/wishlist.html">Wishlist</a>
              <a href="login.php">Logout</a>
            </div>
          </div>
        </div>
      </div>
      <nav aria-label="Main navigation" id="main-nav"></nav>
    </header>
<script src="/grizzlypaws-backend/project-root/assets/js/notification.js"></script>