const productUrlString = window.location.search;
const prodUrlParams = new URLSearchParams(productUrlString);

const subCategoryValue = prodUrlParams.get('sub-cat-id')
const _category = prodUrlParams.get('cat-id')

const sub_products = products.filter((product) => subCategoryValue == product.sub_category && product.category == _category) 


if (sub_products) {
    const productCardContainer = document.getElementById("product_grid")
    let subCategory_display = ''

    document.getElementById("first-breadcrumb").innerText = toTitleCase(_category.replace("_", " "))

    sub_products.forEach((product) => {
        subCategory_display += `
        <div class="product-card">
          <div class="product-image">
            <a href="pages/products/item/index.html?id=${product.id}&cat-id=${_category}">
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

          <a href="pages/products/item/index.html?id=${product.id}&cat-id=${_category}" class="product-details-link">
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
            </div>
          </a>
        </div>
        `
    });
    
    productCardContainer.innerHTML = subCategory_display


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
