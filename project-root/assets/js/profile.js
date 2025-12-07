// Get current logged-in user from sessionStorage
let currentUser = null;
let isEditMode = false;
let originalUserData = null;

// DOM Elements
const loginRequiredContainer = document.getElementById('login-required');
const profileContainer = document.getElementById('profile-container');
const profileForm = document.getElementById('profile-form');
const photoUpload = document.getElementById('photo-upload');
const profilePhoto = document.getElementById('profile-photo');

// Form inputs
const firstNameInput = document.getElementById('first-name');
const middleNameInput = document.getElementById('middle-name');
const lastNameInput = document.getElementById('last-name');
const bioInput = document.getElementById('bio');
const emailInput = document.getElementById('email');
const mobileInput = document.getElementById('mobile');
const addressInput = document.getElementById('address');

// Buttons
const editBtn = document.getElementById('edit-btn');
const saveBtn = document.getElementById('save-btn');
const cancelBtn = document.getElementById('cancel-btn');
const logoutBtn = document.getElementById('logout-btn');

// Default profile photo (user icon)
const DEFAULT_PHOTO = 'data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="%23666"%3E%3Cpath d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm0 14.2c-2.5 0-4.71-1.28-6-3.22.03-1.99 4-3.08 6-3.08 1.99 0 5.97 1.09 6 3.08-1.29 1.94-3.5 3.22-6 3.22z"/%3E%3C/svg%3E';

// ============================
// INITIALIZATION
// ============================

function init() {
    // First, check server-side session
    fetch('../config/check-session.php')
    .then(res => res.json())
    .then(data => {
        if (data.logged_in && data.email) {
            // User is logged in on server
            loadUserProfile(data.email);
        } else {
            // Check client-side sessionStorage as fallback
            const loggedInEmail = sessionStorage.getItem('loggedInUser');
            if (loggedInEmail) {
                loadUserProfile(loggedInEmail);
            } else {
                // User is not logged in
                showLoginRequired();
            }
        }
    })
    .catch(err => {
        console.error('Error checking session:', err);
        // Fallback to sessionStorage
        const loggedInEmail = sessionStorage.getItem('loggedInUser');
        if (loggedInEmail) {
            loadUserProfile(loggedInEmail);
        } else {
            showLoginRequired();
        }
    });
}

function showLoginRequired() {
    loginRequiredContainer.style.display = 'flex';
    profileContainer.style.display = 'none';
}

function loadUserProfile(email) {
    // First, try to get user data from server (database)
    fetch('../config/get-user.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email: email })
    })
    .then(res => res.json())
    .then(data => {
        if (data.status === 'success' && data.user) {
            // User found in database
            currentUser = data.user;
            displayUserData();
            loginRequiredContainer.style.display = 'none';
            profileContainer.style.display = 'block';
        } else {
            // Fallback: try localStorage for local users
            const users = JSON.parse(localStorage.getItem('users') || '{}');
            currentUser = users[email];
            
            if (!currentUser) {
                // User data not found anywhere
                sessionStorage.removeItem('loggedInUser');
                showLoginRequired();
                return;
            }
            
            displayUserData();
            loginRequiredContainer.style.display = 'none';
            profileContainer.style.display = 'block';
        }
    })
    .catch(err => {
        console.error('Error fetching user profile:', err);
        // Fallback to localStorage
        const users = JSON.parse(localStorage.getItem('users') || '{}');
        currentUser = users[email];
        
        if (!currentUser) {
            sessionStorage.removeItem('loggedInUser');
            showLoginRequired();
            return;
        }
        
        displayUserData();
        loginRequiredContainer.style.display = 'none';
        profileContainer.style.display = 'block';
    });
}

function displayUserData() {
    if (!currentUser) return;
    
    // Load profile photo
    if (currentUser.profilePhoto) {
        profilePhoto.src = currentUser.profilePhoto;
    } else {
        profilePhoto.src = DEFAULT_PHOTO;
    }
    
    // Load personal information
    firstNameInput.value = currentUser.firstname || '';
    middleNameInput.value = currentUser.middlename || '';
    lastNameInput.value = currentUser.lastname || '';
    
    // Load bio
    bioInput.value = currentUser.bio || '';
    if (!currentUser.bio) {
        bioInput.placeholder = 'Add bio';
    }
    
    // Load contact information
    emailInput.value = currentUser.email || '';
    mobileInput.value = currentUser.mobile || '';
    
    // Load address
    addressInput.value = currentUser.address || '';
}

// ============================
// PHOTO UPLOAD
// ============================

