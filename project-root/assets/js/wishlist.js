const wishlist = products
  .filter(product => product.category !== "Small Pet") // Exclude "Small Pet"
  .sort(() => Math.random() - 0.5) // Shuffle
  .slice(0, 10); // Take the first 10

if (wishlist) {
    const productCardContainer = document.getElementById("product_grid")
    let wishlist_display = ''

    wishlist.forEach((product) => {
        wishlist_display += `
        <div class="product-card">
          <div class="product-image">
            <a href="pages/products/item/index.html?id=${product.id}&cat-id=dog">
              <img src="${product.images[0]}" alt = "${product.name}"/>
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

    productCardContainer.innerHTML = wishlist_display
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
}

    