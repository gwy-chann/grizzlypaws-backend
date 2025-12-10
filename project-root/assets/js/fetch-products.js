(function () {
  const API_URL = "http://localhost/grizzlypaws-backend/admin/api/get_products.php";

  function shuffleArray(arr) {
    const a = arr.slice();
    for (let i = a.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [a[i], a[j]] = [a[j], a[i]];
    }
    return a;
  }

  function formatPrice(p) {
    if (p == null) return "";
    return "₱" + Number(p).toLocaleString();
  }

  function escapeHtml(s) {
    if (!s) return "";
    return String(s)
      .replace(/&/g, "&amp;")
      .replace(/</g, "&lt;")
      .replace(/>/g, "&gt;")
      .replace(/"/g, "&quot;");
  }

  function createCardHTML(p) {
    const img = p.image1 || p.image || "assets/images/placeholder.png";
    const price = p.variations && p.variations[0] ? formatPrice(p.variations[0].price) : "";
    const unit = p.variations && p.variations[0] ? p.variations[0].unit : "";
    return `
      <div class="product-card" data-product-id="${p.id}">
        <div class="product-image">
          <a href="/grizzlypaws-backend/project-root/pages/product-detail.php?id=${p.id}">
            <img src="${img}" alt="${escapeHtml(p.name)}" />
          </a>
          <button class="add-to-basket-button" aria-label="Add to basket" data-product-id="${p.id}">
            <i class="fas fa-shopping-cart" aria-hidden="true"></i>
          </button>
        </div>
        <a href="/grizzlypaws-backend/project-root/pages/product-detail.php?id=${p.id}" class="product-details-link">
          <div class="product-details">
            <h3 class="product-title">${escapeHtml(p.name)}</h3>
            <div class="price-container">
              <p class="price">${price} <span class="unit">${escapeHtml(unit)}</span></p>
            </div>
            <div class="ratings"><div class="stars">★★★★★</div></div>
            <p class="delivery">Delivery in 3-6 working days</p>
          </div>
        </a>
      </div>
    `;
  }

  function renderInto(selector, htmlItems, keepStructure = false) {
    const container = document.querySelector(selector);
    if (!container) return;
    if (!keepStructure) container.innerHTML = "";
    htmlItems.forEach(html => {
      const wrapper = document.createElement("div");
      wrapper.innerHTML = html;
      if (wrapper.firstElementChild) {
        container.appendChild(wrapper.firstElementChild);
      }
    });
  }

  document.addEventListener("DOMContentLoaded", function () {
    fetch(API_URL)
      .then(r => r.json())
      .then(products => {
        if (!Array.isArray(products) || products.length === 0) return;

        // Carousel: pick up to 8 randomized items, keep arrows intact
        const carouselItems = shuffleArray(products).slice(0, Math.min(8, products.length)).map(createCardHTML);
        const grid = document.querySelector("#product_grid");
        if (grid) {
          Array.from(grid.querySelectorAll(":scope > .product-card")).forEach(n => n.remove());
          renderInto("#product_grid", carouselItems, true);
        }

        // Product display: render larger randomized block
        const displayItems = shuffleArray(products).slice(0, Math.min(12, products.length)).map(createCardHTML);
        renderInto("#product_display", displayItems, false);

        // Featured products: display 3 random products (adjust number as needed)
        const featuredCount = 3; // Change this number to show more or fewer featured products
        const featuredItems = shuffleArray(products)
          .slice(0, Math.min(featuredCount, products.length))
          .map(createCardHTML);
        renderInto("#featured_product", featuredItems, false);
      })
      .catch(err => {
        console.error("Failed to load products:", err);
      });

    // Delegate add-to-basket clicks
    document.body.addEventListener("click", function (e) {
      const btn = e.target.closest(".add-to-basket-button");
      if (!btn) return;
      const pid = btn.dataset.productId || btn.closest(".product-card")?.dataset.productId;
      if (!pid) return;
      if (typeof addToCart === "function") {
        addToCart({ id: pid });
      } else {
        alert("Add to cart: product " + pid);
      }
    });
  });
})();