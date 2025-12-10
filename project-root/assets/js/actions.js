async function addToCart(orderDetails, customVariationId = false, selectedDetails = {}) {
  const response = await fetch(
    `http://localhost/grizzlypaws-backend/admin/api/get_products.php?product-id=${orderDetails.id}
    }`
  );

  const data = await response.json();
  const product = data[0];

  const userId = sessionStorage.getItem('user_id');
  if (!userId) {
      alert("Please log in to add items to your cart.");
      window.location.href = "/grizzlypaws-backend/project-root/pages/login.php";
      return;
  }

  try {
    console.log("Product to add:", product);
    const response = await fetch(
      `http://localhost/grizzlypaws-backend/project-root/api/cart.php`,
      {
        method: "POST",
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: new URLSearchParams({
          user_id: userId,
          product_id: product.id,
          variation_id: customVariationId ? selectedDetails.variation_id: product.variations[0].id,
          quantity: customVariationId ? selectedDetails.quantity : 1,
          final_price: customVariationId ? selectedDetails.final_price : 1 * product.variations[0].price,
        }).toString(),
      }
    );


    if (response.ok) {
     
      showSuccessModal({
        quantity: 1,
        title: product.name,
        unit: customVariationId ? selectedDetails.unit : product.variations[0].unit,
      });
    }
  } catch (error) {
    console.error("Error adding to cart:", error);
  }

}

// const modal = document.getElementById("myModal");
// const closeBtn = document.querySelector(".close");
// const addToCartBtn = document.getElementById("myBasket");
const continueShoppingBtn = document.querySelector(".continue-shopping");
const viewBasketBtn = document.querySelector(".view-basket");
// const modalProductInfo = document.getElementById("modal-product-info");

// Function to show the modal with product details
function showSuccessModal(product) {

  // Update modal message with product details
  document.getElementById(
    "modal-product-info"
  ).textContent = `${product.quantity} × ${product.title} (${product.unit}) has been added to your basket.`;

  document.getElementById("myModal").style.display = "block";

  // Prevent scrolling on the body while modal is open
  document.body.style.overflow = "hidden";
}

// Close modal when clicking outside of it
window.addEventListener("click", function (event) {
  if (event.target === getModal()) {
    closeModal();
  }
});

// Optional: Close modal with ESC key
document.addEventListener("keydown", function (event) {
  if (event.key === "Escape" && modal.style.display === "block") {
    closeModal();
  }
});

function getModal() {
  return document.getElementById("myModal");
}

function closeModal() {
  const modal = getModal();
  if (!modal) return;
  modal.style.display = "none";
  document.body.style.overflow = "auto"; // Re-enable scrolling
}

document.addEventListener("keydown", function (event) {
  const modal = getModal();
  if (event.key === "Escape" && modal && modal.style.display === "block") {
    closeModal();
  }
});

// Use event delegation so listeners work even if .close/.continue-shopping are added later
document.addEventListener("click", function (event) {
  if (
    event.target.closest(".close") ||
    event.target.closest(".continue-shopping")
  ) {
    closeModal();
  }
});
