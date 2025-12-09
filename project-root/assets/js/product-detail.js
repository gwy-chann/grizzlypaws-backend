// Favorite toggle functionality
const favoriteIcon = document.querySelector('.favorite-icon');
favoriteIcon.addEventListener('click', function() {
    this.innerHTML = this.innerHTML.includes('fill="none"') ? 
        '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="currentColor" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>' : 
        '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>';
});

// Quantity control functionality
const decreaseBtn = document.querySelector('.decrease');
const increaseBtn = document.querySelector('.increase');
const quantityInput = document.querySelector('.quantity-input');
const addToCartBtn = document.querySelector('#myBasket');

decreaseBtn.addEventListener('click', function() {
    let currentValue = parseInt(quantityInput.value);
    if (currentValue > 0) {
        quantityInput.value = currentValue - 1;
        updateButtonStatus();
    }
});

increaseBtn.addEventListener('click', function() {
    let currentValue = parseInt(quantityInput.value);
    quantityInput.value = currentValue + 1;
    updateButtonStatus();
});

function updateButtonStatus() {
    const currentValue = parseInt(quantityInput.value) || 0;

    if (currentValue > 0) {
        addToCartBtn.removeAttribute('disabled');     // Enable button
        addToCartBtn.style.opacity = '1';             // Full opacity
    } else {
        addToCartBtn.setAttribute('disabled', true);  // Disable button properly
        addToCartBtn.style.opacity = '0.7';           // Dim opacity
    }
}

const thumbnails = document.querySelectorAll('.thumbnail');
const mainImage = document.querySelector('.main-image img');

thumbnails.forEach(thumbnail => {
    thumbnail.addEventListener('click', function() {
        // Remove active class from all thumbnails
        thumbnails.forEach(item => item.classList.remove('active'));
        
        // Add active class to clicked thumbnail
        this.classList.add('active');
        
        // Update main image (in a real scenario, you would change the src)
        // For this example, we'll just simulate the change
        mainImage.src = this.querySelector('img').src;
    });
});

// Navigation arrows functionality
const prevArrow = document.querySelector('.prev');
const nextArrow = document.querySelector('.next');

prevArrow.addEventListener('click', function() {
    const active = document.querySelector('.thumbnail.active');
    const prev = active.previousElementSibling || document.querySelectorAll('.thumbnail')[document.querySelectorAll('.thumbnail').length - 1];
    
    if (prev) {
        active.classList.remove('active');
        prev.classList.add('active');
        mainImage.src = prev.querySelector('img').src;
    }
});

nextArrow.addEventListener('click', function() {
    const active = document.querySelector('.thumbnail.active');
    const next = active.nextElementSibling || document.querySelectorAll('.thumbnail')[0];
    
    if (next) {
        active.classList.remove('active');
        next.classList.add('active');
        mainImage.src = next.querySelector('img').src;
    }
});


// Simple function to allow only number keys
function onlyNumberKey(evt) {
    // Get the key code
    const keyCode = evt.which ? evt.which : evt.keyCode;
    
    // Allow: backspace, delete, tab, escape, enter, and navigation keys
    if (keyCode == 8 || keyCode == 46 || keyCode == 9 || keyCode == 27 || keyCode == 13 || 
        (keyCode >= 35 && keyCode <= 40)) {
      return true;
    }
    
    // Block anything that's not a number
    if (keyCode < 48 || keyCode > 57) {
      return false;
    }
    
    return true;
  }

// Initialize button status
quantityInput.addEventListener('input', function () {
    const value = parseInt(this.value) || 0;
    let cleanedValue = this.value.replace(/\D/g, '');
    cleanedValue = cleanedValue.replace(/^0+/, '')
    if (cleanedValue === '') {
        cleanedValue = '0';
    }
    this.value = cleanedValue;
    updateButtonStatus();
});




// const modal = document.getElementById("myModal");
// const closeBtn = document.querySelector(".close");
// const continueShoppingBtn = document.querySelector(".continue-shopping");
// const viewBasketBtn = document.querySelector(".view-basket");
// const modalProductInfo = document.getElementById("modal-product-info");

