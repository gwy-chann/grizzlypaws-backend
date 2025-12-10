const itemTable = document.getElementById("item-table-body");
const subtotalElement = document.getElementById("subtotal");
const vatElement = document.getElementById("vat-id");

renderCartItems();

async function renderCartItems() {
  itemTable.innerHTML = ""; // Clear existing items

  const response = await fetch(
    `http://localhost/grizzlypaws-backend/project-root/api/cart.php?customer-id=${sessionStorage.getItem(
      "user_id"
    )}`
  );
  let data = await response.json();
  const cart = data.items || [];

  // Check if cart is empty
  if (cart.length === 0) {
    const emptyRow = document.createElement("tr");
    emptyRow.innerHTML = `
        <td colspan="5" style="text-align: center; padding: 60px 20px;">
          <div style="display: flex; flex-direction: column; align-items: center; gap: 20px; color: #666;">
            <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
              <circle cx="9" cy="21" r="1"></circle>
              <circle cx="20" cy="21" r="1"></circle>
              <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
            </svg>
            <div style="font-size: 24px; font-weight: 600; color: #333;">Your basket is empty</div>
            <p style="font-size: 16px; color: #666; margin: 0;">Add items to your basket to get started!</p>
            <a href="/grizzlypaws-backend/project-root/index.php" style="margin-top: 10px; padding: 12px 30px; background-color: #6baf4c; color: white; text-decoration: none; border-radius: 6px; font-weight: 500; transition: background-color 0.3s;">
              Continue Shopping
            </a>
          </div>
        </td>
      `;
    itemTable.appendChild(emptyRow);

    // Hide select all section when empty
    document.querySelector(".select-all").style.display = "none";

    // Update order summary to show zero
    updateOrderSummary();
    return;
  }

  // Show select all section when cart has items
  document.querySelector(".select-all").style.display = "flex";

  cart.forEach((item, index) => {
    const row = document.createElement("tr");

    row.classList.add("item-row");

    row.innerHTML = `
        <td>
          <input type="checkbox" class="checkbox item-checkbox" data-id=${
            item.id
          } data-index="${index}" />
        </td>
        <td>
          <div class="product-info">
            <img src="${item.image1}" alt="${
      item.name
    }" class="product-image" />
            <div>
              <div class="product-name">
                <a href="#">${item.name}</a>
              </div>
              <div class="product-details">${item.unit}</div>
            </div>
          </div>
        </td>
        <td>
          <div class="quantity-control">
            <button class="quantity-btn minus-btn" ${
              item.quantity === 1 ? "disabled" : ""
            }>−</button>
            <input type="text" class="quantity" value="${
              item.quantity
            }" readonly />
            <button class="quantity-btn plus-btn">+</button>
          </div>
        </td>
        <td class="price-section">₱<span class="item-price">${(
          item.price * item.quantity
        ).toLocaleString("en-US", {
          minimumFractionDigits: 2,
          maximumFractionDigits: 2,
        })}</span></td>
        <td>
          <div class="action-icons">
            <button class="delete-icon">
              <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0,0,256,256">
                <g fill="#333333" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal">
                  <g transform="scale(5.33333,5.33333)">
                    <path d="M24,4c-3.50831,0 -6.4296,2.62143 -6.91992,6h-10.58008c-0.54095,-0.00765 -1.04412,0.27656 -1.31683,0.74381c-0.27271,0.46725 -0.27271,1.04514 0,1.51238c0.27271,0.46725 0.77588,0.75146 1.31683,0.74381h2.13672l2.51953,26.0293c0.274,2.833 2.62956,4.9707 5.47656,4.9707h14.73438c2.847,0 5.20156,-2.1377 5.47656,-4.9707l2.51953,-26.0293h2.13672c0.54095,0.00765 1.04412,-0.27656 1.31683,-0.74381c0.27271,-0.46725 0.27271,-1.04514 0,-1.51238c-0.27271,-0.46725 -0.77588,-0.75146 -1.31683,-0.74381h-10.58008c-0.49032,-3.37857 -3.41161,-6 -6.91992,-6zM24,7c1.87916,0 3.42077,1.26816 3.86133,3h-7.72266c0.44056,-1.73184 1.98217,-3 3.86133,-3zM19.5,18c0.828,0 1.5,0.671 1.5,1.5v15c0,0.829 -0.672,1.5 -1.5,1.5c-0.828,0 -1.5,-0.671 -1.5,-1.5v-15c0,-0.829 0.672,-1.5 1.5,-1.5zM28.5,18c0.828,0 1.5,0.671 1.5,1.5v15c0,0.829 -0.672,1.5 -1.5,1.5c-0.828,0 -1.5,-0.671 -1.5,-1.5v-15c0,-0.829 0.672,-1.5 1.5,-1.5z"></path>
                  </g>
                </g>
              </svg>
            </button>
          </div>
        </td>
      `;

    // Add event listeners for quantity buttons and delete button
    const minusBtn = row.querySelector(".minus-btn");
    const plusBtn = row.querySelector(".plus-btn");
    const deleteBtn = row.querySelector(".delete-icon");

    const ids = {
      product_id: item.product_id,
      variation_id: item.variation_id,
    };

    minusBtn.addEventListener("click", () => updateQuantityDB(ids, "minus"));
    plusBtn.addEventListener("click", () => updateQuantityDB(ids, "plus"));
    deleteBtn.addEventListener("click", () => removeItem(ids));

    itemTable.appendChild(row);
  });

  // Update order summary based on selected items
  updateOrderSummary();
}

