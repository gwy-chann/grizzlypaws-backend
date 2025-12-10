<?php
    $current_page = basename($_SERVER['PHP_SELF']); 
?>
<div class="sidebar">
            <div class="sidebar-menu">
                <div class="menu-item <?= $current_page == 'index.php' ? 'active' : '' ?>">
                    <a href="/grizzlypaws-backend/admin/index.php" style="display: flex; align-items: center; gap: 15px; text-decoration: none; color: inherit; width: 100%;">
                        <span class="menu-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                <polyline points="9 22 9 12 15 12 15 22"></polyline>
                            </svg>
                        </span>
                        Homepage
                    </a>
                </div>
                <div class="menu-item <?= $current_page == 'dashboard.php' ? 'active' : '' ?>">
                    <a href="/grizzlypaws-backend/admin/pages/dashboard.php" style="display: flex; align-items: center; gap: 15px; text-decoration: none; color: inherit; width: 100%;">
                        <span class="menu-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <rect x="3" y="3" width="7" height="7"></rect>
                                <rect x="14" y="3" width="7" height="7"></rect>
                                <rect x="14" y="14" width="7" height="7"></rect>
                                <rect x="3" y="14" width="7" height="7"></rect>
                            </svg>
                        </span>
                        Dashboard
                    </a>
                </div>
                <div class="menu-item <?= $current_page == 'products.php' ? 'active' : '' ?>">
                    <a href="/grizzlypaws-backend/admin/pages/products.php" style="display: flex; align-items: center; gap: 15px; text-decoration: none; color: inherit; width: 100%;">
                        <span class="menu-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                                <line x1="3" y1="6" x2="21" y2="6"></line>
                                <path d="M16 10a4 4 0 0 1-8 0"></path>
                            </svg>
                        </span>
                        Products
                    </a>
                </div>
                <div class="menu-item <?= $current_page == 'manage_order.php' ? 'active' : '' ?>">
                    <a href="/grizzlypaws-backend/admin/pages/manage_order.php" style="display: flex; align-items: center; gap: 15px; text-decoration: none; color: inherit; width: 100%;">
                        <span class="menu-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path>
                                <polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline>
                                <line x1="12" y1="22.08" x2="12" y2="12"></line>
                            </svg>
                        </span>
                        Manage Order
                    </a>
                </div>
                <div class="menu-item <?= $current_page == 'manage_reviews.php' ? 'active' : '' ?>">
                    <a href="/grizzlypaws-backend/admin/pages/manage_reviews.php" style="display: flex; align-items: center; gap: 15px; text-decoration: none; color: inherit; width: 100%;">
                        <span class="menu-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                <polyline points="14 2 14 8 20 8"></polyline>
                                <line x1="16" y1="13" x2="8" y2="13"></line>
                                <line x1="16" y1="17" x2="8" y2="17"></line>
                            </svg>
                        </span>
                        Manage Reviews
                    </a>
                </div>
                <!-- <div class="menu-item <?= $current_page == 'concern.php' ? 'active' : '' ?>">
                    <a href="/grizzlypaws-backend/admin/pages/concern.php" style="display: flex; align-items: center; gap: 15px; text-decoration: none; color: inherit; width: 100%;">
                        <span class="menu-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                                <circle cx="12" cy="8" r="1"></circle>
                                <path d="M12 10v4"></path>
                            </svg>
                        </span>
                        Concern
                    </a>
                </div> -->
                <div class="menu-item <?= $current_page == 'user-management.php' ? 'active' : '' ?>">
                    <a href="/grizzlypaws-backend/admin/pages/user-management.php" style="display: flex; align-items: center; gap: 15px; text-decoration: none; color: inherit; width: 100%;">
                        <span class="menu-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                <circle cx="9" cy="7" r="4"></circle>
                                <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                            </svg>
                        </span>
                        User Management
                    </a>
                </div>
            </div>
           <div class="logout">
                <a href="/grizzlypaws-backend/project-root/pages/login.php" style="display: flex; align-items: center; gap: 15px; text-decoration: none; color: inherit; width: 100%;">
                    Log out
                </a>
    
            </div>
        </div>