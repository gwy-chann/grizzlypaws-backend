<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: pages/login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Grizzly Paws - Pet Food & Accessories</title>
    <meta
      name="description"
      content="Shop premium pet food and accessories for dogs, cats, small pets, birds, and fish at Grizzly Paws, your trusted online pet store."
    />
    <link rel="icon" type="image/x-icon" href="images/favicon.png" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/notification.css" />
    <!-- <link rel="stylesheet" href="styles/css sub category/dog-dry-food.css" /> -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
  </head>
  <body>


    <?php include 'includes/header.php'; ?>

    <main class="container">
      <div class="main-banner">
        <div class="hero-container">
          <div class="hero-image">
            <img
              src="assets/images/landing-page/grizzly_hero.png"
              alt="Hero Image"
              class="active"
            />
            <img src="assets/images/landing-page/grizzly_hero1.png" alt="Hero Image" />
          </div>

          <div class="slider-dots">
            <span class="carousel-indicator active" data-index="0"></span>
            <span class="carousel-indicator" data-index="1"></span>
          </div>
        </div>

        <div class="discount-container">
          <a href="#pet-categories-heading">
            <img
              src="assets/images/landing-page/discount_hero.png"
              alt="Special Discounts"
              class="discount-image"
            />
          </a>
        </div>
      </div>

      <section class="value-proposition">
        <div class="title-section">
          <div class="horizontal-line" aria-hidden="true"></div>
          <h1 class="title">My number one choice for pet supplies</h1>
        </div>

        <div class="features-container" id="features-container">
          <article class="feature-box">
            <div class="icon-container green-bg" aria-hidden="true">
              <svg class="icon" viewBox="0 0 24 24" fill="#4caf50">
                <path
                  d="M20 13c-.6 0-1-.4-1-1 0-3.9-3.1-7-7-7-1.9 0-3.6.7-5 2-.3.4-1 .4-1.4 0-.4-.4-.4-1 0-1.4C7.3 3.9 9.6 3 12 3c5 0 9 4 9 9 0 .6-.4 1-1 1zm-8 8c-5 0-9-4-9-9 0-.6.4-1 1-1s1 .4 1 1c0 3.9 3.1 7 7 7 1.9 0 3.6-.7 5-2 .4-.4 1-.4 1.4 0 .4.4.4 1 0 1.4-1.7 1.7-4 2.6-6.4 2.6z"
                ></path>
                <path
                  d="M20 13c-.2 0-.4-.1-.6-.2L16 10.3c-.4-.3-.5-1-.2-1.4.3-.4 1-.5 1.4-.2l3.4 2.5c.4.3.5 1 .2 1.4-.2.3-.5.4-.8.4z"
                ></path>
                <path
                  d="M20 13c-.2 0-.4-.1-.6-.2-.4-.3-.5-1-.2-1.4L21.7 8c.3-.4 1-.5 1.4-.2.4.3.5 1 .2 1.4l-2.5 3.4c-.2.3-.5.4-.8.4zM7.4 15.5c-.2 0-.4-.1-.6-.2l-3.4-2.5c-.4-.3-.5-1-.2-1.4.3-.4.9-.5 1.4-.2L8 13.7c.4.3.5 1 .2 1.4-.2.3-.5.4-.8.4z"
                ></path>
                <path
                  d="M1.5 16.4c-.2 0-.4-.1-.6-.2-.4-.3-.5-1-.2-1.4l2.5-3.4c.3-.4.9-.5 1.4-.2.4.3.5 1 .2 1.4L2.3 16c-.2.3-.5.4-.8.4z"
                ></path>
              </svg>
            </div>
            <div class="content">
              <h2 class="feature-title">Save 5% on repeat orders</h2>
            </div>
          </article>

          <article class="feature-box">
            <div class="icon-container yellow-bg" aria-hidden="true">
              <svg class="icon" viewBox="0 0 512 512" fill="#ffc107">
                <path
                  d="M443.827 195.5c-4.383-11.73-11.753-20.212-21.317-24.524-4.389-1.975-8.995-2.976-13.688-2.976-20.025 0-40.372 18.667-50.632 46.454-12.698 34.42-5.315 68.135 17.173 78.423 4.522 2.071 9.365 3.123 14.394 3.123 20.396 0 41.126-17.119 51.581-42.596 7.9-19.283 8.83-40.927 2.489-57.904zM153.811 214.454C143.551 186.667 123.204 168 103.179 168c-4.693 0-9.3 1.001-13.689 2.976-9.565 4.312-16.934 12.794-21.317 24.524-6.341 16.977-5.411 38.621 2.49 57.904C81.118 278.881 101.848 296 122.244 296c5.028 0 9.871-1.052 14.394-3.123 22.488-10.288 29.871-44.003 17.173-78.423zM198.347 210.601c1.855.081 3.727.03 5.563-.151 10.787-1.059 20.54-6.594 28.207-16.008 12.371-15.191 15.806-38.974 13.201-63.439C241.336 93.3 221.469 65.161 194.776 64c0 0-3.811.008-5.75.193-11.776 1.164-22.481 7.283-30.957 17.695-12.291 15.101-18.198 37.57-15.803 60.104 3.936 37.277 28.57 67.412 56.081 68.609zM256 240c-64 0-128 76.074-128 149.128 0 21.798 10.932 39.331 21.667 46.517C162.925 444.516 172.269 448 191.704 448c23.093 0 29.325-8.078 40.136-15.205 7.819-5.152 14.572-9.605 24.161-9.605s16.342 4.453 24.16 9.605C290.972 439.922 297.203 448 320.297 448c19.434 0 28.778-3.484 42.036-12.355C373.068 428.459 384 410.926 384 389.128 384 316.074 320 240 256 240zM308.281 210.265c1.836.182 3.709.232 5.563.151 27.511-1.196 52.146-31.332 56.081-68.607 2.395-22.534-3.514-45.004-15.804-60.104-8.476-10.412-18.783-16.228-30.56-17.392-1.939-.186-6.146-.312-6.146-.312-26.693 1.161-46.561 29.115-50.542 66.817-2.604 24.466.83 48.248 13.2 63.439 7.668 9.414 17.421 14.949 28.208 16.008z"
                ></path>
              </svg>
            </div>
            <div class="content">
              <h2 class="feature-title">You can earn Points and Rewards</h2>
            </div>
          </article>

          <article class="feature-box">
            <div class="icon-container blue-bg" aria-hidden="true">
              <svg class="icon" viewBox="0 0 24 24" fill="#03a9f4">
                <path fill="none" d="M0 0h24v24H0V0z"></path>
                <path
                  d="M12.68 5.88c.7-.24 1.22-.9 1.3-1.64.05-.47-.05-.91-.28-1.27L12.42.75c-.19-.33-.67-.33-.87 0l-1.28 2.22c-.17.3-.27.65-.27 1.03 0 1.32 1.3 2.35 2.68 1.88zm3.85 10.04l-1-1-1.08 1.07c-1.3 1.3-3.58 1.31-4.89 0l-1.07-1.07-1.09 1.07C6.75 16.64 5.88 17 4.96 17c-.73 0-1.4-.23-1.96-.61V20c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2v-3.61c-.75.51-1.71.75-2.74.52-.66-.14-1.25-.51-1.73-.99zM18 9h-5V8c0-.55-.45-1-1-1s-1 .45-1 1v1H6c-1.66 0-3 1.34-3 3v1.46c0 .85.5 1.67 1.31 1.94.73.24 1.52.06 2.03-.46l2.14-2.13 2.13 2.13c.76.76 2.01.76 2.77 0l2.14-2.13 2.13 2.13c.43.43 1.03.63 1.65.55.99-.13 1.69-1.06 1.69-2.06v-1.42C21 10.34 19.66 9 18 9z"
                ></path>
              </svg>
            </div>
            <div class="content">
              <h2 class="feature-title">
                Special Offer for your Pet's Birthday
              </h2>
            </div>
          </article>
        </div>
      </section>

      <!-- shop for your pets skrr -->
      <section class="pet-section" aria-labelledby="pet-categories-heading">
        <h2 id="pet-categories-heading" class="sub-section">
          Shop for your pet
        </h2>
        <div class="pet-categories">
          <a href="pages/category/index.html?cat-id=dog" class="pet-category">
            <div class="pet-image-container dog-bg">
              <img
                src="assets/images/category-images/dog_cat.png"
                alt="Dog"
                class="pet-image"
                aria-hidden="true"
              />
            </div>
            <div class="pet-name">Dog</div>
          </a>

          <a href="pages/category/index.html?cat-id=cat" class="pet-category">
            <div class="pet-image-container cat-bg">
              <img
                src="assets/images/category-images/cat_cat.png"
                alt="Cat"
                class="pet-image"
                aria-hidden="true"
              />
            </div>
            <div class="pet-name">Cat</div>
          </a>

          <a
            href="pages/category/index.html?cat-id=small_pet"
            class="pet-category"
          >
            <div class="pet-image-container small_pet-bg">
              <img
                src="assets/images/category-images/small_pet_cat.png"
                alt="Small Pet"
                class="pet-image"
                aria-hidden="true"
              />
            </div>
            <div class="pet-name">Small Pet</div>
          </a>

          <a
            href="pages/category/index.html?cat-id=feathered"
            class="pet-category"
          >
            <div class="pet-image-container bird-bg">
              <img
                src="assets/images/category-images/bird_cat.png"
                alt="Feathered"
                class="pet-image"
                aria-hidden="true"
              />
            </div>
            <div class="pet-name">Feathered</div>
          </a>

          <a
            href="pages/category/index.html?cat-id=aquatic"
            class="pet-category"
          >
            <div class="pet-image-container fish-bg">
              <img
                src="assets/images/category-images/aquatic_cat.png"
                alt="Aquatic"
                class="pet-image"
                aria-hidden="true"
              />
            </div>
            <div class="pet-name">Aquatic</div>
          </a>
        </div>
      </section>

      <!-- special offer section -->
      <section
        class="special-offers-section"
        aria-labelledby="special-offers-heading"
      >
        <div class="special-offers-header">
          <h2 id="special-offers-heading" class="special-offers-title">
            Special offers
          </h2>
        </div>
        <div class="offers-grid">
          <!-- Economy Packs Offer -->
          <div class="offer-card">
            <div class="offer-content">
              <div class="offer-subtitle">Economy packs</div>
              <div class="offer-title">BUY MORE, SAVE MORE!</div>
            </div>
            <div class="offer-image">
              <img
                src="assets/images/landing-page/special_offer_1.png"
                alt="Economy packs image"
              />
            </div>
          </div>

          <!-- Clearance Sale Offer -->
          <div class="offer-card">
            <div class="offer-content">
              <div class="offer-subtitle">Clearance Sale</div>
              <div class="offer-title">REDUCED PRICES</div>
            </div>
            <div class="offer-image">
              <img
                src="assets/images/landing-page/special_offer_2.png"
                alt="Clearance sale image"
              />
            </div>
          </div>

          <!-- Premium Shop Offer -->
          <div class="offer-card">
            <div class="offer-content">
              <div class="offer-subtitle">Shop premium.</div>
              <div class="offer-title">AT A BETTER PRICE.</div>
            </div>
            <div class="offer-image">
              <img
                src="assets/images/landing-page/special_offer_3.png"
                alt="Premium shop image"
              />
            </div>
          </div>
        </div>
      </section>

      <!-- top reccos -->
      <section
        class="recommendations-section"
        aria-labelledby="recommendations-heading"
      >
        <h2 id="recommendations-heading" class="sub-section">
          Top recommendations:
        </h2>

        <div class="product-grid">
          <div
            class="product-slider"
            role="region"
            aria-label="Product recommendations carousel"
          >
            <div class="arrow left" aria-label="Previous products">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 24 24"
                aria-hidden="true"
              >
                <path d="M15.41 7.41L14 6l-6 6 6 6 1.41-1.41L10.83 12z" />
              </svg>
            </div>

            <div class="products-grid" id="product_grid">
              <div class="product-card">
                <div class="product-image">
                  <a href="pages/products/item/index.html?id=1">
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

                <a
                  href="pages/products/item/index.html?id=1"
                  class="product-details-link"
                >
                  <div class="product-details">
                    <h3 class="product-title">
                      Hill's Prescription Diet Canine Metabolic Weight
                      Management - Chicken
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
              </div>
            </div>

            <div class="arrow right">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                <path d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z" />
              </svg>
            </div>
          </div>
        </div>
      </section>

      <div class="product-banner">
        <img src="assets/images/landing-page/productsBanner.png" alt="Product Banner">
      </div>
      <div class="products_display" id="product_display">
            <div class="product-card">
              <div class="product-image">
                <a href="pages/products/item/index.html?id=1">
                  <img
                    src="images/Hill'sPrescriptionDietCanineDigestiveCare1.jpg"
                    alt="Hill's Prescription Diet Canine Metabolic"
                  />
                </a>
                <button class="add-to-basket-button" aria-label="Add to basket">
                  <i class="fas fa-shopping-cart" aria-hidden="true"></i>
                </button>
              </div>

              <a
                href="pages/products/item/index.html?id=1"
                class="product-details-link"
              >
                <div class="product-details">
                  <h3 class="product-title">
                    Hill's Prescription Diet Canine Metabolic Weight Management
                    - Chicken
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
            </div>
          </div>
      <!-- guide or tanong section -->
      <section class="question-section" aria-labelledby="about-heading">
        <h2 id="about-heading" class="sub-section">Welcome to grizzly paws!</h2>

        <details class="section">
          <summary class="section-header">
            Grizzly Paws - The leading online pet shop for pet food &
            accessories
            <span class="chevron" aria-hidden="true">
              <svg viewBox="0 0 24 24">
                <polyline points="6 9 12 15 18 9"></polyline>
              </svg>
            </span>
          </summary>
          <div class="section-content hidden">
            Launched in 2025, Grizzly Paws is a proudly local online pet shop
            built to make pet care easy, affordable, and accessible across the
            Philippines. We aim to deliver trusted brands, essentials, and the
            latest pet trends straight to your doorstep.
          </div>
        </details>

        <details class="section" open>
          <summary class="section-header">
            Choose from the most popular dog food and cat food brands
            <span class="chevron" aria-hidden="true">
              <svg viewBox="0 0 24 24">
                <polyline points="6 9 12 15 18 9"></polyline>
              </svg>
            </span>
          </summary>
          <div class="section-content">
            <ul>
              <li>
                <span class="brand-name">Royal Canin:</span> Tailored nutrition
                by breed, size, and health.
              </li>
              <li>
                <span class="brand-name">Vitality:</span> Filipino-favorite pet
                food for complete everyday nourishment.
              </li>
              <li>
                <span class="brand-name">Pedigree & Whiskas:</span> Trusted
                household names for happy mealtimes.
              </li>
              <li>
                <span class="brand-name">Orijen:</span> High-protein, grain-free
                options for energetic pets.
              </li>
              <li>
                <span class="brand-name">SmartHeart:</span> Great taste and
                balanced nutrients at budget-friendly prices.
              </li>
            </ul>
          </div>
        </details>

        <details class="section">
          <summary class="section-header">
            Find the perfect accessories for your pet
            <span class="chevron" aria-hidden="true">
              <svg viewBox="0 0 24 24">
                <polyline points="6 9 12 15 18 9"></polyline>
              </svg>
            </span>
          </summary>
          <div class="section-content">
            <ul>
              <li>
                <span class="pet-accesories">Dogs:</span> Explore durable
                leashes, stylish collars, comfy beds, and chew-proof toys.
              </li>
              <li>
                <span class="pet-accesories">Cats:</span> Shop litter boxes, cat
                trees, cozy beds, and interactive toys that keep your kitty
                playful.
              </li>
              <li>
                <span class="pet-accesories">Aquatic & Small Pets:</span> Browse
                tanks, feeders, and enrichment gear designed for their safety
                and comfort.
              </li>
            </ul>
          </div>
        </details>

        <details class="section">
          <summary class="section-header">
            Are you looking for general pet care advice?
            <span class="chevron" aria-hidden="true">
              <svg viewBox="0 0 24 24">
                <polyline points="6 9 12 15 18 9"></polyline>
              </svg>
            </span>
          </summary>
          <div class="section-content hidden">
            Check out our quick guides and beginner-friendly blogs! We share
            tips on feeding, grooming, training, and health care—all written
            with Filipino pet parents in mind. Follow us on socials for updates,
            promos, and cute pet content!
          </div>
        </details>

        <details class="section">
          <summary class="section-header">
            What benefits does grizzly paws offer its customers?
            <span class="chevron" aria-hidden="true">
              <svg viewBox="0 0 24 24">
                <polyline points="6 9 12 15 18 9"></polyline>
              </svg>
            </span>
          </summary>
          <div class="section-content">
            <ul>
              <li>Fast nationwide delivery</li>
              <li>Budget-friendly bundles & promos</li>
              <li>Trusted brands, fresh stocks</li>
              <li>Local support team that cares</li>
              <li>Easy returns and secured checkout</li>
            </ul>
          </div>
        </details>
      </section>
    </main>
    <?php include 'includes/footer.php'; ?>
    <?php include 'includes/basket-modal.php'; ?>
    <?php include 'includes/chat.php'; ?>
    
    <script src="dummy-data/products.js"></script>
    <script src="dummy-data/category.js"></script>
    <script src="assets/js/carousel.js"></script>
    <script src="assets/js/dynamic-display.js"></script>
    <script src="assets/js/more-products.js"></script>
    <script src="assets/js/actions.js"></script>
    <script src="assets/js/top-products.js"></script>

  </body>
</html>