// Function to update order summary based on selected items only
async function updateOrderSummary() {
  const response = await fetch(
    `http://localhost/grizzlypaws-backend/project-root/api/cart.php?customer-id=${sessionStorage.getItem(
      "user_id"
    )}`
  );
  let data = await response.json();
  const cart_items = data.items || [];
  const checkedItems = document.querySelectorAll(".item-checkbox:checked");
  let subtotal = 0;

  checkedItems.forEach((checkbox) => {
    const index = parseInt(checkbox.dataset.index);
    if (index >= 0 && index < cart_items.length) {
      const item = cart_items[index];
      const itemTotalPrice = item.price * item.quantity;
      subtotal += itemTotalPrice;
    }
  });

  // Update subtotal and VAT
  const vat = subtotal * 0.12;
  const total = subtotal + vat;

  subtotalElement.textContent = `₱${subtotal.toLocaleString("en-US", {
    minimumFractionDigits: 2,
    maximumFractionDigits: 2,
  })}`;
  vatElement.textContent = `₱${total.toLocaleString("en-US", {
    minimumFractionDigits: 2,
    maximumFractionDigits: 2,
  })}`;
}

// Expose to window for use in event handlers
window.updateOrderSummary = updateOrderSummary;

async function updateQuantityDB(ids, action) {
  const requestBody = {
    "product-id": ids.product_id,
    "variation-id": ids.variation_id,
    "customer-id": sessionStorage.getItem("user_id"), // Replace with actual customer ID
    action: action,
  };

  try {
    const response = await fetch(
      "http://localhost/grizzlypaws-backend/project-root/api/cart.php",
      {
        method: "PUT",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(requestBody),
      }
    );

    const data = await response.json();

    if (data.status === "success") {
      await renderCartItems();
    } else {
      console.error("Update failed:", data.message);
      alert("Failed to update quantity: " + data.message);
    }

    console.log("Request body sent:", data);
  } catch (error) {
    console.error("Error updating quantity:", error);
    alert("Error updating quantity. Please try again.");
  }
}

async function removeItem(ids) {
  console.log(ids);
  if (confirm("Are you sure you want to remove this item from your basket?")) {
    const requestParams = new URLSearchParams({
      "product-id": ids.product_id,
      "variation-id": ids.variation_id,
      "customer-id": sessionStorage.getItem("user_id"), // Replace with actual customer ID
    });

    try {
      const response = await fetch(
        `http://localhost/grizzlypaws-backend/project-root/api/cart.php?${requestParams}`,
        {
          method: "DELETE",
          headers: {
            "Content-Type": "application/json",
          },
        }
      );

      const data = await response.json();

      if (data.status === "success") {
        await renderCartItems();
        window.updateOrderSummary();
      } else {
        alert("Failed to remove item: " + data.message);
      }
    } catch (error) {
      console.error("Error removing item:", error);
      alert("Error removing item. Please try again.");
    }
  }
}

