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

        .edit-product-btn {
    padding: 8px 16px;
    background: #83a75d;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 13px;
    display: flex;
    align-items: center;
    gap: 6px;
    transition: background 0.3s;
}

.edit-product-btn:hover {
    background: #6d8a4a;
}

.edit-product-btn i {
    font-size: 12px;
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
            /* background: #dc3545; */
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
                    <th>Total Stock</th>
                    <th>Base Price</th>
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
                    <input type="text" id="newProductId" class="form-input" placeholder="Auto-generated" disabled>
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
            </div>
            <div class="form-group">
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
                                <label>Variation Name:</label>
                                <input type="text" class="variation-name" placeholder="e.g., 15kg, Large">
                            </div>
                            <div class="form-group">
                                <label>Stock:</label>
                                <input type="number" class="variation-stock" placeholder="Enter stock" min="0" value="0">
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
                    <label for="newProductTotalStock">Total Stock (Auto-calculated):</label>
                    <input type="number" id="newProductTotalStock" class="form-input" disabled value="0">
                </div>
                <div class="form-group">
                    <label for="newProductBasePrice">Base Price (₱):</label>
                    <input type="number" id="newProductBasePrice" class="form-input" placeholder="Enter base price" min="0" step="0.01">
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn-cancel">Cancel</button>
            <button type="button" class="btn-add">Add Product</button>
        </div>
    </div>
</div>

<!-- Edit Product Modal -->
<div id="editProductModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h3>Edit Product</h3>
        </div>
        <div class="modal-body">
            <div class="form-row">
                <div class="form-group">
                    <label for="editProductId">Product ID:</label>
                    <input type="text" id="editProductId" class="form-input" disabled>
                </div>
                <div class="form-group">
                    <label for="editProductName">Product Name:</label>
                    <input type="text" id="editProductName" class="form-input" placeholder="Enter product name">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="editProductCategory">Category:</label>
                    <select id="editProductCategory" class="form-select">
                        <option value="">Select Category</option>
                        <option value="1">Dog</option>
                        <option value="2">Cat</option>
                        <option value="3">Small Pet</option>
                        <option value="4">Feathered</option>
                        <option value="5">Aquatic</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="editProductSubCategory">Sub-Category:</label>
                    <select id="editProductSubCategory" class="form-select">
                        <option value="">Select Sub-Category</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label>Product Photos (up to 3):</label>
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
            <div class="form-group">
                <label>Product Variations:</label>
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
            <div class="form-row">
                <div class="form-group">
                    <label for="editProductTotalStock">Total Stock (Auto-calculated):</label>
                    <input type="number" id="editProductTotalStock" class="form-input" disabled value="0">
                </div>
                <div class="form-group">
                    <label for="editProductBasePrice">Base Price (₱):</label>
                    <input type="number" id="editProductBasePrice" class="form-input" placeholder="Enter base price" min="0" step="0.01">
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn-cancel">Cancel</button>
            <button type="button" class="btn-update-product">Update Product</button>
        </div>
    </div>
</div>

<!-- Delete Confirmation Modal -->
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

<!-- Photo Viewer Modal -->
<div id="photoViewerModal" class="photo-viewer-modal">
    <div class="photo-viewer-content">
        <button class="photo-viewer-close">&times;</button>
        <img class="photo-viewer-image" id="photoViewerImage" alt="Product Photo">
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

    <div id="editProductModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h3>Edit Product</h3>
        </div>
        <div class="modal-body">
            <div class="form-row">
                <div class="form-group">
                    <label for="editProductId">Product ID:</label>
                    <input type="text" id="editProductId" class="form-input" disabled>
                </div>
                <div class="form-group">
                    <label for="editProductName">Product Name:</label>
                    <input type="text" id="editProductName" class="form-input" placeholder="Enter product name">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="editProductCategory">Category:</label>
                    <select id="editProductCategory" class="form-select">
                        <option value="">Select Category</option>
                        <option value="1">Dog</option>
                        <option value="2">Cat</option>
                        <option value="3">Small Pet</option>
                        <option value="4">Feathered</option>
                        <option value="5">Aquatic</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="editProductSubCategory">Sub-Category:</label>
                    <select id="editProductSubCategory" class="form-select">
                        <option value="">Select Sub-Category</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label>Product Photos (up to 3):</label>
                <div class="photo-upload-container" id="editProductPhotosContainer">
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
                <div class="variations-container" id="editProductVariationsContainer">
                    <div class="variations-header">
                        <h4>Manage Variations (e.g., weight, size)</h4>
                        <button type="button" class="add-variation-btn" id="addEditProductVariation">
                            <i class="fas fa-plus"></i>
                            Add Variation
                        </button>
                    </div>
                    <div id="editProductVariationsList">
                        <div class="variation-item" data-index="0">
                            <div class="form-group">
                                <label>Variation Name (e.g., 15kg, Large):</label>
                                <input type="text" class="variation-name" placeholder="Enter variation name">
                            </div>
                            <div class="form-group">
                                <label>Stock:</label>
                                <input type="number" class="variation-stock" placeholder="Enter stock" min="0">
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
                    <label for="editProductTotalStock">Total Stock (Auto-calculated):</label>
                    <input type="number" id="editProductTotalStock" class="form-input" disabled value="0">
                </div>
                <div class="form-group">
                    <label for="editProductBasePrice">Base Price (₱):</label>
                    <input type="number" id="editProductBasePrice" class="form-input" placeholder="Enter base price" min="0" step="0.01">
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn-cancel">Cancel</button>
            <button type="button" class="btn-update-product">Update Product</button>
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
        const editProductModal = document.getElementById('editProductModal');
        const deleteConfirmationModal = document.getElementById('deleteConfirmationModal');
        const photoViewerModal = document.getElementById('photoViewerModal');
        
        const addProductBtn = document.getElementById('addProductBtn');
        
        // Add Product Inputs
        const newProductIdInput = document.getElementById('newProductId');
        const newProductNameInput = document.getElementById('newProductName');
        const newProductCategoryInput = document.getElementById('newProductCategory');
        const newProductSubCategoryInput = document.getElementById('newProductSubCategory');
        const newProductTotalStockInput = document.getElementById('newProductTotalStock');
        const newProductBasePriceInput = document.getElementById('newProductBasePrice');
        
        // Edit Product Inputs
        const editProductIdInput = document.getElementById('editProductId');
        const editProductNameInput = document.getElementById('editProductName');
        const editProductCategoryInput = document.getElementById('editProductCategory');
        const editProductSubCategoryInput = document.getElementById('editProductSubCategory');
        const editProductTotalStockInput = document.getElementById('editProductTotalStock');
        const editProductBasePriceInput = document.getElementById('editProductBasePrice');
        
        const deleteProductNameSpan = document.getElementById('deleteProductName');
        
        const cancelBtns = document.querySelectorAll('.btn-cancel');
        const addProductSubmitBtn = document.querySelector('.btn-add');
        const updateProductBtn = document.querySelector('.btn-update-product');
        const deleteBtn = document.querySelector('.btn-delete');
        const notificationContainer = document.getElementById('notificationContainer');
        
        const photoViewerImage = document.getElementById('photoViewerImage');
        const photoViewerClose = document.querySelector('.photo-viewer-close');
        
        let currentEditRowIndex = null;
        let currentDeleteRowIndex = null;
        let productIdCounter = 124;
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
        function createVariationItem(index, name = '', stock = '', price = '') {
            const div = document.createElement('div');
            div.className = 'variation-item';
            div.setAttribute('data-index', index);
            
            div.innerHTML = `
                <div class="form-group">
                    <label>Variation Name:</label>
                    <input type="text" class="variation-name" placeholder="e.g., 15kg, Large" value="${name}">
                </div>
                <div class="form-group">
                    <label>Stock:</label>
                    <input type="number" class="variation-stock" placeholder="Enter stock" min="0" value="${stock || 0}">
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
                    calculateTotalStock(container);
                } else {
                    showNotification('warning', 'Warning', 'At least one variation is required');
                }
            });
            
            // Add event listeners to recalculate total stock
            const stockInput = div.querySelector('.variation-stock');
            stockInput.addEventListener('input', function() {
                const container = this.closest('.variations-container');
                calculateTotalStock(container);
            });
            
            return div;
        }

        function calculateTotalStock(container) {
            const items = container.querySelectorAll('.variation-item');
            let total = 0;
            
            items.forEach(item => {
                const stock = parseInt(item.querySelector('.variation-stock').value) || 0;
                total += stock;
            });
            
            // Update the total stock input
            if (container.id === 'addProductVariations') {
                newProductTotalStockInput.value = total;
            } else if (container.id === 'editProductVariations') {
                editProductTotalStockInput.value = total;
            }
            
            return total;
        }

        function getVariationsFromContainer(container) {
            const variations = [];
            const items = container.querySelectorAll('.variation-item');
            
            items.forEach(item => {
                const name = item.querySelector('.variation-name').value.trim();
                const stock = item.querySelector('.variation-stock').value.trim();
                const price = item.querySelector('.variation-price').value.trim();
                
                if (name && price) {
                    variations.push({
                        name: name,
                        stock: parseInt(stock) || 0,
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
                    listElement.appendChild(createVariationItem(index, variation.name, variation.stock || 0, variation.price));
                });
            } else {
                listElement.appendChild(createVariationItem(0));
            }
            
            calculateTotalStock(container);
        }

        function createVariationsDisplay(variations) {
            const container = document.createElement('div');
            container.className = 'variations-cell';
            
            if (variations && variations.length > 0) {
                variations.forEach(variation => {
                    const badge = document.createElement('span');
                    badge.className = 'variation-badge';
                    badge.innerHTML = `${variation.name}: ${variation.stock || 0} pcs @ <span class="variation-price">₱${variation.price.toLocaleString('en-PH', {
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

        // Add variation buttons
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
                    option.value = sub.id;
                    option.textContent = sub.name;
                    newProductSubCategoryInput.appendChild(option);
                });
            }
        }

        function populateEditProductSubcategories(categoryId) {
            editProductSubCategoryInput.innerHTML = '<option value="">Select Sub-Category</option>';

            if (subcategories[categoryId]) {
                subcategories[categoryId].forEach(sub => {
                    const option = document.createElement('option');
                    option.value = sub.id;
                    option.textContent = sub.name;
                    editProductSubCategoryInput.appendChild(option);
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
            
            const categoryIdMap = {
                'dog': 1,
                'cat': 2,
                'small-pet': 3,
                'feathered': 4,
                'aquatic': 5
            };
            
            const options = subcategories[categoryIdMap[category]];
            if (options) {
                options.forEach(option => {
                    const optionElement = document.createElement('option');
                    optionElement.value = option.name;
                    optionElement.textContent = option.name;
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

        editProductCategoryInput.addEventListener('change', function() {
            populateEditProductSubcategories(this.value);
        });
        
        // Add Product Button
        addProductBtn.addEventListener('click', function() {
            productIdCounter++;
            newProductIdInput.value = productIdCounter.toString().padStart(4, '0');
            
            newProductNameInput.value = '';
            newProductCategoryInput.value = '';
            newProductSubCategoryInput.innerHTML = '<option value="">Select Sub-Category</option>';
            newProductTotalStockInput.value = '0';
            newProductBasePriceInput.value = '';
            clearPhotosInContainer(document.getElementById('addProductPhotos'));
            setVariationsInContainer(document.getElementById('addProductVariations'), []);
            
            addProductModal.style.display = 'block';
        });
        
        // Edit Product Button Handler
        document.addEventListener('click', function(e) {
            if (e.target.closest('.edit-product-btn')) {
                const btn = e.target.closest('.edit-product-btn');
                const row = btn.closest('tr');
                currentEditRowIndex = Array.from(row.parentNode.children).indexOf(row);
                
                // Populate edit modal with current data
                editProductIdInput.value = row.cells[0].textContent.trim();
                editProductNameInput.value = row.cells[1].textContent.trim();
                
                const categoryValue = row.getAttribute('data-category');
                const categoryMap = {
                    'dog': '1',
                    'cat': '2',
                    'small-pet': '3',
                    'feathered': '4',
                    'aquatic': '5'
                };
                editProductCategoryInput.value = categoryMap[categoryValue] || '';
                
                populateEditProductSubcategories(editProductCategoryInput.value);
                
                const subcategoryValue = row.getAttribute('data-subcategory');
                setTimeout(() => {
                    const options = editProductSubCategoryInput.options;
                    for (let i = 0; i < options.length; i++) {
                        if (options[i].text === subcategoryValue) {
                            editProductSubCategoryInput.value = options[i].value;
                            break;
                        }
                    }
                }, 50);
                
                // Load photos
                const photos = row.dataset.photos ? JSON.parse(row.dataset.photos) : [];
                setPhotosInContainer(document.getElementById('editProductPhotos'), photos);
                
                // Load variations
                const variations = row.dataset.variations ? JSON.parse(row.dataset.variations) : [];
                setVariationsInContainer(document.getElementById('editProductVariations'), variations);
                
                // Set base price
                const priceText = row.cells[7].textContent.replace('₱', '').replace(/,/g, '').trim();
                editProductBasePriceInput.value = priceText;
                
                editProductModal.style.display = 'block';
            }

            // Delete button handler
            if (e.target.closest('.delete-product-btn')) {
                const btn = e.target.closest('.delete-product-btn');
                const row = btn.closest('tr');
                currentDeleteRowIndex = Array.from(row.parentNode.children).indexOf(row);
                
                const productName = row.cells[1].textContent.trim();
                deleteProductNameSpan.textContent = productName;
                
                deleteConfirmationModal.style.display = 'block';
            }
        });
        
        // Cancel buttons
        cancelBtns.forEach(btn => {
            btn.addEventListener('click', function() {
                const modal = this.closest('.modal');
                modal.style.display = 'none';
                
                if (modal.id === 'editProductModal') {
                    currentEditRowIndex = null;
                } else if (modal.id === 'deleteConfirmationModal') {
                    currentDeleteRowIndex = null;
                }
            });
        });
        
        // Add Product Submit
        addProductSubmitBtn.addEventListener('click', function() {
            const name = newProductNameInput.value.trim();
            const categoryId = newProductCategoryInput.value;
            const subcategoryId = newProductSubCategoryInput.value;
            const basePrice = newProductBasePriceInput.value.trim();
            
            if (!name || !categoryId || !subcategoryId || !basePrice) {
                showNotification('error', 'Error', 'Please fill in all required fields');
                return;
            }
            
            const variations = getVariationsFromContainer(document.getElementById('addProductVariations'));
            if (variations.length === 0) {
                showNotification('error', 'Error', 'Please add at least one variation');
                return;
            }
            
            const formData = new FormData();
            formData.append('name', name);
            formData.append('category_id', categoryId);
            formData.append('sub_category_id', subcategoryId);
            formData.append('stock', calculateTotalStock(document.getElementById('addProductVariations')));
            formData.append('description', '');
            formData.append('image1', 'no-image.png');
            formData.append('image2', 'no-image.png');
            formData.append('image3', 'no-image.png');

            fetch('http://localhost/grizzlypaws-backend/admin/api/add_product.php', {
                method: 'POST',
                body: formData
            })
            .then(res => res.json())
            .then(data => {
                if (data.status === 'success') {
                    showNotification('success', 'Success', 'Product added successfully');
                    addProductModal.style.display = 'none';
                    loadProducts();
                } else {
                    showNotification('error', 'Error', data.message);
                }
            })
            .catch(error => {
                showNotification('error', 'Error', 'Failed to add product');
                console.error('Error:', error);
            });
        });
        
        // Update Product Submit
        updateProductBtn.addEventListener('click', function() {
            if (currentEditRowIndex === null) return;
            
            const name = editProductNameInput.value.trim();
            const categoryId = editProductCategoryInput.value;
            const subcategoryId = editProductSubCategoryInput.value;
            const basePrice = editProductBasePriceInput.value.trim();
            
            if (!name || !categoryId || !subcategoryId || !basePrice) {
                showNotification('error', 'Error', 'Please fill in all required fields');
                return;
            }
            
            const variations = getVariationsFromContainer(document.getElementById('editProductVariations'));
            if (variations.length === 0) {
                showNotification('error', 'Error', 'Please add at least one variation');
                return;
            }
            
            const row = productsTableBody.children[currentEditRowIndex];
            
            // Update name
            row.cells[1].textContent = name;
            
            // Update category
            const categoryNames = {
                '1': 'dog',
                '2': 'cat',
                '3': 'small-pet',
                '4': 'feathered',
                '5': 'aquatic'
            };
            const categoryDisplay = {
                'dog': 'Dog',
                'cat': 'Cat',
                'small-pet': 'Small Pet',
                'feathered': 'Feathered',
                'aquatic': 'Aquatic'
            };
            const categoryName = categoryNames[categoryId];
            row.setAttribute('data-category', categoryName);
            row.cells[2].textContent = categoryDisplay[categoryName];
            
            // Update subcategory
            const subcategoryName = editProductSubCategoryInput.options[editProductSubCategoryInput.selectedIndex].text;
            row.setAttribute('data-subcategory', subcategoryName);
            row.cells[3].textContent = subcategoryName;
            
            // Update photos
            const photos = getPhotosFromContainer(document.getElementById('editProductPhotos'));
            row.dataset.photos = JSON.stringify(photos);
            const photoCell = row.cells[4];
            photoCell.innerHTML = '';
            photoCell.appendChild(createPhotoDisplay(photos));
            
            // Update variations
            row.dataset.variations = JSON.stringify(variations);
            const variationsCell = row.cells[5];
            variationsCell.innerHTML = '';
            variationsCell.appendChild(createVariationsDisplay(variations));
            
            // Update total stock (sum of all variation stocks)
            const totalStock = variations.reduce((sum, v) => sum + (v.stock || 0), 0);
            row.cells[6].textContent = totalStock;
            
            // Update price
            const formattedPrice = '₱' + parseFloat(basePrice).toLocaleString('en-PH', {
                minimumFractionDigits: 2,
                maximumFractionDigits: 2
            });
            row.cells[7].textContent = formattedPrice;
            
            showNotification('success', 'Success', 'Product updated successfully');
            editProductModal.style.display = 'none';
            currentEditRowIndex = null;
        });
        
        // Delete Product
        deleteBtn.addEventListener('click', function() {
            if (currentDeleteRowIndex !== null) {
                const row = productsTableBody.children[currentDeleteRowIndex];
                const productId = row.cells[0].textContent.trim();
                const productName = row.cells[1].textContent;
                
                fetch('http://localhost/grizzlypaws-backend/admin/api/delete_product.php', {
                    method: 'POST',
                    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                    body: `id=${productId}`
                })
                .then(res => res.text())
                .then(response => {
                    if (response === 'success') {
                        row.remove();
                        showNotification('success', 'Success', `Product "${productName}" has been deleted`);
                        deleteConfirmationModal.style.display = 'none';
                        currentDeleteRowIndex = null;
                    } else {
                        showNotification('error', 'Error', 'Failed to delete product');
                    }
                })
                .catch(error => {
                    showNotification('error', 'Error', 'Failed to delete product');
                    console.error('Error:', error);
                });
            }
        });
        
        // Close modals on outside click
        window.addEventListener('click', function(e) {
            if (e.target.classList.contains('modal')) {
                e.target.style.display = 'none';
            }
        });
        
        // Load Products Function
        function loadProducts() {
            fetch('http://localhost/grizzlypaws-backend/admin/api/get_products.php')
                .then(res => res.json())
                .then(data => {
                    productsTableBody.innerHTML = '';

                    data.forEach((product, index) => {
                        const row = document.createElement('tr');
                        
                        const categoryMap = {
                            'Dog': 'dog',
                            'Cat': 'cat',
                            'Small Pet': 'small-pet',
                            'Feathered': 'feathered',
                            'Aquatic': 'aquatic'
                        };
                        
                        row.setAttribute('data-category', categoryMap[product.category] || product.category.toLowerCase());
                        row.setAttribute('data-subcategory', product.subcategory);
                        row.dataset.photos = JSON.stringify([]);
                        row.dataset.variations = JSON.stringify([]);

                        row.innerHTML = `
                            <td><strong>${product.id}</strong></td>
                            <td>${product.name}</td>
                            <td>${product.category}</td>
                            <td>${product.subcategory}</td>
                            <td>
                                <div class="product-photos">
                                    <span class="no-photos-text">No photos</span>
                                </div>
                            </td>
                            <td class="variations-cell">
                                <span class="no-variations-text">No variations</span>
                            </td>
                            <td>${product.stock}</td>
                            <td>₱0.00</td>
                            <td>
                                <div style="display: flex; gap: 8px;">
                                    <button class="edit-product-btn" data-row-index="${index}">
                                        <i class="fas fa-edit"></i> Edit
                                    </button>
                                    <button class="delete-product-btn" data-row-index="${index}" style="background: #dc3545;">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </td>
                        `;

                        productsTableBody.appendChild(row);
                    });
                })
                .catch(error => {
                    console.error('Error loading products:', error);
                    showNotification('error', 'Error', 'Failed to load products');
                });
        }

        // Initialize
        loadProducts();
    });
    </script>
</body>
</html>