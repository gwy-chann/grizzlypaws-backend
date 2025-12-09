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
                        <!-- Sample order row 1 -->
                        <tr>
                            <td><strong>PET87654</strong></td>
                            <td>Pedigree Dental Stix</td>
                            <td>Dog</td>
                            <td>Dog Treats</td>
                            <td>May 6, 2025</td>
                            <td>May 9, 2025</td>
                            <td>
                                <span class="status-badge paid">Paid</span>
                            </td>
                            <td>
                                <span class="status-badge pending">Pending</span>
                            </td>
                            <td>
                                <!-- Action dropdown menu -->
                                <div class="action-dropdown">
                                    <button class="action-btn">
                                        <i class="fas fa-ellipsis-h"></i>
                                    </button>
                                    <div class="action-menu">
                                        <div class="action-item" data-action="view-details">View Order Details</div>
                                        <div class="action-item" data-action="update-status">Update Order Status</div>
                                        <div class="action-item" data-action="update-payment">Update Payment Status</div>
                                        <div class="action-item delete" data-action="cancel">Cancel Order</div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <!-- Sample order row 2 -->
                        <tr>
                            <td><strong>PET87655</strong></td>
                            <td>Royal Canin Medium Adult</td>
                            <td>Dog</td>
                            <td>Dry Dog Food</td>
                            <td>May 7, 2025</td>
                            <td>May 8, 2025</td>
                            <td>
                                <span class="status-badge paid">Paid</span>
                            </td>
                            <td>
                                <span class="status-badge preparing">Preparing</span>
                            </td>
                            <td>
                                <!-- Action dropdown menu -->
                                <div class="action-dropdown">
                                    <button class="action-btn">
                                        <i class="fas fa-ellipsis-h"></i>
                                    </button>
                                    <div class="action-menu">
                                        <div class="action-item" data-action="view-details">View Order Details</div>
                                        <div class="action-item" data-action="update-status">Update Order Status</div>
                                        <div class="action-item" data-action="update-payment">Update Payment Status</div>
                                        <div class="action-item delete" data-action="cancel">Cancel Order</div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <!-- Sample order row 3 -->
                        <tr>
                            <td><strong>PET87656</strong></td>
                            <td>Royal Canin Light Weight Care Wet Food</td>
                            <td>Cat</td>
                            <td>Wet Cat Food</td>
                            <td>May 8, 2025</td>
                            <td>May 9, 2025</td>
                            <td>
                                <span class="status-badge pending">Pending</span>
                            </td>
                            <td>
                                <span class="status-badge pending">Pending</span>
                            </td>
                            <td>
                                <!-- Action dropdown menu -->
                                <div class="action-dropdown">
                                    <button class="action-btn">
                                        <i class="fas fa-ellipsis-h"></i>
                                    </button>
                                    <div class="action-menu">
                                        <div class="action-item" data-action="view-details">View Order Details</div>
                                        <div class="action-item" data-action="update-status">Update Order Status</div>
                                        <div class="action-item" data-action="update-payment">Update Payment Status</div>
                                        <div class="action-item delete" data-action="cancel">Cancel Order</div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <!-- Sample order row 4 -->
                        <tr>
                            <td><strong>PET87657</strong></td>
                            <td>Interactive Laser Pointer</td>
                            <td>Cat</td>
                            <td>Cat Toys</td>
                            <td>May 9, 2025</td>
                            <td>May 9, 2025</td>
                            <td>
                                <span class="status-badge paid">Paid</span>
                            </td>
                            <td>
                                <span class="status-badge shipped">Shipped</span>
                            </td>
                            <td>
                                <!-- Action dropdown menu -->
                                <div class="action-dropdown">
                                    <button class="action-btn">
                                        <i class="fas fa-ellipsis-h"></i>
                                    </button>
                                    <div class="action-menu">
                                        <div class="action-item" data-action="view-details">View Order Details</div>
                                        <div class="action-item" data-action="update-status">Update Order Status</div>
                                        <div class="action-item" data-action="update-payment">Update Payment Status</div>
                                        <div class="action-item delete" data-action="cancel">Cancel Order</div>
                                    </div>
                                </div>
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
            </div>
            <div class="modal-body">
                <div class="order-details">
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
    <script>
        // Main initialization when DOM is loaded
        document.addEventListener('DOMContentLoaded', function() {
            // DOM element references
            const orderDetailsModal = document.getElementById('orderDetailsModal');
            const updateStatusModal = document.getElementById('updateStatusModal');
            const updatePaymentModal = document.getElementById('updatePaymentModal');
            const cancelOrderModal = document.getElementById('cancelOrderModal');
            
            const statusFilter = document.getElementById('status-filter');
            const paymentFilter = document.getElementById('payment-filter');
            
            const actionBtns = document.querySelectorAll('.action-btn');
            const actionItems = document.querySelectorAll('.action-item');
            const cancelBtns = document.querySelectorAll('.btn-cancel');
            const updateBtns = document.querySelectorAll('.btn-update');
            const deleteBtn = document.querySelector('.btn-delete');
            
            // State variable to track current order row being edited
            let currentOrderRow = null;

            // Event listener for handling clicks on action buttons and dropdowns
            document.addEventListener('click', function(e) {
                // Close all dropdowns when clicking outside
                if (!e.target.closest('.action-dropdown')) {
                    document.querySelectorAll('.action-menu').forEach(menu => {
                        menu.classList.remove('show');
                    });
                }
                
                // Handle action button clicks to show/hide dropdown menu
                if (e.target.closest('.action-btn')) {
                    const actionBtn = e.target.closest('.action-btn');
                    const menu = actionBtn.nextElementSibling;
                    
                    // Close other open menus
                    document.querySelectorAll('.action-menu').forEach(m => {
                        if (m !== menu) {
                            m.classList.remove('show');
                        }
                    });
                    
                    // Position menu near the button
                    const rect = actionBtn.getBoundingClientRect();
                    menu.style.position = 'fixed';
                    menu.style.left = (rect.left - 180) + 'px';
                    menu.style.top = (rect.bottom + 5) + 'px';
                    
                    // Toggle menu visibility
                    menu.classList.toggle('show');
                    
                    // Store reference to current order row
                    currentOrderRow = actionBtn.closest('tr');
                }
            });

            // Event listener for view order details action
            document.querySelectorAll('.action-item[data-action="view-details"]').forEach(item => {
                item.addEventListener('click', function() {
                    const row = this.closest('tr');
                    const cells = row.cells;
                    
                    // Populate modal with order details
                    document.getElementById('orderNumber').textContent = cells[0].textContent;
                    document.getElementById('detailProduct').textContent = cells[1].textContent;
                    document.getElementById('detailCategory').textContent = cells[2].textContent;
                    document.getElementById('detailSubCategory').textContent = cells[3].textContent;
                    document.getElementById('detailOrderDate').textContent = cells[4].textContent;
                    document.getElementById('detailUpdatedDate').textContent = cells[5].textContent;
                    document.getElementById('detailPaymentStatus').textContent = cells[6].textContent;
                    document.getElementById('detailOrderStatus').textContent = cells[7].textContent;
                    
                    // Show modal and hide dropdown
                    orderDetailsModal.style.display = 'block';
                    this.closest('.action-menu').classList.remove('show');
                });
            });

            // Event listener for update order status action
            document.querySelectorAll('.action-item[data-action="update-status"]').forEach(item => {
                item.addEventListener('click', function() {
                    const row = this.closest('tr');
                    const currentStatus = row.cells[7].querySelector('.status-badge').textContent.toLowerCase();
                    
                    // Set current status in dropdown
                    document.getElementById('orderStatus').value = currentStatus;
                    updateStatusModal.style.display = 'block';
                    this.closest('.action-menu').classList.remove('show');
                });
            });

            // Event listener for update payment status action
            document.querySelectorAll('.action-item[data-action="update-payment"]').forEach(item => {
                item.addEventListener('click', function() {
                    const row = this.closest('tr');
                    const currentPayment = row.cells[6].querySelector('.status-badge').textContent.toLowerCase();
                    
                    // Set current payment status in dropdown
                    document.getElementById('paymentStatus').value = currentPayment;
                    updatePaymentModal.style.display = 'block';
                    this.closest('.action-menu').classList.remove('show');
                });
            });

            // Event listener for cancel order action
            document.querySelectorAll('.action-item[data-action="cancel"]').forEach(item => {
                item.addEventListener('click', function() {
                    const row = this.closest('tr');
                    const orderNumber = row.cells[0].textContent;
                    
                    // Set order number in confirmation modal
                    document.getElementById('cancelOrderNumber').textContent = orderNumber;
                    cancelOrderModal.style.display = 'block';
                    this.closest('.action-menu').classList.remove('show');
                });
            });

            // Event listeners for cancel buttons in all modals
            cancelBtns.forEach(btn => {
                btn.addEventListener('click', function() {
                    const modal = this.closest('.modal');
                    modal.style.display = 'none';
                });
            });

            // Event listener for update order status button
            updateBtns[0].addEventListener('click', function() {
                if (currentOrderRow) {
                    const newStatus = document.getElementById('orderStatus').value;
                    const statusBadge = currentOrderRow.cells[7].querySelector('.status-badge');
                    
                    // Update status badge with new status
                    statusBadge.className = 'status-badge ' + newStatus;
                    statusBadge.textContent = newStatus.charAt(0).toUpperCase() + newStatus.slice(1);
                    
                    // Update the "updated on" date
                    const currentDate = new Date().toLocaleDateString('en-US', { 
                        year: 'numeric', 
                        month: 'short', 
                        day: 'numeric' 
                    });
                    currentOrderRow.cells[5].textContent = currentDate;
                    
                    // Close modal and show success notification
                    updateStatusModal.style.display = 'none';
                    showNotification('success', 'Success!', 'Order status updated successfully!');
                }
            });

            // Event listener for update payment status button
            updateBtns[1].addEventListener('click', function() {
                if (currentOrderRow) {
                    const newPayment = document.getElementById('paymentStatus').value;
                    const paymentBadge = currentOrderRow.cells[6].querySelector('.status-badge');
                    
                    // Update payment badge with new status
                    paymentBadge.className = 'status-badge ' + newPayment;
                    paymentBadge.textContent = newPayment.charAt(0).toUpperCase() + newPayment.slice(1);
                    
                    // Close modal and show success notification
                    updatePaymentModal.style.display = 'none';
                    showNotification('success', 'Success!', 'Payment status updated successfully!');
                }
            });

            // Event listener for cancel order confirmation button
            deleteBtn.addEventListener('click', function() {
                if (currentOrderRow) {
                    const statusBadge = currentOrderRow.cells[7].querySelector('.status-badge');
                    
                    // Update order status to cancelled
                    statusBadge.className = 'status-badge cancelled';
                    statusBadge.textContent = 'Cancelled';
                    
                    // Update the "updated on" date
                    const currentDate = new Date().toLocaleDateString('en-US', { 
                        year: 'numeric', 
                        month: 'short', 
                        day: 'numeric' 
                    });
                    currentOrderRow.cells[5].textContent = currentDate;
                    
                    // Close modal and show success notification
                    cancelOrderModal.style.display = 'none';
                    showNotification('success', 'Success!', 'Order has been cancelled successfully!');
                }
            });

            // Event listeners for filter dropdowns
            statusFilter.addEventListener('change', filterOrders);
            paymentFilter.addEventListener('change', filterOrders);
            
            //Filters orders based on selected status and payment filters
            function filterOrders() {
                const selectedStatus = statusFilter.value;
                const selectedPayment = paymentFilter.value;
                const rows = document.querySelectorAll('#orders-table-body tr');
                
                rows.forEach(row => {
                    const orderStatus = row.cells[7].querySelector('.status-badge').textContent.toLowerCase();
                    const paymentStatus = row.cells[6].querySelector('.status-badge').textContent.toLowerCase();
                    
                    let showRow = true;
                    
                    // Apply status filter
                    if (selectedStatus !== 'all' && orderStatus !== selectedStatus) {
                        showRow = false;
                    }
                    
                    // Apply payment filter
                    if (selectedPayment !== 'all' && paymentStatus !== selectedPayment) {
                        showRow = false;
                    }
                    
                    // Show or hide row based on filter results
                    row.style.display = showRow ? '' : 'none';
                });
            }

            // Event listener to close modals when clicking outside
            window.addEventListener('click', function(event) {
                const modals = [orderDetailsModal, updateStatusModal, updatePaymentModal, cancelOrderModal];
                modals.forEach(modal => {
                    if (event.target === modal) {
                        modal.style.display = 'none';
                    }
                });
            });


            /* Displays a notification message*/
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
                    
                `;
                // <button class="notification-close">
                //     //     <i class="fas fa-times"></i>
                //     // </button>
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

            /** Hides and removes a notification **/
            function hideNotification(notification) {
                notification.classList.remove('show');
                notification.classList.add('hide');
                
                setTimeout(() => {
                    if (notification.parentNode) {
                        notification.parentNode.removeChild(notification);
                    }
                }, 300);
            }
        });
    </script>

</body>
</html>