// js for hamburger menu and notification dropdown
document.addEventListener('DOMContentLoaded', function() {
    // Get the mobile menu button and navigation
    const mobileMenuButton = document.querySelector('.mobile-menu-button');
    const nav = document.querySelector('nav');
    
    // Check if both elements exist before adding event listener
    if (mobileMenuButton && nav) {
      // Toggle navigation when clicking the hamburger button
      mobileMenuButton.addEventListener('click', function() {
        nav.classList.toggle('active');
      });
    } else {
      console.error('Mobile menu button or navigation not found');
    }

    // Notification dropdown - click to toggle
    const notificationButton = document.querySelector('.notification-button');
    const notificationDropdown = document.querySelector('.notification-dropdown');
    
    if (notificationButton && notificationDropdown) {
      notificationButton.addEventListener('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        // Toggle active class on the dropdown container
        notificationDropdown.classList.toggle('active');
      });

      // Close dropdown when clicking outside
      document.addEventListener('click', function(e) {
        if (!notificationDropdown.contains(e.target)) {
          notificationDropdown.classList.remove('active');
        }
      });
    }
  });