// Function to clear all items from basket
async function clearBasket() {
  if (
    confirm("Are test you sure you want to clear all items from your basket?")
  ) {
    const requestParams = new URLSearchParams({
      "customer-id": sessionStorage.getItem("user_id"), // Replace with actual customer ID
    });

    try {
      const response = await fetch(
        `http://localhost/grizzlypaws-backend/project-root/api/cart.php?${requestParams}`,
        {
          method: "DELETE",
          headers: {
            "Content-Type": "application/json",
          },
        }
      );

      const data = await response.json();

      if (data.status === "success") {
        await renderCartItems();
        window.updateOrderSummary();
      } else {
        alert("Failed to clear basket: " + data.message);
      }
    } catch (error) {
      console.error("Error clearing basket:", error);
      alert("Error clearing basket. Please try again.");
    }
  }
}

// Expose clearBasket to window
window.clearBasket = clearBasket;

// Checkbox functionality and Payment Modal
document.addEventListener("DOMContentLoaded", function () {
  const checkoutBtn = document.querySelector(".checkout-button");
  const paymentModal = document.getElementById("paymentModal");
  const successModal = document.getElementById("myModal");
  const closePaymentModal = document.getElementById("closePaymentModal");
  const proceedPaymentBtn = document.getElementById("proceedPaymentBtn");
  const closeBtn = document.getElementsByClassName("close")[0];
  const continueShoppingBtn = document.getElementById("continue-shopping");

  // Initialize checkbox functionality using event delegation
  function initializeCheckboxes() {
    // Select All functionality - use event delegation
    const selectAll = document.getElementById("select-all-checkbox");
    if (selectAll && !selectAll.hasAttribute("data-listener")) {
      selectAll.setAttribute("data-listener", "true");
      selectAll.addEventListener("change", function () {
        const allItemCheckboxes = document.querySelectorAll(".item-checkbox");
        allItemCheckboxes.forEach((checkbox) => {
          checkbox.checked = this.checked;
        });
        // Update order summary
        if (window.updateOrderSummary) {
          window.updateOrderSummary();
        }
      });
    }
  }

  // Use event delegation for item checkboxes on the table
  const itemTable = document.getElementById("item-table-body");
  if (itemTable) {
    itemTable.addEventListener("change", function (e) {
      if (e.target.classList.contains("item-checkbox")) {
        // Update select all checkbox state
        const selectAll = document.getElementById("select-all-checkbox");
        const allItemCheckboxes = document.querySelectorAll(".item-checkbox");
        if (selectAll) {
          const allChecked = Array.from(allItemCheckboxes).every(
            (cb) => cb.checked
          );
          const someChecked = Array.from(allItemCheckboxes).some(
            (cb) => cb.checked
          );
          selectAll.checked = allChecked;
          selectAll.indeterminate = someChecked && !allChecked;
        }
        // Update order summary
        if (window.updateOrderSummary) {
          window.updateOrderSummary();
        }
      }
    });
  }

  // Expose to window for use in other functions
  window.initializeCheckboxes = initializeCheckboxes;

  // Call after initial render
  setTimeout(initializeCheckboxes, 100);

  // Payment Method Radio Button Handlers
  const paymentMethods = document.querySelectorAll(
    'input[name="paymentMethod"]'
  );
  const ewalletTypes = document.querySelectorAll('input[name="ewalletType"]');

  paymentMethods.forEach((method) => {
    method.addEventListener("change", function () {
      // Hide all payment details
      document.getElementById("cod-message").style.display = "none";
      document.getElementById("ewallet-options").style.display = "none";
      document.getElementById("card-form").style.display = "none";
      document.getElementById("account-number-input").style.display = "none";

      // Show selected payment details
      if (this.value === "cod") {
        document.getElementById("cod-message").style.display = "block";
      } else if (this.value === "ewallet") {
        document.getElementById("ewallet-options").style.display = "block";
      } else if (this.value === "card") {
        document.getElementById("card-form").style.display = "block";
      }
    });
  });

  // E-Wallet sub-option handler
  ewalletTypes.forEach((type) => {
    type.addEventListener("change", function () {
      if (
        document.querySelector('input[name="paymentMethod"]:checked')?.value ===
        "ewallet"
      ) {
        document.getElementById("account-number-input").style.display = "block";
      }
    });
  });

  // Checkout button click handler
  checkoutBtn.addEventListener("click", async function () {
    const response = await fetch(
      `http://localhost/grizzlypaws-backend/project-root/api/cart.php?customer-id=${sessionStorage.getItem(
        "user_id"
      )}`
    );
    let data = await response.json();
    const cart_items = data.items || [];

    if (cart_items.length === 0) {
      alert(
        "Your the basket is empty. Please add items to your basket before proceeding to checkout."
      );
      return;
    }

    // Check if at least one item is selected
    const checkedItems = document.querySelectorAll(".item-checkbox:checked");
    if (checkedItems.length === 0) {
      alert("Please add at least one item to proceed to checkout.");
      return;
    }

    // Reset payment modal
    paymentMethods.forEach((method) => (method.checked = false));
    document.getElementById("cod-message").style.display = "none";
    document.getElementById("ewallet-options").style.display = "none";
    document.getElementById("card-form").style.display = "none";
    document.getElementById("account-number-input").style.display = "none";
    ewalletTypes.forEach((type) => (type.checked = false));
    document.getElementById("accountNumber").value = "";
    document.getElementById("cardNumber").value = "";
    document.getElementById("cardExpiry").value = "";
    document.getElementById("cardCVV").value = "";
    document.getElementById("cardholderName").value = "";

    // Show payment modal
    paymentModal.style.display = "block";
    // Disable body scroll
    document.body.classList.add("modal-open");
  });

  // Function to build transaction data from selected items
  async function buildTransactionData(selectedPayment) {
    const response = await fetch(
      `http://localhost/grizzlypaws-backend/project-root/api/cart.php?customer-id=${sessionStorage.getItem(
        "user_id"
      )}`
    );
    const data = await response.json();
    const cart_items = data.items || [];
    const checkedItems = document.querySelectorAll(".item-checkbox:checked");

    let subtotal = 0;
    const orderItems = [];

    checkedItems.forEach((checkbox) => {
      const index = parseInt(checkbox.dataset.index);
      if (index >= 0 && index < cart_items.length) {
        const item = cart_items[index];
        const itemTotal = item.price * item.quantity;

        console.log("cart_items", cart_items, item);
        subtotal += itemTotal;

        orderItems.push({
          product_id: item.product_id,
          variation_id: item.variation_id,
          quantity: item.quantity,
          price: item.price,
        });
      }
    });

    console.log(subtotal);

    const vat = subtotal * 0.12;
    const totalAmount = subtotal + vat;

    return {
      customer_id: parseInt(sessionStorage.getItem("user_id")),
      total_amount: totalAmount,
      payment_method: selectedPayment.value,
      payment_status: "paid",
      order_status: "checkout",
      items: orderItems,
    };
  }

  // Function to submit transaction to API
  async function submitTransaction(transactionData) {
    try {
      const response = await fetch(
        "http://localhost/grizzlypaws-backend/project-root/api/transaction.php",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(transactionData),
        }
      );

      const result = await response.json();

      if (result.success) {
        console.log("Transaction created:", result.data);
        return result.data;
      } else {
        alert("Failed to create transaction: " + result.message);
        return null;
      }
    } catch (error) {
      console.error("Error submitting transaction:", error);
      alert("Error submitting transaction. Please try again.");
      return null;
    }
  }

  // Proceed Payment Button Handler
  proceedPaymentBtn.addEventListener("click", async function () {
    const selectedPayment = document.querySelector(
      'input[name="paymentMethod"]:checked'
    );

    if (!selectedPayment) {
      alert("Please select a payment method.");
      return;
    }

    // Validate based on payment method
    if (selectedPayment.value === "ewallet") {
      const selectedEwallet = document.querySelector(
        'input[name="ewalletType"]:checked'
      );
      if (!selectedEwallet) {
        alert("Please select an e-wallet option.");
        return;
      }
      const accountNumber = document
        .getElementById("accountNumber")
        .value.trim();
      if (!accountNumber) {
        alert("Please enter your account number.");
        return;
      }
    } else if (selectedPayment.value === "card") {
      const cardNumber = document.getElementById("cardNumber").value.trim();
      const cardExpiry = document.getElementById("cardExpiry").value.trim();
      const cardCVV = document.getElementById("cardCVV").value.trim();
      const cardholderName = document
        .getElementById("cardholderName")
        .value.trim();

      if (!cardNumber || !cardExpiry || !cardCVV || !cardholderName) {
        alert("Please fill in all card details.");
        return;
      }
    }

    // Close payment modal
    paymentModal.style.display = "none";

    // Show success modal (keep body scroll disabled)
    successModal.style.display = "block";
    document.getElementById("modal-product-info").textContent =
      "Your order has been placed successfully. You can track your order in your email.";

    // Clear selected items from cart
    const checkedItems = document.querySelectorAll(".item-checkbox:checked");

    let cart_ids = [];
    checkedItems.forEach((checkbox) => {
      const cart_item_id = checkbox.getAttribute("data-id");
      cart_ids.push(cart_item_id);
    });

    const requestParams = new URLSearchParams({
      "item-ids": cart_ids.join(","),
      "customer-id": sessionStorage.getItem("user_id"), // Replace with actual customer ID
    });

    try {
      const transactionData = await buildTransactionData(selectedPayment);
      const transactionResult = await submitTransaction(transactionData);

      if (transactionResult) {
        // Show success modal
        successModal.style.display = "block";
        document.getElementById("modal-product-info").textContent =
          "Your order has been placed successfully. You can track your order in your email.";

        const response = await fetch(
          `http://localhost/grizzlypaws-backend/project-root/api/cart.php?${requestParams}`,
          {
            method: "DELETE",
            headers: {
              "Content-Type": "application/json",
            },
          }
        );

        const data = await response.json();

        if (data.status === "success") {
          await renderCartItems();
          window.updateOrderSummary();
        } else {
          alert("Failed to remove item: " + data.message);
        }
      }
    } catch (error) {
      console.error("Error removing item:", error);
      alert("Error removing item. Please try again.");
    }
  });

  // Close payment modal
  closePaymentModal.onclick = function () {
    paymentModal.style.display = "none";
    // Re-enable body scroll
    document.body.classList.remove("modal-open");
  };

  // Disable close button for success modal - user must choose an option
  // Get the close button specifically for success modal (inside myModal)
  const successModalCloseBtn = successModal.querySelector(".close");
  if (successModalCloseBtn) {
    successModalCloseBtn.onclick = function (e) {
      e.preventDefault();
      e.stopPropagation();
      // Do nothing - success modal should not close on X button click
      // User must choose either "Continue Shopping" or "Track Order"
    };
    // Also hide the close button visually
    successModalCloseBtn.style.display = "none";
  }

  // Handle the general closeBtn (if it exists) - this should only work for payment modal
  if (closeBtn && closeBtn.id !== "closePaymentModal") {
    closeBtn.onclick = function (e) {
      // Only allow closing if it's not the success modal
      const modal = e.target.closest(".modal");
      if (modal && modal.id !== "myModal") {
        modal.style.display = "none";
        // Re-enable body scroll
        document.body.classList.remove("modal-open");
      }
    };
  }

  // When the user clicks anywhere outside of the modals, close them
  window.onclick = function (event) {
    if (event.target == paymentModal) {
      paymentModal.style.display = "none";
      // Re-enable body scroll
      document.body.classList.remove("modal-open");
    }
    // Don't close success modal when clicking outside - user must choose an option
    // if (event.target == successModal) {
    //   successModal.style.display = "none";
    // }
  };

  // Close the modal when continue shopping is clicked (navigation will happen via link)
  continueShoppingBtn.onclick = function () {
    successModal.style.display = "none";
    // Re-enable body scroll
    document.body.classList.remove("modal-open");
  };

  // Close the modal when track order is clicked (navigation will happen via link)
  const trackOrderBtn = document.querySelector(".view-basket");
  if (trackOrderBtn) {
    trackOrderBtn.onclick = function () {
      successModal.style.display = "none";
      // Re-enable body scroll
      document.body.classList.remove("modal-open");
    };
  }
});

function generateRandomId() {
  const prefix = "PET";
  const randomNumber = Math.floor(Math.random() * 100000000);
  const paddedNumber = String(randomNumber).padStart(8, "0");
  return prefix + paddedNumber;
}
