const productUrlString = window.location.search;
const prodUrlParams = new URLSearchParams(productUrlString);

const prodParamValue = prodUrlParams.get('id')
const _category = prodUrlParams.get('cat-id')



document.addEventListener("DOMContentLoaded", async function() {
  /* 
    The following changes are made:
    1. Fixed the multiline string in fetch URL to prevent newline characters in the URL.
    2. Removed the redundant and incorrect showSuccessModal(productId) call.
    3. Added toTitleCase function definition.
    4. Added a guard clause in updatePrice to handle undefined product.
  */
  
    const response = await fetch(
      `http://localhost/grizzlypaws-backend/admin/api/get_products.php?product-id=${prodParamValue}`
    );
  
    const data = await response.json();
    const product = data[0];
  
    if (product) {
      const display_image = document.getElementById("display_image")
  
      display_image.src = product.image1
  
      document.getElementById("first-breadcrumb").innerText = toTitleCase(_category.replace("_", " "))
  
  
      document.getElementById('sub-category-item').innerHTML = product.sub_category + "here!"
  
      const maxLength = 50;
      const productName = product.name;
      const displayText = productName.length > maxLength 
        ? productName.substring(0, maxLength) + '...' 
        : productName;
  
      document.getElementById('product-detail-item').innerText = displayText + "here!";
      
      const thumbnails = document.getElementById("thumbnail-container")
      let thumbnail_display  = ''
  
  
      const imageArr = [product.image1, product.image2, product.image3];
  
    
      imageArr.forEach((image, index) => {
          if (index == 0) {
              thumbnail_display += ` 
              <div class="thumbnail active">
                <img src="${image}" alt="Thumbnail ${index}">
              </div>`
          } else {
              thumbnail_display += ` 
              <div class="thumbnail">
                <img src="${image}" alt="Thumbnail ${index}">
              </div>`
          }
        
      })
      thumbnails.innerHTML = thumbnail_display
  
      const product_title = document.getElementById("product_title")
      product_title.innerHTML = product.name
  
      const product_description = document.getElementById("product_description")
      product_description.innerHTML = product?.description || 'No description available.'
  
      const custom_select = document.getElementById("custom_select")
  
      let option_display  = ''
      product.variations.forEach((variation) => {
           option_display += `<option value="${variation.unit}" data-price="${variation.price}">${variation.unit}</option>`
      });
  
      custom_select.innerHTML = option_display;
  
      const addToCartButton = document.getElementById('myBasket')
      addToCartButton.setAttribute('data-id', product.id)
  
      // for price of product
      const select = document.querySelector('.custom-select');
  
      console.log(product);
      updatePrice(select.value, product);
  
      select.addEventListener('change', function () {
        updatePrice(this.value, product);
      });
  
  
      const addToCartBtn = document.querySelector('.add-to-cart');
      addToCartBtn.addEventListener("click", function() {
  
        const quantityInput = document.querySelector('.quantity-input');
  
        const productId = addToCartBtn.getAttribute('data-id');
  
        const e = document.getElementById("custom_select");
        const value = e.options[e.selectedIndex].value;
      
        addToCart({ 
          id: productId,
          name: product.name,
          quantity: parseInt(quantityInput.value) || 1,
          unit: value,
        }, true, 
       {
        variation_id: product.variations.find(variation => variation.unit === value).id,
        quantity: parseInt(quantityInput.value),
        final_price: product.variations.find(variation => variation.unit === value).price * (parseInt(quantityInput.value) || 1),
        unit: product.variations.find(variation => variation.unit === value).unit
       }
      );
      });
      
  
  }
  
  
  
  
  function updatePrice(selectedValue, product) {
    if (!product) return; // Guard clause
    let price = 0;
  
    const selectedVariation = product.variations?.find(variation => variation.unit === selectedValue);
    if (selectedVariation) {
      price = selectedVariation.price;
    }
  
    // console.log(selectedValue, product);
    const priceDiv = document.querySelector('.price');
    const originalPriceDiv = document.querySelector('.original-price');
  
    if (priceDiv) priceDiv.textContent = `₱ ${price.toLocaleString()}`;
    if (originalPriceDiv) {
        const originalPrice = price + 1000;
        originalPriceDiv.textContent = `₱ ${originalPrice.toLocaleString()}`;
    }
  }

  function toTitleCase(str) {
      return str.replace(
        /\w\S*/g,
        (text) => text.charAt(0).toUpperCase() + text.substring(1).toLowerCase()
      );
  }
  
  
  })

