<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grizzly Paws - Customer Concerns</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f5f5f5;
        }

        .content {
            padding: 30px;
            max-width: 2000px;
            margin: 0 auto;
            max-height: calc(100vh - 80px); /* Adjust based on your header height */
            overflow-y: auto;
        }

        .dashboard-title {
            color: #333;
            margin-bottom: 25px;

        }

        /* Search and Filter Section */
        .controls-section {
            margin-bottom: 25px;
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .search-box {
            flex: 1;
            min-width: 250px;
            position: relative;
        }

        .search-box input {
            width: 100%;
            padding: 12px 40px 12px 15px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 14px;
            transition: all 0.3s;
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

        .filter-select {
            padding: 12px 15px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 14px;
            background: white;
            cursor: pointer;
            transition: all 0.3s;
            min-width: 150px;
        }

        .filter-select:focus {
            outline: none;
            border-color: #83a75d;
        }

        .reset-btn {
            padding: 12px 20px;
            background: #f0f0f0;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 500;
            transition: all 0.3s;
            color: #666;
        }

        .reset-btn:hover {
            background: #e0e0e0;
            color: #333;
        }

        /* Concerns Layout */
        .concerns-layout {
            display: grid;
            grid-template-columns: 350px 1fr;
            gap: 25px;
            min-height: 600px;
            padding-bottom: 100px;
        }

        /* Concerns List */
        .concerns-list {
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
            overflow: hidden;
            display: flex;
            flex-direction: column;
        }

        .concerns-list-header {
            padding: 20px;
            background: #2d5016;
            color: white;
            font-weight: 600;
            font-size: 16px;
        }

        .concerns-list-content {
            overflow-y: auto;
            max-height: 650px;
        }

        .concern-item {
            padding: 18px 20px;
            border-bottom: 1px solid #f0f0f0;
            cursor: pointer;
            transition: all 0.3s;
            position: relative;
        }

        .concern-item:hover {
            background: #f9f9f9;
        }

        .concern-item.active {
            background: #f0f8f0;
            border-left: 4px solid #2d5016;
        }

        .concern-item.unread::after {
            content: '';
            position: absolute;
            right: 20px;
            top: 50%;
            transform: translateY(-50%);
            width: 10px;
            height: 10px;
            background: #ff6b6b;
            border-radius: 50%;
        }

        .concern-item-name {
            font-weight: 600;
            color: #333;
            margin-bottom: 5px;
            font-size: 15px;
        }

        .concern-item-subject {
            font-size: 13px;
            color: #666;
            margin-bottom: 8px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .concern-item-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 12px;
        }

        .concern-item-date {
            color: #999;
        }

        .concern-status {
            padding: 4px 10px;
            border-radius: 12px;
            font-size: 11px;
            font-weight: 600;
            text-transform: uppercase;
        }

        .concern-status.open {
            background: #fff3cd;
            color: #856404;
        }

        .concern-status.resolved {
            background: #d4edda;
            color: #155724;
        }

        /* Message View */
        .message-view {
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
            display: flex;
            flex-direction: column;
            height: 700px;
        }

        .message-header {
            padding: 20px 25px;
            border-bottom: 2px solid #f0f0f0;
        }

        .message-header-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

        .message-header-name {
            font-size: 20px;
            font-weight: 600;
            color: #333;
        }

        .status-toggle {
            padding: 8px 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 13px;
            font-weight: 600;
            transition: all 0.3s;
        }

        .status-toggle.open {
            background: #fff3cd;
            color: #856404;
        }

        .status-toggle.resolved {
            background: #d4edda;
            color: #155724;
        }

        .status-toggle:hover {
            opacity: 0.8;
        }

        .message-subject {
            color: #666;
            font-size: 14px;
        }

        .message-body {
            flex: 1;
            overflow-y: auto;
            padding: 25px;
            background: #fafafa;
        }

        .message-bubble {
            margin-bottom: 20px;
            animation: slideIn 0.3s ease;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .message-bubble.user {
            display: flex;
            justify-content: flex-end;
        }

        .message-content {
            max-width: 70%;
            padding: 15px 18px;
            border-radius: 12px;
            position: relative;
        }

        .message-bubble.admin .message-content {
            background: white;
            border: 1px solid #e0e0e0;
            border-radius: 12px 12px 12px 0;
        }

        .message-bubble.user .message-content {
            background: #2d5016;
            color: white;
            border-radius: 12px 12px 0 12px;
        }

        .message-sender {
            font-weight: 600;
            font-size: 13px;
            margin-bottom: 5px;
        }

        .message-bubble.admin .message-sender {
            color: #2d5016;
        }

        .message-text {
            font-size: 14px;
            line-height: 1.5;
            margin-bottom: 8px;
        }

        .message-time {
            font-size: 11px;
            opacity: 0.7;
            text-align: right;
        }

        .message-input-section {
            padding: 20px 25px;
            border-top: 2px solid #f0f0f0;
            background: white;
        }

        .message-input-container {
            display: flex;
            gap: 12px;
            align-items: flex-end;
        }

        .message-input {
            flex: 1;
            padding: 12px 15px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 14px;
            font-family: inherit;
            resize: none;
            min-height: 45px;
            max-height: 120px;
            transition: all 0.3s;
        }

        .message-input:focus {
            outline: none;
            border-color: #83a75d;
        }

        .send-btn {
            padding: 12px 24px;
            background: #2d5016;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 600;
            transition: all 0.3s;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .send-btn:hover {
            background: #1f3910;
        }

        .send-btn:disabled {
            background: #ccc;
            cursor: not-allowed;
        }

        /* Empty States */
        .empty-state {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100%;
            color: #999;
            text-align: center;
            padding: 40px;
        }

        .empty-state i {
            font-size: 64px;
            margin-bottom: 20px;
            opacity: 0.3;
        }

        .empty-state-title {
            font-size: 20px;
            font-weight: 600;
            margin-bottom: 10px;
            color: #666;
        }

        .empty-state-text {
            font-size: 14px;
            color: #999;
        }

        .no-concerns {
            padding: 40px;
            text-align: center;
            color: #999;
        }

        .no-selection {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
            color: #999;
            font-size: 16px;
        }

        /* Responsive */
        @media (max-width: 1024px) {
            .concerns-layout {
                grid-template-columns: 1fr;
            }

            .concerns-list {
                max-height: 400px;
            }
        }

        @media (max-width: 768px) {
            .controls-section {
                flex-direction: column;
            }

            .search-box {
                width: 100%;
            }

            .filter-group {
                width: 100%;
                flex-direction: column;
            }

            .filter-select {
                width: 100%;
            }

            .message-content {
                max-width: 85%;
            }
        }
    </style>
</head>
<body>

<!-- Header Section -->
    <?php include '../includes/header.php'; ?>
    <!-- Notification Container for displaying alerts -->
    <div class="notification-container" id="notificationContainer"></div>

    <!-- Main Container with Sidebar and Content -->
    <div class="main-container">
        <!-- Sidebar Navigation -->
        <?php include '../includes/sidebar.php'; ?>
    <div class="content">
        <h1 class="dashboard-title">Customer Concerns</h1>

        <!-- Search and Filter Controls -->
        <div class="controls-section">
            <div class="search-box">
                <input type="text" id="searchInput" placeholder="Search by name, subject, or message...">
                <i class="fas fa-search"></i>
            </div>
            <div class="filter-group">
                <select id="statusFilter" class="filter-select">
                    <option value="all">All Status</option>
                    <option value="open">Open</option>
                    <option value="resolved">Resolved</option>
                </select>
                <select id="sortFilter" class="filter-select">
                    <option value="newest">Newest First</option>
                    <option value="oldest">Oldest First</option>
                </select>
                <button class="reset-btn" id="resetBtn">
                    <i class="fas fa-redo"></i> Reset
                </button>
            </div>
        </div>

        <!-- Concerns Layout -->
        <div class="concerns-layout">
            <!-- Concerns List -->
            <div class="concerns-list">
                <div class="concerns-list-header">
                    All Concerns (<span id="concernCount">0</span>)
                </div>
                <div class="concerns-list-content" id="concernsList">
                    <!-- Concerns will be populated here -->
                </div>
            </div>

            <!-- Message View -->
            <div class="message-view" id="messageView">
                <div class="no-selection">
                    <div class="empty-state">
                        <i class="fas fa-comments"></i>
                        <div class="empty-state-title">Select a concern to view</div>
                        <div class="empty-state-text">Choose a conversation from the list to start messaging</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer">
            Copyright © 2025 GrizzlyPaws. All rights reserved
        </div>
    </div>

    <script>
        // Dummy data - Easy to replace with real API calls later
        let concerns = [
            {
                id: 1,
                name: "John Smith",
                date: "2025-10-15",
                subject: "Product Delivery Delay",
                status: "open",
                unread: true,
                messages: [
                    {
                        sender: "customer",
                        text: "I ordered a dog bed 2 weeks ago and it still hasn't arrived. Can you help me track my order?",
                        time: "2025-10-15 10:30 AM"
                    },
                    {
                        sender: "admin",
                        text: "Hello John! I apologize for the delay. Let me check your order status right away.",
                        time: "2025-10-15 11:00 AM"
                    },
                    {
                        sender: "admin",
                        text: "Your order is currently in transit and should arrive within 2-3 business days. I've added express shipping at no extra cost for the inconvenience.",
                        time: "2025-10-15 11:05 AM"
                    }
                ]
            },
            {
                id: 2,
                name: "Sarah Johnson",
                date: "2025-10-10",
                subject: "Product Quality Issue",
                status: "resolved",
                unread: false,
                messages: [
                    {
                        sender: "customer",
                        text: "The dog toy I received has a defect. It arrived with a tear in the fabric.",
                        time: "2025-10-10 02:15 PM"
                    },
                    {
                        sender: "admin",
                        text: "I'm so sorry to hear that! We'll send you a replacement immediately. Could you provide your order number?",
                        time: "2025-10-10 02:45 PM"
                    },
                    {
                        sender: "customer",
                        text: "Order #12345. Thank you for the quick response!",
                        time: "2025-10-10 03:00 PM"
                    },
                    {
                        sender: "admin",
                        text: "Replacement has been shipped! You should receive it in 3-5 days. We've also included a complimentary treat for your pup.",
                        time: "2025-10-10 03:30 PM"
                    }
                ]
            },
            {
                id: 3,
                name: "Mike Thompson",
                date: "2025-10-05",
                subject: "Missing Items in Order",
                status: "open",
                unread: true,
                messages: [
                    {
                        sender: "customer",
                        text: "My order was supposed to include 3 items but I only received 2. Missing the dog shampoo.",
                        time: "2025-10-05 09:20 AM"
                    }
                ]
            },
            {
                id: 4,
                name: "Emily Davis",
                date: "2025-10-01",
                subject: "Payment Processing Problem",
                status: "open",
                unread: false,
                messages: [
                    {
                        sender: "customer",
                        text: "I was charged twice for the same order. Can you please refund one of the payments?",
                        time: "2025-10-01 04:00 PM"
                    },
                    {
                        sender: "admin",
                        text: "I see the duplicate charge. Processing your refund now. It should appear in your account within 3-5 business days.",
                        time: "2025-10-01 04:30 PM"
                    }
                ]
            }
        ];

        let filteredConcerns = [...concerns];
        let selectedConcernId = null;

        // DOM Elements
        const searchInput = document.getElementById('searchInput');
        const statusFilter = document.getElementById('statusFilter');
        const sortFilter = document.getElementById('sortFilter');
        const resetBtn = document.getElementById('resetBtn');
        const concernsList = document.getElementById('concernsList');
        const messageView = document.getElementById('messageView');
        const concernCount = document.getElementById('concernCount');

        // Initialize
        function init() {
            renderConcerns();
            attachEventListeners();
        }

        // Attach Event Listeners
        function attachEventListeners() {
            searchInput.addEventListener('input', applyFilters);
            statusFilter.addEventListener('change', applyFilters);
            sortFilter.addEventListener('change', applyFilters);
            resetBtn.addEventListener('click', resetFilters);
        }

        // Apply Filters
        function applyFilters() {
            const searchTerm = searchInput.value.toLowerCase();
            const statusValue = statusFilter.value;
            const sortValue = sortFilter.value;

            // Filter
            filteredConcerns = concerns.filter(concern => {
                const matchesSearch = concern.name.toLowerCase().includes(searchTerm) ||
                                    concern.subject.toLowerCase().includes(searchTerm) ||
                                    concern.messages.some(msg => msg.text.toLowerCase().includes(searchTerm));
                
                const matchesStatus = statusValue === 'all' || concern.status === statusValue;

                return matchesSearch && matchesStatus;
            });

            // Sort
            filteredConcerns.sort((a, b) => {
                if (sortValue === 'newest') {
                    return new Date(b.date) - new Date(a.date);
                } else {
                    return new Date(a.date) - new Date(b.date);
                }
            });

            renderConcerns();
        }

        // Reset Filters
        function resetFilters() {
            searchInput.value = '';
            statusFilter.value = 'all';
            sortFilter.value = 'newest';
            applyFilters();
        }

        // Render Concerns List
        function renderConcerns() {
            concernCount.textContent = filteredConcerns.length;

            if (filteredConcerns.length === 0) {
                concernsList.innerHTML = `
                    <div class="no-concerns">
                        <div class="empty-state">
                            <i class="fas fa-inbox"></i>
                            <div class="empty-state-title">No concerns found</div>
                            <div class="empty-state-text">Try adjusting your filters or search terms</div>
                        </div>
                    </div>
                `;
                return;
            }

            concernsList.innerHTML = filteredConcerns.map(concern => `
                <div class="concern-item ${concern.id === selectedConcernId ? 'active' : ''} ${concern.unread ? 'unread' : ''}" 
                     onclick="selectConcern(${concern.id})">
                    <div class="concern-item-name">${concern.name}</div>
                    <div class="concern-item-subject">${concern.subject}</div>
                    <div class="concern-item-footer">
                        <span class="concern-item-date">${formatDate(concern.date)}</span>
                        <span class="concern-status ${concern.status}">${concern.status}</span>
                    </div>
                </div>
            `).join('');
        }

        // Select Concern
        function selectConcern(id) {
            selectedConcernId = id;
            const concern = concerns.find(c => c.id === id);
            
            // Mark as read
            concern.unread = false;
            
            renderConcerns();
            renderMessageView(concern);
        }

        // Render Message View
        function renderMessageView(concern) {
            messageView.innerHTML = `
                <div class="message-header">
                    <div class="message-header-top">
                        <div class="message-header-name">${concern.name}</div>
                        <button class="status-toggle ${concern.status}" onclick="toggleStatus(${concern.id})">
                            ${concern.status === 'open' ? 'Mark as Resolved' : 'Reopen'}
                        </button>
                    </div>
                    <div class="message-subject">Subject: ${concern.subject}</div>
                </div>
                <div class="message-body" id="messageBody">
                    ${concern.messages.map(msg => `
                        <div class="message-bubble ${msg.sender === 'admin' ? 'user' : 'admin'}">
                            <div class="message-content">
                                <div class="message-sender">${msg.sender === 'customer' ? concern.name : 'Support Team'}</div>
                                <div class="message-text">${msg.text}</div>
                                <div class="message-time">${msg.time}</div>
                            </div>
                        </div>
                    `).join('')}
                </div>
                <div class="message-input-section">
                    <div class="message-input-container">
                        <textarea class="message-input" id="messageInput" placeholder="Type your reply..." rows="1"></textarea>
                        <button class="send-btn" onclick="sendMessage(${concern.id})">
                            <i class="fas fa-paper-plane"></i> Send
                        </button>
                    </div>
                </div>
            `;

            // Auto-resize textarea
            const textarea = document.getElementById('messageInput');
            textarea.addEventListener('input', function() {
                this.style.height = 'auto';
                this.style.height = Math.min(this.scrollHeight, 120) + 'px';
            });

            // Scroll to bottom
            const messageBody = document.getElementById('messageBody');
            messageBody.scrollTop = messageBody.scrollHeight;
        }

        // Toggle Status
        function toggleStatus(id) {
            const concern = concerns.find(c => c.id === id);
            concern.status = concern.status === 'open' ? 'resolved' : 'open';
            renderConcerns();
            renderMessageView(concern);
        }

        // Send Message
        function sendMessage(id) {
            const messageInput = document.getElementById('messageInput');
            const messageText = messageInput.value.trim();

            if (!messageText) return;

            const concern = concerns.find(c => c.id === id);
            const now = new Date();
            const timeString = now.toLocaleString('en-US', { 
                year: 'numeric',
                month: '2-digit', 
                day: '2-digit',
                hour: '2-digit', 
                minute: '2-digit',
                hour12: true 
            });

            // Add new message
            concern.messages.push({
                sender: 'admin',
                text: messageText,
                time: timeString
            });

            // Clear input
            messageInput.value = '';
            messageInput.style.height = 'auto';

            // Re-render
            renderMessageView(concern);
        }

        // Format Date
        function formatDate(dateString) {
            const date = new Date(dateString);
            const now = new Date();
            const diff = now - date;
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));

            if (days === 0) return 'Today';
            if (days === 1) return 'Yesterday';
            if (days < 7) return `${days} days ago`;
            
            return date.toLocaleDateString('en-US', { month: 'short', day: 'numeric', year: 'numeric' });
        }

        // Initialize app
        init();
    </script>
</body>
</html>