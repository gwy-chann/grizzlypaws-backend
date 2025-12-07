document.addEventListener('DOMContentLoaded', function() {
  // Update footer links
  const faqLink = document.querySelector('.footer-links a[href="#"]');
  const contactLink = document.querySelector('.footer-links a[href="https://mail.google.com/mail/u/0/#inbox"]');
  
  // Function to disable body scroll
  function disableBodyScroll() {
    document.body.style.overflow = 'hidden';
  }
  
  if (faqLink && faqLink.textContent.trim() === 'FAQS') {
    faqLink.setAttribute('href', '#');
    faqLink.addEventListener('click', function(e) {
      e.preventDefault();
      document.getElementById('faqModal').classList.add('active');
      disableBodyScroll();
    });
  }
  
  if (contactLink) {
    contactLink.setAttribute('href', '#');
    contactLink.addEventListener('click', function(e) {
      e.preventDefault();
      document.getElementById('contactModal').classList.add('active');
      disableBodyScroll();
    });
  }
});

// Footer Modals JavaScript
document.addEventListener('DOMContentLoaded', function() {
  // FAQ Modal Elements
  const faqModal = document.getElementById('faqModal');
  const faqModalClose = document.getElementById('faqModalClose');
  const faqQuestions = document.querySelectorAll('.faq-question');

  // Contact Modal Elements
  const contactModal = document.getElementById('contactModal');
  const contactModalClose = document.getElementById('contactModalClose');
  const contactCancel = document.getElementById('contactCancel');
  const contactForm = document.getElementById('contactForm');

  // Function to disable body scroll
  function disableBodyScroll() {
    document.body.style.overflow = 'hidden';
  }

  // Function to enable body scroll
  function enableBodyScroll() {
    document.body.style.overflow = '';
  }

  // FAQ Accordion functionality
  faqQuestions.forEach(question => {
    question.addEventListener('click', function() {
      const isActive = this.classList.contains('active');
      const answer = this.nextElementSibling;
      const icon = this.querySelector('.faq-icon');

      // Close all other questions
      faqQuestions.forEach(q => {
        q.classList.remove('active');
        q.querySelector('.faq-icon').textContent = '+';
        q.nextElementSibling.style.display = 'none';
      });

      // Toggle current question
      if (!isActive) {
        this.classList.add('active');
        icon.textContent = '−';
        answer.style.display = 'block';
      }
    });
  });

  // Close FAQ Modal
  faqModalClose.addEventListener('click', function() {
    faqModal.classList.remove('active');
    enableBodyScroll();
  });

  // Close Contact Modal
  contactModalClose.addEventListener('click', function() {
    contactModal.classList.remove('active');
    contactForm.reset();
    enableBodyScroll();
  });

  contactCancel.addEventListener('click', function() {
    contactModal.classList.remove('active');
    contactForm.reset();
    enableBodyScroll();
  });

  // Handle Contact Form Submission
  contactForm.addEventListener('submit', function(e) {
    e.preventDefault();
    
    const subject = document.getElementById('contactSubject').value;
    const concern = document.getElementById('contactConcern').value;

    // Here you can add your form submission logic
    // For now, we'll just show an alert
    alert('Thank you for contacting us!\n\nSubject: ' + subject + '\n\nWe will get back to you soon!');
    
    contactModal.classList.remove('active');
    contactForm.reset();
    enableBodyScroll();
  });

  // Close modals when clicking outside
  faqModal.addEventListener('click', function(e) {
    if (e.target === faqModal) {
      faqModal.classList.remove('active');
      enableBodyScroll();
    }
  });

  contactModal.addEventListener('click', function(e) {
    if (e.target === contactModal) {
      contactModal.classList.remove('active');
      contactForm.reset();
      enableBodyScroll();
    }
  });

  // Prevent closing when clicking inside modal content
  document.querySelector('.faq-modal-content').addEventListener('click', function(e) {
    e.stopPropagation();
  });

  document.querySelector('.contact-modal-content').addEventListener('click', function(e) {
    e.stopPropagation();
  });

  // Close modals with Escape key
  document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape') {
      if (faqModal.classList.contains('active')) {
        faqModal.classList.remove('active');
        enableBodyScroll();
      }
      if (contactModal.classList.contains('active')) {
        contactModal.classList.remove('active');
        contactForm.reset();
        enableBodyScroll();
      }
    }
  });
});