// Store all products globally for filtering
let allProducts = [];

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

function renderProducts(productsToRender) {
  const productCardContainer = document.getElementById("product_grid");
  let productDisplay = '';

  // Remove existing no results message if any
  const noResultMsg = document.getElementById('noResultsMessage');
  if (noResultMsg) noResultMsg.remove();

  if (!productsToRender || productsToRender.length === 0) {
    productCardContainer.innerHTML = ''; // Clear grid
    // Show no results message
    const noResultsMsg = document.createElement('p');
    noResultsMsg.id = 'noResultsMessage';
    noResultsMsg.style.cssText = 'text-align: center; color: #999; padding: 20px; grid-column: 1 / -1; width: 100%;';
    noResultsMsg.textContent = 'No products found in this price range.';
    productCardContainer.appendChild(noResultsMsg);
    return;
  }

  productsToRender.forEach((product) => {
      productDisplay += `
        <div class="product-card">
          <div class="product-image">
            <a href="/grizzlypaws-backend/project-root/pages/product-detail.php?id=${product.id}&cat-id=dog">
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

          <a href="/grizzlypaws-backend/project-root/pages/product-detail.php?id=${product.id}&cat-id=dog" class="product-details-link">
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

    productCardContainer.innerHTML = productDisplay;
    
    // Re-attach listeners
    const addToCartBtn = document.querySelectorAll(".add-to-basket-button");
    addToCartBtn.forEach((button) => {
        button.addEventListener('click', (event) => {
            event.preventDefault()
            const productId = button.getAttribute('data-id')

            addToCart({ 
              id: productId,
              quantity: 1,
            })
            // Note: showSuccessModal is usually handled inside addToCart or its callback
            // Keeping existing logic:
            showSuccessModal(productId); 
        })
    })
}

// Logic to filter products
function applyPriceFilter(min, max) {
    const filtered = allProducts.filter(product => {
        const price = parseFloat(product.variations[0].price);
        return price >= min && price <= max;
    });
    renderProducts(filtered);
}

document.addEventListener("DOMContentLoaded", async () => {
  allProducts = await loadProducts(); // Fetch and store
  renderProducts(allProducts);      // Initial render

  // --- Filter Event Listeners ---
  const minPriceInput = document.getElementById('minPrice');
  const maxPriceInput = document.getElementById('maxPrice');
  const applyFilterBtn = document.getElementById('applyPriceFilter');
  const clearFilterBtn = document.getElementById('clearPriceFilter');
  const quickPriceOptions = document.querySelectorAll('.price-option-btn');
  const filterToggleBtn = document.getElementById('filterToggleBtn');
  const sidebarContent = document.getElementById('sidebarContent');

  // Mobile Toggle
  if (filterToggleBtn && sidebarContent) {
      filterToggleBtn.addEventListener('click', function() {
          this.classList.toggle('active');
          sidebarContent.classList.toggle('active');
      });
  }

  // Apply Manual Filter
  if (applyFilterBtn) {
    applyFilterBtn.addEventListener('click', function() {
        const minPrice = parseFloat(minPriceInput.value) || 0;
        const maxPrice = parseFloat(maxPriceInput.value) || Infinity;
        
        if (minPrice > maxPrice && maxPrice !== Infinity) {
            alert('Minimum price cannot be greater than maximum price');
            return;
        }

        // Remove active class from quick options
        quickPriceOptions.forEach(btn => btn.classList.remove('active'));
        
        applyPriceFilter(minPrice, maxPrice);
    });
  }

  // Clear Filter
  if (clearFilterBtn) {
    clearFilterBtn.addEventListener('click', function() {
        if(minPriceInput) minPriceInput.value = '';
        if(maxPriceInput) maxPriceInput.value = '';
        
        // Remove active class from quick options
        quickPriceOptions.forEach(btn => btn.classList.remove('active'));
        
        renderProducts(allProducts); // Reset to all
    });
  }

  // Quick Options
  quickPriceOptions.forEach(btn => {
      btn.addEventListener('click', function() {
          const minPrice = parseFloat(this.dataset.min);
          const maxPrice = parseFloat(this.dataset.max);
          
          // Set input values
          if(minPriceInput) minPriceInput.value = minPrice === 0 ? '' : minPrice;
          if(maxPriceInput) maxPriceInput.value = maxPrice === 999999 ? '' : maxPrice;
          
          // Toggle active class
          quickPriceOptions.forEach(b => b.classList.remove('active'));
          this.classList.add('active');
          
          applyPriceFilter(minPrice, maxPrice);
      });
  });

});


//  <p class="price">₱${product.variations[0].price.toLocaleString('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}</p> 