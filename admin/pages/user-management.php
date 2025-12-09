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
        .container {
            max-width: 1400px;
            margin: 0 auto;
            background: white;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            padding: 30px;
        }

        .sub-header h1 {
            font-size: 28px;
            color: #333;
        }

        .controls {
            display: flex;
            gap: 15px;
            margin-bottom: 25px;
            flex-wrap: wrap;
        }

        .search-box {
            flex: 1;
            min-width: 250px;
            position: relative;
        }

        .search-box input {
            width: 100%;
            padding: 12px 45px 12px 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        .search-box input:focus {
            outline: none;
            border-color: #83a75d;
        }

        .search-box i {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #999;
        }

        .filter-group {
            display: flex;
            gap: 10px;
            align-items: center;
        }

        .filter-group label {
            font-size: 14px;
            color: #666;
            font-weight: 500;
            display: none;
        }

        .filter-group select {
            padding: 10px 35px 10px 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            background: white;
            cursor: pointer;
            transition: border-color 0.3s;
        }

        .filter-group select:focus {
            outline: none;
            border-color: #83a75d;
        }

        .table-container {
            overflow-x: auto;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        thead {
            background-color: #f8f9fa;
            color: #235523;
        }

        th {
            padding: 15px;
            text-align: left;
            font-weight: 600;
            font-size: 14px;
            white-space: nowrap;
        }

        tbody tr {
            border-bottom: 1px solid #f0f0f0;
            transition: background-color 0.2s;
        }

        tbody tr:hover {
            background-color: #f9f9f9;
        }

        td {
            background: #fff;
            padding: 15px;
            font-size: 14px;
            color: #333;
        }

        .status-badge {
            display: inline-block;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
            text-transform: uppercase;
        }

        .status-active {
            background-color: #d4edda;
            color: #155724;
        }

        .status-inactive {
            background-color: #f8d7da;
            color: #721c24;
        }

        .status-suspended {
            background-color: #fff3cd;
            color: #856404;
        }

        .actions {
            display: flex;
            gap: 8px;
        }

        .btn {
            padding: 8px 12px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 13px;
            transition: all 0.2s;
            display: inline-flex;
            align-items: center;
            gap: 5px;
        }

        .btn-view {
            background-color: #0056b3;
            color: white;
        }

        .btn-view:hover {
            background-color: #607c9bff;
        }

        .btn-edit {
            background-color: #28a745;
            color: white;
        }

        .btn-edit:hover {
            background-color: #218838;
        }

        .btn-status {
            background-color: #ffc107;
            color: #333;
        }

        .btn-status:hover {
            background-color: #e0a800;
        }

        .no-results {
            text-align: center;
            padding: 40px;
            color: #999;
            font-size: 16px;
        }

        .stats-container {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 20px;
                margin-bottom: 30px;
            }

            .stat-card {
                background: white;
                border-radius: 12px;
                padding: 25px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                display: flex;
                justify-content: space-between;
                align-items: center;
                transition: transform 0.2s, box-shadow 0.2s;
            }

            .stat-card:hover {
                transform: translateY(-2px);
                box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            }

            .stat-content {
                flex: 1;
            }

            .stat-number {
                font-size: 32px;
                font-weight: 700;
                color: #333;
                margin-bottom: 5px;
            }

            .stat-label {
                font-size: 14px;
                color: #666;
                font-weight: 500;
            }

            .stat-icon {
                width: 60px;
                height: 60px;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 24px;
            }



                    /* Modal Styles */
                    .modal {
                        display: none;
                        position: fixed;
                        z-index: 1000;
                        left: 0;
                        top: 0;
                        width: 100%;
                        height: 100%;
                        background-color: rgba(0,0,0,0.5);
                        animation: fadeIn 0.3s;
                    }

                    .modal-content {
                        background-color: white;
                        margin: 5% auto;
                        padding: 30px;
                        border-radius: 12px;
                        width: 90%;
                        max-width: 500px;
                        animation: slideIn 0.3s;
                    }

                    @keyframes fadeIn {
                        from { opacity: 0; }
                        to { opacity: 1; }
                    }

                    @keyframes slideIn {
                        from { transform: translateY(-50px); opacity: 0; }
                        to { transform: translateY(0); opacity: 1; }
                    }

                    .sub-modal-header {
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                        margin-bottom: 20px;
                    }

                    .sub-modal-header h2 {
                        font-size: 22px;
                        color: #333;
                    }

                    .close {
                        font-size: 28px;
                        font-weight: bold;
                        color: #aaa;
                        cursor: pointer;
                        border: none;
                        background: none;
                    }

                    .close:hover {
                        color: #333;
                    }

                    .form-group {
                        margin-bottom: 20px;
                    }

                    .form-group label {
                        display: block;
                        margin-bottom: 8px;
                        font-weight: 500;
                        color: #555;
                    }

                    .form-group input,
                    .form-group select {
                        width: 100%;
                        padding: 10px;
                        border: 1px solid #ddd;
                        border-radius: 6px;
                        font-size: 14px;
                    }

                    .modal-actions {
                        display: flex;
                        gap: 10px;
                        justify-content: flex-end;
                        margin-top: 25px;
                    }

                    .btn-cancel {
                        background-color: #6c757d;
                        color: white;
                    }

                    .btn-cancel:hover {
                        background-color: #5a6268;
                    }

                    .btn-save {
                        background-color: #235523;
                        color: white;
                    }

                    .btn-save:hover {
                        background-color: #4e814eff;
                    }
    </style>
</head>
<body>
    <!-- Header -->
    <?php include '../includes/header.php'; ?>
    <div class="notification-container" id="notificationContainer"></div>
    <!-- Main Container -->
    <div class="main-container">
    <!-- Sidebar -->
    <?php include '../includes/sidebar.php'; ?>

    <!-- Content Area -->
    <div class="content">
        <h1 class = "dashboard-title">User Management</h1>
       

        <div class="controls">
            <div class="search-box">
                <input type="text" id="searchInput" placeholder="Search by name, email, or phone...">
                <i class="fas fa-search"></i>
            </div>
            
            <div class="filter-group">
                <label for="statusFilter">Status:</label>
                <select id="statusFilter">
                    <option value="all">All Status</option>
                    <option value="active">Active</option>
                    <option value="inactive">Inactive</option>
                    <option value="suspended">Suspended</option>
                </select>
            </div>

            <div class="filter-group">
                <label for="sortFilter">Sort by:</label>
                <select id="sortFilter">
                    <option value="newest">Newest First</option>
                    <option value="oldest">Oldest First</option>
                    <option value="name">Name (A-Z)</option>
                </select>
            </div>
        </div>

        <!-- Statistics Cards -->
<div class="stats-container">
    <div class="stat-card">
        <div class="stat-content">
            <div class="stat-number" id="totalUsers">0</div>
            <div class="stat-label">Total Users</div>
        </div>
        <div class="stat-icon" style="background-color: #e3f2fd;">
            <i class="fas fa-users" style="color: #1976d2;"></i>
        </div>
    </div>

    <div class="stat-card">
        <div class="stat-content">
            <div class="stat-number" id="activeUsers">0</div>
            <div class="stat-label">Active Users</div>
        </div>
        <div class="stat-icon" style="background-color: #d4edda;">
            <i class="fas fa-user-check" style="color: #155724;"></i>
        </div>
    </div>

    <div class="stat-card">
        <div class="stat-content">
            <div class="stat-number" id="inactiveUsers">0</div>
            <div class="stat-label">Inactive Users</div>
        </div>
        <div class="stat-icon" style="background-color: #f8d7da;">
            <i class="fas fa-user-times" style="color: #721c24;"></i>
        </div>
    </div>

    <div class="stat-card">
        <div class="stat-content">
            <div class="stat-number" id="suspendedUsers">0</div>
            <div class="stat-label">Suspended Users</div>
        </div>
        <div class="stat-icon" style="background-color: #fff3cd;">
            <i class="fas fa-user-lock" style="color: #856404;"></i>
        </div>
    </div>
</div>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Customer ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Registration Date</th>
                        <th>Total Orders</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody id="userTableBody">
                    <!-- Table rows will be populated by JavaScript -->
                </tbody>
            </table>
            <div id="noResults" class="no-results" style="display: none;">
                <i class="fas fa-search" style="font-size: 48px; margin-bottom: 10px; opacity: 0.3;"></i>
                <p>No users found matching your search criteria.</p>
            </div>
        </div>

        <div class="pagination">
            <div class="pagination-content">
                <div class="page-numbers" id="pageNumbers">
                </div>
            </div>
        </div>

        <div class="footer">
             Copyright © 2025 GrizzlyPaws. All rights reserved
        </div>
    </div> <!-- Closing the 'content' div -->
</div> <!-- Closing the 'main-container' div -->



    <!-- Edit Status Modal -->
    <div id="statusModal" class="modal">
        <div class="modal-content">
            <div class="sub-modal-header">
                <h2>Change User Status</h2>
                <button class="close" onclick="closeModal()">&times;</button>
            </div>
            <div class="form-group">
                <label>Customer Name:</label>
                <input type="text" id="modalCustomerName" disabled>
            </div>
            <div class="form-group">
                <label for="modalStatus">New Status:</label>
                <select id="modalStatus">
                    <option value="active">Active</option>
                    <option value="inactive">Inactive</option>
                    <option value="suspended">Suspended</option>
                </select>
            </div>
            <div class="modal-actions">
                <button class="btn btn-cancel" onclick="closeModal()">Cancel</button>
                <button class="btn btn-save" onclick="saveStatus()">Save Changes</button>
            </div>
        </div>
    </div>

    
   <script>
    const notificationContainer = document.getElementById('notificationContainer');
    
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
            <button class="notification-close">
                <i class="fas fa-times"></i>
            </button>
        `;
        
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
    
    function hideNotification(notification) {
        notification.classList.remove('show');
        notification.classList.add('hide');
        
        setTimeout(() => {
            if (notification.parentNode) {
                notification.parentNode.removeChild(notification);
            }
        }, 300);
    }
    
    // Sample data
    let users = [
        { id: 'C001', name: 'John Doe', email: 'john.doe@email.com', phone: '+63 912 345 6789', registrationDate: '2024-01-15', totalOrders: 12, status: 'active' },
        { id: 'C002', name: 'Jane Smith', email: 'jane.smith@email.com', phone: '+63 923 456 7890', registrationDate: '2024-02-20', totalOrders: 8, status: 'active' },
        { id: 'C003', name: 'Robert Johnson', email: 'robert.j@email.com', phone: '+63 934 567 8901', registrationDate: '2024-03-10', totalOrders: 5, status: 'inactive' },
        { id: 'C004', name: 'Maria Garcia', email: 'maria.garcia@email.com', phone: '+63 945 678 9012', registrationDate: '2024-01-05', totalOrders: 15, status: 'active' },
        { id: 'C005', name: 'Michael Brown', email: 'michael.b@email.com', phone: '+63 956 789 0123', registrationDate: '2024-04-12', totalOrders: 3, status: 'suspended' },
        { id: 'C006', name: 'Sarah Wilson', email: 'sarah.wilson@email.com', phone: '+63 967 890 1234', registrationDate: '2024-02-28', totalOrders: 10, status: 'active' },
        { id: 'C007', name: 'David Lee', email: 'david.lee@email.com', phone: '+63 978 901 2345', registrationDate: '2024-03-15', totalOrders: 0, status: 'inactive' },
        { id: 'C008', name: 'Emma Martinez', email: 'emma.m@email.com', phone: '+63 989 012 3456', registrationDate: '2024-01-20', totalOrders: 18, status: 'active' }
    ];

    let filteredUsers = [...users];
    let currentPage = 1;
    const usersPerPage = 10;
    let currentEditingUserId = null;

    // Initialize
    document.addEventListener('DOMContentLoaded', function() {
        updateStatistics(); 
        renderTable();
        
        document.getElementById('searchInput').addEventListener('input', filterUsers);
        document.getElementById('statusFilter').addEventListener('change', filterUsers);
        document.getElementById('sortFilter').addEventListener('change', filterUsers);
    });

    function filterUsers() {
        const searchTerm = document.getElementById('searchInput').value.toLowerCase();
        const statusFilter = document.getElementById('statusFilter').value;
        const sortFilter = document.getElementById('sortFilter').value;

        filteredUsers = users.filter(user => {
            const matchesSearch = user.name.toLowerCase().includes(searchTerm) ||
                                user.email.toLowerCase().includes(searchTerm) ||
                                user.phone.includes(searchTerm);
            const matchesStatus = statusFilter === 'all' || user.status === statusFilter;
            return matchesSearch && matchesStatus;
        });

        // Sort
        if (sortFilter === 'newest') {
            filteredUsers.sort((a, b) => new Date(b.registrationDate) - new Date(a.registrationDate));
        } else if (sortFilter === 'oldest') {
            filteredUsers.sort((a, b) => new Date(a.registrationDate) - new Date(b.registrationDate));
        } else if (sortFilter === 'name') {
            filteredUsers.sort((a, b) => a.name.localeCompare(b.name));
        }

        currentPage = 1;
        renderTable();
    }

    function renderTable() {
        const tbody = document.getElementById('userTableBody');
        const noResults = document.getElementById('noResults');
        
        tbody.innerHTML = '';
        
        if (filteredUsers.length === 0) {
            noResults.style.display = 'block';
            updatePagination();
            return;
        } else {
            noResults.style.display = 'none';
        }

        const startIndex = (currentPage - 1) * usersPerPage;
        const endIndex = startIndex + usersPerPage;
        const paginatedUsers = filteredUsers.slice(startIndex, endIndex);

        paginatedUsers.forEach(user => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td><strong>${user.id}</strong></td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.phone}</td>
                <td>${formatDate(user.registrationDate)}</td>
                <td>${user.totalOrders}</td>
                <td><span class="status-badge status-${user.status}">${user.status}</span></td>
                <td>
                    <div class="actions">
                        <button class="btn btn-view" onclick="viewUser('${user.id}')" title="View Details">
                            <i class="fas fa-eye"></i>
                        </button>
                        <button class="btn btn-status" onclick="openStatusModal('${user.id}')" title="Change Status">
                            <i class="fas fa-toggle-on"></i>
                        </button>
                    </div>
                </td>
            `;
            tbody.appendChild(row);
        });

        updatePagination();
    }

    function formatDate(dateString) {
        const options = { year: 'numeric', month: 'short', day: 'numeric' };
        return new Date(dateString).toLocaleDateString('en-US', options);
    }

    function updatePagination() {
        const pageNumbersContainer = document.getElementById('pageNumbers');
        pageNumbersContainer.innerHTML = '';
        const totalPages = Math.ceil(filteredUsers.length / usersPerPage);
        
        if (totalPages === 0) return;
        
        // Previous button
        const prevBtn = document.createElement('button');
        prevBtn.className = 'page-btn prev-btn';
        prevBtn.innerHTML = '&lt;';
        prevBtn.disabled = currentPage === 1;
        prevBtn.addEventListener('click', () => {
            if (currentPage > 1) {
                currentPage--;
                renderTable();
            }
        });
        pageNumbersContainer.appendChild(prevBtn);
        
        // Page numbers
        for (let i = 1; i <= totalPages; i++) {
            const pageBtn = document.createElement('button');
            pageBtn.className = `page-number ${i === currentPage ? 'active' : ''}`;
            pageBtn.textContent = i;
            pageBtn.addEventListener('click', () => {
                currentPage = i;
                renderTable();
            });
            pageNumbersContainer.appendChild(pageBtn);
        }
        
        // Next button
        const nextBtn = document.createElement('button');
        nextBtn.className = 'page-btn next-btn';
        nextBtn.innerHTML = '&gt;';
        nextBtn.disabled = currentPage === totalPages;
        nextBtn.addEventListener('click', () => {
            if (currentPage < totalPages) {
                currentPage++;
                renderTable();
            }
        });
        pageNumbersContainer.appendChild(nextBtn);
    }

    function viewUser(userId) {
        const user = users.find(u => u.id === userId);
        alert(`Customer Details:\n\nID: ${user.id}\nName: ${user.name}\nEmail: ${user.email}\nPhone: ${user.phone}\nRegistration: ${formatDate(user.registrationDate)}\nTotal Orders: ${user.totalOrders}\nStatus: ${user.status.toUpperCase()}`);
    }

    function openStatusModal(userId) {
        currentEditingUserId = userId;
        const user = users.find(u => u.id === userId);
        document.getElementById('modalCustomerName').value = user.name;
        document.getElementById('modalStatus').value = user.status;
        document.getElementById('statusModal').style.display = 'block';
    }

    function closeModal() {
        document.getElementById('statusModal').style.display = 'none';
        currentEditingUserId = null;
    }

    function saveStatus() {
        const newStatus = document.getElementById('modalStatus').value;
        const user = users.find(u => u.id === currentEditingUserId);
        
        if (user) {
            user.status = newStatus;
            updateStatistics();
            filterUsers();
            closeModal();
            showNotification('success', 'Status Updated', `User "${user.name}" status has been updated to ${newStatus}.`);
        }
    }

    function updateStatistics() {
        const totalUsers = users.length;
        const activeUsers = users.filter(u => u.status === 'active').length;
        const inactiveUsers = users.filter(u => u.status === 'inactive').length;
        const suspendedUsers = users.filter(u => u.status === 'suspended').length;

        document.getElementById('totalUsers').textContent = totalUsers;
        document.getElementById('activeUsers').textContent = activeUsers;
        document.getElementById('inactiveUsers').textContent = inactiveUsers;
        document.getElementById('suspendedUsers').textContent = suspendedUsers;
    }

    // Call this function in your DOMContentLoaded event listener
    // and also after any status changes

    // Close modal when clicking outside
    window.onclick = function(event) {
        const modal = document.getElementById('statusModal');
        if (event.target === modal) {
            closeModal();
        }
    }
</script>

</body>
</html>