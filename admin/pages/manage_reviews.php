<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grizzly Paws - Manage Reviews</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <style>
        .content {
            padding: 30px;
            max-width: 2000px;
            margin: 0 auto;
            max-height: calc(100vh - 80px);
            overflow-y: auto;
        }

        

    </style>
</head>
<body>
    <?php include '../includes/header.php'; ?>
    <!-- Notification Container for displaying alerts -->
    <div class="notification-container" id="notificationContainer"></div>

    <!-- Main Container with Sidebar and Content -->
    <div class="main-container">
        <!-- Sidebar Navigation -->
        <?php include '../includes/sidebar.php'; ?>
    
        <div class="content">
            <h1 class="dashboard-title">Manage Reviews</h1>

             <div class="controls">
                <div class="search-box">
                    <input type="text" id="searchInput" placeholder="Search by review ID, and reviewer...">
                    <i class="fas fa-search"></i>
                </div>

                <div class="filter-section">
                <select id="category-filter" class="category-dropdown">
                    <option value="all">All Categories</option>
                    <option value="dog">Dog</option>
                    <option value="cat">Cat</option>
                    <option value="small-pet">Small Pet</option>
                    <option value="feathered">Feathered</option>
                    <option value="aquatic">Aquatic</option>
                </select>
                
                <select id="subcategory-filter" class="subcategory-dropdown">
                    <option value="all">All Subcategories</option>
                </select>
            </div>
             </div>
            

            <div class="reviews-table-container">
                <table class="reviews-table">
                    <thead>
                        <tr>
                            <th>Review ID</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Subcategory</th>
                            <th>Rating</th>
                            <th>Reviewer</th>
                            <th>Date</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="reviews-table-body">
                        <tr data-category="dog" data-subcategory="dry-dog-food">
                            <td><strong>REV001</strong></td>
                            <td>Pedigree Adult Dry Dog Food</td>
                            <td>Dog</td>
                            <td>Dry Dog Food</td>
                            <td>
                                <div class="star-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </td>
                            <td>John Smith</td>
                            <td>May 10, 2025</td>
                            <td>
                                <div class="action-dropdown">
                                    <button class="action-btn">
                                        <i class="fas fa-ellipsis-h"></i>
                                    </button>
                                    <div class="action-menu">
                                        <div class="action-item" data-action="view-review">View Review</div>
                                        <div class="action-item" data-action="hide-review">Hide Review</div>
                                        <div class="action-item delete" data-action="delete">Delete</div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr data-category="cat" data-subcategory="cat-toys">
                            <td><strong>REV002</strong></td>
                            <td>Interactive Laser Pointer</td>
                            <td>Cat</td>
                            <td>Cat Toys</td>
                            <td>
                                <div class="star-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </td>
                            <td>Sarah Johnson</td>
                            <td>May 8, 2025</td>
                            <td>
                                <div class="action-dropdown">
                                    <button class="action-btn">
                                        <i class="fas fa-ellipsis-h"></i>
                                    </button>
                                    <div class="action-menu">
                                        <div class="action-item" data-action="view-review">View Review</div>
                                        <div class="action-item" data-action="hide-review">Hide Review</div>
                                        <div class="action-item delete" data-action="delete">Delete</div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr data-category="dog" data-subcategory="dog-treats">
                            <td><strong>REV003</strong></td>
                            <td>Pedigree Dental Stix</td>
                            <td>Dog</td>
                            <td>Dog Treats</td>
                            <td>
                                <div class="star-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </td>
                            <td>Mike Thompson</td>
                            <td>May 5, 2025</td>
                            <td>
                                <div class="action-dropdown">
                                    <button class="action-btn">
                                        <i class="fas fa-ellipsis-h"></i>
                                    </button>
                                    <div class="action-menu">
                                        <div class="action-item" data-action="view-review">View Review</div>
                                        <div class="action-item" data-action="hide-review">Hide Review</div>
                                        <div class="action-item delete" data-action="delete">Delete</div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr data-category="cat" data-subcategory="wet-cat-food">
                            <td><strong>REV004</strong></td>
                            <td>Royal Canin Light Weight Care Wet Food</td>
                            <td>Cat</td>
                            <td>Wet Cat Food</td>
                            <td>
                                <div class="star-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </td>
                            <td>Emily Davis</td>
                            <td>May 3, 2025</td>
                            <td>
                                <div class="action-dropdown">
                                    <button class="action-btn">
                                        <i class="fas fa-ellipsis-h"></i>
                                    </button>
                                    <div class="action-menu">
                                        <div class="action-item" data-action="view-review">View Review</div>
                                        <div class="action-item" data-action="hide-review">Hide Review</div>
                                        <div class="action-item delete" data-action="delete">Delete</div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr data-category="dog" data-subcategory="dog-toys">
                            <td><strong>REV00</strong></td>
                            <td>Durable Chew Toy</td>
                            <td>Dog</td>
                            <td>Dog Toys</td>
                            <td>
                                <div class="star-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </td>
                            <td>Robert Wilson</td>
                            <td>May 1, 2025</td>
                            <td>
                                <div class="action-dropdown">
                                    <button class="action-btn">
                                        <i class="fas fa-ellipsis-h"></i>
                                    </button>
                                    <div class="action-menu">
                                        <div class="action-item" data-action="view-review">View Review</div>
                                        <div class="action-item" data-action="hide-review">Hide Review</div>
                                        <div class="action-item delete" data-action="delete">Delete</div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                
                <div class="pagination">
                    <div class="pagination-content">
                        <div class="page-numbers">
                            <button class="page-btn prev-btn">&lt;</button>
                            <button class="page-number active">1</button>
                            <button class="page-btn next-btn">&gt;</button>
                        </div>
                        <button class="view-hidden-reviews-btn" id="viewHiddenReviewsBtn">
                            <i class="fas fa-eye"></i>
                            View Hidden Reviews
                        </button>
                    </div>
                </div>
            </div>

            <div class="footer">
                Copyright © 2025 GrizzlyPaws. All rights reserved
            </div>
        </div>
    </div>

    <!-- View Review Modal -->
    <div id="viewReviewModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h3>Review Details</h3>
        </div>
        <div class="modal-body">
            <div class="review-details">
                <div class="review-detail-row">
                    <div class="review-detail-label">Product:</div>
                    <div class="review-detail-value" id="viewProductName"></div>
                </div>
                <div class="review-detail-row">
                    <div class="review-detail-label">Category:</div>
                    <div class="review-detail-value" id="viewCategory"></div>
                </div>
                <div class="review-detail-row">
                    <div class="review-detail-label">Subcategory:</div>
                    <div class="review-detail-value" id="viewSubcategory"></div>
                </div>
                <div class="review-detail-row">
                    <div class="review-detail-label">Reviewer:</div>
                    <div class="review-detail-value" id="viewReviewer"></div>
                </div>
                <div class="review-detail-row">
                    <div class="review-detail-label">Date:</div>
                    <div class="review-detail-value" id="viewDate"></div>
                </div>
                <div class="review-detail-row">
                    <div class="review-detail-label">Rating:</div>
                    <div class="review-detail-value" id="viewRating"></div>
                </div>
                <div class="review-detail-row full-width">
                    <div class="review-detail-label">Review:</div>
                    <div class="review-detail-value" id="viewReviewText"></div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn-cancel">Close</button>
        </div>
    </div>