photoUpload.addEventListener('change', (e) => {
    const file = e.target.files[0];
    
    if (file) {
        // Validate file type
        if (!file.type.startsWith('image/')) {
            alert('Please select a valid image file.');
            return;
        }
        
        // Validate file size (max 5MB)
        if (file.size > 5 * 1024 * 1024) {
            alert('Image size should be less than 5MB.');
            return;
        }
        
        // Read and display the image
        const reader = new FileReader();
        reader.onload = function(event) {
            profilePhoto.src = event.target.result;
            
            // Save to current user
            if (currentUser) {
                currentUser.profilePhoto = event.target.result;
                saveUserToStorage();
                showSuccessMessage('Profile photo updated successfully!');
            }
        };
        reader.readAsDataURL(file);
    }
});

// ============================
// EDIT MODE
// ============================

editBtn.addEventListener('click', () => {
    enableEditMode();
});

cancelBtn.addEventListener('click', () => {
    disableEditMode();
    displayUserData(); // Restore original data
});

function enableEditMode() {
    isEditMode = true;
    
    // Store original data for cancel operation
    originalUserData = { ...currentUser };
    
    // Enable form inputs (except email - primary key)
    firstNameInput.removeAttribute('readonly');
    middleNameInput.removeAttribute('readonly');
    lastNameInput.removeAttribute('readonly');
    bioInput.removeAttribute('readonly');
    mobileInput.removeAttribute('readonly');
    addressInput.removeAttribute('readonly');
    
    // Show/hide buttons
    editBtn.style.display = 'none';
    saveBtn.style.display = 'inline-flex';
    cancelBtn.style.display = 'inline-flex';
}

function disableEditMode() {
    isEditMode = false;
    
    // Disable form inputs
    firstNameInput.setAttribute('readonly', 'readonly');
    middleNameInput.setAttribute('readonly', 'readonly');
    lastNameInput.setAttribute('readonly', 'readonly');
    bioInput.setAttribute('readonly', 'readonly');
    mobileInput.setAttribute('readonly', 'readonly');
    addressInput.setAttribute('readonly', 'readonly');
    
    // Show/hide buttons
    editBtn.style.display = 'inline-flex';
    saveBtn.style.display = 'none';
    cancelBtn.style.display = 'none';
}

// ============================
// SAVE PROFILE
// ============================

profileForm.addEventListener('submit', (e) => {
    e.preventDefault();
    
    if (!isEditMode) return;
    
    // Validate inputs
    const firstname = firstNameInput.value.trim();
    const lastname = lastNameInput.value.trim();
    const mobile = mobileInput.value.trim();
    const address = addressInput.value.trim();
    
    if (!firstname) {
        alert('First name is required.');
        firstNameInput.focus();
        return;
    }
    
    if (!lastname) {
        alert('Last name is required.');
        lastNameInput.focus();
        return;
    }
    
    if (!mobile) {
        alert('Mobile number is required.');
        mobileInput.focus();
        return;
    }
    
    if (!address) {
        alert('Address is required.');
        addressInput.focus();
        return;
    }
    
    // Update current user data
    currentUser.firstname = firstname;
    currentUser.middlename = middleNameInput.value.trim();
    currentUser.lastname = lastname;
    currentUser.bio = bioInput.value.trim();
    currentUser.mobile = mobile;
    currentUser.address = address;
    
    // Save to localStorage
    saveUserToStorage();
    
    // Disable edit mode
    disableEditMode();
    
    showSuccessMessage('Profile updated successfully!');
});

function saveUserToStorage() {
    const users = JSON.parse(localStorage.getItem('users') || '{}');
    users[currentUser.email] = currentUser;
    localStorage.setItem('users', JSON.stringify(users));
}

// ============================
// LOGOUT
// ============================

logoutBtn.addEventListener('click', () => {
    if (confirm('Are you sure you want to log out?')) {
        sessionStorage.removeItem('loggedInUser');
        showSuccessMessage('Logged out successfully!');
        setTimeout(() => {
            window.location.href = 'login.php';
        }, 1000);
    }
});

// ============================
// UTILITY FUNCTIONS
// ============================

function showSuccessMessage(message) {
    const successMessage = document.createElement('div');
    successMessage.style.cssText = `
        position: fixed;
        top: 20px;
        left: 50%;
        transform: translateX(-50%);
        background-color: #2ecc71;
        color: white;
        padding: 15px 30px;
        border-radius: 5px;
        box-shadow: 0 3px 10px rgba(0,0,0,0.2);
        z-index: 9999;
        font-weight: 500;
        animation: slideDown 0.3s ease-out;
    `;
    successMessage.textContent = message;
    document.body.appendChild(successMessage);
    
    setTimeout(() => {
        successMessage.remove();
    }, 3000);
}

// ============================
// RUN ON PAGE LOAD
// ============================

init();