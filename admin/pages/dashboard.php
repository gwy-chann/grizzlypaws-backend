<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grizzly Paws Management</title>
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

        /* Strategy Card (Left) */
            .action-card-left {
                padding: 25px;
            }

            .strategy-header {
                display: flex;
                align-items: center;
                gap: 12px;
                margin-bottom: 20px;
                padding-bottom: 15px;
                border-bottom: 2px solid #f0f0f0;
            }

            .strategy-header i {
                font-size: 24px;
                color: #235523;
            }

            .strategy-header h3 {
                font-size: 20px;
                font-weight: 600;
                color: #333;
                margin: 0;
            }

            .strategy-content {
                display: flex;
                flex-direction: column;
                gap: 20px;
            }

            .strategy-goal h4,
            .strategy-focus h4 {
                font-size: 16px;
                font-weight: 600;
                color: #235523;
                margin-bottom: 10px;
            }


            .strategy-goal p {
                font-size: 15px;
                line-height: 1.6;
                color: #555;
            }

            .strategy-focus ul {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .strategy-focus ul li {
                padding: 10px 0;
                font-size: 14px;
                line-height: 1.6;
                color: #666;
                border-bottom: 1px solid #f0f0f0;
            }

            .strategy-focus ul li:last-child {
                border-bottom: none;
            }

            .strategy-focus ul li strong {
                color: #333;
            }

            /* Actions Card (Right) */
            .action-card-right {
                padding: 25px;
            }

            .actions-header {
                display: flex;
                align-items: center;
                gap: 12px;
                margin-bottom: 20px;
                padding-bottom: 15px;
                border-bottom: 2px solid #f0f0f0;
            }

            .actions-header i {
                font-size: 24px;
                color: #235523;
            }

            .actions-header h3 {
                font-size: 20px;
                font-weight: 600;
                color: #333;
                margin: 0;
            }

            .actions-list {
                display: flex;
                flex-direction: column;
                gap: 15px;
            }

            .action-item {
                display: flex;
                gap: 15px;
                padding: 15px;
                background-color: #f9f9f9;
                border-radius: 6px;
                border-left: 3px solid #ddd;
                transition: all 0.3s ease;
            }

            .action-item:hover {
                background-color: #f5f5f5;
                transform: translateX(5px);
            }

            .action-item.pending {
                border-left-color: #aae4b9;
            }

            .action-checkbox {
                display: flex;
                align-items: flex-start;
                padding-top: 3px;
            }

            .action-checkbox i {
                font-size: 12px;
                color: #ddd;
                cursor: pointer;
                transition: color 0.3s ease;
            }

            .action-item:hover .action-checkbox i {
                color: #235523;
            }

            .action-details {
                flex: 1;
            }

            .action-details h4 {
                font-size: 15px;
                font-weight: 600;
                color: #333;
                margin: 0 0 5px 0;
            }

            .action-details p {
                font-size: 13px;
                color: #666;
                margin: 0 0 8px 0;
            }

            .action-priority {
                display: inline-block;
                padding: 3px 10px;
                border-radius: 12px;
                font-size: 11px;
                font-weight: 600;
                text-transform: uppercase;
            }

            .action-priority.high {
                background-color: #ffe0e0;
                color: #d32f2f;
            }

            .action-priority.medium {
                background-color: #fff4e0;
                color: #f57c00;
            }

            .action-priority.low {
                background-color: #e0f2ff;
                color: #1976d2;
            }

    </style>
</head>
<body>
     <?php include '../includes/header.php'; ?>
    <!-- Notification Container for displaying alerts -->
    <div class="notification-container" id="notificationContainer"></div>

    <!-- Main Container with Sidebar and Content -->
    <div class="main-container">
        <!-- Sidebar Navigation -->
        <?php include '../includes/sidebar.php'; ?>

        <div class="content">
            <h1 class="dashboard-title">Dashboard</h1>
            
            <div class="dashboard-cards">
                
                <div class="card">
                    <div class="card-content">
                        <div class="card-metric">...</div>
                        <div class="circular-progress-container">
                            <div class="circular-progress"></div>
                            <i class="fas fa-file-alt card-icon"></i> 
                        </div>
                    </div>
                    <div class="card-footer">New Orders Today</div>
                </div>

                <div class="card">
                    <div class="card-content">
                        <div class="card-metric">...</div>
                        <div class="circular-progress-container">
                            <div class="circular-progress"></div>
                            <i class="fas fa-chart-bar card-icon"></i>
                        </div>
                    </div>
                    <div class="card-footer">Sales Today</div>
                </div>

                <div class="card">
                    <div class="card-content">
                        <div class="card-metric">...</div>
                        <div class="circular-progress-container">
                            <div class="circular-progress"></div>
                            <i class="fas fa-box-open card-icon"></i>
                        </div>
                    </div>
                    <div class="card-footer">Low-stock products</div>
                </div>
            </div>
            
            <h2 class="action-plan-title">Action Plan</h2>
<div class="action-plan-section">
    <div class="action-card action-card-left">
        <div class="strategy-header">
            <i class="fas fa-bullseye"></i>
            <h3>Monthly Growth Strategy</h3>
        </div>
        <div class="strategy-content">
            <div class="strategy-goal">
                <h4>Primary Goal</h4>
                <p>Increase customer retention by 25% through enhanced product variety and customer engagement</p>
            </div>
            <div class="strategy-focus">
                <h4>Key Focus Areas</h4>
                <ul>
                    <li><strong>Product Expansion:</strong> Introduce 5 new premium products across all pet categories</li>
                    <li><strong>Customer Experience:</strong> Reduce order processing time to under 24 hours</li>
                    <li><strong>Inventory Management:</strong> Maintain optimal stock levels to prevent stockouts</li>
                    <li><strong>Review Generation:</strong> Achieve 4.5+ star average rating through quality service</li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="action-card action-card-right">
        <div class="actions-header">
            <i class="fas fa-tasks"></i>
            <h3>Action Items</h3>
        </div>
        <div class="actions-list">
            <!-- Action items will be dynamically loaded -->
            <div class="action-item" style="text-align: center; padding: 30px; border: none; background: transparent;">
                <div class="action-details">
                    <div class="loading-spinner" style="margin: 0 auto 10px;"></div>
                    <p style="color: #999;">Loading action items...</p>
                </div>
            </div>
        </div>
    </div>
</div>

            <div class="footer">
                Copyright © 2025 GrizzlyPaws. All rights reserved
            </div>
        </div>
    </div>
    
    <!-- Dashboard JavaScript -->
    <script src="../assets/js/dashboard.js"></script>
</body>
</html>