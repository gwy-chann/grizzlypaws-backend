// Track Order Manager
const TrackOrder = {
  customerId: null,
  currentOrderId: null,

  init(customerId) {
    this.customerId = customerId;
    this.setupEventListeners();
    this.loadRecentOrder();
  },

  setupEventListeners() {
    // Track package button
    document.querySelector('.primary-button')?.addEventListener('click', () => {
      this.showTrackingDetails();
    });

    // Reorder button
    document.querySelector('.secondary-button')?.addEventListener('click', async () => {
      if (this.currentOrderId) {
        await this.handleReorder(this.currentOrderId);
      }
    });
  },

  async loadRecentOrder() {
    try {
      console.log('Loading order for customer:', this.customerId);
      
      // Get the order_id from URL if present
      const urlParams = new URLSearchParams(window.location.search);
      const orderId = urlParams.get('order_id');

      let url = `http://localhost/grizzlypaws-backend/project-root/api/transaction.php?customer_id=${this.customerId}&limit=1`;
      
      if (orderId) {
        url = `http://localhost/grizzlypaws-backend/project-root/api/transaction.php?customer_id=${this.customerId}&transaction_id=${orderId}`;
      }

      console.log('Fetching from URL:', url);
      const response = await fetch(url);
      console.log('Response status:', response.status);
      
      const result = await response.json();
      console.log('API Result:', result);

      if (result.success && result.data) {
        const orderData = Array.isArray(result.data) ? result.data[0] : result.data;
        console.log('Order data:', orderData);
        
        if (orderData) {
          await this.displayOrder(orderData);
        } else {
          console.log('No order data found');
          this.showNoOrders();
        }
      } else {
        console.log('API returned unsuccessful or no data');
        this.showNoOrders();
      }
    } catch (error) {
      console.error('Error loading order:', error);
      this.showError('Failed to load order details: ' + error.message);
    }
  },

  async displayOrder(order) {
    console.log('Displaying order:', order);
    this.currentOrderId = order.id;

    // Load full order details including items
    const fullOrder = await this.loadOrderDetails(order.id);
    console.log('Full order with items:', fullOrder);
    
    if (!fullOrder) {
      this.showError('Failed to load full order details');
      return;
    }

    // Update order status section
    this.updateOrderStatus(fullOrder);

    // Update progress tracker
    this.updateProgressTracker(fullOrder);

    // Update product items
    this.updateProductItems(fullOrder);

    // Update order summary
    this.updateOrderSummary(fullOrder);

    // Update action buttons
    this.updateActionButtons(fullOrder);
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

  updateOrderStatus(order) {
    console.log('Updating order status');
    const orderContainer = document.querySelector('.order-container');
    if (!orderContainer) {
      console.error('Order container not found');
      return;
    }

    // Clear loading state and create fresh structure
    orderContainer.innerHTML = `
      <div class="order-header">
        <h1>Your Recent Purchase</h1>
      </div>
      <div class="order-status"></div>
      <div class="progress-container"></div>
      <div class="delivery-info"></div>
      <div class="order-summary"></div>
      <div class="order-actions"></div>
    `;

    const orderStatus = orderContainer.querySelector('.order-status');
    const statusValue = this.getStatusInfo(order.order_status);
    const orderDate = this.formatDate(order.created_at);

    orderStatus.innerHTML = `
      <div class="status-info">
        <div class="status-text">Order Status</div>
        <div class="status-value ${statusValue.class}">${statusValue.text}</div>
      </div>
      <div class="status-info">
        <div class="status-text">Order Date</div>
        <div class="status-value">${orderDate}</div>
      </div>
      <div class="status-info">
        <div class="status-text">Order Number</div>
        <div class="status-value">#${order.order_number || 'N/A'}</div>
      </div>
      ${order.payment_status ? `
      <div class="status-info">
        <div class="status-text">Payment Status</div>
        <div class="status-value">${this.formatStatus(order.payment_status)}</div>
      </div>
      ` : ''}
    `;
  },

  updateProgressTracker(order) {
    const progressContainer = document.querySelector('.progress-container');
    if (!progressContainer) return;

    const steps = this.getProgressSteps(order.order_status);
    
    progressContainer.innerHTML = `
      <div class="progress-track">
        ${steps.map((step, index) => `
          <div class="progress-step ${step.completed ? 'completed' : ''} ${step.active ? 'active' : ''}">
            <div class="step-icon">${step.completed ? '✓' : index + 1}</div>
            <div class="step-text">${step.label}</div>
          </div>
        `).join('')}
      </div>
    `;
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

    // Handle cancelled orders
    if (orderStatus === 'cancelled') {
      allSteps[0].completed = true;
      allSteps.push({ 
        key: 'cancelled', 
        label: 'Order Cancelled', 
        completed: true, 
        active: true 
      });
      return allSteps;
    }

    // Mark steps as completed or active
    allSteps.forEach((step, index) => {
      if (index < currentIndex || (orderStatus === 'delivered' && index <= 3)) {
        step.completed = true;
      } else if (index === currentIndex) {
        step.active = true;
      }
    });

    return allSteps;
  },

  updateProductItems(order) {
    console.log('Updating product items');
    const deliveryInfo = document.querySelector('.delivery-info');
    if (!deliveryInfo) {
      console.error('Delivery info container not found');
      return;
    }

    if (!order.items || order.items.length === 0) {
      deliveryInfo.innerHTML = `
        <div class="delivery-title">Your delivery</div>
        <p style="color: #6b7280; padding: 20px 0;">No items in this order</p>
      `;
      return;
    }

    // Set delivery title
    deliveryInfo.innerHTML = '<div class="delivery-title">Your delivery</div>';

    // Add each product item
    order.items.forEach(item => {
      const productHtml = `
        <div class="product-item">
          <div class="product-image">
            <div style="width: 80px; height: 80px; background: #f3f4f6; display: flex; align-items: center; justify-content: center; border-radius: 8px; font-size: 12px; color: #6b7280;">
              Product ${item.product_id}
            </div>
          </div>
          <div class="product-details">
            <div class="product-name">
              Product ID: ${item.product_id}
            </div>
            ${item.variation_id ? `<div class="product-weight">Variation: ${item.variation_id}</div>` : ''}
            <div class="product-weight">Quantity: ${item.quantity}</div>
            <div class="product-weight">Price: ₱${this.formatPrice(item.price)}</div>
          </div>
          <div class="product-price">₱${this.formatPrice(item.subtotal)}</div>
        </div>
      `;
      deliveryInfo.insertAdjacentHTML('beforeend', productHtml);
    });
  },

  updateOrderSummary(order) {
    const orderSummary = document.querySelector('.order-summary');
    if (!orderSummary) return;

    // Calculate subtotal from items
    const subtotal = order.items.reduce((sum, item) => sum + parseFloat(item.subtotal), 0);
    const tax = subtotal * 0.12; // 12% tax
    const shipping = 0; // Free shipping

    orderSummary.innerHTML = `
      <div class="summary-row">
        <div class="summary-label">Subtotal</div>
        <div class="summary-value">₱${this.formatPrice(subtotal)}</div>
      </div>
      <div class="summary-row">
        <div class="summary-label">Shipping</div>
        <div class="summary-value">₱${this.formatPrice(shipping)}</div>
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
      </div>
      ` : ''}
    `;
  },

  updateActionButtons(order) {
    const orderActions = document.querySelector('.order-actions');
    if (!orderActions) return;

    let buttons = '';

    // Show track package button for shipped orders
    if (order.order_status === 'shipped') {
      buttons += '<button class="action-button primary-button track-btn">Track Package</button>';
    }

    // Show reorder button for delivered or cancelled orders
    if (order.order_status === 'delivered' || order.order_status === 'cancelled') {
      buttons += '<button class="action-button secondary-button reorder-btn">Reorder</button>';
    }

    // Show view details button
    buttons += '<button class="action-button secondary-button details-btn">View Full Details</button>';

    orderActions.innerHTML = buttons;

    // Reattach event listeners
    orderActions.querySelector('.track-btn')?.addEventListener('click', () => {
      this.showTrackingDetails();
    });

    orderActions.querySelector('.reorder-btn')?.addEventListener('click', async () => {
      await this.handleReorder(order.id);
    });

    orderActions.querySelector('.details-btn')?.addEventListener('click', () => {
      this.showOrderDetailsModal(order);
    });
  },

  showTrackingDetails() {
    alert('Tracking feature: Integration with shipping provider API would go here.\n\nYour package is on the way!');
  },

  async handleReorder(transactionId) {
    const orderData = await this.loadOrderDetails(transactionId);
    
    if (!orderData || !orderData.items) {
      alert('Failed to load order details for reorder');
      return;
    }

    // Add items to cart logic here
    console.log('Reordering items:', orderData.items);
    alert(`${orderData.items.length} item(s) added to cart!\n\n(Implement your cart logic here)`);
  },

  showOrderDetailsModal(order) {
    const itemsHtml = order.items.map(item => `
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
            <h2>Order Details - #${order.order_number}</h2>
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

// Initialize when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
  const customerId = document.body.dataset.customerId || 1;
  TrackOrder.init(customerId);
});