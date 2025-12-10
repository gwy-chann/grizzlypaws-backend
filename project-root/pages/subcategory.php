<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Grizzly Paws | My Profile</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <link rel="icon" type="image/x-icon" href="../assets/images/favicon.png" />
    <link rel="stylesheet" href="../assets/css/user-profile.css" />
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/subcategory.css">
  </head>
  <body>
    <?php include '../includes/header.php'; ?>

    <main class="container">
      <div class="breadcrumb">
        <a href="index.htmlgrizzlypaws-backend/project-root/index.php">
            <svg class="home-icon" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                <polyline points="9 22 9 12 15 12 15 22"></polyline>
            </svg>
        </a>
        <span class="separator">
          <svg width="8" height="12" viewBox="0 0 8 12" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M1.5 1L6.5 6L1.5 11" stroke="#666" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </span>
        <span id="first-breadcrumb">Pet</span>
        <span class="separator">
          <svg width="8" height="12" viewBox="0 0 8 12" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M1.5 1L6.5 6L1.5 11" stroke="#666" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </span>
        <span id="sub-category-txt">Sub Category</span>
    </div>

      <div class="title-category">
          <h1>Pet Paradise: Your Complete Online Pet Shop Experience</h1>
          <p class="description">
            Welcome to the ultimate online destination for all your pet care needs, offering an extensive selection of premium products at competitive prices with fast delivery across the country. Our comprehensive range caters to every beloved companion - from playful puppies and curious kittens to small pets and colorful fish. 
      
            Join thousands of satisfied pet parents who trust us for their furry, feathery, and scaly family members' needs. Explore our most popular categories including 
<<<<<<< HEAD
            <a href="/grizzlypaws-backend/project-root/pages/category.php?cat-id=dog"><span class="highlight">Dog Supplies</span></a>,
            <a href="/grizzlypaws-backend/project-root/pages/category.php?cat-id=cat"><span class="highlight">Cat Essentials</span></a>,
            <a href="/grizzlypaws-backend/project-root/pages/category.php"><span class="highlight">Small Pet Care</span></a>, 
            <a href="/grizzlypaws-backend/project-root/pages/category.php"><span class="highlight">Feathered </span></a> and
            <a href="/grizzlypaws-backend/project-root/pages/category.php"><span class="highlight">Aquatic</span></a>
=======
            <a href="/grizzlypaws-backend/project-root/pages/category/index.php?cat-id=dog"><span class="highlight">Dog Supplies</span></a>,
            <a href="/grizzlypaws-backend/project-root/pages/category/index.php?cat-id=cat"><span class="highlight">Cat Essentials</span></a>,
            <a href="/grizzlypaws-backend/project-root/pages/category/index.php?cat-id=small_pet"><span class="highlight">Small Pet Care</span></a>, 
            <a href="/grizzlypaws-backend/project-root/pages/category/index.php?cat-id=feathered"><span class="highlight">Feathered </span></a> and
            <a href="/grizzlypaws-backend/project-root/pages/category/index.php?cat-id=aquatic"><span class="highlight">Aquatic</span></a>
>>>>>>> 3d5effa14bf27189b5bc5fb9b153280bf7318dc0
          </p>
        </div>

      <div class="products-grid" id="product_grid">
        <!-- <div class="product-card">
          <div class="product-image">
            <a href="pages/products/item//grizzlypaws-backend/project-root/pages/subcategory.php?id=1">
              <img
                src="images/Hill'sPrescriptionDietCanineDigestiveCare1.jpg"
                alt="Hill's Prescription Diet Canine Metabolic"
              />
            </a>
            <button
              class="add-to-basket-button"
              aria-label="Add to basket"
            >
              <i class="fas fa-shopping-cart" aria-hidden="true"></i>
            </button>
          </div>

          <a href="pages/products/item//grizzlypaws-backend/project-root/pages/subcategory.php?id=1" class="product-details-link">
            <div class="product-details">
              <h3 class="product-title">
                Hill's Prescription Diet Canine Metabolic Weight Management -
                Chicken
              </h3>
            
              <div class="price-container">
                <p class="price">£96.99</p>
              </div>
              <div class="ratings">
                <div class="stars">★★★★★</div>
                <div class="review-count">(14)</div>
              </div>
              <p class="delivery">Delivery in 3-6 working days</p>
            </div>
          </a>
        </div> -->
      </div>
    </main>

    <?php include '../includes/footer.php'; ?>
    <script src="../dummy-data/category.js"></script>
    <script src="../dummy-data/products.js"></script>
    <script src="../assets/js/dynamic-display.js"></script>
    <script src="../assets/js/actions.js"></script>
    <script src="../assets/js/basket.js"></script>
    <script src="../assets/js/subcategory.js"></script>
  </body>
</html>