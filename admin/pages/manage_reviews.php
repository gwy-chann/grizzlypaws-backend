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
        let hiddenReviews = [];
        
        const subcategories = {
            'dog': ['Dry Dog Food', 'Wet Dog Food', 'Dog Treats', 'Dog Toys', 'Dog Accessories'],
            'cat': ['Dry Cat Food', 'Wet Cat Food', 'Cat Treats', 'Cat Toys', 'Cat Litter'],
            'small-pet': ['Rabbit Food', 'Hamster Food', 'Guinea Pig Food', 'Small Pet Toys'],
            'feathered': ['Bird Food', 'Bird Cages', 'Bird Toys'],
            'aquatic': ['Fish Food', 'Aquarium Supplies', 'Water Treatments']
        };

        const reviewData = [
            {
                product: "Pedigree Adult Dry Dog Food",
                category: "Dog",
                subcategory: "Dry Dog Food",
                reviewer: "John Smith",
                date: "May 10, 2025",
                rating: 5,
                text: "My dog absolutely loves this food! His coat is shinier and he has more energy. I've been using this brand for over a year now and I'm very satisfied with the results. Would definitely recommend to other dog owners."
            },
            {
                product: "Interactive Laser Pointer",
                category: "Cat",
                subcategory: "Cat Toys",
                reviewer: "Sarah Johnson",
                date: "May 8, 2025",
                rating: 4,
                text: "My cats enjoy playing with this laser pointer. It keeps them active and entertained. The only downside is that the battery life could be better. Overall, a good purchase for the price."
            },
            {
                product: "Pedigree Dental Stix",
                category: "Dog",
                subcategory: "Dog Treats",
                reviewer: "Mike Thompson",
                date: "May 5, 2025",
                rating: 3,
                text: "My dog likes the taste of these dental sticks, but I'm not sure how effective they are for dental health. They seem to help with breath freshness but I haven't noticed much improvement in plaque reduction."
            },
            {
                product: "Royal Canin Light Weight Care Wet Food",
                category: "Cat",
                subcategory: "Wet Cat Food",
                reviewer: "Emily Davis",
                date: "May 3, 2025",
                rating: 2,
                text: "My cat refused to eat this food. I tried mixing it with her regular food but she would pick around it. The texture seems different from other wet foods we've tried. Disappointed with this purchase."
            },
            {
                product: "Durable Chew Toy",
                category: "Dog",
                subcategory: "Dog Toys",
                reviewer: "Robert Wilson",
                date: "May 1, 2025",
                rating: 5,
                text: "This chew toy is amazing! My German Shepherd hasn't been able to destroy it after weeks of chewing. It's the perfect size and texture for aggressive chewers. Highly recommended for large breed dogs."
            }
        ];

        function populateSubcategories(category) {
            subcategoryFilter.innerHTML = '<option value="all">All Subcategories</option>';
            
            if (category !== 'all' && subcategories[category]) {
                subcategories[category].forEach(subcat => {
                    const option = document.createElement('option');
                    option.value = subcat.toLowerCase().replace(/\s+/g, '-');
                    option.textContent = subcat;
                    subcategoryFilter.appendChild(option);
                });
            }
            
            filterReviews();
        }

        function showNotification(type, title, message, duration = 4000) {
            const notification = document.createElement('div');
            notification.className = `notification ${type}`;
            
            const icons = {
                success: 'fas fa-check-circle',
                error: 'fas fa-exclamation-circle',
                warning: 'fas fa-exclamation-triangle'
            };
            
            notification.innerHTML = `
                <div class="notification-icon">
                    <i class="${icons[type]}"></i>
                </div>
                <div class="notification-content">
                    <div class="notification-title">${title}</div>
                    <div class="notification-message">${message}</div>
                </div>
                <button class="notification-close">
                    <i class="fas fa-times"></i>
                </button>
            `;
            
            notificationContainer.appendChild(notification);
            
            setTimeout(() => {
                notification.classList.add('show');
            }, 10);
            
            const closeBtn = notification.querySelector('.notification-close');
            closeBtn.addEventListener('click', () => {
                hideNotification(notification);
            });
            
            if (duration > 0) {
                setTimeout(() => {
                    hideNotification(notification);
                }, duration);
            }
        }
        
        function hideNotification(notification) {
            notification.classList.remove('show');
            notification.classList.add('hide');
            
            setTimeout(() => {
                if (notification.parentNode) {
                    notification.parentNode.removeChild(notification);
                }
            }, 300);
        }
        
        function filterReviews() {
            const selectedCategory = categoryFilter.value;
            const selectedSubcategory = subcategoryFilter.value;
            const rows = reviewsTableBody.querySelectorAll('tr');
            
            rows.forEach(row => {
                const rowCategory = row.getAttribute('data-category');
                const rowSubcategory = row.getAttribute('data-subcategory');
                
                let showRow = true;
                
                if (selectedCategory !== 'all' && rowCategory !== selectedCategory) {
                    showRow = false;
                }
                
                if (selectedSubcategory !== 'all' && rowSubcategory !== selectedSubcategory) {
                    showRow = false;
                }
                
                if (showRow) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            });
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
                        <div class="hidden-review-product">${review.product}</div>
                        <div class="hidden-review-details">
                            <span class="hidden-review-reviewer">${review.reviewer}</span>
                            <span class="hidden-review-date">${review.date}</span>
                        </div>
                    </div>
                    <button class="restore-review-btn" data-index="${index}">
                        <i class="fas fa-eye"></i> Restore
                    </button>
                `;
                hiddenReviewsList.appendChild(reviewElement);
            });
            
            document.querySelectorAll('.restore-review-btn').forEach(btn => {
                btn.addEventListener('click', function() {
                    const index = parseInt(this.getAttribute('data-index'));
                    restoreReview(index);
                });
            });
        }
        
        function hideReview(rowIndex) {
            const row = reviewsTableBody.children[rowIndex];
            const productName = row.cells[0].textContent;
            const category = row.cells[1].textContent;
            const subcategory = row.cells[2].textContent;
            const reviewer = row.cells[4].textContent;
            const date = row.cells[5].textContent;
            const rating = reviewData[rowIndex].rating;
            const reviewText = reviewData[rowIndex].text;
            
            hiddenReviews.push({
                product: productName,
                category: category,
                subcategory: subcategory,
                reviewer: reviewer,
                date: date,
                rating: rating,
                text: reviewText,
                rowIndex: rowIndex
            });
            
            row.style.display = 'none';
            
            showNotification('success', 'Review Hidden', `Review for "${productName}" has been hidden successfully!`);
        }
        
        function restoreReview(index) {
            const review = hiddenReviews[index];
            
            hiddenReviews.splice(index, 1);
            
            const row = reviewsTableBody.children[review.rowIndex];
            row.style.display = '';
            
            updateHiddenReviewsDisplay();
            
            showNotification('success', 'Review Restored', `Review for "${review.product}" has been restored.`);
        }
        
        function restoreAllReviews() {
            hiddenReviews.forEach(review => {
                const row = reviewsTableBody.children[review.rowIndex];
                row.style.display = '';
            });
            
            hiddenReviews = [];
            updateHiddenReviewsDisplay();
            hiddenReviewsModal.style.display = 'none';
            
            showNotification('success', 'All Reviews Restored', 'All hidden reviews have been restored.');
        }
        
        categoryFilter.addEventListener('change', function() {
            populateSubcategories(this.value);
        });
        
        subcategoryFilter.addEventListener('change', filterReviews);
        
        viewHiddenReviewsBtn.addEventListener('click', function() {
            updateHiddenReviewsDisplay();
            hiddenReviewsModal.style.display = 'block';
        });
        
        restoreAllBtn.addEventListener('click', restoreAllReviews);
        
        document.addEventListener('click', function(e) {
            if (!e.target.closest('.action-dropdown')) {
                document.querySelectorAll('.action-menu').forEach(menu => {
                    menu.classList.remove('show');
                });
            }
            
            if (e.target.closest('.action-btn')) {
                const actionBtn = e.target.closest('.action-btn');
                const menu = actionBtn.nextElementSibling;
                
                document.querySelectorAll('.action-menu').forEach(m => {
                    if (m !== menu) {
                        m.classList.remove('show');
                    }
                });
                
                const rect = actionBtn.getBoundingClientRect();
                menu.style.position = 'fixed';
                menu.style.left = (rect.left - 180) + 'px';
                menu.style.top = (rect.bottom + 5) + 'px';
                
                menu.classList.toggle('show');
            }
        });
        
        document.querySelectorAll('.action-item[data-action="view-review"]').forEach(item => {
    item.addEventListener('click', function() {
        const row = this.closest('tr');
        const rowIndex = Array.from(row.parentNode.children).indexOf(row);
        
        const review = reviewData[rowIndex];
        
        document.getElementById('viewProductName').textContent = review.product;
        document.getElementById('viewCategory').textContent = review.category;
        document.getElementById('viewSubcategory').textContent = review.subcategory;
        document.getElementById('viewReviewer').textContent = review.reviewer;
        document.getElementById('viewDate').textContent = review.date;
        
        // Display rating as stars in the rating field
        const ratingContainer = document.getElementById('viewRating');
        ratingContainer.innerHTML = '';
        const starRating = document.createElement('div');
        starRating.className = 'star-rating';
        for (let i = 1; i <= 5; i++) {
            starRating.innerHTML += `<i class="fa${i <= review.rating ? 's' : 'r'} fa-star"></i>`;
        }
        ratingContainer.appendChild(starRating);
        
        document.getElementById('viewReviewText').textContent = review.text;
        
        viewReviewModal.style.display = 'block';
        this.closest('.action-menu').classList.remove('show');
    });
});

        document.querySelectorAll('.action-item[data-action="hide-review"]').forEach(item => {
            item.addEventListener('click', function() {
                const row = this.closest('tr');
                const rowIndex = Array.from(row.parentNode.children).indexOf(row);
                
                hideReview(rowIndex);
                this.closest('.action-menu').classList.remove('show');
            });
        });

        document.querySelectorAll('.action-item[data-action="delete"]').forEach(item => {
            item.addEventListener('click', function() {
                const row = this.closest('tr');
                const productName = row.cells[1].textContent;
                
                document.getElementById('deleteReviewProduct').textContent = productName;
                currentDeleteRowIndex = Array.from(row.parentNode.children).indexOf(row);
                deleteConfirmationModal.style.display = 'block';
                this.closest('.action-menu').classList.remove('show');
            });
        });
        
        cancelBtns.forEach(btn => {
            btn.addEventListener('click', function() {
                const modal = this.closest('.modal');
                modal.style.display = 'none';
                if (modal.id === 'deleteConfirmationModal') {
                    currentDeleteRowIndex = null;
                }
            });
        });
        
        deleteBtn.addEventListener('click', function() {
            if (currentDeleteRowIndex !== null) {
                const row = reviewsTableBody.children[currentDeleteRowIndex];
                const productName = row.cells[1].textContent;
                
                row.remove();
                deleteConfirmationModal.style.display = 'none';
                currentDeleteRowIndex = null;
                
                showNotification('success', 'Success', `Review for "${productName}" has been deleted`);
            }
        });
        
        window.addEventListener('click', function(e) {
            if (e.target.classList.contains('modal')) {
                e.target.style.display = 'none';
            }
        });

        populateSubcategories('all');
    });
</script>

</body>
</html>