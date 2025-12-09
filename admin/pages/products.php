<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grizzly Paws Products</title>
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

        /* Photo upload styles */
        .photo-upload-container {
            display: flex;
            gap: 15px;
            margin-top: 10px;
            flex-wrap: wrap;
        }

        .photo-upload-box {
            width: 120px;
            height: 120px;
            border: 2px dashed #ccc;
            border-radius: 8px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            background: #f9f9f9;
        }

        .photo-upload-box:hover {
            border-color: #83a75d;
            background: #fff;
        }

        .photo-upload-box input[type="file"] {
            display: none;
        }

        .photo-upload-box .upload-icon {
            font-size: 32px;
            color: #999;
            margin-bottom: 5px;
        }

        .photo-upload-box .upload-text {
            font-size: 12px;
            color: #666;
            text-align: center;
        }

        .photo-preview {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: none;
        }

        .photo-upload-box.has-image .photo-preview {
            display: block;
        }

        .photo-upload-box.has-image .upload-icon,
        .photo-upload-box.has-image .upload-text {
            display: none;
        }

        .remove-photo-btn {
            position: absolute;
            top: 5px;
            right: 5px;
            background: rgba(255, 0, 0, 0.8);
            color: white;
            border: none;
            border-radius: 50%;
            width: 24px;
            height: 24px;
            cursor: pointer;
            display: none;
            align-items: center;
            justify-content: center;
            font-size: 14px;
            z-index: 10;
        }

        .photo-upload-box.has-image .remove-photo-btn {
            display: flex;
        }

        .remove-photo-btn:hover {
            background: rgba(255, 0, 0, 1);
        }

        /* Product photos in table */
        .product-photos {
            display: flex;
            gap: 5px;
            align-items: center;
        }

        .product-photo-thumb {
            width: 40px;
            height: 40px;
            object-fit: cover;
            border-radius: 4px;
            border: 1px solid #ddd;
            cursor: pointer;
            transition: transform 0.2s;
        }

        .product-photo-thumb:hover {
            transform: scale(1.1);
            border-color: #8B4513;
        }

        .no-photos-text {
            color: #999;
            font-size: 12px;
            font-style: italic;
        }

        /* Photo viewer modal */
        .photo-viewer-modal {
            display: none;
            position: fixed;
            z-index: 10000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.9);
        }

        .photo-viewer-content {
            position: relative;
            margin: auto;
            padding: 0;
            width: 90%;
            max-width: 900px;
            top: 50%;
            transform: translateY(-50%);
        }

        .photo-viewer-image {
            width: 100%;
            height: auto;
            display: block;
            border-radius: 8px;
        }

        .photo-viewer-close {
            position: absolute;
            top: -40px;
            right: 0;
            color: #fff;
            font-size: 40px;
            font-weight: bold;
            cursor: pointer;
            background: none;
            border: none;
        }

        .photo-viewer-close:hover {
            color: #ccc;
        }

        /* Edit photos modal specific styles */
        #editPhotosModal .modal-body {
            min-height: 200px;
        }

        .current-photos-label {
            font-weight: 600;
            margin-bottom: 10px;
            color: #333;
        }
        /* Add these styles to your existing products.php <style> section */

        /* Variations Management Styles */
        .variations-container {
            margin-top: 15px;
            padding: 15px;
            background: #f9f9f9;
            border-radius: 8px;
            border: 1px solid #e0e0e0;
        }

        .variations-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .variations-header h4 {
            margin: 0;
            font-size: 14px;
            font-weight: 600;
            color: #333;
        }

        .add-variation-btn {
            padding: 6px 12px;
            background: #83a75d;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 13px;
            display: flex;
            align-items: center;
            gap: 5px;
            transition: background 0.3s;
        }

        .add-variation-btn:hover {
            background: #6d8a4a;
        }

        .add-variation-btn i {
            font-size: 12px;
        }

        .variation-item {
            display: flex;
            gap: 10px;
            margin-bottom: 10px;
            align-items: flex-start;
            background: white;
            padding: 12px;
            border-radius: 6px;
            border: 1px solid #ddd;
        }

        .variation-item .form-group {
            flex: 1;
            margin: 0;
        }

        .variation-item .form-group label {
            font-size: 12px;
            margin-bottom: 5px;
            display: block;
            color: #666;
        }

        .variation-item input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 13px;
        }

        .remove-variation-btn {
            padding: 8px 10px;
            background: #dc3545;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 13px;
            margin-top: 23px;
            transition: background 0.3s;
        }

        .remove-variation-btn:hover {
            background: #c82333;
        }

        .variation-item:first-child .remove-variation-btn {
            display: none;
        }

        .no-variations-text {
            color: #999;
            font-size: 13px;
            text-align: center;
            padding: 20px;
        }

        /* Variations display in table */
        .variations-cell {
            font-size: 12px;
        }

        .variation-badge {
            display: inline-block;
            padding: 4px 8px;
            background: #e9ecef;
            border-radius: 4px;
            margin: 2px;
            font-size: 11px;
            color: #495057;
        }

        .variation-price {
            color: #83a75d;
            font-weight: 600;
        }

        /* Modal adjustments for variations */
        #addProductModal .modal-content,
        #editVariationsModal .modal-content {
            max-width: 700px;
        }

        #addProductModal .modal-body,
        #editVariationsModal .modal-body {
            max-height: 70vh;
            overflow-y: auto;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <?php include '../includes/header.php'; ?>

    <!-- Notification Container -->
    <div class="notification-container" id="notificationContainer"></div>

    <!-- Main Container with Sidebar and Content -->
    <div class="main-container">
        <!-- Sidebar Navigation -->
        <?php include '../includes/sidebar.php'; ?>
    
        <!-- Main Content Area -->
        <div class="content">
            <h1 class="dashboard-title">Products</h1>


            <div class="controls">
                <div class="search-box">
                    <input type="text" id="searchInput" placeholder="Search by product name, category, or sub-category..." />
                    <i class="fas fa-search"></i>
                </div>

                <div class="filter-section">
                    <select id="subcategory-filter" class="subcategory-dropdown">
                    </select>
                    
                    <select id="category-filter" class="category-dropdown">
                        <option value="all">All Products</option>
                        <option value="dog">Dog</option>
                        <option value="cat">Cat</option>
                        <option value="small-pet">Small Pet</option>
                        <option value="feathered">Feathered</option>
                        <option value="aquatic">Aquatic</option>
                    </select>
                </div>

            </div>

            

            <!-- Products Table -->
            <div class="products-table-container">
                <table class="products-table">
                    <thead>
                        <tr>
                            <th>ProductID</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Sub Category</th>
                            <th>Photos</th>
                            <th>Variations</th>
                            <th>Stocks</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="products-table-body"></tbody>

                </table>
                
                <div class="pagination">
                    <div class="pagination-content">
                        <div class="page-numbers">
                            <button class="page-btn prev-btn">&lt;</button>
                            <button class="page-number active">1</button>
                            <button class="page-btn next-btn">&gt;</button>
                        </div>
                        <button class="add-product-btn" id="addProductBtn">
                            <i class="fas fa-plus"></i>
                            Add Product
                        </button>
                    </div>
                </div>
            </div>

            <div class="footer">
                Copyright © 2025 GrizzlyPaws. All rights reserved
            </div>
        </div>
    </div>

    <!-- MODALS -->

    <!-- Add Product Modal -->
    <div id="addProductModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Add New Product</h3>
            </div>
            <div class="modal-body">
                <div class="form-row">
                    <div class="form-group">
                        <label for="newProductId">Product ID:</label>
                        <input type="text" id="newProductId" class="form-input" placeholder="Enter product ID">
                    </div>
                    <div class="form-group">
                        <label for="newProductName">Product Name:</label>
                        <input type="text" id="newProductName" class="form-input" placeholder="Enter product name">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label for="newProductCategory">Category:</label>
                        <select id="newProductCategory" class="form-select">
                            <option value="">Select Category</option>
                            <option value="1">Dog</option>
                            <option value="2">Cat</option>
                            <option value="3">Small Pet</option>
                            <option value="4">Feathered</option>
                            <option value="5">Aquatic</option>
                        </select>

                    </div>
                    <div class="form-group">
                        <label for="newProductSubCategory">Sub-Category:</label>
                        <select id="newProductSubCategory" class="form-select">
                            <option value="">Select Sub-Category</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label>Product Photos (up to 3):</label>
                    <div class="photo-upload-container" id="addProductPhotos">
                        <div class="photo-upload-box" data-index="0">
                            <input type="file" accept="image/*">
                            <i class="fas fa-camera upload-icon"></i>
                            <span class="upload-text">Add Photo</span>
                            <img class="photo-preview" alt="Preview">
                            <button type="button" class="remove-photo-btn"><i class="fas fa-times"></i></button>
                        </div>
                        <div class="photo-upload-box" data-index="1">
                            <input type="file" accept="image/*">
                            <i class="fas fa-camera upload-icon"></i>
                            <span class="upload-text">Add Photo</span>
                            <img class="photo-preview" alt="Preview">
                            <button type="button" class="remove-photo-btn"><i class="fas fa-times"></i></button>
                        </div>
                        <div class="photo-upload-box" data-index="2">
                            <input type="file" accept="image/*">
                            <i class="fas fa-camera upload-icon"></i>
                            <span class="upload-text">Add Photo</span>
                            <img class="photo-preview" alt="Preview">
                            <button type="button" class="remove-photo-btn"><i class="fas fa-times"></i></button>
                        </div>
                    </div>
                    <label>Product Variations:</label>
                    <div class="variations-container" id="addProductVariations">
                        <div class="variations-header">
                            <h4>Add Variations (e.g., weight, size)</h4>
                            <button type="button" class="add-variation-btn" id="addNewVariation">
                                <i class="fas fa-plus"></i>
                                Add Variation
                            </button>
                        </div>
                        <div id="variationsList">
                            <div class="variation-item" data-index="0">
                                <div class="form-group">
                                    <label>Variation Name (e.g., 15kg, Large):</label>
                                    <input type="text" class="variation-name" placeholder="Enter variation name">
                                </div>
                                <div class="form-group">
                                    <label>Price (₱):</label>
                                    <input type="number" class="variation-price" placeholder="Enter price" min="0" step="0.01">
                                </div>
                                <button type="button" class="remove-variation-btn">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label for="newProductStocks">Stocks:</label>
                        <input type="number" id="newProductStocks" class="form-input" placeholder="Enter stock quantity" min="0" value="0">
                    </div>
                    <div class="form-group">
                        <label for="newProductPrice">Price (₱):</label>
                        <input type="number" id="newProductPrice" class="form-input" placeholder="Enter price" min="0" step="0.01">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-add">Add Product</button>
            </div>
        </div>
    </div>

    <!-- Edit Photos Modal -->
    <div id="editPhotosModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Edit Product Photos</h3>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="current-photos-label">Product Photos (up to 3):</label>
                    <div class="photo-upload-container" id="editProductPhotos">
                        <div class="photo-upload-box" data-index="0">
                            <input type="file" accept="image/*">
                            <i class="fas fa-camera upload-icon"></i>
                            <span class="upload-text">Add Photo</span>
                            <img class="photo-preview" alt="Preview">
                            <button type="button" class="remove-photo-btn"><i class="fas fa-times"></i></button>
                        </div>
                        <div class="photo-upload-box" data-index="1">
                            <input type="file" accept="image/*">
                            <i class="fas fa-camera upload-icon"></i>
                            <span class="upload-text">Add Photo</span>
                            <img class="photo-preview" alt="Preview">
                            <button type="button" class="remove-photo-btn"><i class="fas fa-times"></i></button>
                        </div>
                        <div class="photo-upload-box" data-index="2">
                            <input type="file" accept="image/*">
                            <i class="fas fa-camera upload-icon"></i>
                            <span class="upload-text">Add Photo</span>
                            <img class="photo-preview" alt="Preview">
                            <button type="button" class="remove-photo-btn"><i class="fas fa-times"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-update">Update</button>
            </div>
        </div>
    </div>

    <!-- Other Modals (keeping all existing modals) -->
    <div id="editProductNameModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Edit Product Name</h3>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="productName">Update Product Name:</label>
                    <input type="text" id="productName" class="form-input" placeholder="Enter new product name">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-update">Update</button>
            </div>
        </div>
    </div>

    <div id="editCategoryModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Edit Category</h3>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="productCategory">Update Category:</label>
                    <select id="productCategory" class="form-select">
                        <option value="dog">Dog</option>
                        <option value="cat">Cat</option>
                        <option value="small-pet">Small Pet</option>
                        <option value="feathered">Feathered</option>
                        <option value="aquatic">Aquatic</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-update">Update</button>
            </div>
        </div>
    </div>

    <div id="editSubCategoryModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Edit Sub-Category</h3>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="productSubCategory">Update Sub-Category:</label>
                    <select id="productSubCategory" class="form-select">
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-update">Update</button>
            </div>
        </div>
    </div>

    <div id="manageStocksModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Manage Stocks</h3>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="productStocks">Update Stocks:</label>
                    <input type="number" id="productStocks" class="form-input" placeholder="Enter new stock quantity" min="0">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-update">Update</button>
            </div>
        </div>
    </div>

    <div id="editProductPriceModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Edit Product Price</h3>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="productPrice">Update Price (₱):</label>
                    <input type="number" id="productPrice" class="form-input" placeholder="Enter new price" min="0" step="0.01">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-update">Update</button>
            </div>
        </div>
    </div>

    <div id="deleteConfirmationModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Delete Product</h3>
            </div>
            <div class="modal-body">
                <div class="delete-confirmation">
                    <i class="fas fa-exclamation-triangle"></i>
                    <h4>Are you sure?</h4>
                    <p>This action cannot be undone. This will permanently delete the product <strong id="deleteProductName"></strong>.</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-delete">Delete</button>
            </div>
        </div>
    </div>

    <div id="editVariationsModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Edit Product Variations</h3>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <div class="variations-container" id="editProductVariations">
                        <div class="variations-header">
                            <h4>Manage Variations</h4>
                            <button type="button" class="add-variation-btn" id="addEditVariation">
                                <i class="fas fa-plus"></i>
                                Add Variation
                            </button>
                        </div>
                        <div id="editVariationsList">
                            <!-- Variations will be loaded here -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-update">Update</button>
            </div>
        </div>
    </div>

    <!-- Photo Viewer Modal -->
    <div id="photoViewerModal" class="photo-viewer-modal">
        <div class="photo-viewer-content">
            <button class="photo-viewer-close">&times;</button>
            <img class="photo-viewer-image" id="photoViewerImage" alt="Product Photo">
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
        // DOM Elements
        const categoryFilter = document.getElementById('category-filter');
        const subcategoryFilter = document.getElementById('subcategory-filter');
        const productsTableBody = document.getElementById('products-table-body');
        const addProductModal = document.getElementById('addProductModal');
        const editProductNameModal = document.getElementById('editProductNameModal');
        const editCategoryModal = document.getElementById('editCategoryModal');
        const editSubCategoryModal = document.getElementById('editSubCategoryModal');
        const editPhotosModal = document.getElementById('editPhotosModal');
        const manageStocksModal = document.getElementById('manageStocksModal');
        const editProductPriceModal = document.getElementById('editProductPriceModal');
        const deleteConfirmationModal = document.getElementById('deleteConfirmationModal');
        const photoViewerModal = document.getElementById('photoViewerModal');
        const editVariationsModal = document.getElementById('editVariationsModal');
        
        const addProductBtn = document.getElementById('addProductBtn');
        
        const newProductIdInput = document.getElementById('newProductId');
        const newProductNameInput = document.getElementById('newProductName');
        const newProductCategoryInput = document.getElementById('newProductCategory');
        const newProductSubCategoryInput = document.getElementById('newProductSubCategory');
        const newProductStocksInput = document.getElementById('newProductStocks');
        const newProductPriceInput = document.getElementById('newProductPrice');
        
        const productNameInput = document.getElementById('productName');
        const productCategoryInput = document.getElementById('productCategory');
        const productSubCategoryInput = document.getElementById('productSubCategory');
        const productStocksInput = document.getElementById('productStocks');
        const productPriceInput = document.getElementById('productPrice');
        const deleteProductNameSpan = document.getElementById('deleteProductName');
        
        const cancelBtns = document.querySelectorAll('.btn-cancel');
        const updateBtns = document.querySelectorAll('.btn-update');
        const deleteBtn = document.querySelector('.btn-delete');
        const addProductSubmitBtn = document.querySelector('.btn-add');
        const notificationContainer = document.getElementById('notificationContainer');
        
        const photoViewerImage = document.getElementById('photoViewerImage');
        const photoViewerClose = document.querySelector('.photo-viewer-close');
        
        let currentDeleteRowIndex = null;
        let productIdCounter = 124;
        let currentEditPhotoRowIndex = null;
        let currentEditVariationsRowIndex = null;
        let variationCounter = 1;

        // Notification System
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
        
        // Photo Upload Handler
        function setupPhotoUpload(container) {
            const uploadBoxes = container.querySelectorAll('.photo-upload-box');
            
            uploadBoxes.forEach(box => {
                const input = box.querySelector('input[type="file"]');
                const preview = box.querySelector('.photo-preview');
                const removeBtn = box.querySelector('.remove-photo-btn');
                
                box.addEventListener('click', function(e) {
                    if (!e.target.classList.contains('remove-photo-btn') && !e.target.closest('.remove-photo-btn')) {
                        input.click();
                    }
                });
                
                input.addEventListener('change', function(e) {
                    const file = e.target.files[0];
                    if (file && file.type.startsWith('image/')) {
                        const reader = new FileReader();
                        reader.onload = function(e) {
                            preview.src = e.target.result;
                            box.classList.add('has-image');
                        };
                        reader.readAsDataURL(file);
                    }
                });
                
                removeBtn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    input.value = '';
                    preview.src = '';
                    box.classList.remove('has-image');
                });
            });
        }
        
        setupPhotoUpload(document.getElementById('addProductPhotos'));
        setupPhotoUpload(document.getElementById('editProductPhotos'));
        
        function getPhotosFromContainer(container) {
            const photos = [];
            const uploadBoxes = container.querySelectorAll('.photo-upload-box');
            
            uploadBoxes.forEach(box => {
                const preview = box.querySelector('.photo-preview');
                if (box.classList.contains('has-image') && preview.src) {
                    photos.push(preview.src);
                }
            });
            
            return photos;
        }
        
        function setPhotosInContainer(container, photos) {
            const uploadBoxes = container.querySelectorAll('.photo-upload-box');
            
            uploadBoxes.forEach((box, index) => {
                const preview = box.querySelector('.photo-preview');
                const input = box.querySelector('input[type="file"]');
                
                if (photos[index]) {
                    preview.src = photos[index];
                    box.classList.add('has-image');
                } else {
                    preview.src = '';
                    input.value = '';
                    box.classList.remove('has-image');
                }
            });
        }
        
        function clearPhotosInContainer(container) {
            const uploadBoxes = container.querySelectorAll('.photo-upload-box');
            
            uploadBoxes.forEach(box => {
                const preview = box.querySelector('.photo-preview');
                const input = box.querySelector('input[type="file"]');
                
                preview.src = '';
                input.value = '';
                box.classList.remove('has-image');
            });
        }
        
        function createPhotoDisplay(photos) {
            const container = document.createElement('div');
            container.className = 'product-photos';
            
            if (photos && photos.length > 0) {
                photos.forEach(photo => {
                    const img = document.createElement('img');
                    img.src = photo;
                    img.className = 'product-photo-thumb';
                    img.alt = 'Product Photo';
                    img.addEventListener('click', function(e) {
                        e.stopPropagation();
                        photoViewerImage.src = photo;
                        photoViewerModal.style.display = 'block';
                    });
                    container.appendChild(img);
                });
            } else {
                const noPhotos = document.createElement('span');
                noPhotos.className = 'no-photos-text';
                noPhotos.textContent = 'No photos';
                container.appendChild(noPhotos);
            }
            
            return container;
        }
        
        photoViewerClose.addEventListener('click', function() {
            photoViewerModal.style.display = 'none';
        });
        
        photoViewerModal.addEventListener('click', function(e) {
            if (e.target === photoViewerModal) {
                photoViewerModal.style.display = 'none';
            }
        });
        
        // Variation Management Functions
        function createVariationItem(index, name = '', price = '') {
            const div = document.createElement('div');
            div.className = 'variation-item';
            div.setAttribute('data-index', index);
            
            div.innerHTML = `
                <div class="form-group">
                    <label>Variation Name (e.g., 15kg, Large):</label>
                    <input type="text" class="variation-name" placeholder="Enter variation name" value="${name}">
                </div>
                <div class="form-group">
                    <label>Price (₱):</label>
                    <input type="number" class="variation-price" placeholder="Enter price" min="0" step="0.01" value="${price}">
                </div>
                <button type="button" class="remove-variation-btn">
                    <i class="fas fa-times"></i>
                </button>
            `;
            
            const removeBtn = div.querySelector('.remove-variation-btn');
            removeBtn.addEventListener('click', function() {
                const container = this.closest('.variations-container');
                const items = container.querySelectorAll('.variation-item');
                
                if (items.length > 1) {
                    div.remove();
                } else {
                    showNotification('warning', 'Warning', 'At least one variation is required');
                }
            });
            
            return div;
        }

        function getVariationsFromContainer(container) {
            const variations = [];
            const items = container.querySelectorAll('.variation-item');
            
            items.forEach(item => {
                const name = item.querySelector('.variation-name').value.trim();
                const price = item.querySelector('.variation-price').value.trim();
                
                if (name && price) {
                    variations.push({
                        name: name,
                        price: parseFloat(price)
                    });
                }
            });
            
            return variations;
        }

        function setVariationsInContainer(container, variations) {
            const listElement = container.querySelector('#variationsList, #editVariationsList');
            listElement.innerHTML = '';
            
            if (variations && variations.length > 0) {
                variations.forEach((variation, index) => {
                    listElement.appendChild(createVariationItem(index, variation.name, variation.price));
                });
            } else {
                listElement.appendChild(createVariationItem(0));
            }
        }

        function createVariationsDisplay(variations) {
            const container = document.createElement('div');
            container.className = 'variations-cell';
            
            if (variations && variations.length > 0) {
                variations.forEach(variation => {
                    const badge = document.createElement('span');
                    badge.className = 'variation-badge';
                    badge.innerHTML = `${variation.name}: <span class="variation-price">₱${variation.price.toLocaleString('en-PH', {
                        minimumFractionDigits: 2,
                        maximumFractionDigits: 2
                    })}</span>`;
                    container.appendChild(badge);
                });
            } else {
                const noVariations = document.createElement('span');
                noVariations.className = 'no-variations-text';
                noVariations.textContent = 'No variations';
                container.appendChild(noVariations);
            }
            
            return container;
        }

        document.getElementById('addNewVariation').addEventListener('click', function() {
            const list = document.getElementById('variationsList');
            list.appendChild(createVariationItem(variationCounter++));
        });

        document.getElementById('addEditVariation').addEventListener('click', function() {
            const list = document.getElementById('editVariationsList');
            list.appendChild(createVariationItem(variationCounter++));
        });
        
        // Subcategories data
        const subcategories = {
            1: [ // DOG
                { id: 51, name: 'Dry Dog Food' },
                { id: 52, name: 'Wet Dog Food' },
                { id: 53, name: 'Dog Treats' }
            ],
            2: [ // CAT
                { id: 61, name: 'Dry Cat Food' },
                { id: 62, name: 'Wet Cat Food' },
                { id: 63, name: 'Cat Treats' }
            ],
            3: [ // SMALL PET
                { id: 71, name: 'Small Pet Food' }
            ],
            4: [ // FEATHERED
                { id: 81, name: 'Bird Food' }
            ],
            5: [ // AQUATIC
                { id: 91, name: 'Fish Food' }
            ]
        };


        const categoryDisplayNames = {
            'dog': 'Dog',
            'cat': 'Cat',
            'small-pet': 'Small Pet',
            'feathered': 'Feathered',
            'aquatic': 'Aquatic'
        };
        
        function populateAddProductSubcategories(categoryId) {
            newProductSubCategoryInput.innerHTML = '<option value="">Select Sub-Category</option>';

            if (subcategories[categoryId]) {
                subcategories[categoryId].forEach(sub => {
                    const option = document.createElement('option');
                    option.value = sub.id;       // ✅ NUMERIC ID
                    option.textContent = sub.name;
                    newProductSubCategoryInput.appendChild(option);
                });
            }
        }

        
        function populateSubcategoryDropdown(category, currentSubCategory = '') {
            productSubCategoryInput.innerHTML = '';
            
            const options = subcategories[category];
            if (options) {
                options.forEach(option => {
                    const optionElement = document.createElement('option');
                    optionElement.value = option;
                    optionElement.textContent = option;
                    if (option === currentSubCategory) {
                        optionElement.selected = true;
                    }
                    productSubCategoryInput.appendChild(optionElement);
                });
            }
        }
   
        function updateSubcategories(category) {
            subcategoryFilter.innerHTML = '';
            
            if (category === 'all') {
                subcategoryFilter.style.display = 'none';
                return;
            }
            
            const defaultOption = document.createElement('option');
            defaultOption.value = 'all';
            defaultOption.textContent = 'All Sub-Categories';
            defaultOption.selected = true;
            subcategoryFilter.appendChild(defaultOption);
            
            const options = subcategories[category];
            if (options) {
                options.forEach(option => {
                    const optionElement = document.createElement('option');
                    optionElement.value = option;
                    optionElement.textContent = option;
                    subcategoryFilter.appendChild(optionElement);
                });
                subcategoryFilter.style.display = 'block';
            } else {
                subcategoryFilter.style.display = 'none';
            }
        }
        
        function filterProducts() {
            const selectedCategory = categoryFilter.value;
            const selectedSubcategory = subcategoryFilter.value;
            
            const rows = productsTableBody.querySelectorAll('tr');
            
            rows.forEach(row => {
                const rowCategory = row.getAttribute('data-category');
                const rowSubcategory = row.getAttribute('data-subcategory');
                
                let showRow = true;
                
                if (selectedCategory !== 'all' && rowCategory !== selectedCategory) {
                    showRow = false;
                }
                
                if (selectedSubcategory !== 'all' && selectedSubcategory !== '' && rowSubcategory !== selectedSubcategory) {
                    showRow = false;
                }
                
                if (showRow) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            });
        }
        
        subcategoryFilter.style.display = 'none';
        
        categoryFilter.addEventListener('change', function() {
            updateSubcategories(this.value);
            filterProducts();
        });

        subcategoryFilter.addEventListener('change', function() {
            filterProducts();
        });

        newProductCategoryInput.addEventListener('change', function() {
            populateAddProductSubcategories(this.value);
        });
        
        addProductBtn.addEventListener('click', function() {
            productIdCounter++;
            newProductIdInput.value = productIdCounter.toString().padStart(4, '0');
            
            newProductNameInput.value = '';
            newProductCategoryInput.value = '';
            newProductSubCategoryInput.innerHTML = '<option value="">Select Sub-Category</option>';
            newProductStocksInput.value = '0';
            newProductPriceInput.value = '';
            clearPhotosInContainer(document.getElementById('addProductPhotos'));
            setVariationsInContainer(document.getElementById('addProductVariations'), []);
            
            addProductModal.style.display = 'block';
        });
        
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
        
        function setupActionItems(row) {
            const actionItems = row.querySelectorAll('.action-item');
            
            actionItems.forEach(item => {
                const action = item.getAttribute('data-action');
                
                item.addEventListener('click', function() {
                    const currentRow = this.closest('tr');
                    const rowIndex = Array.from(currentRow.parentNode.children).indexOf(currentRow);
                    
                    if (action === 'edit-name') {
                        const currentProductName = currentRow.cells[1].textContent;
                        productNameInput.value = currentProductName;
                        productNameInput.dataset.rowIndex = rowIndex;
                        editProductNameModal.style.display = 'block';
                    } else if (action === 'edit-category') {
                        const currentCategory = currentRow.getAttribute('data-category');
                        productCategoryInput.value = currentCategory;
                        productCategoryInput.dataset.rowIndex = rowIndex;
                        editCategoryModal.style.display = 'block';
                    } else if (action === 'edit-subcategory') {
                        const currentCategory = currentRow.getAttribute('data-category');
                        const currentSubCategory = currentRow.getAttribute('data-subcategory');
                        populateSubcategoryDropdown(currentCategory, currentSubCategory);
                        productSubCategoryInput.dataset.rowIndex = rowIndex;
                        editSubCategoryModal.style.display = 'block';
                    } else if (action === 'edit-photos') {
                        const photos = currentRow.dataset.photos ? JSON.parse(currentRow.dataset.photos) : [];
                        setPhotosInContainer(document.getElementById('editProductPhotos'), photos);
                        currentEditPhotoRowIndex = rowIndex;
                        editPhotosModal.style.display = 'block';
                    } else if (action === 'edit-variations') {
                        const variations = currentRow.dataset.variations ? JSON.parse(currentRow.dataset.variations) : [];
                        setVariationsInContainer(document.getElementById('editProductVariations'), variations);
                        currentEditVariationsRowIndex = rowIndex;
                        editVariationsModal.style.display = 'block';
                    } else if (action === 'manage-stocks') {
                        const currentStocks = currentRow.cells[6].textContent;
                        productStocksInput.value = currentStocks;
                        productStocksInput.dataset.rowIndex = rowIndex;
                        manageStocksModal.style.display = 'block';
                    } else if (action === 'edit-price') {
                        const currentPrice = currentRow.cells[7].textContent;
                        const numericPrice = currentPrice.replace('₱', '').replace(/,/g, '');
                        productPriceInput.value = numericPrice;
                        productPriceInput.dataset.rowIndex = rowIndex;
                        editProductPriceModal.style.display = 'block';
                    } else if (action === 'delete') {
                        const productName = currentRow.cells[1].textContent;
                        deleteProductNameSpan.textContent = productName;
                        currentDeleteRowIndex = rowIndex;
                        deleteConfirmationModal.style.display = 'block';
                    }
                    
                    this.closest('.action-menu').classList.remove('show');
                });
            });
        }
        
        document.querySelectorAll('#products-table-body tr').forEach(row => {
            setupActionItems(row);
        });
        
        cancelBtns.forEach(btn => {
            btn.addEventListener('click', function() {
                const modal = this.closest('.modal');
                modal.style.display = 'none';
                
                if (modal.id === 'editPhotosModal') {
                    currentEditPhotoRowIndex = null;
                } else if (modal.id === 'deleteConfirmationModal') {
                    currentDeleteRowIndex = null;
                } else if (modal.id === 'editVariationsModal') {
                    currentEditVariationsRowIndex = null;
                }
            });
        });
        
        addProductSubmitBtn.addEventListener('click', function() {
            const formData = new FormData();
            formData.append('name', newProductNameInput.value);
            formData.append('category_id', newProductCategoryInput.value);
            formData.append('sub_category_id', newProductSubCategoryInput.value);
            formData.append('stock', newProductStocksInput.value);
            formData.append('description', '');
            formData.append('image1', 'no-image.png');
            formData.append('image2', 'no-image.png');
            formData.append('image3', 'no-image.png');


            fetch('../admin/api/add_product.php', {
                method: 'POST',
                body: formData
            })
            .then(res => res.json())
            .then(data => {
                if (data.status === 'success') {
                    showNotification('success', 'Success', 'Product added');
                    addProductModal.style.display = 'none';
                    loadProducts(); 
                } else {
                    showNotification('error', 'Error', data.message);
                }
            });
        });

        
        updateBtns.forEach(btn => {
            btn.addEventListener('click', function() {
                const modal = this.closest('.modal');
                
                if (modal.id === 'editPhotosModal') {
                    if (currentEditPhotoRowIndex !== null) {
                        const row = productsTableBody.children[currentEditPhotoRowIndex];
                        const photos = getPhotosFromContainer(document.getElementById('editProductPhotos'));
                        
                        row.dataset.photos = JSON.stringify(photos);
                        const photoCell = row.cells[4];
                        photoCell.innerHTML = '';
                        photoCell.appendChild(createPhotoDisplay(photos));
                        
                        showNotification('success', 'Success', 'Product photos updated successfully');
                        currentEditPhotoRowIndex = null;
                    }
                } else if (modal.id === 'editVariationsModal') {
                    if (currentEditVariationsRowIndex !== null) {
                        const row = productsTableBody.children[currentEditVariationsRowIndex];
                        const variations = getVariationsFromContainer(document.getElementById('editProductVariations'));
                        
                        if (variations.length === 0) {
                            showNotification('error', 'Error', 'Please add at least one variation');
                            return;
                        }
                        
                        row.dataset.variations = JSON.stringify(variations);
                        
                        const variationsCell = row.cells[5];
                        variationsCell.innerHTML = '';
                        variationsCell.appendChild(createVariationsDisplay(variations));
                        
                        const firstVariationPrice = variations[0].price;
                        const formattedPrice = '₱' + firstVariationPrice.toLocaleString('en-PH', {
                            minimumFractionDigits: 2,
                            maximumFractionDigits: 2
                        });
                        row.cells[7].textContent = formattedPrice;
                        
                        showNotification('success', 'Success', 'Product variations updated successfully');
                        currentEditVariationsRowIndex = null;
                    }
                } else {
                    const rowIndex = this.parentNode.previousElementSibling.querySelector('input, select').dataset.rowIndex;
                    const row = productsTableBody.children[rowIndex];
                    
                    if (modal.id === 'editProductNameModal') {
                        const newName = productNameInput.value.trim();
                        if (!newName) {
                            showNotification('error', 'Error', 'Please enter a product name');
                            return;
                        }
                        row.cells[1].textContent = newName;
                        showNotification('success', 'Success', 'Product name updated successfully');
                    } else if (modal.id === 'editCategoryModal') {
                        const newCategory = productCategoryInput.value;
                        const currentSubCategory = row.getAttribute('data-subcategory');
                        const newCategoryDisplayName = categoryDisplayNames[newCategory];
                        
                        row.setAttribute('data-category', newCategory);
                        row.cells[2].textContent = newCategoryDisplayName;
                        
                        const subcategoryOptions = subcategories[newCategory];
                        if (!subcategoryOptions.includes(currentSubCategory)) {
                            row.setAttribute('data-subcategory', subcategoryOptions[0]);
                            row.cells[3].textContent = subcategoryOptions[0];
                        }
                        
                        showNotification('success', 'Success', 'Category updated successfully');
                    } else if (modal.id === 'editSubCategoryModal') {
                        const newSubCategory = productSubCategoryInput.value;
                        row.setAttribute('data-subcategory', newSubCategory);
                        row.cells[3].textContent = newSubCategory;
                        showNotification('success', 'Success', 'Sub-category updated successfully');
                    } else if (modal.id === 'manageStocksModal') {
                        const newStocks = productStocksInput.value.trim();
                        if (newStocks === '' || isNaN(newStocks) || parseInt(newStocks) < 0) {
                            showNotification('error', 'Error', 'Please enter a valid stock quantity');
                            return;
                        }
                        row.cells[6].textContent = newStocks;
                        showNotification('success', 'Success', 'Stock quantity updated successfully');
                    } else if (modal.id === 'editProductPriceModal') {
                        const newPrice = productPriceInput.value.trim();
                        if (newPrice === '' || isNaN(newPrice) || parseFloat(newPrice) < 0) {
                            showNotification('error', 'Error', 'Please enter a valid price');
                            return;
                        }
                        const formattedPrice = '₱' + parseFloat(newPrice).toLocaleString('en-PH', {
                            minimumFractionDigits: 2,
                            maximumFractionDigits: 2
                        });
                        row.cells[7].textContent = formattedPrice;
                        showNotification('success', 'Success', 'Product price updated successfully');
                    }
                }
                
                modal.style.display = 'none';
            });
        });
        
        deleteBtn.addEventListener('click', function() {
            if (currentDeleteRowIndex !== null) {
                const row = productsTableBody.children[currentDeleteRowIndex];
                const productName = row.cells[1].textContent;
                
                row.remove();
                deleteConfirmationModal.style.display = 'none';
                currentDeleteRowIndex = null;
                
                showNotification('success', 'Success', `Product "${productName}" has been deleted`);
            }
        });
        
        window.addEventListener('click', function(e) {
            if (e.target.classList.contains('modal')) {
                e.target.style.display = 'none';
            }
        });
        
           function loadProducts() {
            fetch('../admin/api/get_products.php')
                .then(res => res.json())
                .then(data => {
                    productsTableBody.innerHTML = '';

                    data.forEach(product => {
                        const row = document.createElement('tr');
                        row.setAttribute('data-category', product.category.toLowerCase());
                        row.setAttribute('data-subcategory', product.subcategory);

                        row.innerHTML = `
                            <td><strong>${product.id}</strong></td>
                            <td>${product.name}</td>
                            <td>${product.category}</td>
                            <td>${product.subcategory}</td>

                            <td>
                                <div class="product-photos">
                                    ${product.image1 ? `<img src="${product.image1}" class="product-photo-thumb">` : ''}
                                    ${product.image2 ? `<img src="${product.image2}" class="product-photo-thumb">` : ''}
                                    ${product.image3 ? `<img src="${product.image3}" class="product-photo-thumb">` : ''}
                                </div>
                            </td>

                            <td class="variations-cell">
                                <span class="no-variations-text">From DB</span>
                            </td>

                            <td>${product.stock}</td>

                            <td>₱---</td>

                            <td>
                                <div class="action-dropdown">
                                    <button class="action-btn"><i class="fas fa-ellipsis-h"></i></button>
                                    <div class="action-menu">
                                        <div class="action-item edit-name" data-id="${product.id}">Edit Name</div>
                                        <div class="action-item manage-stock" data-id="${product.id}">Manage Stocks</div>
                                        <div class="action-item delete-product" data-id="${product.id}">Delete</div>
                                    </div>
                                </div>
                            </td>
                        `;

                        productsTableBody.appendChild(row);
                    });

                    attachActionListeners();
                });
        }

            loadProducts();

            function attachActionListeners() {

            document.querySelectorAll('.delete-product').forEach(btn => {
                btn.addEventListener('click', function() {
                    const productId = this.dataset.id;

                    if (!confirm('Delete this product?')) return;

                    fetch('../admin/api/delete_product.php', {
                        method: 'POST',
                        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                        body: `id=${productId}`
                    })
                    .then(res => res.text())
                    .then(response => {
                        if (response === 'success') {
                            showNotification('success', 'Deleted', 'Product removed');
                            loadProducts();
                        } else {
                            alert(response);
                        }
                    });
                });
            });

            document.querySelectorAll('.manage-stock').forEach(btn => {
                btn.addEventListener('click', function() {
                    const productId = this.dataset.id;
                    const newStock = prompt("Enter new stock:");

                    if (newStock === null) return;

                    fetch('../admin/api/update_product.php', {
                        method: 'POST',
                        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                        body: `id=${productId}&name=&stock=${newStock}`
                    })
                    .then(res => res.text())
                    .then(response => {
                        if (response === 'success') {
                            showNotification('success', 'Updated', 'Stock updated');
                            loadProducts();
                        } else {
                            alert(response);
                        }
                    });
                });
            });

        }
   
    });

</script>
</body>
</html>