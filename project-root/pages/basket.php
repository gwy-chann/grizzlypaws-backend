<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Grizzly Paws | My Profile</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <link rel="icon" type="image/x-icon" href="../assets/images/favicon.png" />
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/basket.css" />
  </head>
  <body>
    <?php include '../includes/header.php'; ?>

    <main class="container">
        <div class="main-content">
        <div class="content">
          <div class="header-section">
            <h2>Your Purchase History</h2>
          </div>
          <div class="cart-items">
            <div class="select-all">
  <div class="select-all-left">
    <input type="checkbox" id="select-all-checkbox" class="checkbox" />
    <label for="select-all-checkbox">Select All Items</label>
  </div>
  <button class="clear-basket-btn" id="clear-basket-btn" onclick="clearBasket()" title="Clear all items from basket">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
      <path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z"/>
    </svg>
    Clear Basket
  </button>
</div>

            <table class="item-table" id="item-table">
              <thead>
                <tr>
                  <th width="10%"></th>
                  <th width="45%">Product</th>
                  <th width="15%">Quantity</th>
                  <th width="15%">Price</th>
                  <th width="15%">Action</th>
                </tr>
              </thead>
              <tbody id="item-table-body">
                <tr class="item-row">
                  <td>
                    <input type="checkbox" class="checkbox item-checkbox" />
                  </td>
                  <td>
                    <div class="product-info">
                      <img
                        src="/api/placeholder/80/80"
                        alt="Dog Food"
                        class="product-image"
                      />
                      <div>
                        <div class="product-name">
                          <a href="#">
                            Hill's Science Plan Adult 1-6 Medium with Chicken
                          </a>
                          
                        </div>
                        <div class="product-details">14kg</div>
                      </div>
                    </div>
                  </td>
                  <td>
                    <div class="quantity-control">
                      <button class="quantity-btn minus-btn">−</button>
                      <input type="text" class="quantity" value="1" />
                      <button class="quantity-btn plus-btn">+</button>
                    </div>
                  </td>
                  <td class="price-section">₱3699</td>
                  <td>
                    <div class="action-icons">
                      <button class="delete-icon">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          x="0px"
                          y="0px"
                          width="100"
                          height="100"
                          viewBox="0,0,256,256"
                        >
                          <g
                            fill="#333333"
                            fill-rule="nonzero"
                            stroke="none"
                            stroke-width="1"
                            stroke-linecap="butt"
                            stroke-linejoin="miter"
                            stroke-miterlimit="10"
                            stroke-dasharray=""
                            stroke-dashoffset="0"
                            font-family="none"
                            font-weight="none"
                            font-size="none"
                            text-anchor="none"
                            style="mix-blend-mode: normal"
                          >
                            <g transform="scale(5.33333,5.33333)">
                              <path
                                d="M24,4c-3.50831,0 -6.4296,2.62143 -6.91992,6h-10.58008c-0.54095,-0.00765 -1.04412,0.27656 -1.31683,0.74381c-0.27271,0.46725 -0.27271,1.04514 0,1.51238c0.27271,0.46725 0.77588,0.75146 1.31683,0.74381h2.13672l2.51953,26.0293c0.274,2.833 2.62956,4.9707 5.47656,4.9707h14.73438c2.847,0 5.20156,-2.1377 5.47656,-4.9707l2.51953,-26.0293h2.13672c0.54095,0.00765 1.04412,-0.27656 1.31683,-0.74381c0.27271,-0.46725 0.27271,-1.04514 0,-1.51238c-0.27271,-0.46725 -0.77588,-0.75146 -1.31683,-0.74381h-10.58008c-0.49032,-3.37857 -3.41161,-6 -6.91992,-6zM24,7c1.87916,0 3.42077,1.26816 3.86133,3h-7.72266c0.44056,-1.73184 1.98217,-3 3.86133,-3zM19.5,18c0.828,0 1.5,0.671 1.5,1.5v15c0,0.829 -0.672,1.5 -1.5,1.5c-0.828,0 -1.5,-0.671 -1.5,-1.5v-15c0,-0.829 0.672,-1.5 1.5,-1.5zM28.5,18c0.828,0 1.5,0.671 1.5,1.5v15c0,0.829 -0.672,1.5 -1.5,1.5c-0.828,0 -1.5,-0.671 -1.5,-1.5v-15c0,-0.829 0.672,-1.5 1.5,-1.5z"
                              ></path>
                            </g>
                          </g>
                        </svg>
                      </button>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="checkout-summary">
          <h2>Order Summary</h2>
          <div class="summary-row">
            <span>Subtotal</span>
            <span id="subtotal">₱3699</span>
          </div>
          <div class="summary-row">
            <span>Shipping Fees</span>
            <span>Free</span>
          </div>

          <!-- <div class="coupon">
            <input
              type="text"
              class="coupon-input"
              placeholder="Enter a coupon code"
            />
            <button class="apply-button">Apply</button>
          </div> -->

          <div class="summary-row">
            <span>Total incl. VAT</span>
            <span id="vat-id">₱3699</span>
          </div>

          <button class="checkout-button">Proceed to checkout</button>
        </div>
      </div>
    </main>

    <!-- Payment Method Modal -->
    <div class="modal" id="paymentModal"> 
      <div class="modal-content">
        <span class="close" id="closePaymentModal">&times;</span>
        <h2 style="margin-bottom: 20px;">Payment Method</h2>
        
        <div class="payment-options">
          <!-- COD Option -->
          <div class="payment-option">
            <label>
              <input type="radio" name="paymentMethod" value="cod" />
              Cash on Delivery
            </label>
            <div id="cod-message" class="payment-details" style="display: none;">
              <p>PREPARE EXACT AMOUNT UPON DELIVERY</p>
            </div>
          </div>

          <!-- E-Wallet Option -->
          <div class="payment-option">
            <label>
              <input type="radio" name="paymentMethod" value="ewallet" />
              E-Wallet
            </label>
            <div id="ewallet-options" class="payment-details" style="display: none;">
              <label style="display: block; margin: 10px 0;">
                <input type="radio" name="ewalletType" value="gcash" />
                Gcash
              </label>
              <label style="display: block; margin: 10px 0;">
                <input type="radio" name="ewalletType" value="maya" />
                Maya
              </label>
              <label style="display: block; margin: 10px 0;">
                <input type="radio" name="ewalletType" value="paypal" />
                Paypal
              </label>
              <div id="account-number-input" style="display: none; margin-top: 10px;">
                <input type="text" id="accountNumber" placeholder="Enter Account Number" style="width: 100%; padding: 8px; margin-top: 5px;" />
              </div>
            </div>
          </div>

          <!-- Credit/Debit Option -->
          <div class="payment-option">
            <label>
              <input type="radio" name="paymentMethod" value="card" />
              Credit/Debit
            </label>
            <div id="card-form" class="payment-details" style="display: none;">
              <input type="text" id="cardNumber" placeholder="Card Number" style="width: 100%; padding: 8px; margin: 10px 0;" />
              <div style="display: flex; gap: 10px;">
                <input type="text" id="cardExpiry" placeholder="MM/YY" style="flex: 1; padding: 8px;" />
                <input type="text" id="cardCVV" placeholder="CVV" style="flex: 1; padding: 8px;" />
              </div>
              <input type="text" id="cardholderName" placeholder="Cardholder Name" style="width: 100%; padding: 8px; margin-top: 10px;" />
            </div>
          </div>
        </div>

        <button class="checkout-button" id="proceedPaymentBtn" style="margin-top: 20px; width: 100%;">Proceed</button>
      </div>
    </div>

    <div class="modal" id="myModal"> 
      <div class="modal-content">
        <span class="close">&times;</span>
        <div class="success-message">
          <div class="success-icon">
            <i class="fas fa-check-circle"></i>
          </div>
          <h3>Order Confirmed</h3>
          <p id="modal-product-info">Your item has been placed. You can track your order in your email</p>
          <div class="modal-buttons">
            <a href="../index.php">
              <button class="continue-shopping" id="continue-shopping">Continue Shopping</button>
            </a>
            <a href="https://mail.google.com/mail/u/0/#inbox"><button class="view-basket">Track Order</button></a>
          </div>
        </div>
      </div>
    </div>

    <?php include '../includes/footer.php'; ?>
    <script src="../dummy-data/category.js"></script>
    <script src="../assets/js/dynamic-display.js"></script>
    <script src="../assets/js/basket.js"></script>
  </body>
</html>