function loadProducts() {
  const productUrlString = window.location.search;
  const prodUrlParams = new URLSearchParams(productUrlString);

  const catId = prodUrlParams.get("cat-id");
  const subCatId = prodUrlParams.get("sub-cat-id");

  return fetch(
    `http://localhost/grizzlypaws-backend/admin/api/get_products.php?category=${catId}${subCatId != null ? '&sub-category='+ subCatId : ''}`
  )
    .then((res) => res.json())
    .then((data) => {
      return data;
    });
}

document.addEventListener("DOMContentLoaded", async () => {
  const products = await loadProducts();

  const productCardContainer = document.getElementById("product_grid");
  let productDisplay = '';

  if (!products || products.length === 0) {
    productCardContainer.innerHTML = '<p>No products found.</p>';
    return;
  }

  products.forEach((product) => {
      productDisplay += `
        <div class="product-card">
          <div class="product-image">
            <a href="pages/products/item/index.html?id=${product.id}&cat-id=dog">
              <img src="${product.image1}" alt = "${product.name}"/>
            </a>
            <button
              class="add-to-basket-button"
              aria-label="Add to basket"
              data-id=${product.id}
            >
              <i class="fas fa-shopping-cart" aria-hidden="true"></i>
            </button>
          </div>

          <a href="pages/products/item/index.html?id=${product.id}&cat-id=dog" class="product-details-link">
            <div class="product-details">
            
              <h3 class="product-title">${product.name}</h3>
            
              <!-- <p class="product-weight">12kg</p> -->
              <div class="price-container">
                <p class="price">₱${product.variations[0].price.toLocaleString('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}</p> 
             
              </div>
              <div class="ratings">
                <div class="stars">★★★★★</div>
                <div class="review-count">(14)</div>
              </div>
              <p class="delivery">Delivery in 3-6 working days</p>
              </a>
            </div>    
        </div>          
   `
  });

    productCardContainer.innerHTML = productDisplay
    const addToCartBtn = document.querySelectorAll(".add-to-basket-button");
    addToCartBtn.forEach((button) => {
        button.addEventListener('click', (event) => {
            event.preventDefault()
            const productId = button.getAttribute('data-id')

            addToCart({ 
              id: productId,
              quantity: 1,
            })
            showSuccessModal(productId);
        })
    })

});


//  <p class="price">₱${product.variations[0].price.toLocaleString('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}</p> 