// Purchase History Manager
const PurchaseHistory = {
  customerId: null, // Set this from your session/auth system
  currentPage: 1,
  itemsPerPage: 10,
  filters: {
    dateRange: 'all',
    status: 'all',
    search: ''
  },

  init(customerId) {
    this.customerId = customerId;
    this.setupEventListeners();
    this.loadPurchases();
  },

  setupEventListeners() {
    // Filter dropdowns
    const filterSelects = document.querySelectorAll('.filter-select');
    filterSelects.forEach((select, index) => {
      select.addEventListener('change', (e) => {
        if (index === 0) {
          this.filters.dateRange = e.target.value;
        } else if (index === 1) {
          this.filters.status = e.target.value;
        }
        this.currentPage = 1;
        this.loadPurchases();
      });
    });

    // Search box
    const searchInput = document.querySelector('.search-box input');
    if (searchInput) {
      searchInput.addEventListener('input', (e) => {
        this.filters.search = e.target.value;
        clearTimeout(this.searchTimeout);
        this.searchTimeout = setTimeout(() => {
          this.currentPage = 1;
          this.loadPurchases();
        }, 500);
      });
    }

    // Pagination buttons
    document.querySelector('.pagination')?.addEventListener('click', (e) => {
      if (e.target.classList.contains('page-button')) {
        const buttonText = e.target.textContent;
        if (buttonText === '◀' && this.currentPage > 1) {
          this.currentPage--;
          this.loadPurchases();
        } else if (buttonText === '▶') {
          this.currentPage++;
          this.loadPurchases();
        } else if (!isNaN(buttonText)) {
          this.currentPage = parseInt(buttonText);
          this.loadPurchases();
        }
      }
    });
  },

  async loadPurchases() {
    try {
      const offset = (this.currentPage - 1) * this.itemsPerPage;
      let url = `http://localhost/grizzlypaws-backend/project-root/api/transaction.php?customer_id=${this.customerId}&limit=${this.itemsPerPage}&offset=${offset}`;

      // Apply filters
      if (this.filters.status !== 'all' && this.filters.status !== 'All Status') {
        url += `&order_status=${this.filters.status.toLowerCase()}`;
      }

      // Date range filter
      if (this.filters.dateRange !== 'all' && this.filters.dateRange !== 'All Orders') {
        const dateFilter = this.getDateFilter(this.filters.dateRange);
        if (dateFilter) {
          url += `&date_from=${dateFilter}`;
        }
      }

      const response = await fetch(url);
      const result = await response.json();

      if (result.success) {
        this.displayPurchases(result.data);
      } else {
        this.showEmptyState();
      }
    } catch (error) {
      console.error('Error loading purchases:', error);
      this.showError('Failed to load purchase history');
    }
  },

  getDateFilter(range) {
    const now = new Date();
    let date = new Date();

    switch (range) {
      case 'Last 30 Days':
        date.setDate(now.getDate() - 30);
        break;
      case 'Last 3 Months':
        date.setMonth(now.getMonth() - 3);
        break;
      case 'Last 6 Months':
        date.setMonth(now.getMonth() - 6);
        break;
      default:
        return null;
    }

    return date.toISOString().split('T')[0];
  },

  async loadOrderDetails(transactionId) {
    try {
      const response = await fetch(`http://localhost/grizzlypaws-backend/project-root/api/transaction.php?customer_id=${this.customerId}&transaction_id=${transactionId}`);
      const result = await response.json();

      if (result.success) {
        return result.data;
      }
      return null;
    } catch (error) {
      console.error('Error loading order details:', error);
      return null;
    }
  },

  displayPurchases(purchases) {
    const orderList = document.querySelector('.order-list');
    
    if (!purchases || purchases.length === 0) {
      this.showEmptyState();
      return;
    }

    // Filter by search if needed
    let filteredPurchases = purchases;
    if (this.filters.search) {
      const searchLower = this.filters.search.toLowerCase();
      filteredPurchases = purchases.filter(p => 
        p.order_number?.toLowerCase().includes(searchLower)
      );
    }

    if (filteredPurchases.length === 0) {
      this.showEmptyState();
      return;
    }

    orderList.innerHTML = filteredPurchases.map(order => this.createOrderCard(order)).join('');

    // Add event listeners to buttons
    this.attachOrderEventListeners();
  },

  createOrderCard(order) {
    const statusClass = this.getStatusClass(order.order_status);
    const statusLabel = this.formatStatus(order.order_status);
    const orderDate = this.formatDate(order.created_at);

    return `
      <div class="order-card" data-transaction-id="${order.id}">
        <div class="order-header">
          <div class="order-header-group">
            <div class="order-header-item">
              <div class="header-label">Order Date</div>
              <div class="header-value">${orderDate}</div>
            </div>
            <div class="order-header-item">
              <div class="header-label">Order Number</div>
              <div class="header-value">#${order.order_number || 'N/A'}</div>
            </div>
            ${order.payment_status ? `
            <div class="order-header-item responsive-hide">
              <div class="header-label">Payment Status</div>
              <div class="header-value">${this.formatStatus(order.payment_status)}</div>
            </div>
            ` : ''}
          </div>
          <div class="header-action">
            <div class="status-badge ${statusClass}">${statusLabel}</div>
          </div>
        </div>
        <div class="order-content">
          <div class="order-product">
            <div class="product-details">
              <div class="product-name">
                Click "View Details" to see order items
              </div>
              ${order.payment_method ? `<div class="product-weight">Payment: ${order.payment_method}</div>` : ''}
            </div>
          </div>
          <div class="order-summary">
            <div class="order-price">₱${this.formatPrice(order.total_amount)}</div>
            <div class="order-actions">
              <button class="action-button secondary-button view-details-btn" data-transaction-id="${order.id}">
                View Details
              </button>
              ${order.order_status === 'shipped' ? `
                <button class="action-button secondary-button track-order-btn" data-transaction-id="${order.id}">
                  Track Order
                </button>
              ` : ''}
              ${order.order_status === 'cancelled' || order.order_status === 'delivered' ? `
                <button class="action-button primary-button reorder-btn" data-transaction-id="${order.id}">
                  Reorder
                </button>
              ` : ''}
            </div>
          </div>
        </div>
      </div>
    `;
  },

  attachOrderEventListeners() {
    // View Details buttons
    document.querySelectorAll('.view-details-btn').forEach(btn => {
      btn.addEventListener('click', async (e) => {
        const transactionId = e.target.dataset.transactionId;
        await this.showOrderDetails(transactionId);
      });
    });

    // Track Order buttons
    document.querySelectorAll('.track-order-btn').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const transactionId = e.target.dataset.transactionId;
        window.location.href = `trackorder.php?order_id=${transactionId}`;
      });
    });

    // Reorder buttons
    document.querySelectorAll('.reorder-btn').forEach(btn => {
      btn.addEventListener('click', async (e) => {
        const transactionId = e.target.dataset.transactionId;
        await this.handleReorder(transactionId);
      });
    });
  },

  async showOrderDetails(transactionId) {
    const orderData = await this.loadOrderDetails(transactionId);
    
    if (!orderData) {
      alert('Failed to load order details');
      return;
    }

    const itemsHtml = orderData.items.map(item => `
      <div class="order-item-detail">
        <div class="item-info">
          <strong>Product ID:</strong> ${item.product_id}
          ${item.variation_id ? `<br><strong>Variation:</strong> ${item.variation_id}` : ''}
        </div>
        <div class="item-pricing">
          <div><strong>Quantity:</strong> ${item.quantity}</div>
          <div><strong>Price:</strong> ₱${this.formatPrice(item.price)}</div>
          <div><strong>Subtotal:</strong> ₱${this.formatPrice(item.subtotal)}</div>
        </div>
      </div>
    `).join('');

    const modalHtml = `
      <div class="modal-overlay" id="orderDetailsModal">
        <div class="modal-content">
          <div class="modal-header">
            <h2>Order Details - #${orderData.order_number}</h2>
            <button class="modal-close">&times;</button>
          </div>
          <div class="modal-body">
            <div class="order-info-section">
              <h3>Order Information</h3>
              <p><strong>Order Date:</strong> ${this.formatDate(orderData.created_at)}</p>
              <p><strong>Total Amount:</strong> ₱${this.formatPrice(orderData.total_amount)}</p>
              <p><strong>Payment Method:</strong> ${orderData.payment_method || 'N/A'}</p>
              <p><strong>Payment Status:</strong> ${this.formatStatus(orderData.payment_status)}</p>
              <p><strong>Order Status:</strong> ${this.formatStatus(orderData.order_status)}</p>
            </div>
            <div class="order-items-section">
              <h3>Order Items</h3>
              ${itemsHtml}
            </div>
          </div>
          <div class="modal-footer">
            <button class="action-button secondary-button modal-close-btn">Close</button>
          </div>
        </div>
      </div>
    `;

    // Insert modal
    document.body.insertAdjacentHTML('beforeend', modalHtml);

    // Add close event listeners
    const modal = document.getElementById('orderDetailsModal');
    modal.querySelectorAll('.modal-close, .modal-close-btn').forEach(btn => {
      btn.addEventListener('click', () => modal.remove());
    });
    
    modal.addEventListener('click', (e) => {
      if (e.target === modal) modal.remove();
    });
  },

  async handleReorder(transactionId) {
    const orderData = await this.loadOrderDetails(transactionId);
    
    if (!orderData || !orderData.items) {
      alert('Failed to load order details for reorder');
      return;
    }

    // Add items to cart logic here
    // This depends on your cart implementation
    console.log('Reordering items:', orderData.items);
    alert('Items added to cart! (Implement your cart logic here)');
  },

  getStatusClass(status) {
    const statusMap = {
      'delivered': 'status-delivered',
      'shipped': 'status-shipped',
      'preparing': 'status-processing',
      'pending': 'status-processing',
      'cancelled': 'status-canceled',
      'cart': 'status-processing',
      'checkout': 'status-processing',
      'paid': 'status-delivered',
      'failed': 'status-canceled'
    };
    return statusMap[status?.toLowerCase()] || 'status-processing';
  },

  formatStatus(status) {
    if (!status) return 'N/A';
    return status.charAt(0).toUpperCase() + status.slice(1);
  },

  formatDate(dateString) {
    if (!dateString) return 'N/A';
    const date = new Date(dateString);
    return date.toLocaleDateString('en-US', { 
      month: 'short', 
      day: 'numeric', 
      year: 'numeric' 
    });
  },

  formatPrice(price) {
    return parseFloat(price).toLocaleString('en-US', {
      minimumFractionDigits: 2,
      maximumFractionDigits: 2
    });
  },

  showEmptyState() {
    const orderList = document.querySelector('.order-list');
    orderList.innerHTML = `
      <div class="empty-state">
        <div class="empty-icon">📦</div>
        <div class="empty-title">No Orders Found</div>
        <div class="empty-text">
          You haven't placed any orders yet or your search criteria didn't match any orders.
        </div>
        <div class="empty-action">
          <button class="action-button primary-button" onclick="window.location.href='../index.php'">
            Start Shopping
          </button>
        </div>
      </div>
    `;
  },

  showError(message) {
    const orderList = document.querySelector('.order-list');
    orderList.innerHTML = `
      <div class="empty-state">
        <div class="empty-icon">⚠️</div>
        <div class="empty-title">Error</div>
        <div class="empty-text">${message}</div>
      </div>
    `;
  }
};

// Initialize when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
  // Get customer ID from your session/auth system
  // For example: const customerId = document.body.dataset.customerId;
  const customerId = sessionStorage.getItem('user_id'); // Replace with actual customer ID from your session
  
  PurchaseHistory.init(customerId);
});