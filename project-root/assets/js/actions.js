function addToCart(orderDetails) {
  const product = products.find((product) => product.id == orderDetails.id);
  const cart = JSON.parse(localStorage.getItem('cart')) || [];

  const selectedVariation = product.variations.find(variation => variation.unit === orderDetails.unit);
  
  const price = selectedVariation ? selectedVariation.price : product.variations[0].price;
  const unit = selectedVariation ? selectedVariation.unit : product.variations[0].unit;
  const quantity = orderDetails.quantity || 1;
  const existingProductIndex = cart.findIndex(item => 
      item.id == orderDetails.id && item.unit == unit
  );
 
  if (existingProductIndex !== -1) {
      cart[existingProductIndex].quantity += quantity;
      cart[existingProductIndex].totalPrice = price * cart[existingProductIndex].quantity;
  } else {
      const cartItem = {
          id: product.id,
          name: product.name,
          quantity: quantity,
          price: price,
          unit: unit,
          totalPrice: price * quantity
      };
      cart.push(cartItem);
  }

  localStorage.setItem('cart', JSON.stringify(cart));
  
  return cart;
}


const modal = document.getElementById("myModal");
const closeBtn = document.querySelector(".close");
// const addToCartBtn = document.getElementById("myBasket");
const continueShoppingBtn = document.querySelector(".continue-shopping");
const viewBasketBtn = document.querySelector(".view-basket");
const modalProductInfo = document.getElementById("modal-product-info");


// Function to show the modal with product details
function showSuccessModal(productId) {
    const product = products.find((product) => product.id == productId)

    // Get product info
    const productTitle = product.name;
    const selectedSize = document.getElementById("custom_select")?.value || product.variations[0].unit;
    const quantity = document.querySelector(".quantity-input")?.value || 1;
    
    // Update modal message with product details
    modalProductInfo.textContent = `${quantity} × ${productTitle} (${selectedSize}) has been added to your basket.`;
    
    modal.style.display = "block";
    
    // Prevent scrolling on the body while modal is open
    document.body.style.overflow = "hidden";
  }
  
  // Function to close the modal
  function closeModal() {
    modal.style.display = "none";
    document.body.style.overflow = "auto"; // Re-enable scrolling
  }

  // Close modal when clicking outside of it
window.addEventListener("click", function(event) {
    if (event.target === modal) {
      closeModal();
    }
  });
  
  // Optional: Close modal with ESC key
  document.addEventListener("keydown", function(event) {
    if (event.key === "Escape" && modal.style.display === "block") {
      closeModal();
    }
  });


closeBtn.addEventListener("click", closeModal);
continueShoppingBtn.addEventListener("click", closeModal);
