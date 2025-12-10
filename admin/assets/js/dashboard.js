// Admin Dashboard Manager
const DashboardManager = {
  refreshInterval: null,

  init() {
    this.loadDashboardStats();
    // Refresh every 30 seconds
    this.refreshInterval = setInterval(() => {
      this.loadDashboardStats();
    }, 30000);
  },

  async loadDashboardStats() {
    try {
      const response = await fetch('../api/get_dashboard_stats.php');
      
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      
      const result = await response.json();
      console.log('Dashboard stats:', result);

      if (result.success) {
        this.updateDashboard(result.data);
      } else {
        console.error('Failed to load dashboard stats');
      }
    } catch (error) {
      console.error('Error loading dashboard stats:', error);
    }
  },

  updateDashboard(data) {
    // Update cards
    this.updateCard(0, data.today_orders, 'New Orders Today');
    this.updateCard(1, '₱' + this.formatNumber(data.today_sales), 'Sales Today');
    this.updateCard(2, data.low_stock_count, 'Low-stock products');

    // Update action items
    this.updateActionItems(data);
  },

  updateCard(index, value, label) {
    const cards = document.querySelectorAll('.card');
    if (cards[index]) {
      const metric = cards[index].querySelector('.card-metric');
      const footer = cards[index].querySelector('.card-footer');
      
      if (metric) metric.textContent = value;
      if (footer) footer.textContent = label;
    }
  },

  updateActionItems(data) {
    const actionsList = document.querySelector('.actions-list');
    if (!actionsList) return;

    let html = '';

    // New User Signups
    if (data.new_users && data.new_users.length > 0) {
      data.new_users.forEach(user => {
        const time = this.formatTime(user.created_at);
        html += `
          <div class="action-item pending" data-type="new-user">
            <div class="action-checkbox">
              <i class="fas fa-user-plus" style="color: #4caf50;"></i>
            </div>
            <div class="action-details">
              <h4>New User Signup</h4>
              <p><strong>${this.escapeHtml(user.name)}</strong> (${this.escapeHtml(user.email)}) signed up ${time}</p>
              <span class="action-priority low">New Member</span>
            </div>
          </div>
        `;
      });
    }

    // Low Stock Items
    if (data.low_stock_details && data.low_stock_details.length > 0) {
      const stockCount = data.low_stock_details.length;
      const products = data.low_stock_details.slice(0, 3).map(p => 
        `${p.name} (${p.stock} ${p.unit})`
      ).join(', ');
      
      html += `
        <div class="action-item pending" data-type="low-stock">
          <div class="action-checkbox">
            <i class="fas fa-exclamation-triangle" style="color: #ff9800;"></i>
          </div>
          <div class="action-details">
            <h4>Restock Low Inventory Items</h4>
            <p>${stockCount} products below minimum stock: ${products}</p>
            <span class="action-priority high">High Priority</span>
          </div>
        </div>
      `;
    }

    // Preparing Orders
    if (data.preparing_orders > 0) {
      html += `
        <div class="action-item pending" data-type="preparing-orders">
          <div class="action-checkbox">
            <i class="fas fa-box" style="color: #2196f3;"></i>
          </div>
          <div class="action-details">
            <h4>Process Orders in Preparation</h4>
            <p>${data.preparing_orders} order${data.preparing_orders > 1 ? 's' : ''} currently being prepared</p>
            <span class="action-priority high">High Priority</span>
          </div>
        </div>
      `;
    }

    // Pending Reviews
    if (data.pending_reviews > 0) {
      html += `
        <div class="action-item pending" data-type="reviews">
          <div class="action-checkbox">
            <i class="fas fa-star" style="color: #ffc107;"></i>
          </div>
          <div class="action-details">
            <h4>Review Customer Feedback</h4>
            <p>${data.pending_reviews} review${data.pending_reviews > 1 ? 's' : ''} need${data.pending_reviews > 1 ? '' : 's'} attention</p>
            <span class="action-priority medium">Medium Priority</span>
          </div>
        </div>
      `;
    }

    // If no action items
    if (html === '') {
      html = `
        <div class="action-item" style="text-align: center; padding: 30px; border: none; background: transparent;">
          <div class="action-details">
            <i class="fas fa-check-circle" style="font-size: 48px; color: #4caf50; margin-bottom: 10px;"></i>
            <h4 style="color: #4caf50;">All Caught Up!</h4>
            <p>No pending action items at the moment.</p>
          </div>
        </div>
      `;
    }

    actionsList.innerHTML = html;
  },

  formatNumber(num) {
    return parseFloat(num).toLocaleString('en-US', {
      minimumFractionDigits: 2,
      maximumFractionDigits: 2
    });
  },

  formatTime(timestamp) {
    const date = new Date(timestamp);
    const now = new Date();
    const diffMs = now - date;
    const diffMins = Math.floor(diffMs / 60000);
    const diffHours = Math.floor(diffMs / 3600000);

    if (diffMins < 1) return 'just now';
    if (diffMins < 60) return `${diffMins} minute${diffMins > 1 ? 's' : ''} ago`;
    if (diffHours < 24) return `${diffHours} hour${diffHours > 1 ? 's' : ''} ago`;
    
    return date.toLocaleDateString('en-US', { 
      month: 'short', 
      day: 'numeric',
      hour: '2-digit',
      minute: '2-digit'
    });
  },

  escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
  },

  destroy() {
    if (this.refreshInterval) {
      clearInterval(this.refreshInterval);
    }
  }
};

// Initialize when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
  DashboardManager.init();
});

// Cleanup on page unload
window.addEventListener('beforeunload', () => {
  DashboardManager.destroy();
});
