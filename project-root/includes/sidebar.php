<!-- Sidebar Navigation -->
              <div class="sidebar-nav">
                  <!-- Mobile Filter Toggle Button (only shows on small screens) -->
                  <button class="filter-toggle-btn" id="filterToggleBtn">
                      <i class="fas fa-sliders-h"></i>
                      <span>Filters</span>
                      <i class="fas fa-chevron-down toggle-icon"></i>
                  </button>
                  
                  <div class="sidebar-content" id="sidebarContent">
                      <div class="category-header">
                          <h2 class="category-title" id="pet-dyno">Pet</h2>
                      </div>
                      <ul class="category-list" id="categoryList">
                          <!-- render category -->
                      </ul>
                      
                      <!-- Price Filter Section -->
                      <div class="filter-section">
                          <div class="filter-header">
                              <h3 class="filter-title">Price Range</h3>
                          </div>
                          <div class="price-filter-container">
                              <div class="price-inputs">
                                  <div class="price-input-group">
                                      <label for="minPrice">Min</label>
                                      <input type="number" id="minPrice" placeholder="₱0" min="0">
                                  </div>
                                  <span class="price-separator">-</span>
                                  <div class="price-input-group">
                                      <label for="maxPrice">Max</label>
                                      <input type="number" id="maxPrice" placeholder="₱10000" min="0">
                                  </div>
                              </div>
                              <button class="apply-filter-btn" id="applyPriceFilter">Apply</button>
                              <button class="clear-filter-btn" id="clearPriceFilter">Clear</button>
                          </div>
                          
                          <!-- Quick Price Options -->
                          <div class="quick-price-options">
                              <button class="price-option-btn" data-min="0" data-max="500">Under ₱500</button>
                              <button class="price-option-btn" data-min="500" data-max="1000">₱500 - ₱1,000</button>
                              <button class="price-option-btn" data-min="1000" data-max="2500">₱1,000 - ₱2,500</button>
                              <button class="price-option-btn" data-min="2500" data-max="999999">Over ₱2,500</button>
                          </div>
                      </div>
                  </div>
              </div>