(function() {
  // Get current logged-in user from session
  let CURRENT_USER = null;
  
  // Sample reviews data structure (this will come from database)
  // Store reviews per product - format: productId_reviews
  let reviews = JSON.parse(localStorage.getItem('product_reviews') || '[]');
  
  // PRODUCT ID - Replace this with actual product ID from your page
  // You can get this from URL parameter or data attribute
  const PRODUCT_ID = getProductId(); // You'll implement this based on your page structure

  let editingReviewId = null;
  let selectedRating = 0; // NEW: Track selected star rating

  // DOM Elements
  const reviewsContainer = document.getElementById('reviewsContainer');
  const writeReviewBtn = document.getElementById('writeReviewBtn');
  const reviewModal = document.getElementById('reviewModal');
  const closeModal = document.getElementById('closeModal');
  const cancelReview = document.getElementById('cancelReview');
  const submitReview = document.getElementById('submitReview');
  const reviewText = document.getElementById('reviewText');
  const charCount = document.getElementById('charCount');
  const modalTitle = document.getElementById('modalTitle');
  const starRatingInput = document.getElementById('starRatingInput'); // NEW
  const ratingValueDisplay = document.getElementById('ratingValueDisplay'); // NEW

  // Initialize
  function init() {
    loadCurrentUser();
    renderReviews();
    setupEventListeners();
    updateWriteReviewButton();
    setupStarRating(); // NEW: Setup star rating functionality
  }

  // Load current user from session
  function loadCurrentUser() {
    const loggedInEmail = sessionStorage.getItem('loggedInUser');
    
    if (!loggedInEmail) {
      CURRENT_USER = null;
      return;
    }

    // Check if admin
    if (loggedInEmail === 'admin') {
      CURRENT_USER = {
        email: 'admin@gmail.com',
        name: 'Admin',
        userId: 'admin',
        isAdmin: true
      };
      return;
    }

    // Load user from localStorage
    const users = JSON.parse(localStorage.getItem('users') || '{}');
    const user = users[loggedInEmail];
    
    if (user) {
      CURRENT_USER = {
        email: user.email,
        name: `${user.firstname} ${user.lastname}`,
        userId: user.email, // Using email as userId
        firstname: user.firstname,
        middlename: user.middlename,
        lastname: user.lastname,
        isAdmin: false
      };
    } else {
      CURRENT_USER = null;
      sessionStorage.removeItem('loggedInUser'); // Clean up invalid session
    }
  }

  // Get product ID from page (CUSTOMIZE THIS BASED ON YOUR PAGE STRUCTURE)
  function getProductId() {
    // Option 1: Get from URL parameter
    const urlParams = new URLSearchParams(window.location.search);
    const productIdFromUrl = urlParams.get('id') || urlParams.get('productId');
    if (productIdFromUrl) return productIdFromUrl;

    // Option 2: Get from data attribute on page element
    const productElement = document.querySelector('[data-product-id]');
    if (productElement) return productElement.dataset.productId;

    // Option 3: Get from page title or other element
    // You can customize this based on your page structure
    
    // Default: use current page URL as product identifier
    return window.location.pathname;
  }

  // Update Write Review button based on login status
  function updateWriteReviewButton() {
    if (!CURRENT_USER) {
      writeReviewBtn.innerHTML = '<i class="fas fa-lock"></i> Login to Review';
      writeReviewBtn.classList.add('disabled');
    } else {
      writeReviewBtn.innerHTML = '<i class="fas fa-pen"></i> Write a Review';
      writeReviewBtn.classList.remove('disabled');
    }
  }

  // Check if user has purchased this product (PLACEHOLDER - IMPLEMENT LATER)
  function hasUserPurchasedProduct() {
    // TODO: Implement this when you have purchase history
    // For now, return true to allow all logged-in users to review
    
    // Future implementation example:
    // const purchases = JSON.parse(localStorage.getItem('user_purchases') || '[]');
    // return purchases.some(purchase => 
    //   purchase.userId === CURRENT_USER.userId && 
    //   purchase.productId === PRODUCT_ID &&
    //   purchase.status === 'completed'
    // );
    
    return true; // Allow all logged-in users for now
  }

  // NEW: Setup Star Rating Input
  function setupStarRating() {
    if (!starRatingInput) return; // Safety check
    
    const stars = starRatingInput.querySelectorAll('svg');
    
    stars.forEach(star => {
      star.addEventListener('click', function() {
        selectedRating = parseInt(this.getAttribute('data-rating'));
        updateStarDisplay();
        updateSubmitButton();
      });

      star.addEventListener('mouseenter', function() {
        const rating = parseInt(this.getAttribute('data-rating'));
        highlightStars(rating);
      });
    });

    starRatingInput.addEventListener('mouseleave', function() {
      highlightStars(selectedRating);
    });
  }

  // NEW: Highlight stars based on rating
  function highlightStars(rating) {
    if (!starRatingInput) return;
    
    const stars = starRatingInput.querySelectorAll('svg');
    stars.forEach((star, index) => {
      if (index < rating) {
        star.classList.add('active');
      } else {
        star.classList.remove('active');
      }
    });

    if (ratingValueDisplay) {
      if (rating > 0) {
        ratingValueDisplay.textContent = `${rating} ${rating === 1 ? 'star' : 'stars'}`;
      } else {
        ratingValueDisplay.textContent = 'Select a rating';
      }
    }
  }

  // NEW: Update star display
  function updateStarDisplay() {
    highlightStars(selectedRating);
  }

  // NEW: Reset star rating
  function resetStarRating() {
    selectedRating = 0;
    updateStarDisplay();
  }

  // NEW: Render star icons for reviews
  function renderStars(rating) {
    let starsHtml = '';
    for (let i = 1; i <= 5; i++) {
      const fillClass = i <= rating ? '' : 'empty';
      starsHtml += `
        <svg class="${fillClass}" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
          <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
        </svg>
      `;
    }
    return starsHtml;
  }

  // NEW: Calculate average rating
  function calculateAverageRating() {
    const productReviews = reviews.filter(r => r.productId === PRODUCT_ID && !r.isHidden);
    if (productReviews.length === 0) return 0;
    
    const sum = productReviews.reduce((acc, review) => acc + (review.rating || 0), 0);
    return (sum / productReviews.length).toFixed(1);
  }

  // Setup Event Listeners
  function setupEventListeners() {
    writeReviewBtn.addEventListener('click', openNewReviewModal);
    closeModal.addEventListener('click', closeReviewModal);
    cancelReview.addEventListener('click', closeReviewModal);
    submitReview.addEventListener('click', handleSubmitReview);
    
    // UPDATED: Add rating validation
    reviewText.addEventListener('input', () => {
      updateCharCount();
      updateSubmitButton();
    });
    
    // Close modal when clicking outside
    window.addEventListener('click', (e) => {
      if (e.target === reviewModal) {
        closeReviewModal();
      }
    });

    // Close modal on Escape key
    document.addEventListener('keydown', (e) => {
      if (e.key === 'Escape' && reviewModal.style.display === 'block') {
        closeReviewModal();
      }
    });
  }

  // Format date to readable format
  function formatDate(date) {
    const now = new Date();
    const reviewDate = new Date(date);
    const diffTime = Math.abs(now - reviewDate);
    const diffDays = Math.floor(diffTime / (1000 * 60 * 60 * 24));

    if (diffDays === 0) {
      return 'Today';
    } else if (diffDays === 1) {
      return 'Yesterday';
    } else if (diffDays < 7) {
      return `${diffDays} days ago`;
    } else {
      const options = { year: 'numeric', month: 'short', day: 'numeric' };
      return reviewDate.toLocaleDateString('en-US', options);
    }
  }

  // Get user initials for avatar
  function getUserInitials(name) {
    return name
      .split(' ')
      .map(word => word[0])
      .join('')
      .toUpperCase()
      .slice(0, 2);
  }

  // UPDATED: Render all reviews with star ratings
  // UPDATED: Render all reviews with star ratings
function renderReviews() {
  // Filter reviews for current product
  const productReviews = reviews.filter(r => r.productId === PRODUCT_ID);

  // NEW: Update reviews header with average rating
  const avgRating = calculateAverageRating();
  const reviewCount = productReviews.filter(r => !r.isHidden).length;
  
  // UPDATE: Only update the header content, not the entire header
  const reviewsHeader = document.querySelector('.reviews-header');
  if (reviewsHeader) {
    // Check if header content already exists
    let headerContent = reviewsHeader.querySelector('.reviews-header-content');
    if (!headerContent) {
      // Create header content for the first time
      headerContent = document.createElement('div');
      headerContent.className = 'reviews-header-content';
      reviewsHeader.insertBefore(headerContent, reviewsHeader.firstChild);
    }
    
    // Update only the header content (not the button)
    headerContent.innerHTML = `
      <h2>Customer Reviews</h2>
      ${reviewCount > 0 ? `
        <div class="average-rating-display">
          <span class="average-rating-number">${avgRating}</span>
          <div class="average-rating-stars">${renderStars(Math.round(avgRating))}</div>
          <span class="review-count-text">(${reviewCount} ${reviewCount === 1 ? 'review' : 'reviews'})</span>
        </div>
      ` : ''}
    `;
  }

  if (productReviews.length === 0) {
    reviewsContainer.innerHTML = `
      <div class="no-reviews">
        <i class="fas fa-comments"></i>
        <p>No reviews yet</p>
        <p style="font-size: 14px; color: #aaa;">Be the first to share your thoughts!</p>
      </div>
    `;
    return;
  }

  // Sort reviews by date (newest first)
  const sortedReviews = [...productReviews].sort((a, b) => new Date(b.date) - new Date(a.date));

  reviewsContainer.innerHTML = sortedReviews.map(review => {
    const isOwnReview = CURRENT_USER && review.userId === CURRENT_USER.userId;
    
    return `
      <div class="review-card" data-review-id="${review.id}">
        <div class="review-header">
          <div class="reviewer-info">
            <div class="reviewer-avatar">
              ${getUserInitials(review.userName)}
            </div>
            <div class="reviewer-details">
              <h4>${escapeHtml(review.userName)}</h4>
              ${review.rating ? `
                <div class="review-rating">
                  <div class="review-stars">${renderStars(review.rating)}</div>
                </div>
              ` : ''}
              <div class="review-date">${formatDate(review.date)}</div>
            </div>
          </div>
          ${isOwnReview ? `
            <div class="review-actions">
              <button class="review-action-btn edit" onclick="editReview(${review.id})">
                <i class="fas fa-edit"></i> Edit
              </button>
              <button class="review-action-btn delete" onclick="deleteReview(${review.id})">
                <i class="fas fa-trash"></i> Delete
              </button>
            </div>
          ` : ''}
        </div>
        ${review.isHidden ? 
          '<div class="review-hidden">Review hidden by the admin</div>' : 
          `<div class="review-content">${escapeHtml(review.text)}</div>`
        }
      </div>
    `;
  }).join('');
}

  // Escape HTML to prevent XSS
  function escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
  }

  // UPDATED: Open modal for new review
  function openNewReviewModal() {
    // Check if user is logged in
    if (!CURRENT_USER) {
      showLoginRequiredModal();
      return;
    }

    // Check if user has purchased product (PLACEHOLDER - implement later)
    if (!hasUserPurchasedProduct()) {
      showPurchaseRequiredModal();
      return;
    }

    editingReviewId = null;
    modalTitle.textContent = 'Write Your Review';
    reviewText.value = '';
    resetStarRating(); // NEW: Reset star rating
    updateCharCount();
    updateSubmitButton(); // NEW: Update button state
    reviewModal.style.display = 'block';
  }

  // Redirect to login page
  function showLoginRequiredModal() {
    // Store the current page URL to return after login (optional)
    // sessionStorage.setItem('returnUrl', window.location.href);
    
    // Redirect to login page
    window.location.href = '../../../login.html'; 
  }

  // Show purchase required modal (PLACEHOLDER - implement later)
  function showPurchaseRequiredModal() {
    const modal = document.createElement('div');
    modal.className = 'login-required-modal';
    modal.innerHTML = `
      <div class="login-required-content">
        <div class="login-required-icon" style="background: #f39c12;">
          <i class="fas fa-shopping-cart"></i>
        </div>
        <h3>Purchase Required</h3>
        <p>You need to purchase this product before you can write a review.</p>
        <div class="login-required-actions">
          <button class="btn-close-modal" onclick="this.closest('.login-required-modal').remove()">Cancel</button>
          <button class="btn-go-login" onclick="this.closest('.login-required-modal').remove()">Continue Shopping</button>
        </div>
      </div>
    `;
    document.body.appendChild(modal);

    // Close on outside click
    modal.addEventListener('click', (e) => {
      if (e.target === modal) {
        modal.remove();
      }
    });
  }

  // UPDATED: Open modal for editing review
  window.editReview = function(reviewId) {
    if (!CURRENT_USER) return;

    const review = reviews.find(r => r.id === reviewId);
    if (!review || review.userId !== CURRENT_USER.userId) return;

    editingReviewId = reviewId;
    modalTitle.textContent = 'Edit Your Review';
    reviewText.value = review.text;
    selectedRating = review.rating || 0; // NEW: Load existing rating
    updateStarDisplay(); // NEW: Display existing rating
    updateCharCount();
    updateSubmitButton(); // NEW: Update button state
    reviewModal.style.display = 'block';
  };

  // Delete review
  window.deleteReview = function(reviewId) {
    if (!CURRENT_USER) return;

    const review = reviews.find(r => r.id === reviewId);
    if (!review || review.userId !== CURRENT_USER.userId) return;

    if (confirm('Are you sure you want to delete this review?')) {
      reviews = reviews.filter(r => r.id !== reviewId);
      saveReviews();
      renderReviews();
      showSuccessMessage('Review deleted successfully');
    }
  };

  // UPDATED: Close modal
  function closeReviewModal() {
    reviewModal.style.display = 'none';
    editingReviewId = null;
    reviewText.value = '';
    resetStarRating(); // NEW: Reset star rating
  }

  // Update character count
  function updateCharCount() {
    const count = reviewText.value.length;
    charCount.textContent = count;
  }

  // NEW: Update submit button state
  function updateSubmitButton() {
    const hasText = reviewText.value.trim().length > 0;
    const hasRating = selectedRating > 0;
    submitReview.disabled = !(hasText && hasRating);
  }

  // UPDATED: Handle submit review
  function handleSubmitReview() {
    const text = reviewText.value.trim();
    
    if (!text) {
      alert('Please write a review before submitting.');
      return;
    }

    // NEW: Validate star rating
    if (selectedRating === 0) {
      alert('Please select a star rating.');
      return;
    }

    if (!CURRENT_USER) {
      alert('You must be logged in to post a review.');
      closeReviewModal();
      return;
    }

    if (editingReviewId) {
      // Update existing review
      const review = reviews.find(r => r.id === editingReviewId);
      if (review) {
        review.text = text;
        review.rating = selectedRating; // NEW: Save rating
        review.date = new Date().toISOString();
        review.editedAt = new Date().toISOString();
      }
    } else {
      // Create new review
      const newReview = {
        id: Date.now(),
        productId: PRODUCT_ID,
        userId: CURRENT_USER.userId,
        userName: CURRENT_USER.name,
        text: text,
        rating: selectedRating, // NEW: Save rating
        date: new Date().toISOString(),
        isHidden: false
      };
      
      reviews.push(newReview);
    }

    saveReviews();
    renderReviews();
    closeReviewModal();
    
    showSuccessMessage(editingReviewId ? 'Review updated successfully' : 'Review posted successfully');
  }

  // Save reviews to localStorage
  function saveReviews() {
    localStorage.setItem('product_reviews', JSON.stringify(reviews));
  }

  // Show success message
  function showSuccessMessage(message) {
    const successDiv = document.createElement('div');
    successDiv.className = 'review-success-message';
    successDiv.innerHTML = `
      <i class="fas fa-check-circle"></i>
      <span>${message}</span>
    `;
    document.body.appendChild(successDiv);

    setTimeout(() => {
      successDiv.classList.add('show');
    }, 10);

    setTimeout(() => {
      successDiv.classList.remove('show');
      setTimeout(() => successDiv.remove(), 300);
    }, 3000);
  }

  // Initialize on page load
  init();
})();