// JavaScript for the image carousel
document.addEventListener('DOMContentLoaded', function() {
    // Get all images in the hero section
    const slides = document.querySelectorAll('.hero-image img');
    const indicators = document.querySelectorAll('.carousel-indicator');
    let currentSlide = 0;
    const slideCount = slides.length;
    
    // Function to show a specific slide
    function showSlide(index) {
        // Hide all slides
        slides.forEach(slide => {
            slide.classList.remove('active');
        });
        
        // Remove active class from all indicators
        indicators.forEach(dot => {
            dot.classList.remove('active');
        });
        
        // Show the current slide and activate its indicator
        slides[index].classList.add('active');
        indicators[index].classList.add('active');
        
        // Update current slide index
        currentSlide = index;
    }
    
    // Function to show the next slide
    function nextSlide() {
        const next = (currentSlide + 1) % slideCount;
        showSlide(next);
    }
    
    // Add click event to indicators
    indicators.forEach((indicator, index) => {
        indicator.addEventListener('click', () => {
            showSlide(index);
            // Reset the timer when manually changing slides
            clearInterval(slideInterval);
            slideInterval = setInterval(nextSlide, 5000);
        });
    });
    
    // Start automatic slideshow
    let slideInterval = setInterval(nextSlide, 5000);
    
    // Pause slideshow when hovering over the hero container
    const heroContainer = document.querySelector('.hero-container');
    heroContainer.addEventListener('mouseenter', () => {
        clearInterval(slideInterval);
    });
    
    // Resume slideshow when mouse leaves
    heroContainer.addEventListener('mouseleave', () => {
        slideInterval = setInterval(nextSlide, 5000);
    });
});

// JavaScript for the product card 
document.addEventListener('DOMContentLoaded', function() {
    // Product slider functionality
    const productSliders = document.querySelectorAll('.product-slider');
    
    productSliders.forEach(slider => {
      const productGrid = slider.querySelector('.products-grid');
      const leftArrow = slider.querySelector('.arrow.left');
      const rightArrow = slider.querySelector('.arrow.right');
      
      if (!productGrid || !leftArrow || !rightArrow) return;
      
      // Calculate scroll amount based on visible area and card width
      const calculateScrollAmount = () => {
        const cardWidth = productGrid.querySelector('.product-card')?.offsetWidth || 300;
        const gap = 20; // Match this to your CSS gap
        return cardWidth + gap;
      };
      
      // Function to scroll left - show complete cards
      leftArrow.addEventListener('click', () => {
        const scrollAmount = calculateScrollAmount();
        // Calculate the current position to find nearest card boundary
        const currentPos = productGrid.scrollLeft;
        const mod = currentPos % scrollAmount;
        
        // If we're exactly at a card boundary, go back one card
        // Otherwise, go back to the previous card boundary
        const targetPos = mod === 0 
          ? currentPos - scrollAmount 
          : currentPos - mod - (mod === 0 ? 0 : scrollAmount);
        
        productGrid.scrollTo({
          left: Math.max(0, targetPos),
          behavior: 'smooth'
        });
      });
      
      // Function to scroll right - show complete cards
      rightArrow.addEventListener('click', () => {
        const scrollAmount = calculateScrollAmount();
        // Calculate next card boundary
        const currentPos = productGrid.scrollLeft;
        const mod = currentPos % scrollAmount;
        const targetPos = currentPos + scrollAmount - mod + (mod === 0 ? scrollAmount : 0);
        
        productGrid.scrollTo({
          left: Math.min(productGrid.scrollWidth - productGrid.clientWidth, targetPos),
          behavior: 'smooth'
        });
      });
      
      // Check scroll position to disable arrows when at edges
      const updateArrowState = () => {
        // Check if at start (left edge)
        if (productGrid.scrollLeft <= 5) {
          leftArrow.classList.add('disabled');
        } else {
          leftArrow.classList.remove('disabled');
        }
        
        // Check if at end (right edge)
        if (productGrid.scrollLeft + productGrid.clientWidth >= productGrid.scrollWidth - 5) {
          rightArrow.classList.add('disabled');
        } else {
          rightArrow.classList.remove('disabled');
        }
      };
      
      productGrid.addEventListener('scroll', updateArrowState);
      
      // Update arrow states when window resizes
      window.addEventListener('resize', () => {
        updateArrowState();
      });
      
      // Initialize arrow states
      updateArrowState();
      
      // Add touch swiping capability for mobile
      let touchStartX = 0;
      let touchEndX = 0;
      
      productGrid.addEventListener('touchstart', (e) => {
        touchStartX = e.changedTouches[0].screenX;
      }, { passive: true });
      
      productGrid.addEventListener('touchend', (e) => {
        touchEndX = e.changedTouches[0].screenX;
        handleSwipe();
      }, { passive: true });
      
      const handleSwipe = () => {
        const threshold = 50; // Minimum swipe distance
        if (touchStartX - touchEndX > threshold) {
          // Swipe left, go right
          rightArrow.click();
        } else if (touchEndX - touchStartX > threshold) {
          // Swipe right, go left
          leftArrow.click();
        }
      };
    });
    
    // Section toggling functionality
    const sectionHeaders = document.querySelectorAll('.section-header');
    
    sectionHeaders.forEach(header => {
      header.addEventListener('click', () => {
        const section = header.closest('.section');
        const isActive = section.classList.contains('active');
        
        // Close all sections
        document.querySelectorAll('.section').forEach(sec => sec.classList.remove('active'));
        
        // Toggle current section
        if (!isActive) {
          section.classList.add('active');
          
          // If this section has a product slider, update arrow states
          const productGrid = section.querySelector('.products-grid');
          if (productGrid) {
            productGrid.dispatchEvent(new Event('scroll'));
            
            // Allow time for CSS transitions to finish, then update arrow states again
            setTimeout(() => {
              productGrid.dispatchEvent(new Event('scroll'));
            }, 300);
          }
        }
      });
    });
  });

 

 // js for hamburger menu
 document.addEventListener('DOMContentLoaded', function() {
    // Get the mobile menu button and navigation
    const mobileMenuButton = document.querySelector('.mobile-menu-button');
    const nav = document.querySelector('nav');
    
    // Toggle navigation when clicking the hamburger button
    mobileMenuButton.addEventListener('click', function() {
      nav.classList.toggle('active');
    });
  });
