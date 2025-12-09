const productUrlString = window.location.search;
const prodUrlParams = new URLSearchParams(productUrlString);

const prodParamValue = prodUrlParams.get('id')
const _category = prodUrlParams.get('cat-id')


const product = products.find((product)=> parseInt(prodParamValue) ===  product.id)




if (product) {
    const display_image = document.getElementById("display_image")

    display_image.src = product.images[0]

    document.getElementById("first-breadcrumb").innerText = toTitleCase(_category.replace("_", " "))


    document.getElementById('sub-category-item').innerHTML = product.sub_category

    const maxLength = 50;
    const productName = product.name;
    const displayText = productName.length > maxLength 
      ? productName.substring(0, maxLength) + '...' 
      : productName;

    document.getElementById('product-detail-item').innerText = displayText;

    document.getElementById('product-detail-item').innerText = displayText;
    
    const thumbnails = document.getElementById("thumbnail-container")
    let thumbnail_display  = ''

  
    product.images.forEach((image, index) => {
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
    product_description.innerHTML = product.description

    const custom_select = document.getElementById("custom_select")

    let option_display  = ''
    product.variations.forEach((variation) => {
         option_display += `<option value="${variation.unit}" data-price="${variation.price}">${variation.unit}</option>`
    });

    custom_select.innerHTML = option_display

    const addToCartButton = document.getElementById('myBasket')
    addToCartButton.setAttribute('data-id', product.id)

    // for price of product
    const select = document.querySelector('.custom-select');

    updatePrice(select.value);

    select.addEventListener('change', function () {
      updatePrice(this.value);
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
      });
      showSuccessModal(productId);
    });
    



}



function updatePrice(selectedValue) {
  let price = 0;


  const selectedVariation = product.variations.find(variation => variation.unit === selectedValue);
  if (selectedVariation) {
    price = selectedVariation.price;
  }


  const priceDiv = document.querySelector('.price');
  const originalPriceDiv = document.querySelector('.original-price');


  priceDiv.textContent = `₱ ${price.toLocaleString()}`;
  const originalPrice = price + 1000;
  originalPriceDiv.textContent = `₱ ${originalPrice.toLocaleString()}`;
}