</div>

    <!-- Delete Confirmation Modal -->
    <div id="deleteConfirmationModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Delete Review</h3>
            </div>
            <div class="modal-body">
                <div class="delete-confirmation">
                    <i class="fas fa-exclamation-triangle"></i>
                    <h4>Are you sure?</h4>
                    <p>This action cannot be undone. This will permanently delete the review for <strong id="deleteReviewProduct"></strong>.</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-delete">Delete</button>
            </div>
        </div>
    </div>

    <!-- Hidden Reviews Modal -->
    <div id="hiddenReviewsModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Hidden Reviews</h3>
            </div>
            <div class="modal-body">
                <div class="hidden-reviews-list" id="hiddenReviewsList">
                </div>
                <div class="no-hidden-reviews" id="noHiddenReviews">
                    <i class="fas fa-eye-slash"></i>
                    <p>No hidden reviews found.</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Close</button>
                <button type="button" class="btn-restore-all" id="restoreAllBtn">Restore All</button>
            </div>
        </div>
    </div>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        const categoryFilter = document.getElementById('category-filter');
        const subcategoryFilter = document.getElementById('subcategory-filter');
        const reviewsTableBody = document.getElementById('reviews-table-body');
        const viewReviewModal = document.getElementById('viewReviewModal');
        const deleteConfirmationModal = document.getElementById('deleteConfirmationModal');
        const hiddenReviewsModal = document.getElementById('hiddenReviewsModal');
        const hiddenReviewsList = document.getElementById('hiddenReviewsList');
        const noHiddenReviews = document.getElementById('noHiddenReviews');
        
        const cancelBtns = document.querySelectorAll('.btn-cancel');
        const deleteBtn = document.querySelector('.btn-delete');
        const viewHiddenReviewsBtn = document.getElementById('viewHiddenReviewsBtn');
        const restoreAllBtn = document.getElementById('restoreAllBtn');
        const notificationContainer = document.getElementById('notificationContainer');
        
        let currentDeleteRowIndex = null;
        let currentDeleteId = null; // Store ID for API deletion
        let hiddenReviews = [];
        let allReviews = []; // Store fetched reviews

        // Initial Load
        fetchReviews();

        async function fetchReviews() {
            try {
                const response = await fetch('/grizzlypaws-backend/project-root/api/admin_reviews.php');
                const result = await response.json();
                
                if (result.status === 'success') {
                    allReviews = result.data;
                    renderReviewsTable(allReviews);
                } else {
                    console.error("Failed to fetch reviews: " + result.message);
                }
            } catch (error) {
                console.error("Error fetching reviews:", error);
            }
        }

        function renderReviewsTable(reviews) {
            reviewsTableBody.innerHTML = '';
            
            // Filter out hidden reviews for the main table (optional: or show them dimmed)
            // But requirement says "when admin hide it... still visible to the user... BUT hidden in other users"
            // Usually Admin panel shows ALL. If we want a separate "Hidden Reviews" tab/modal, we filter here.
            // The existing UI has a "View Hidden Reviews" button so let's separate them.
            
            const visibleReviews = reviews.filter(r => r.is_hidden != 1);
            hiddenReviews = reviews.filter(r => r.is_hidden == 1); // Store for modal

            if (visibleReviews.length === 0) {
                reviewsTableBody.innerHTML = '<tr><td colspan="8" style="text-align:center;">No visible reviews found.</td></tr>';
            } else {
                visibleReviews.forEach((review, index) => {
                    const tr = document.createElement('tr');
                    tr.setAttribute('data-category', (review.category_name || '').toLowerCase());
                    tr.setAttribute('data-subcategory', (review.subcategory_name || '').toLowerCase().replace(/\s+/g, '-'));
                    tr.setAttribute('data-id', review.review_id);

                    const starsHtml = renderStars(parseInt(review.rating));
                    const formattedDate = new Date(review.created_at).toLocaleDateString();

                    tr.innerHTML = `
                        <td><strong>${review.review_id}</strong></td>
                        <td>${review.product_name}</td>
                        <td>${review.category_name}</td>
                        <td>${review.subcategory_name}</td>
                        <td><div class="star-rating">${starsHtml}</div></td>
                        <td>${review.reviewer_name || 'Anonymous'}</td>
                        <td>${formattedDate}</td>
                        <td>
                            <div class="action-dropdown">
                                <button class="action-btn"><i class="fas fa-ellipsis-h"></i></button>
                                <div class="action-menu">
                                    <div class="action-item" data-action="view-review">View Review</div>
                                    <div class="action-item" data-action="hide-review">Hide Review</div>
                                    <div class="action-item delete" data-action="delete">Delete</div>
                                </div>
                            </div>
                        </td>
                    `;
                    reviewsTableBody.appendChild(tr);
                });
            }
            attachActionListeners();
        }

        function renderStars(rating) {
            let html = '';
            for (let i = 1; i <= 5; i++) {
                html += `<i class="fa${i <= rating ? 's' : 'r'} fa-star"></i>`;
            }
            return html;
        }

        function attachActionListeners() {
            // Dropdown toggles
            document.querySelectorAll('.action-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation(); // Prevent closing immediately
                    
                    // Close others
                    document.querySelectorAll('.action-menu.show').forEach(m => {
                        if (m !== this.nextElementSibling) m.classList.remove('show');
                    });

                    const menu = this.nextElementSibling;
                    const rect = this.getBoundingClientRect();
                    menu.style.position = 'fixed';
                    menu.style.left = (rect.left - 100) + 'px';
                    menu.style.top = (rect.bottom + 5) + 'px';
                    menu.classList.toggle('show');
                });
            });

            // View Review
            document.querySelectorAll('.action-item[data-action="view-review"]').forEach(item => {
                item.addEventListener('click', function() {
                    const tr = this.closest('tr') || getRowFromMenu(this);
                    const id = tr.getAttribute('data-id');
                    const review = allReviews.find(r => r.review_id == id);
                    
                    if (review) {
                        document.getElementById('viewProductName').textContent = review.product_name;
                        document.getElementById('viewCategory').textContent = review.category_name;
                        document.getElementById('viewSubcategory').textContent = review.subcategory_name;
                        document.getElementById('viewReviewer').textContent = review.reviewer_name || 'Anonymous';
                        document.getElementById('viewDate').textContent = new Date(review.created_at).toLocaleDateString();
                        
                        const ratingContainer = document.getElementById('viewRating');
                        ratingContainer.innerHTML = `<div class="star-rating">${renderStars(parseInt(review.rating))}</div>`;
                        
                        document.getElementById('viewReviewText').textContent = review.comment;
                        
                        viewReviewModal.style.display = 'block';
                    }
                    closeAllMenus();
                });
            });

            // Delete Review
            document.querySelectorAll('.action-item[data-action="delete"]').forEach(item => {
                item.addEventListener('click', function() {
                    const tr = this.closest('tr') || getRowFromMenu(this);
                    const id = tr.getAttribute('data-id');
                    const review = allReviews.find(r => r.review_id == id);

                    if (review) {
                         document.getElementById('deleteReviewProduct').textContent = review.product_name;
                         currentDeleteId = id;
                         currentDeleteRowIndex = tr; // Store row for visual removal if needed
                         deleteConfirmationModal.style.display = 'block';
                    }
                    closeAllMenus();
                });
            });
            
             // Hide Review
            document.querySelectorAll('.action-item[data-action="hide-review"]').forEach(item => {
                item.addEventListener('click', async function() {
                    const tr = this.closest('tr') || getRowFromMenu(this);
                    const id = tr.getAttribute('data-id');
                    
                    await toggleHideReview(id, 1);
                    closeAllMenus();
                });
            });
        }
        
        async function toggleHideReview(id, isHidden) {
             try {
                const response = await fetch('/grizzlypaws-backend/project-root/api/admin_reviews.php', {
                    method: 'POST',
                    headers: {'Content-Type': 'application/json'},
                    body: JSON.stringify({
                        action: 'toggle_hidden',
                        id: id,
                        is_hidden: isHidden
                    })
                });
                const res = await response.json();
                
                if (res.status === 'success') {
                    showNotification('success', 'Success', isHidden ? 'Review Hidden API Success' : 'Review Restored API Success');
                    fetchReviews(); // Reload everything
                } else {
                    showNotification('error', 'Error', res.message);
                }
            } catch (err) {
                console.error(err);
                showNotification('error', 'Error', 'Failed to update review status');
            }
        }
        
        function updateHiddenReviewsDisplay() {
            hiddenReviewsList.innerHTML = '';
            
            if (hiddenReviews.length === 0) {
                noHiddenReviews.style.display = 'block';
                restoreAllBtn.style.display = 'none';
                return;
            }
            
            noHiddenReviews.style.display = 'none';
            restoreAllBtn.style.display = 'block';
            
            hiddenReviews.forEach((review, index) => {
                const reviewElement = document.createElement('div');
                reviewElement.className = 'hidden-review-item';
                reviewElement.innerHTML = `
                    <div class="hidden-review-content">
                        <div class="hidden-review-product">${review.product_name}</div>
                        <div class="hidden-review-details">
                            <span class="hidden-review-reviewer">${review.reviewer_name || 'Anonymous'}</span>
                            <span class="hidden-review-date">${new Date(review.created_at).toLocaleDateString()}</span>
                        </div>
                    </div>
                    <button class="restore-review-btn" data-id="${review.review_id}">
                        <i class="fas fa-eye"></i> Restore
                    </button>
                `;
                hiddenReviewsList.appendChild(reviewElement);
            });
            
            document.querySelectorAll('.restore-review-btn').forEach(btn => {
                btn.addEventListener('click', async function() {
                    const id = this.getAttribute('data-id');
                    await toggleHideReview(id, 0); // Restore (unhide)
                });
            });
        }
        
        // Helper to find row when menu is fixed positioned
        function getRowFromMenu(menuItem) {
             // Since we move menus to body/fixed, finding "closest tr" might fail if we don't handle DOM structure carefully. 
             // But in my render logic, menu is inside .action-dropdown inside TD inside TR. 
             // IF I use fixed positioning logic from previous code, the menu might be detached visually but still in DOM? 
             // Actually previous code moved it? No, previous code just set style.position fixed. It stays in DOM.
             return menuItem.closest('tr');
        }

        function closeAllMenus() {
            document.querySelectorAll('.action-menu').forEach(m => m.classList.remove('show'));
        }

        // Close menus on click outside
        document.addEventListener('click', function(e) {
             if (!e.target.closest('.action-btn')) {
                closeAllMenus();
             }
        });

        // Delete Confirm
        deleteBtn.addEventListener('click', async function() {
            if (currentDeleteId) {
                try {
                    const response = await fetch('/grizzlypaws-backend/project-root/api/admin_reviews.php', {
                        method: 'DELETE',
                        headers: {'Content-Type': 'application/json'},
                        body: JSON.stringify({id: currentDeleteId})
                    });
                    const res = await response.json();
                    
                    if (res.status === 'success') {
                        showNotification('success', 'Success', 'Review deleted successfully');
                        fetchReviews(); // Reload table
                    } else {
                        showNotification('error', 'Error', res.message);
                    }
                } catch (err) {
                    console.error(err);
                    showNotification('error', 'Error', 'Failed to delete review');
                }
                deleteConfirmationModal.style.display = 'none';
                currentDeleteId = null;
            }
        });

        // Notification Logic
        function showNotification(type, title, message) {
            // Re-use existing logic or simplify
            const notification = document.createElement('div');
            notification.className = `notification ${type}`;
            notification.innerHTML = `
                <div class="notification-icon"><i class="fas fa-info-circle"></i></div>
                <div class="notification-content">
                    <div class="notification-title">${title}</div>
                    <div class="notification-message">${message}</div>
                </div>
            `;
            notificationContainer.appendChild(notification);
            setTimeout(() => notification.classList.add('show'), 10);
            setTimeout(() => {
                notification.classList.remove('show');
                setTimeout(() => notification.remove(), 300);
            }, 3000);
        }

        // Modal Close Logic
        cancelBtns.forEach(btn => btn.addEventListener('click', function() {
            this.closest('.modal').style.display = 'none';
        }));
        
        window.addEventListener('click', function(e) {
            if (e.target.classList.contains('modal')) e.target.style.display = 'none';
        });

        // Filter Logic (Simplified client-side filtering for now)
        function filterReviews() {
             const cat = categoryFilter.value.toLowerCase();
             const sub = subcategoryFilter.value.toLowerCase();
             
             const filtered = allReviews.filter(r => {
                 const rCat = (r.category_name || '').toLowerCase();
                 const rSub = (r.subcategory_name || '').toLowerCase().replace(/\s+/g, '-');
                 
                 const catMatch = cat === 'all' || rCat === cat;
                 const subMatch = sub === 'all' || rSub === sub;
                 
                 return catMatch && subMatch;
             });
             renderReviewsTable(filtered);
        }

        categoryFilter.addEventListener('change', filterReviews);
        subcategoryFilter.addEventListener('change', filterReviews);

        // View Hidden Reviews Button
        viewHiddenReviewsBtn.addEventListener('click', function() {
            updateHiddenReviewsDisplay();
            hiddenReviewsModal.style.display = 'block';
        });

        // Restore All Logic
        restoreAllBtn.addEventListener('click', async function() {
             // In real app we might need a batch API or loop. 
             // Loops for now
             for (let r of hiddenReviews) {
                 await toggleHideReview(r.review_id, 0);
             }
            hiddenReviewsModal.style.display = 'none';
        });
    });
</script>

</body>
</html>