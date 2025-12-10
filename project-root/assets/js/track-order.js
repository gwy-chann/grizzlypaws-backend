// Enhanced Track Order Manager - Multiple Orders Support
const TrackOrder = {
  customerId: null,
  currentOrderId: null,
  viewMode: 'list', // 'list' or 'detail'

  init(customerId) {
    this.customerId = customerId;
    
    const urlParams = new URLSearchParams(window.location.search);
    const orderId = urlParams.get('order_id');
    
    if (orderId) {
      this.viewMode = 'detail';
      this.loadOrderDetail(orderId);
    } else {
      this.viewMode = 'list';
      this.loadOrdersList();
    }
  },

  async loadOrdersList() {
    try {
      const url = `http://localhost/grizzlypaws-backend/project-root/api/transaction.php?customer_id=${this.customerId}`;
      const response = await fetch(url);
      const result = await response.json();

      if (result.success && result.data && result.data.length > 0) {
        this.displayOrdersList(result.data);
      } else {
        this.showNoOrders();
      }
    } catch (error) {
      console.error('Error loading orders:', error);
      this.showError('Failed to load orders: ' + error.message);
    }
  },

  displayOrdersList(orders) {
    const container = document.querySelector('.order-container');
    if (!container) return;

    const ordersHtml = orders.map(order => {
      const status = this.getStatusInfo(order.order_status);
      return `
        <div class="order-card" data-order-id="${order.id}">
          <div class="order-card-header">
            <div class="order-card-number">Order #${order.order_number || order.id}</div>
            <div class="order-card-status ${status.class}">${status.text}</div>
          </div>
          <div class="order-card-info">
            <span>📅 ${this.formatDate(order.created_at)}</span>
            <span>📦 ${order.items?.length || 0} item(s)</span>
          </div>
          <div class="order-card-total">₱${this.formatPrice(order.total_amount)}</div>
        </div>
      `;
    }).join('');

    container.innerHTML = `
      <div class="orders-list-container">
        <div class="orders-header">
          <h1>Your Orders</h1>
        </div>
        ${ordersHtml}
      </div>
    `;

    // Attach click handlers
    container.querySelectorAll('.order-card').forEach(card => {
      card.addEventListener('click', () => {
        const orderId = card.dataset.orderId;
        window.location.href = `?order_id=${orderId}`;
      });
    });
  },

  async loadOrderDetail(orderId) {
    try {
      const url = `http://localhost/grizzlypaws-backend/project-root/api/transaction.php?customer_id=${this.customerId}&transaction_id=${orderId}`;
      const response = await fetch(url);
      const result = await response.json();

      if (result.success && result.data) {
        await this.displayOrderDetail(result.data);
      } else {
        this.showError('Order not found');
      }
    } catch (error) {
      console.error('Error loading order detail:', error);
      this.showError('Failed to load order details: ' + error.message);
    }
  },

  async displayOrderDetail(order) {
    this.currentOrderId = order.id;
    const container = document.querySelector('.order-container');
    if (!container) return;

    const status = this.getStatusInfo(order.order_status);
    const steps = this.getProgressSteps(order.order_status);

    // Build action buttons
    let actionButtons = '';
    if (order.order_status === 'shipped') {
      actionButtons += '<button class="action-button primary-button track-btn">Track Package</button>';
    }
    if (order.order_status === 'delivered' || order.order_status === 'cancelled') {
      actionButtons += '<button class="action-button secondary-button reorder-btn">Reorder</button>';
    }
    actionButtons += '<button class="action-button secondary-button details-btn">View Full Details</button>';

    // Items HTML
    const itemsHtml = order.items?.map(item => `
      <div class="product-item">
        <div class="product-image">
          <div style="width: 80px; height: 80px; background: #f3f4f6; display: flex; align-items: center; justify-content: center; border-radius: 8px; font-size: 12px; color: #6b7280;">
            Product ${item.product_id}
          </div>
        </div>
        <div class="product-details">
          <div class="product-name">Product ID: ${item.product_id}</div>
          ${item.variation_id ? `<div class="product-weight">Variation: ${item.variation_id}</div>` : ''}
          <div class="product-weight">Quantity: ${item.quantity}</div>
          <div class="product-weight">Price: ₱${this.formatPrice(item.price)}</div>
        </div>
        <div class="product-price">₱${this.formatPrice(item.subtotal)}</div>
      </div>
    `).join('') || '<p style="color: #6b7280;">No items</p>';

    const subtotal = order.items?.reduce((sum, item) => sum + parseFloat(item.subtotal), 0) || 0;

    container.innerHTML = `
      <button class="back-button">← Back to Orders</button>
      <div class="order-header">
        <h1>Order Details</h1>
      </div>
      
      <div class="order-status">
        <div class="status-info">
          <div class="status-text">Order Status</div>
          <div class="status-value ${status.class}">${status.text}</div>
        </div>
        <div class="status-info">
          <div class="status-text">Order Date</div>
          <div class="status-value">${this.formatDate(order.created_at)}</div>
        </div>
        <div class="status-info">
          <div class="status-text">Order Number</div>
          <div class="status-value">#${order.order_number || order.id}</div>
        </div>
        ${order.payment_status ? `
        <div class="status-info">
          <div class="status-text">Payment Status</div>
          <div class="status-value">${this.formatStatus(order.payment_status)}</div>
        </div>` : ''}
      </div>

      <div class="progress-container">
        <div class="progress-track">
          ${steps.map((step, i) => `
            <div class="progress-step ${step.completed ? 'completed' : ''} ${step.active ? 'active' : ''}">
              <div class="step-icon">${step.completed ? '✓' : i + 1}</div>
              <div class="step-text">${step.label}</div>
            </div>
          `).join('')}
        </div>
      </div>

      <div class="delivery-info">
        <div class="delivery-title">Your delivery</div>
        ${itemsHtml}
      </div>

      <div class="order-summary">
        <div class="summary-row">
          <div class="summary-label">Subtotal</div>
          <div class="summary-value">₱${this.formatPrice(subtotal)}</div>
        </div>
        <div class="summary-row">
          <div class="summary-label">Shipping</div>
          <div class="summary-value">₱0.00</div>
        </div>
        <div class="summary-row">
          <div class="summary-label">Tax</div>
          <div class="summary-value">12%</div>
        </div>
        <div class="total-row">
          <div class="total-label">Total</div>
          <div class="total-value">₱${this.formatPrice(order.total_amount)}</div>
        </div>
        ${order.payment_method ? `
        <div class="summary-row" style="margin-top: 12px; padding-top: 12px; border-top: 1px solid #e5e7eb;">
          <div class="summary-label">Payment Method</div>
          <div class="summary-value">${this.formatStatus(order.payment_method)}</div>
        </div>` : ''}
      </div>

      <div class="order-actions">${actionButtons}</div>
    `;

    // Attach event listeners
    container.querySelector('.back-button')?.addEventListener('click', () => {
      window.location.href = window.location.pathname;
    });

    container.querySelector('.track-btn')?.addEventListener('click', () => {
      alert('Tracking feature: Integration with shipping provider API would go here.\n\nYour package is on the way!');
    });

    container.querySelector('.reorder-btn')?.addEventListener('click', async () => {
      console.log('Reordering items:', order.items);
      alert(`${order.items?.length || 0} item(s) added to cart!\n\n(Implement your cart logic here)`);
    });

    container.querySelector('.details-btn')?.addEventListener('click', () => {
      this.showOrderDetailsModal(order);
    });
  },

  getProgressSteps(orderStatus) {
    const allSteps = [
      { key: 'placed', label: 'Order Placed', completed: false, active: false },
      { key: 'processing', label: 'Processing', completed: false, active: false },
      { key: 'shipped', label: 'Shipped', completed: false, active: false },
      { key: 'delivered', label: 'Delivered', completed: false, active: false }
    ];

    const statusOrder = ['cart', 'checkout', 'processing', 'shipped', 'delivered'];
    const currentIndex = statusOrder.indexOf(orderStatus);

    if (orderStatus === 'cancelled') {
      allSteps[0].completed = true;
      allSteps.push({ key: 'cancelled', label: 'Order Cancelled', completed: true, active: true });
      return allSteps;
    }

    allSteps.forEach((step, index) => {
      if (index < currentIndex || (orderStatus === 'delivered' && index <= 3)) {
        step.completed = true;
      } else if (index === currentIndex) {
        step.active = true;
      }
    });

    return allSteps;
  },

  showOrderDetailsModal(order) {
    const itemsHtml = order.items?.map(item => `
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
    `).join('') || '';

    const modalHtml = `
      <div class="modal-overlay" id="orderDetailsModal">
        <div class="modal-content">
          <div class="modal-header">
            <h2>Order Details - #${order.order_number || order.id}</h2>
            <button class="modal-close">&times;</button>
          </div>
          <div class="modal-body">
            <div class="order-info-section">
              <h3>Order Information</h3>
              <p><strong>Order Date:</strong> ${this.formatDate(order.created_at)}</p>
              <p><strong>Total Amount:</strong> ₱${this.formatPrice(order.total_amount)}</p>
              <p><strong>Payment Method:</strong> ${order.payment_method || 'N/A'}</p>
              <p><strong>Payment Status:</strong> ${this.formatStatus(order.payment_status)}</p>
              <p><strong>Order Status:</strong> ${this.formatStatus(order.order_status)}</p>
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

    document.body.insertAdjacentHTML('beforeend', modalHtml);

    const modal = document.getElementById('orderDetailsModal');
    modal.querySelectorAll('.modal-close, .modal-close-btn').forEach(btn => {
      btn.addEventListener('click', () => modal.remove());
    });
    
    modal.addEventListener('click', (e) => {
      if (e.target === modal) modal.remove();
    });
  },

  getStatusInfo(status) {
    const statusMap = {
      'delivered': { text: 'Delivered', class: 'status-success' },
      'shipped': { text: 'Shipped', class: 'status-info' },
      'processing': { text: 'Processing', class: 'status-warning' },
      'cancelled': { text: 'Cancelled', class: 'status-error' },
      'cart': { text: 'In Cart', class: 'status-warning' },
      'checkout': { text: 'Checkout', class: 'status-warning' }
    };
    return statusMap[status?.toLowerCase()] || { text: 'Unknown', class: '' };
  },

  formatStatus(status) {
    if (!status) return 'N/A';
    return status.charAt(0).toUpperCase() + status.slice(1).replace(/_/g, ' ');
  },

  formatDate(dateString) {
    if (!dateString) return 'N/A';
    const date = new Date(dateString);
    return date.toLocaleDateString('en-US', { month: 'short', day: 'numeric', year: 'numeric' });
  },

  formatPrice(price) {
    return parseFloat(price).toLocaleString('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
  },

  showNoOrders() {
    const container = document.querySelector('.order-container');
    if (!container) return;

    container.innerHTML = `
      <div class="empty-state" style="padding: 80px 20px; text-align: center;">
        <div class="empty-icon" style="font-size: 64px; margin-bottom: 20px;">📦</div>
        <div class="empty-title" style="font-size: 24px; font-weight: 600; margin-bottom: 12px;">No Orders Found</div>
        <div class="empty-text" style="font-size: 16px; color: #6b7280; margin-bottom: 24px;">
          You don't have any orders to track yet.
        </div>
        <button class="action-button primary-button" onclick="window.location.href='../index.php'">
          Start Shopping
        </button>
      </div>
    `;
  },

  showError(message) {
    const container = document.querySelector('.order-container');
    if (!container) return;

    container.innerHTML = `
      <div class="empty-state" style="padding: 80px 20px; text-align: center;">
        <div class="empty-icon" style="font-size: 64px; margin-bottom: 20px;">⚠️</div>
        <div class="empty-title" style="font-size: 24px; font-weight: 600; margin-bottom: 12px;">Error</div>
        <div class="empty-text" style="font-size: 16px; color: #6b7280;">${message}</div>
      </div>
    `;
  }
};

document.addEventListener('DOMContentLoaded', () => {
  const customerId = document.body.dataset.customerId || 1;
  TrackOrder.init(customerId);
});