// Filter Toggle Functionality
document.addEventListener('DOMContentLoaded', function() {
    const filterToggleBtn = document.getElementById('filterToggleBtn');
    const sidebarContent = document.getElementById('sidebarContent');
    
    if (filterToggleBtn && sidebarContent) {
        filterToggleBtn.addEventListener('click', function() {
            this.classList.toggle('active');
            sidebarContent.classList.toggle('active');
        });
    }
});

// Price Filter Functionality
document.addEventListener('DOMContentLoaded', function() {
    const minPriceInput = document.getElementById('minPrice');
    const maxPriceInput = document.getElementById('maxPrice');
    const applyFilterBtn = document.getElementById('applyPriceFilter');
    const clearFilterBtn = document.getElementById('clearPriceFilter');
    const quickPriceOptions = document.querySelectorAll('.price-option-btn');
    const productsGrid = document.getElementById('product_grid');
    
    let currentMinPrice = null;
    let currentMaxPrice = null;

    // Apply custom price filter
    applyFilterBtn.addEventListener('click', function() {
        const minPrice = parseFloat(minPriceInput.value) || 0;
        const maxPrice = parseFloat(maxPriceInput.value) || Infinity;
        
        if (minPrice > maxPrice && maxPrice !== Infinity) {
            alert('Minimum price cannot be greater than maximum price');
            return;
        }
        
        currentMinPrice = minPrice;
        currentMaxPrice = maxPrice;
        
        // Remove active class from quick options
        quickPriceOptions.forEach(btn => btn.classList.remove('active'));
        
        filterProducts(minPrice, maxPrice);
    });

    // Clear price filter
    clearFilterBtn.addEventListener('click', function() {
        minPriceInput.value = '';
        maxPriceInput.value = '';
        currentMinPrice = null;
        currentMaxPrice = null;
        
        // Remove active class from quick options
        quickPriceOptions.forEach(btn => btn.classList.remove('active'));
        
        filterProducts(0, Infinity);
    });

    // Quick price option buttons
    quickPriceOptions.forEach(btn => {
        btn.addEventListener('click', function() {
            const minPrice = parseFloat(this.dataset.min);
            const maxPrice = parseFloat(this.dataset.max);
            
            // Set input values
            minPriceInput.value = minPrice === 0 ? '' : minPrice;
            maxPriceInput.value = maxPrice === 999999 ? '' : maxPrice;
            
            currentMinPrice = minPrice;
            currentMaxPrice = maxPrice;
            
            // Toggle active class
            quickPriceOptions.forEach(b => b.classList.remove('active'));
            this.classList.add('active');
            
            filterProducts(minPrice, maxPrice);
        });
    });

    // Filter products based on price range
    function filterProducts(minPrice, maxPrice) {
        const productCards = productsGrid.querySelectorAll('.product-card');
        let visibleCount = 0;
        
        productCards.forEach(card => {
            const priceElement = card.querySelector('.price');
            if (priceElement) {
                // Extract price value (remove ₱ symbol, commas and parse)
                const priceText = priceElement.textContent.replace(/₱|,/g, '').trim();
                const price = parseFloat(priceText);
                
                if (price >= minPrice && price <= maxPrice) {
                    card.style.display = 'block';
                    visibleCount++;
                } else {
                    card.style.display = 'none';
                }
            }
        });
        
        // Optional: Show message if no products match
        let noResultsMsg = document.getElementById('noResultsMessage');
        if (visibleCount === 0) {
            if (!noResultsMsg) {
                noResultsMsg = document.createElement('p');
                noResultsMsg.id = 'noResultsMessage';
                noResultsMsg.style.cssText = 'text-align: center; color: #999; padding: 20px; grid-column: 1 / -1;';
                noResultsMsg.textContent = 'No products found in this price range.';
                productsGrid.appendChild(noResultsMsg);
            }
        } else if (noResultsMsg) {
            noResultsMsg.remove();
        }
    }
});