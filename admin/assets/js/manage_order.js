// Admin Order Management
const OrderManager = {
  currentOrderId: null,
  ordersData: [], // Store order data for reference
  currentFilters: {
    status: 'all',
    payment: 'all',
    search: ''
  },
  currentPage: 1,
  itemsPerPage: 50,

  init() {
    this.setupEventListeners();
    this.loadOrders();
  },

  setupEventListeners() {
    // Status and payment filters
    const statusFilter = document.getElementById('status-filter');
    const paymentFilter = document.getElementById('payment-filter');
    const searchInput = document.getElementById('searchInput');

    if (statusFilter) {
      statusFilter.addEventListener('change', (e) => {
        this.currentFilters.status = e.target.value;
        this.currentPage = 1;
        this.loadOrders();
      });
    }

    if (paymentFilter) {
      paymentFilter.addEventListener('change', (e) => {
        this.currentFilters.payment = e.target.value;
        this.currentPage = 1;
        this.loadOrders();
      });
    }

    if (searchInput) {
      searchInput.addEventListener('input', (e) => {
        this.currentFilters.search = e.target.value;
        clearTimeout(this.searchTimeout);
        this.searchTimeout = setTimeout(() => {
          this.currentPage = 1;
          this.loadOrders();
        }, 500);
      });
    }

    // Event delegation for modal update buttons
    const updateStatusModal = document.getElementById('updateStatusModal');
    const updatePaymentModal = document.getElementById('updatePaymentModal');
    
    if (updateStatusModal) {
      const updateBtn = updateStatusModal.querySelector('.btn-update');
      if (updateBtn) {
        updateBtn.addEventListener('click', () => this.updateOrderStatus());
      }
    }

    if (updatePaymentModal) {
      const updateBtn = updatePaymentModal.querySelector('.btn-update');
      if (updateBtn) {
        updateBtn.addEventListener('click', () => this.updatePaymentStatus());
      }
    }
  },

  async loadOrders() {
    try {
      const offset = (this.currentPage - 1) * this.itemsPerPage;
      let url = `../api/get_orders.php?limit=${this.itemsPerPage}&offset=${offset}`;

      if (this.currentFilters.status !== 'all') {
        url += `&order_status=${this.currentFilters.status}`;
      }

      if (this.currentFilters.payment !== 'all') {
        url += `&payment_status=${this.currentFilters.payment}`;
      }

      if (this.currentFilters.search) {
        url += `&search=${encodeURIComponent(this.currentFilters.search)}`;
      }

      console.log('Fetching orders from:', url);

      const response = await fetch(url);
      console.log('Response status:', response.status);
      
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      
      const result = await response.json();
      console.log('API Response:', result);

      if (result.success) {
        console.log('Found', result.data.length, 'orders');
        this.displayOrders(result.data);
      } else {
        console.warn('API returned success=false');
        this.showEmptyState();
      }
    } catch (error) {
      console.error('Error loading orders:', error);
      this.showError('Failed to load orders: ' + error.message);
    }
  },

  displayOrders(orders) {
    const tbody = document.getElementById('orders-table-body');
    
    // Store orders data for reference
    this.ordersData = orders;
    
    if (!orders || orders.length === 0) {
      tbody.innerHTML = `
        <tr>
          <td colspan="9" style="text-align: center; padding: 40px;">
            <div style="color: #999;">No orders found</div>
          </td>
        </tr>
      `;
      return;
    }

    tbody.innerHTML = orders.map(order => this.createOrderRow(order)).join('');
    
    // Attach event listeners after rendering
    this.attachRowEventListeners();
  },

  createOrderRow(order) {
    const orderDate = this.formatDate(order.created_at);
    const updatedDate = this.formatDate(order.updated_at || order.created_at);
    const productNames = order.product_names || 'N/A';
    const categoryNames = order.category_names || 'N/A';
    const subcategoryNames = order.subcategory_names || 'N/A';

    return `
      <tr data-transaction-id="${order.id}">
        <td><strong>${order.order_number}</strong></td>
        <td>${productNames}</td>
        <td>${categoryNames}</td>
        <td>${subcategoryNames}</td>
        <td>${orderDate}</td>
        <td>${updatedDate}</td>
        <td>
          <span class="status-badge ${order.payment_status}">${this.formatStatus(order.payment_status)}</span>
        </td>
        <td>
          <span class="status-badge ${order.order_status}">${this.formatStatus(order.order_status)}</span>
        </td>
        <td>
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
    `;
  },

  attachRowEventListeners() {
    // Action dropdown toggles
    document.querySelectorAll('.action-btn').forEach(btn => {
      btn.addEventListener('click', (e) => {
        e.stopPropagation();
        const menu = btn.nextElementSibling;
        
        // Close other menus
        document.querySelectorAll('.action-menu').forEach(m => {
          if (m !== menu) m.classList.remove('show');
        });
        
        // Position and toggle this menu
        const rect = btn.getBoundingClientRect();
        menu.style.position = 'fixed';
        menu.style.left = (rect.left - 180) + 'px';
        menu.style.top = (rect.bottom + 5) + 'px';
        menu.classList.toggle('show');
        
        // Store current transaction ID
        this.currentOrderId = btn.closest('tr').dataset.transactionId;
      });
    });

    // Action items
    document.querySelectorAll('.action-item').forEach(item => {
      item.addEventListener('click', (e) => {
        const action = e.target.dataset.action;
        const row = e.target.closest('tr');
        this.currentOrderId = row.dataset.transactionId;
        
        switch (action) {
          case 'view-details':
            this.showOrderDetails(row);
            break;
          case 'update-status':
            this.showUpdateStatusModal(row);
            break;
          case 'update-payment':
            this.showUpdatePaymentModal(row);
            break;
          case 'cancel':
            this.showCancelModal(row);
            break;
        }
        
        // Close menu
        e.target.closest('.action-menu').classList.remove('show');
      });
    });

    // Close dropdowns when clicking outside
    document.addEventListener('click', () => {
      document.querySelectorAll('.action-menu').forEach(menu => {
        menu.classList.remove('show');
      });
    });
  },

  getOrderDataById(transactionId) {
    return this.ordersData.find(order => order.id == transactionId) || null;
  },

  showOrderDetails(row) {
    const cells = row.cells;
    const transactionId = row.dataset.transactionId;
    
    // Get the order data from the stored data
    const orderData = this.getOrderDataById(transactionId);
    
    document.getElementById('orderNumber').textContent = cells[0].textContent;
    
    // Show customer name if available
    if (orderData && (orderData.first_name || orderData.last_name)) {
      const customerName = `${orderData.first_name || ''} ${orderData.last_name || ''}`.trim();
      document.getElementById('detailCustomerName').textContent = customerName || 'N/A';
    } else {
      document.getElementById('detailCustomerName').textContent = 'N/A';
    }
    
    document.getElementById('detailProduct').textContent = cells[1].textContent;
    document.getElementById('detailCategory').textContent = cells[2].textContent;
    document.getElementById('detailSubCategory').textContent = cells[3].textContent;
    document.getElementById('detailOrderDate').textContent = cells[4].textContent;
    document.getElementById('detailUpdatedDate').textContent = cells[5].textContent;
    document.getElementById('detailPaymentStatus').textContent = cells[6].textContent;
    document.getElementById('detailOrderStatus').textContent = cells[7].textContent;
    
    document.getElementById('orderDetailsModal').style.display = 'block';
  },

  showUpdateStatusModal(row) {
    const currentStatus = row.cells[7].querySelector('.status-badge').textContent.toLowerCase();
    document.getElementById('orderStatus').value = currentStatus;
    document.getElementById('updateStatusModal').style.display = 'block';
  },

  showUpdatePaymentModal(row) {
    const currentPayment = row.cells[6].querySelector('.status-badge').textContent.toLowerCase();
    document.getElementById('paymentStatus').value = currentPayment;
    document.getElementById('updatePaymentModal').style.display = 'block';
  },

  showCancelModal(row) {
    const orderNumber = row.cells[0].textContent;
    document.getElementById('cancelOrderNumber').textContent = orderNumber;
    document.getElementById('cancelOrderModal').style.display = 'block';
    
    // Set up cancel button
    const deleteBtn = document.querySelector('#cancelOrderModal .btn-delete');
    deleteBtn.onclick = () => this.cancelOrder();
  },

  async updateOrderStatus() {
    const newStatus = document.getElementById('orderStatus').value;
    
    try {
      const response = await fetch('../api/update_order.php', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          transaction_id: this.currentOrderId,
          order_status: newStatus
        })
      });

      const result = await response.json();

      if (result.success) {
        document.getElementById('updateStatusModal').style.display = 'none';
        
        let message = 'Order status updated successfully!';
        if (result.auto_paid) {
          message += ' Payment automatically marked as paid (COD Delivered).';
        }
        
        showNotification('success', 'Success!', message);
        this.loadOrders(); // Reload to get fresh data
      } else {
        showNotification('error', 'Error', 'Failed to update order status: ' + result.message);
      }
    } catch (error) {
      console.error('Error updating order status:', error);
      showNotification('error', 'Error', 'Failed to update order status');
    }
  },

  async updatePaymentStatus() {
    const newPayment = document.getElementById('paymentStatus').value;
    
    try {
      const response = await fetch('../api/update_order.php', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          transaction_id: this.currentOrderId,
          payment_status: newPayment
        })
      });

      const result = await response.json();

      if (result.success) {
        document.getElementById('updatePaymentModal').style.display = 'none';
        showNotification('success', 'Success!', 'Payment status updated successfully!');
        this.loadOrders(); // Reload to get fresh data
      } else {
        showNotification('error', 'Error', 'Failed to update payment status: ' + result.message);
      }
    } catch (error) {
      console.error('Error updating payment status:', error);
      showNotification('error', 'Error', 'Failed to update payment status');
    }
  },

  async cancelOrder() {
    try {
      const response = await fetch('../api/update_order.php', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          transaction_id: this.currentOrderId,
          order_status: 'cancelled'
        })
      });

      const result = await response.json();

      if (result.success) {
        document.getElementById('cancelOrderModal').style.display = 'none';
        showNotification('success', 'Success!', 'Order has been cancelled successfully!');
        this.loadOrders(); // Reload to get fresh data
      } else {
        showNotification('error', 'Error', 'Failed to cancel order: ' + result.message);
      }
    } catch (error) {
      console.error('Error cancelling order:', error);
      showNotification('error', 'Error', 'Failed to cancel order');
    }
  },

  formatDate(dateString) {
    if (!dateString) return 'N/A';
    const date = new Date(dateString);
    return date.toLocaleDateString('en-US', { 
      year: 'numeric', 
      month: 'short', 
      day: 'numeric' 
    });
  },

  formatStatus(status) {
    if (!status) return 'N/A';
    return status.charAt(0).toUpperCase() + status.slice(1);
  },

  showEmptyState() {
    const tbody = document.getElementById('orders-table-body');
    tbody.innerHTML = `
      <tr>
        <td colspan="9" style="text-align: center; padding: 40px;">
          <div style="color: #999;">No orders found</div>
        </td>
      </tr>
    `;
  },

  showError(message) {
    const tbody = document.getElementById('orders-table-body');
    tbody.innerHTML = `
      <tr>
        <td colspan="9" style="text-align: center; padding: 40px;">
          <div style="color: #f44336;">${message}</div>
        </td>
      </tr>
    `;
  }
};

// Global notification function
function showNotification(type, title, message, duration = 4000) {
  const notificationContainer = document.getElementById('notificationContainer');
  if (!notificationContainer) return;
  
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
  
  notificationContainer.appendChild(notification);
  
  setTimeout(() => {
    notification.classList.add('show');
  }, 10);
  
  if (duration > 0) {
    setTimeout(() => {
      notification.classList.remove('show');
      notification.classList.add('hide');
      setTimeout(() => {
        if (notification.parentNode) {
          notification.parentNode.removeChild(notification);
        }
      }, 300);
    }, duration);
  }
}

// Initialize when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
  OrderManager.init();
});
