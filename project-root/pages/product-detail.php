<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Grizzly Paws | Product Detail</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <link rel="icon" type="image/x-icon" href="../assets/images/favicon.png" />
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/product-detail.css">
    <link rel="stylesheet" href="../assets/css/user-review.css">
  </head>
  <body>
    <?php include '../includes/header.php'; ?>

    <main class="container">
      <!-- Breadcrumb Navigation -->
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
        <span class="separator">
          <svg width="8" height="12" viewBox="0 0 8 12" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M1.5 1L6.5 6L1.5 11" stroke="#666" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </span>
        <span id="sub-category-item">Sub Category</span>
        <span class="separator">
          <svg width="8" height="12" viewBox="0 0 8 12" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M1.5 1L6.5 6L1.5 11" stroke="#666" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </span>
        <span id="product-detail-item">Product Detail</span>
      </div>

      <!-- Product Container -->
      <div class="product-container">
        <!-- Product Images -->
        <div class="product-images">
          <div class="main-image">
            <div class="navigation-arrow prev">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#333" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M15 18l-6-6 6-6"/>
              </svg>
            </div>
            <img src="Hill'sPrescriptionDietCanineMetabolic1.jpg" alt="Product image" id="display_image">
            <div class="navigation-arrow next">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#333" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M9 18l6-6-6-6"/>
              </svg>
            </div>
          </div>
          <div class="thumbnail-container" id="thumbnail-container">
            <!-- Thumbnails will be dynamically inserted here -->
          </div>
        </div>
    
        <!-- Product Info -->
        <div class="product-info">
          <div class="product-title">
            <span id="product_title">Product Name</span>
            <span class="favorite-icon">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
              </svg>
            </span>
          </div>
          
          <div class="price-wrapper">
            <div class="price" id="price-display">₱ 2,500</div>
            <div class="original-price">₱ 3,500</div>
          </div>

          <div class="rating">
            <!-- <div class="stars">
              <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
              </svg>
              <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
              </svg>
              <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
              </svg>
              <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
              </svg>
              <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
                <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
              </svg>
            </div>
            <span class="review-count">4.5</span> -->
          </div>

          <p class="product-description" id="product_description">
            Product description will be displayed here.
          </p>
    
          <label class="options-label">Choose item</label>
          <div class="select-wrapper">
            <select class="custom-select" id="custom_select">
              <option value="15kg" data-price="2,500">15kg</option>
              <option value="10kg" data-price="1,700">10kg</option>
              <option value="7kg" data-price="1,500">7kg</option>
              <option value="4kg" data-price="1,300">4kg</option>
            </select>
          </div>
    
          <!-- Quantity and Add to Cart -->
          <div class="quantity-container">
            <div class="quantity-control">
              <button class="quantity-btn decrease">−</button>
              <input 
                type="text" 
                class="quantity-input" 
                value="1" 
                onkeydown="return onlyNumberKey(event)"
              >
              <button class="quantity-btn increase">+</button>
            </div>
            
            <button class="add-to-cart add-to-basket-button" style="position: unset" id="myBasket">
              <i class="fas fa-shopping-cart" aria-hidden="true"></i>
              Add to basket
            </button>
          </div>
    
          <div class="details">
            <div class="shipping-details">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true">
                <path fill-rule="evenodd" clip-rule="evenodd" d="M2 6.75C2 5.23122 3.23118 4 4.75 4H13.25C14.5088 4 15.57 4.84575 15.8965 6H17.9521C18.8545 6 19.6995 6.44272 20.2131 7.18467L21.511 9.05942C21.8294 9.51932 22 10.0653 22 10.6248V14.2857C22 15.5389 21.1507 16.5937 19.9963 16.906C19.9149 18.6285 18.4926 20 16.75 20C15.0392 20 13.6371 18.6781 13.5095 17H10.4905C10.3629 18.6781 8.9608 20 7.25 20C5.51284 20 4.09399 18.637 4.00449 16.9222C2.85321 16.6362 2 15.5958 2 14.3561V6.75ZM4.27515 15.4393C4.7791 14.2972 5.92146 13.5 7.25 13.5C8.60196 13.5 9.76113 14.3255 10.2509 15.5H13.7491C13.9225 15.0841 14.1799 14.712 14.5 14.4048V6.75C14.5 6.05964 13.9404 5.5 13.25 5.5H4.75C4.05962 5.5 3.5 6.05964 3.5 6.75V14.3561C3.5 14.8589 3.82431 15.2858 4.27515 15.4393ZM16 7.5V13.587C16.2408 13.5301 16.4919 13.5 16.75 13.5C18.0715 13.5 19.2089 14.2888 19.7168 15.4212C20.1746 15.2473 20.5 14.8045 20.5 14.2857V10.6248C20.5 10.3705 20.4225 10.1223 20.2777 9.91324L18.9798 8.03849C18.7464 7.70124 18.3623 7.5 17.9521 7.5H16ZM7.25 15C6.28351 15 5.5 15.7835 5.5 16.75C5.5 17.7165 6.28351 18.5 7.25 18.5C8.21649 18.5 9 17.7165 9 16.75C9 15.7835 8.21649 15 7.25 15ZM16.75 15C15.7835 15 15 15.7835 15 16.75C15 17.7165 15.7835 18.5 16.75 18.5C17.7165 18.5 18.5 17.7165 18.5 16.75C18.5 15.7835 17.7165 15 16.75 15Z"></path>
              </svg>
              Delivery in 3-6 working days
            </div>
      
            <div class="shipping-details">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true">
                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.84083 3.49994C5.20864 2.94819 5.82785 2.61675 6.49096 2.6167H13.8104C14.4721 2.61807 15.0895 2.94936 15.4565 3.49995L17.7259 6.90449C18.0808 7.26284 18.3 7.75584 18.3 8.30003V9.53337C18.3 9.94758 17.9642 10.2834 17.55 10.2834C17.1358 10.2834 16.8 9.94758 16.8 9.53337V8.30003C16.8 8.17313 16.7511 8.05765 16.6711 7.97142C16.6522 7.95558 16.6339 7.93871 16.6164 7.92082C16.534 7.85562 16.4299 7.8167 16.3167 7.8167H3.98333C3.86974 7.8167 3.76529 7.85589 3.68278 7.92149C3.66573 7.93887 3.64796 7.95528 3.62955 7.97072C3.54917 8.05703 3.5 8.17279 3.5 8.30003V16.9334C3.5 17.2003 3.7164 17.4167 3.98333 17.4167H8.91667C9.33088 17.4167 9.66667 17.7525 9.66667 18.1667C9.66667 18.5809 9.33088 18.9167 8.91667 18.9167H3.98333C2.88797 18.9167 2 18.0287 2 16.9334V8.30003C2 7.75622 2.21887 7.26352 2.57332 6.90523L4.84083 3.49994ZM4.76733 6.3167H9.4V4.1167H6.49107C6.32953 4.11673 6.17864 4.19746 6.089 4.33184L4.76733 6.3167ZM10.9 4.1167V6.3167H15.5314L14.2084 4.33194C14.1191 4.19794 13.9689 4.11723 13.8078 4.1167H10.9ZM15.6137 11.4697C15.9066 11.7626 15.9066 12.2375 15.6137 12.5304L14.4273 13.7167H15.0833C18.9033 13.7167 22 16.8134 22 20.6334C22 21.0476 21.6642 21.3834 21.25 21.3834C20.8358 21.3834 20.5 21.0476 20.5 20.6334C20.5 17.6418 18.0749 15.2167 15.0833 15.2167H14.4273L15.6137 16.403C15.9066 16.6959 15.9066 17.1708 15.6137 17.4637C15.3208 17.7566 14.8459 17.7566 14.553 17.4637L12.0863 14.997C11.9457 14.8564 11.8667 14.6656 11.8667 14.4667C11.8667 14.2678 11.9457 14.077 12.0863 13.9364L14.553 11.4697C14.8459 11.1768 15.3208 11.1768 15.6137 11.4697Z"></path>
              </svg>
              Return Policy 
              <a href="#" class="green-text">more</a>
            </div>
      
            <p class="note">All prices include statutory VAT. Additional <span class="green-text">shipping costs</span> may apply.</p>
          </div>
        </div>
      </div>

      <!-- Review Section -->
      <section class="reviews-section">
        <div class="reviews-header">
            <!-- <h2>Customer Reviews</h2> -->
            <button class="write-review-btn" id="writeReviewBtn">
            <i class="fas fa-pen"></i>
            Write a Review
            </button>
        </div>
        <div class="reviews-container" id="reviewsContainer">
            <!-- Reviews will be dynamically inserted here -->
        </div>
      </section>

      <!-- Write Review Modal -->
      <div class="review-modal" id="reviewModal">
        <div class="review-modal-content">
          <div class="review-modal-header">
            <h3 id="modalTitle">Write Your Review</h3>
            <button class="review-modal-close" id="closeModal">&times;</button>
          </div>
          
          <div class="review-modal-body">
            <div class="rating-input-container">
              <label for="reviewRating">Rate this product</label>
              <div class="star-rating-input" id="starRatingInput">
                <svg data-rating="1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                  <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                </svg>
                <svg data-rating="2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                  <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                </svg>
                <svg data-rating="3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                  <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                </svg>
                <svg data-rating="4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                  <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                </svg>
                <svg data-rating="5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                  <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                </svg>
              </div>
              <div class="rating-value-display" id="ratingValueDisplay">Select a rating</div>
            </div>
            
            <textarea 
              id="reviewText" 
              class="review-textarea" 
              placeholder="Share your thoughts about this product..."
              maxlength="1000"
            ></textarea>
            <div class="character-count">
              <span id="charCount">0</span>/1000 characters
            </div>
          </div>
          
          <div class="review-modal-footer">
            <button class="btn-cancel-review" id="cancelReview">Cancel</button>
            <button class="btn-submit-review" id="submitReview">Post Review</button>
          </div>
        </div>
      </div>
    </main>

    <!-- Add to Basket Modal -->
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
            <button class="view-basket">View Basket</button>
          </div>
        </div>
      </div>
    </div>

    <?php include '../includes/footer.php'; ?>
    
    <script src="../dummy-data/category.js"></script>
    <script src="../dummy-data/products.js"></script>
    <script src="../assets/js/dynamic-display.js"></script>
    <script src="../assets/js/actions.js"></script>
    <script src="../assets/js/basket.js"></script>
    <script src="../assets/js/product-detail.js"></script>
    <script src="../assets/js/display-product.js"></script>
    <script src="../assets/js/review.js"></script>
  </body>
</html>