(function() {
  // Get current logged-in user from session
  let CURRENT_USER = null;
  
  // Store reviews (fetched from API)
  let reviews = [];
  
  // PRODUCT ID
  const PRODUCT_ID = getProductId(); 

  let editingReviewId = null;
  let selectedRating = 0;

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
  const starRatingInput = document.getElementById('starRatingInput'); 
  const ratingValueDisplay = document.getElementById('ratingValueDisplay');

  // Initialize
  function init() {
    loadCurrentUser();
    fetchReviews(); // Fetch from server
    setupEventListeners();
    updateWriteReviewButton();
    setupStarRating();
  }

  // Load current user from session storage (set by login.js)
  function loadCurrentUser() {
    const userId = sessionStorage.getItem('user_id');
    const email = sessionStorage.getItem('loggedInUser'); // stored as email
    
    if (userId) {
      CURRENT_USER = {
        userId: userId,
        email: email,
        name: 'You' // We might not have the name in sessionStorage, but ID is enough for logic
      };
    } else {
      CURRENT_USER = null;
    }
  }

  function getProductId() {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get('id') || urlParams.get('productId') || '0';
  }

  function updateWriteReviewButton() {
    if (!CURRENT_USER) {
      writeReviewBtn.innerHTML = '<i class="fas fa-lock"></i> Login to Review';
      // writeReviewBtn.classList.add('disabled'); // Allow clicking to show prompt
    } else {
      writeReviewBtn.innerHTML = '<i class="fas fa-pen"></i> Write a Review';
      writeReviewBtn.classList.remove('disabled');
    }
  }

  function setupStarRating() {
    if (!starRatingInput) return;
    
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
        ratingValueDisplay.textContent = rating > 0 ? `${rating} ${rating === 1 ? 'star' : 'stars'}` : 'Select a rating';
    }
  }

  function updateStarDisplay() {
    highlightStars(selectedRating);
  }

  function resetStarRating() {
    selectedRating = 0;
    updateStarDisplay();
  }

  function renderStars(rating) {
    let starsHtml = '';
    for (let i = 1; i <= 5; i++) {
        const fillClass = i <= rating ? '' : 'empty';
        starsHtml += `<svg class="${fillClass}" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>`;
    }
    return starsHtml;
  }

  function calculateAverageRating() {
    if (reviews.length === 0) return 0;
    const sum = reviews.reduce((acc, review) => acc + (review.rating || 0), 0);
    return (sum / reviews.length).toFixed(1);
  }

  function setupEventListeners() {
    writeReviewBtn.addEventListener('click', openNewReviewModal);
    closeModal.addEventListener('click', closeReviewModal);
    cancelReview.addEventListener('click', closeReviewModal);
    submitReview.addEventListener('click', handleSubmitReview);
    
    reviewText.addEventListener('input', () => {
      updateCharCount();
      updateSubmitButton();
    });
    
    window.addEventListener('click', (e) => {
      if (e.target === reviewModal) closeReviewModal();
    });

    document.addEventListener('keydown', (e) => {
      if (e.key === 'Escape' && reviewModal.style.display === 'block') closeReviewModal();
    });
  }

  function formatDate(dateString) {
      if (!dateString) return '';
      const date = new Date(dateString);
      return date.toLocaleDateString('en-US', { year: 'numeric', month: 'short', day: 'numeric' });
  }

  function getUserInitials(name) {
      if (!name) return 'U';
      return name.split(' ').map(word => word[0]).join('').toUpperCase().slice(0, 2);
  }

  // Fetch reviews from API
  async function fetchReviews() {
      try {
          const response = await fetch(`../api/reviews.php?product_id=${PRODUCT_ID}`);
          const data = await response.json();
          
          if (data.status === 'success') {
              reviews = data.data;
              renderReviews();
          } else {
              console.error('Failed to load reviews:', data.message);
          }
      } catch (err) {
          console.error('Error fetching reviews:', err);
      }
  }

  function renderReviews() {
    // Calculate Average
    const avgRating = calculateAverageRating();
    const reviewCount = reviews.length;
    
    // Update Header
    const reviewsHeader = document.querySelector('.reviews-header');
    if (reviewsHeader) {
        let headerContent = reviewsHeader.querySelector('.reviews-header-content');
        if (!headerContent) {
            headerContent = document.createElement('div');
            headerContent.className = 'reviews-header-content';
            reviewsHeader.insertBefore(headerContent, reviewsHeader.firstChild);
        }
        
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

    if (reviews.length === 0) {
        reviewsContainer.innerHTML = `
        <div class="no-reviews">
            <i class="fas fa-comments"></i>
            <p>No reviews yet</p>
            <p style="font-size: 14px; color: #aaa;">Be the first to share your thoughts!</p>
        </div>
        `;
        return;
    }

    reviewsContainer.innerHTML = reviews.map(review => {
        // loose comparison for IDs (string vs int from DB)
        const isOwnReview = CURRENT_USER && (review.userId == CURRENT_USER.userId); 
        
        return `
        <div class="review-card" data-review-id="${review.id}">
            <div class="review-header">
            <div class="reviewer-info">
                <div class="reviewer-avatar">${getUserInitials(review.userName)}</div>
                <div class="reviewer-details">
                <h4>${escapeHtml(review.userName)}</h4>
                <div class="review-rating">
                    <div class="review-stars">${renderStars(review.rating)}</div>
                </div>
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
            <div class="review-content">${escapeHtml(review.text)}</div>
        </div>
        `;
    }).join('');
  }

  function escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
  }

  function openNewReviewModal() {
    if (!CURRENT_USER) {
      showLoginRequiredModal();
      return;
    }

    editingReviewId = null;
    modalTitle.textContent = 'Write Your Review';
    reviewText.value = '';
    resetStarRating();
    updateCharCount();
    updateSubmitButton();
    reviewModal.style.display = 'block';
  }

  function showLoginRequiredModal() {
    window.location.href = '/grizzlypaws-backend/project-root/pages/login.php'; 
  }

  window.editReview = function(reviewId) {
    if (!CURRENT_USER) return;
    const review = reviews.find(r => r.id === reviewId);
    if (!review) return;

    editingReviewId = reviewId;
    modalTitle.textContent = 'Edit Your Review';
    reviewText.value = review.text;
    selectedRating = review.rating || 0;
    updateStarDisplay();
    updateCharCount();
    updateSubmitButton();
    reviewModal.style.display = 'block';
  };

  window.deleteReview = async function(reviewId) {
    if (!CURRENT_USER) return;
    if (!confirm('Are you sure you want to delete this review?')) return;

    try {
        const response = await fetch('../api/reviews.php', {
            method: 'DELETE',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify({ id: reviewId })
        });
        const data = await response.json();

        if (data.status === 'success') {
            showSuccessMessage('Review deleted successfully');
            fetchReviews(); // Reload
        } else {
            alert(data.message || 'Failed to delete');
        }
    } catch (err) {
        console.error(err);
        alert('Server error');
    }
  };

  function closeReviewModal() {
    reviewModal.style.display = 'none';
    editingReviewId = null;
    reviewText.value = '';
    resetStarRating();
  }

  function updateCharCount() {
    charCount.textContent = reviewText.value.length;
  }

  function updateSubmitButton() {
    const hasText = reviewText.value.trim().length > 0;
    const hasRating = selectedRating > 0;
    submitReview.disabled = !(hasText && hasRating);
  }

  async function handleSubmitReview() {
    const text = reviewText.value.trim();
    if (!text || selectedRating === 0) return;

    if (!CURRENT_USER) {
      alert('Login required');
      return;
    }

    const payload = {
        productId: PRODUCT_ID,
        rating: selectedRating,
        text: text
    };

    let method = 'POST';
    if (editingReviewId) {
        method = 'PUT';
        payload.id = editingReviewId;
    }

    try {
        const response = await fetch('../api/reviews.php', {
            method: method,
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(payload)
        });
        const data = await response.json();

        if (data.status === 'success') {
            showSuccessMessage(editingReviewId ? 'Review updated' : 'Review posted');
            closeReviewModal();
            fetchReviews(); // Reload
        } else {
            alert(data.message || 'Operation failed');
        }
    } catch (err) {
        console.error(err);
        alert('Server error');
    }
  }

  function showSuccessMessage(message) {
    const successDiv = document.createElement('div');
    successDiv.className = 'review-success-message';
    successDiv.innerHTML = `<i class="fas fa-check-circle"></i><span>${message}</span>`;
    document.body.appendChild(successDiv);
    setTimeout(() => successDiv.classList.add('show'), 10);
    setTimeout(() => {
        successDiv.classList.remove('show');
        setTimeout(() => successDiv.remove(), 300);
    }, 3000);
  }

  init();
})();