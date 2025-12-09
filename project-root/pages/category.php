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
    <link rel="stylesheet" href="../assets/css/category.css">
  </head>
  <body>
    <?php include '../includes/header.php'; ?>

    <main class="container">
      <div class="breadcrumb">
            <a href="index.html">
                <svg class="home-icon" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                    <polyline points="9 22 9 12 15 12 15 22"></polyline>
                </svg>
            </a>
            <span class="separator">
                <svg width="8" height="12" viewBox="0 0 8 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M1.5 1L6.5 6L1.5 11" stroke="#666" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
            </span>
            <span id="first-breadcrumb">Pet</span>
        </div>

        <div class="shop-layout">
            <!-- Sidebar Navigation -->
            <!-- Sidebar Navigation -->

            <!-- Sidebar Navigation -->
              <div class="sidebar-nav">
                  <!-- Mobile Filter Toggle Button (only shows on small screens) -->
                  <button class="filter-toggle-btn" id="filterToggleBtn">
                      <i class="fas fa-sliders-h"></i>
                      <span>Filters</span>
                      <i class="fas fa-chevron-down toggle-icon"></i>
                  </button>
                  
                  <div class="sidebar-content" id="sidebarContent">
                      <div class="category-header">
                          <h2 class="category-title" id="pet-dyno">Pet</h2>
                      </div>
                      <ul class="category-list" id="categoryList">
                          <!-- render category -->
                      </ul>
                      
                      <!-- Price Filter Section -->
                      <div class="filter-section">
                          <div class="filter-header">
                              <h3 class="filter-title">Price Range</h3>
                          </div>
                          <div class="price-filter-container">
                              <div class="price-inputs">
                                  <div class="price-input-group">
                                      <label for="minPrice">Min</label>
                                      <input type="number" id="minPrice" placeholder="₱0" min="0">
                                  </div>
                                  <span class="price-separator">-</span>
                                  <div class="price-input-group">
                                      <label for="maxPrice">Max</label>
                                      <input type="number" id="maxPrice" placeholder="₱10000" min="0">
                                  </div>
                              </div>
                              <button class="apply-filter-btn" id="applyPriceFilter">Apply</button>
                              <button class="clear-filter-btn" id="clearPriceFilter">Clear</button>
                          </div>
                          
                          <!-- Quick Price Options -->
                          <div class="quick-price-options">
                              <button class="price-option-btn" data-min="0" data-max="500">Under ₱500</button>
                              <button class="price-option-btn" data-min="500" data-max="1000">₱500 - ₱1,000</button>
                              <button class="price-option-btn" data-min="1000" data-max="2500">₱1,000 - ₱2,500</button>
                              <button class="price-option-btn" data-min="2500" data-max="999999">Over ₱2,500</button>
                          </div>
                      </div>
                  </div>
              </div>

            <!-- Main Content -->
            <div class="main-content">
                <h1 id="categoryTitle"></h1>
                <p class="description" id="categoryDescription"></p>

                <div class="category_banner" id="categoryImage">
                    <!-- <img src="images/dog_banner.png" alt="category_banner"> -->
                </div>

                <div class="categories-grid" id="categoriesGrid">
                    <!-- <a href="dog-dry-food-products.html" class="category-card">
                        <div class="title">Dry Dog Food</div>
                        <div class="category-image">
                            <img src="https://shop-cdn-m.mediazs.com/bilder/1/400/Cat_Dryfood_1000x1000_1.jpg" alt="Dry Dog Food">
                        </div>
                    </a> -->    
                </div>

                <!-- Related Products Section -->
                <h2 class="simillarProducts">Related products</h2>
                <div class="products-grid" id="product_grid">
                    <div class="product-card">
                        <div class="product-image">
                            <a href="pages/products/item/index.html?id=1">
                                <img src="images/Hill'sPrescriptionDietCanineDigestiveCare1.jpg" alt="Hill's Prescription Diet Canine Metabolic" />
                            </a>
                            <button class="add-to-basket-button" aria-label="Add to basket">
                                <i class="fas fa-shopping-cart" aria-hidden="true"></i>
                            </button>
                        </div>

                        <a href="pages/products/item/index.html?id=1" class="product-details-link">
                            <div class="product-details">
                                <h3 class="product-title">
                                    Hill's Prescription Diet Canine Metabolic Weight Management - Chicken
                                </h3>
                                <div class="price-container">
                                    <p class="price">£96.99</p>
                                </div>
                                <div class="ratings">
                                    <!-- <div class="stars">★★★★★</div> -->
                                    <div class="review-count">(14)</div>
                                </div>
                                <p class="delivery">Delivery in 3-6 working days</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <div class="modal" id="myModal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <div class="success-message">
          <div class="success-icon">
            <i class="fas fa-check-circle"></i>
          </div>
          <h3>Added to Basket! 🐾</h3>
          <p id="modal-product-info">Your item has been added to the basket.</p>
          <div class="modal-buttons">
            <button class="continue-shopping">Continue Shopping</button>
            <a href="pages/basket.html"
              ><button class="view-basket">View Basket</button></a
            >
          </div>
        </div>
      </div>
    </div>

    <?php include '../includes/footer.php'; ?>
    <script src="../dummy-data/category.js"></script>
    <script src="../dummy-data/products.js"></script>
    <script src="../assets/js/dynamic-display.js"></script>
    <script src="../assets/js/actions.js"></script>
    <script src="../assets/js/related-products.js"></script>
    <script src="../assets/js/filter-product.js"></script>
  </body>
</html>