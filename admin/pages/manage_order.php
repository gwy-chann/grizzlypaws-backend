<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grizzly Paws - Manage Orders</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <style>
        .content {
            padding: 30px;
            max-width: 2000px;
            margin: 0 auto;
            max-height: calc(100vh - 80px); /* Adjust based on your header height */
            overflow-y: auto;
        }
    </style>
</head>
<body>
    <!-- Header section -->
    <?php include '../includes/header.php'; ?>
    <!-- Notification Container for displaying alerts -->
    <div class="notification-container" id="notificationContainer"></div>

    <!-- Main Container with Sidebar and Content -->
    <div class="main-container">
        <!-- Sidebar Navigation -->
        <?php include '../includes/sidebar.php'; ?>
    
        <!-- Main content area -->
        <div class="content">
            <!-- Page title -->
            <h1 class="dashboard-title">Manage Orders</h1>

            <div class="controls">
                <div class="search-box">
                    <input type="text" id="searchInput" placeholder="Search by order ID, or product name...">
                    <i class="fas fa-search"></i>
                </div>

                <div class="filter-section">
                <!-- Order status filter dropdown -->
                <select id="status-filter" class="category-dropdown">
                    <option value="all">All Status</option>
                    <option value="pending">Pending</option>
                    <option value="preparing">Preparing</option>
                    <option value="shipped">Shipped</option>
                    <option value="delivered">Delivered</option>
                    <option value="cancelled">Cancelled</option>
                </select>
                
                <!-- Payment status filter dropdown -->
                <select id="payment-filter" class="category-dropdown">
                    <option value="all">All Payments</option>
                    <option value="paid">Paid</option>
                    <option value="pending">Payment Pending</option>
                    <option value="failed">Payment Failed</option>
                </select>
            </div>
            </div>
            <!-- Filter section for order and payment status -->
            

            <!-- Orders table container -->
            <div class="orders-table-container">
                <table class="orders-table">
                    <thead>
                        <tr>
                            <th>Order Number</th>
                            <th>Product</th>
                            <th>Category</th>
                            <th>Sub-Category</th>
                            <th>Order Date</th>
                            <th>Updated On</th>
                            <th>Payment Status</th>
                            <th>Order Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="orders-table-body">
                        <!-- Orders will be dynamically loaded here -->
                        <tr>
                            <td colspan="9" style="text-align: center; padding: 40px;">
                                <div class="loading-spinner" style="margin: 0 auto;"></div>
                                <div style="color: #999; margin-top: 10px;">Loading orders...</div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                
                <!-- Pagination controls -->
                <div class="pagination">
                    <div class="pagination-content">
                        <div class="page-numbers">
                            <button class="page-btn prev-btn">&lt;</button>
                            <button class="page-number active">1</button>
                            <button class="page-btn next-btn">&gt;</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <div class="footer">
                 Copyright © 2025 GrizzlyPaws. All rights reserved
             </div>    
        </div>
        
    </div>

    <!-- MODALS SECTION -->

    <!-- Order details modal -->
    <div id="orderDetailsModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Order Details - <span id="orderNumber"></span></h3>
                <button class="modal-close-btn" onclick="document.getElementById('orderDetailsModal').style.display='none'">&times;</button>
            </div>
            <div class="modal-body">
                <div class="order-details">
                    <div class="detail-row">
                        <div class="detail-label">Customer Name:</div>
                        <div class="detail-value" id="detailCustomerName"></div>
                    </div>
                    <div class="detail-row">
                        <div class="detail-label">Product:</div>
                        <div class="detail-value" id="detailProduct"></div>
                    </div>
                    <div class="detail-row">
                        <div class="detail-label">Category:</div>
                        <div class="detail-value" id="detailCategory"></div>
                    </div>
                    <div class="detail-row">
                        <div class="detail-label">Sub-Category:</div>
                        <div class="detail-value" id="detailSubCategory"></div>
                    </div>
                    <div class="detail-row">
                        <div class="detail-label">Order Date:</div>
                        <div class="detail-value" id="detailOrderDate"></div>
                    </div>
                    <div class="detail-row">
                        <div class="detail-label">Updated On:</div>
                        <div class="detail-value" id="detailUpdatedDate"></div>
                    </div>
                    <div class="detail-row">
                        <div class="detail-label">Payment Status:</div>
                        <div class="detail-value" id="detailPaymentStatus"></div>
                    </div>
                    <div class="detail-row">
                        <div class="detail-label">Order Status:</div>
                        <div class="detail-value" id="detailOrderStatus"></div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Close</button>
            </div>
        </div>
    </div>

    <!-- Update order status modal -->
    <div id="updateStatusModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Update Order Status</h3>
                <button class="modal-close-btn" onclick="document.getElementById('updateStatusModal').style.display='none'">&times;</button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="orderStatus">Select Status:</label>
                    <select id="orderStatus" class="form-select">
                        <option value="pending">Pending</option>
                        <option value="preparing">Preparing</option>
                        <option value="shipped">Shipped</option>
                        <option value="delivered">Delivered</option>
                        <option value="cancelled">Cancelled</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-update">Update Status</button>
            </div>
        </div>
    </div>

    <!-- Update payment status modal -->
    <div id="updatePaymentModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Update Payment Status</h3>
                <button class="modal-close-btn" onclick="document.getElementById('updatePaymentModal').style.display='none'">&times;</button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="paymentStatus">Select Status:</label>
                    <select id="paymentStatus" class="form-select">
                        <option value="paid">Paid</option>
                        <option value="pending">Pending</option>
                        <option value="failed">Failed</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-update">Update Payment</button>
            </div>
        </div>
    </div>

    <!-- Cancel order modal -->
    <div id="cancelOrderModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Cancel Order</h3>
                <button class="modal-close-btn" onclick="document.getElementById('cancelOrderModal').style.display='none'">&times;</button>
            </div>
            <div class="modal-body">
                <div class="delete-confirmation">
                    <i class="fas fa-exclamation-triangle"></i>
                    <h4>Are you sure?</h4>
                    <p>This action cannot be undone. This will cancel order <strong id="cancelOrderNumber"></strong>.</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-cancel">No, Keep Order</button>
                <button type="button" class="btn-delete">Yes, Cancel Order</button>
            </div>
        </div>
    </div>

    <!-- JAVASCRIPT SECTION -->
    <script src="../assets/js/manage_order.js"></script>

</body>
</html>