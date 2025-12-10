const urlString = window.location.search;
const urlParams = new URLSearchParams(urlString);

const paramValue = urlParams.get("cat-id");
const sub_category = urlParams.get("sub-cat-id");

function toTitleCase(str) {
  return str.replace(
    /\w\S*/g,
    (text) => text.charAt(0).toUpperCase() + text.substring(1).toLowerCase()
  );
}

if (sub_category) {
  document.getElementById("sub-category-txt").innerHTML = toTitleCase(sub_category.replace("_", " "));
}

if (paramValue) {
  document.getElementById("first-breadcrumb").innerText = toTitleCase(paramValue.replace("_", " "));
}

async function fetchAndDisplayProducts(category, subCategory) {
  try {
    let apiUrl = `http://localhost/grizzlypaws-backend/admin/api/get_products.php`;
    
    const params = new URLSearchParams();
    if (category) {
      params.append('category', category);
    }
    if (subCategory) {
      params.append('sub-category', subCategory);
    }
    
    if (params.toString()) {
      apiUrl += `?${params.toString()}`;
    }

    const response = await fetch(apiUrl);
    const products = await response.json();

    const productGrid = document.getElementById("product_grid");

    if (productGrid && products.length > 0) {
      let productDisplay = '';
      products.forEach((product) => {
        productDisplay += `
          <div class="product-card">
            <div class="product-image">
              <a href="product-detail.php?id=${product.id}&cat-id=${paramValue}">
                <img src="${product.image1}" alt="${product.name}">
              </a>
            </div>
            <a href="product-detail.php?id=${product.id}&cat-id=${paramValue}" class="product-details-link">
              <div class="product-details">
                <h3 class="product-title">${product.name}</h3>
              </div>
            </a>
          </div>
        `;
      });
      productGrid.innerHTML = productDisplay;
    }
  } catch (error) {
    console.error('Error fetching products:', error);
  }
}
document.addEventListener("DOMContentLoaded", function() {
  const categoryName = paramValue ? toTitleCase(paramValue.replace("_", " ")) : null;
  const subCategoryName = sub_category ? toTitleCase(sub_category.replace("_", " ")) : null;
  fetchAndDisplayProducts(categoryName, subCategoryName);
});