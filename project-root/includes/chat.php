<div class="chat-widget">
  <!-- Chat Button -->
  <button class="chat-button" id="chatButton" aria-label="Open chat">
    <i class="fas fa-comment"></i>
    <span>Chat</span>
    <span class="chat-notification-badge">3</span>
  </button>

  <!-- Chat Window -->
  <div class="chat-window" id="chatWindow">
    <div class="chat-header">
      <div class="chat-header-info">
        <i class="fas fa-headset"></i>
        <div>
          <h3>Customer Support</h3>
          <span class="status-online">● Online</span>
        </div>
      </div>
      <button class="chat-close" id="chatClose" aria-label="Close chat">
        <i class="fas fa-times"></i>
      </button>
    </div>

    <!-- Subject Selection (shown initially) -->
    <div class="chat-subject-selection" id="subjectSelection">
      <div class="subject-prompt">
        <i class="fas fa-comments"></i>
        <h4>How can we help you today?</h4>
        <p>Please select a subject to start chatting</p>
      </div>
      <div class="subject-options">
        <button class="subject-option" data-subject="Order Status">
          <i class="fas fa-box"></i>
          <span>Order Status</span>
        </button>
        <button class="subject-option" data-subject="Product Inquiry">
          <i class="fas fa-shopping-bag"></i>
          <span>Product Inquiry</span>
        </button>
        <button class="subject-option" data-subject="Returns & Refunds">
          <i class="fas fa-undo"></i>
          <span>Returns & Refunds</span>
        </button>
        <button class="subject-option" data-subject="Technical Support">
          <i class="fas fa-tools"></i>
          <span>Technical Support</span>
        </button>
        <button class="subject-option" data-subject="Pet Care Advice">
          <i class="fas fa-paw"></i>
          <span>Pet Care Advice</span>
        </button>
        <button class="subject-option" data-subject="Other">
          <i class="fas fa-question-circle"></i>
          <span>Other</span>
        </button>
      </div>
    </div>

    <!-- Chat Messages (hidden initially) -->
    <div class="chat-messages" id="chatMessages" style="display: none;">
      <div class="chat-date-divider">Today</div>
      <div class="message admin-message">
        <div class="message-avatar">
          <i class="fas fa-user-tie"></i>
        </div>
        <div class="message-content">
          <div class="message-bubble">
            <p>Hello! Welcome to Grizzly Paws support. How can I assist you today? 🐾</p>
          </div>
          <span class="message-time">Just now</span>
        </div>
      </div>
    </div>

    <!-- Chat Input -->
    <div class="chat-input-container" id="chatInputContainer" style="display: none;">
      <div class="selected-subject" id="selectedSubject"></div>
      <div class="chat-input-wrapper">
        <button class="chat-attach-btn" aria-label="Attach file">
          <i class="fas fa-paperclip"></i>
        </button>
        <input 
          type="text" 
          class="chat-input" 
          id="chatInput" 
          placeholder="Type your message..."
          autocomplete="off"
        />
        <button class="chat-send-btn" id="chatSend" aria-label="Send message">
          <i class="fas fa-paper-plane"></i>
        </button>
      </div>
    </div>
  </div>
</div>

<script src="assets/js/chat.js"></script>