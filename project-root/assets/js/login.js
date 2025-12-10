// Load users from localStorage
let users = JSON.parse(localStorage.getItem('users') || '{}');

// Admin credentials (hardcoded)
const ADMIN_EMAIL = 'admin@gmail.com';
const ADMIN_PASSWORD = 'test123';

// DOM Elements
const loginForm = document.getElementById('login-form');
const emailInput = document.getElementById('email');
const passwordInput = document.getElementById('password');
const emailError = document.getElementById('email-error');
const passwordError = document.getElementById('password-error');
const loginError = document.getElementById('login-error');

// Signup Modal Elements
const signupLink = document.getElementById('signup-link');
const signupModal = document.getElementById('signup-modal');
const closeSignupModal = document.getElementById('close-signup-modal');
const signupForm = document.getElementById('signup-form');
const signupBtn = document.getElementById('signup-btn');

// Forgot Password Modal Elements
const forgotPasswordLink = document.getElementById('forgot-password-link');
const forgotPasswordModal = document.getElementById('forgot-password-modal');
const closeForgotModal = document.getElementById('close-forgot-modal');
const forgotPasswordForm = document.getElementById('forgot-password-form');
const forgotPasswordBtn = document.getElementById('forgot-password-btn');

// Social Login Buttons
const facebookBtn = document.getElementById('facebook-login');
const googleBtn = document.getElementById('google-login');

// ============================
// UTILITY FUNCTIONS
// ============================

function showSuccessMessage(message) {
    const successMessage = document.createElement('div');
    successMessage.className = 'success-message';
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
    `;
    successMessage.textContent = message;
    document.body.appendChild(successMessage);
    
    setTimeout(() => {
        successMessage.remove();
    }, 3000);
}

function clearFormErrors(formId) {
    const form = document.getElementById(formId);
    const errorMessages = form.querySelectorAll('.error-message');
    errorMessages.forEach(error => error.textContent = '');
}

function validateEmail(email) {
    return /\S+@\S+\.\S+/.test(email);
}

function validateMobile(mobile) {
    return /^[0-9]{10,11}$/.test(mobile.replace(/[-\s]/g, ''));
}

// ============================
// LOGIN FUNCTIONALITY
// ============================

emailInput.addEventListener('input', () => {
    emailError.textContent = '';
    loginError.textContent = '';
});

passwordInput.addEventListener('input', () => {
    passwordError.textContent = '';
    loginError.textContent = '';
});

loginForm.addEventListener('submit', (e) => {
    e.preventDefault();

    emailError.textContent = '';
    passwordError.textContent = '';
    loginError.textContent = '';

    let isValid = true;
    const email = emailInput.value.trim();
    const password = passwordInput.value.trim();

    if (!email) {
        emailError.textContent = 'Email is required';
        isValid = false;
    } else if (!validateEmail(email)) {
        emailError.textContent = 'Please enter a valid email address';
        isValid = false;
    }

    if (!password) {
        passwordError.textContent = 'Password is required';
        isValid = false;
    }

    if (!isValid) return;

    // Admin local fallback
    if (email === ADMIN_EMAIL && password === ADMIN_PASSWORD) {
        showSuccessMessage('Admin login successful! Redirecting...');
        sessionStorage.setItem('loggedInUser', 'admin');
        sessionStorage.setItem('isAdmin', 'true');
        setTimeout(() => {
            window.location.href = '../../../admin/index.php';
        }, 800);
        return;
    }

    // Call server signin endpoint
    fetch('../controller/signin.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email, password })
    })
    .then(res => res.json())
    .then(data => {
        if (data.status === 'success') {
            showSuccessMessage('Login successful! Redirecting...');
            sessionStorage.setItem('loggedInUser', email);
            sessionStorage.setItem("user_id", data.user_id)
            sessionStorage.removeItem('isAdmin');
            setTimeout(() => {
                window.location.href = '../index.php';
            }, 800);
        } else {
            // Server returned error
            loginError.textContent = data.message || 'Invalid email or password. Please try again.';
        }
    })
    .catch(err => {
        console.error('Signin error', err);
        loginError.textContent = 'Unable to reach server. Please try again later.';
    });
});

// ============================
// SIGNUP FUNCTIONALITY
// ============================

signupLink.addEventListener('click', (e) => {
    e.preventDefault();
    signupModal.style.display = 'flex';
    clearFormErrors('signup-form');
});

closeSignupModal.addEventListener('click', () => {
    signupModal.style.display = 'none';
    signupForm.reset();
});

signupBtn.addEventListener('click', (e) => {
    e.preventDefault();

    clearFormErrors('signup-form');

    const firstname = document.getElementById('signup-firstname').value.trim();
    const middlename = document.getElementById('signup-middlename').value.trim();
    const lastname = document.getElementById('signup-lastname').value.trim();
    const email = document.getElementById('signup-email').value.trim();
    const mobile = document.getElementById('signup-mobile').value.trim();
    const address = document.getElementById('signup-address').value.trim();
    const password = document.getElementById('signup-password').value.trim();
    const confirmPassword = document.getElementById('signup-confirm-password').value.trim();
    const securityQ1 = document.getElementById('security-question-1').value;
    const securityA1 = document.getElementById('security-answer-1-signup').value.trim();
    const securityQ2 = document.getElementById('security-question-2').value;
    const securityA2 = document.getElementById('security-answer-2-signup').value.trim();

    let isValid = true;

    if (!firstname) { document.getElementById('signup-firstname-error').textContent = 'First name is required'; isValid = false; }
    if (!lastname) { document.getElementById('signup-lastname-error').textContent = 'Last name is required'; isValid = false; }
    if (!email) { document.getElementById('signup-email-error').textContent = 'Email is required'; isValid = false; }
    else if (!validateEmail(email)) { document.getElementById('signup-email-error').textContent = 'Please enter a valid email'; isValid = false; }
    if (!mobile) { document.getElementById('signup-mobile-error').textContent = 'Mobile number is required'; isValid = false; }
    else if (!validateMobile(mobile)) { document.getElementById('signup-mobile-error').textContent = 'Please enter a valid 10-11 digit mobile number'; isValid = false; }
    if (!address) { document.getElementById('signup-address-error').textContent = 'Address is required'; isValid = false; }
    if (!password) { document.getElementById('signup-password-error').textContent = 'Password is required'; isValid = false; }
    else if (password.length < 6) { document.getElementById('signup-password-error').textContent = 'Password must be at least 6 characters'; isValid = false; }
    if (!confirmPassword) { document.getElementById('signup-confirm-password-error').textContent = 'Please confirm your password'; isValid = false; }
    else if (password !== confirmPassword) { document.getElementById('signup-confirm-password-error').textContent = 'Passwords do not match'; isValid = false; }
    if (!securityQ1) { document.getElementById('security-question-1-error').textContent = 'Please select a security question'; isValid = false; }
    if (!securityA1) { document.getElementById('security-answer-1-signup-error').textContent = 'Answer is required'; isValid = false; }
    if (!securityQ2) { document.getElementById('security-question-2-error').textContent = 'Please select a security question'; isValid = false; }
    if (!securityA2) { document.getElementById('security-answer-2-signup-error').textContent = 'Answer is required'; isValid = false; }
    if (securityQ1 && securityQ2 && securityQ1 === securityQ2) { document.getElementById('security-question-2-error').textContent = 'Please select different security questions'; isValid = false; }

    if (!isValid) return;

    // Send signup to server
    fetch('controller/signup.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
            first_name: firstname,
            middle_name: middlename,
            last_name: lastname,
            email: email,
            mobile_number: mobile,
            address: address,
            password: password,
            security_q1: securityQ1,
            security_a1: securityA1,
            security_q2: securityQ2,
            security_a2: securityA2
        })
    })
    .then(res => res.json())
    .then(data => {
        if (data.status === 'success') {
            showSuccessMessage('Account created successfully!');
            signupModal.style.display = 'none';
            signupForm.reset();
            // Auto-fill login email
            emailInput.value = email;
            emailInput.focus();
            // Optionally redirect or reload
        } else {
            // Show server-side validation errors
            const msg = data.message || 'Signup failed';
            // Attempt to display specific errors if message contains known texts
            if (msg.toLowerCase().includes('email')) {
                document.getElementById('signup-email-error').textContent = msg;
            } else {
                alert(msg);
            }
        }
    })
    .catch(err => {
        console.error('Signup error', err);
        alert('Unable to reach server. Please try again later.');
    });
});

// ============================
// FORGOT PASSWORD FUNCTIONALITY
// ============================

let currentForgotEmail = '';
let forgotPasswordStep = 1; // 1: Enter email, 2: Answer questions, 3: Reset password

forgotPasswordLink.addEventListener('click', () => {
    forgotPasswordModal.style.display = 'flex';
    resetForgotPasswordModal();
});

closeForgotModal.addEventListener('click', () => {
    forgotPasswordModal.style.display = 'none';
    resetForgotPasswordModal();
});

function resetForgotPasswordModal() {
    forgotPasswordStep = 1;
    currentForgotEmail = '';
    document.getElementById('forgot-password-form').reset();
    document.getElementById('forgot-email').parentElement.style.display = 'block';
    document.getElementById('security-questions').style.display = 'none';
    document.getElementById('password-reset').style.display = 'none';
    document.getElementById('forgot-password-btn').textContent = 'Continue';
    clearFormErrors('forgot-password-form');
}

forgotPasswordBtn.addEventListener('click', (e) => {
    e.preventDefault();
    clearFormErrors('forgot-password-form');
    
    // Reload users from localStorage in case they were updated
    users = JSON.parse(localStorage.getItem('users') || '{}');
    
    if (forgotPasswordStep === 1) {
        // Step 1: Validate email
        const email = document.getElementById('forgot-email').value.trim();
        
        if (!email) {
            document.getElementById('forgot-email-error').textContent = 'Email is required';
            return;
        }
        
        if (!validateEmail(email)) {
            document.getElementById('forgot-email-error').textContent = 'Please enter a valid email';
            return;
        }
        
        if (email === ADMIN_EMAIL) {
            document.getElementById('forgot-email-error').textContent = 'Admin password cannot be reset. Contact support.';
            return;
        }
        
        if (!users[email]) {
            document.getElementById('forgot-email-error').textContent = 'Email not found. Please sign up first.';
            return;
        }
        
        // Email is valid and user exists
        currentForgotEmail = email;
        const user = users[email];
        
        // Show security questions
        document.getElementById('forgot-email').parentElement.style.display = 'none';
        document.getElementById('security-questions').style.display = 'block';
        document.getElementById('security-question-1-label').textContent = user.securityQuestions.question1;
        document.getElementById('security-question-2-label').textContent = user.securityQuestions.question2;
        document.getElementById('forgot-password-btn').textContent = 'Verify';
        forgotPasswordStep = 2;
        
    } else if (forgotPasswordStep === 2) {
        // Step 2: Verify security answers
        const answer1 = document.getElementById('security-answer-1').value.trim().toLowerCase();
        const answer2 = document.getElementById('security-answer-2').value.trim().toLowerCase();
        const user = users[currentForgotEmail];
        
        if (!answer1) {
            document.getElementById('security-answer-1-error').textContent = 'Answer is required';
            return;
        }
        
        if (!answer2) {
            document.getElementById('security-answer-2-error').textContent = 'Answer is required';
            return;
        }
        
        if (answer1 !== user.securityQuestions.answer1) {
            document.getElementById('security-answer-1-error').textContent = 'Incorrect answer';
            return;
        }
        
        if (answer2 !== user.securityQuestions.answer2) {
            document.getElementById('security-answer-2-error').textContent = 'Incorrect answer';
            return;
        }
        
        // Answers are correct
        document.getElementById('security-questions').style.display = 'none';
        document.getElementById('password-reset').style.display = 'block';
        document.getElementById('forgot-password-btn').textContent = 'Reset Password';
        forgotPasswordStep = 3;
        
    } else if (forgotPasswordStep === 3) {
        // Step 3: Reset password
        const newPassword = document.getElementById('new-password').value.trim();
        const confirmPassword = document.getElementById('confirm-new-password').value.trim();
        
        if (!newPassword) {
            document.getElementById('new-password-error').textContent = 'Password is required';
            return;
        }
        
        if (newPassword.length < 6) {
            document.getElementById('new-password-error').textContent = 'Password must be at least 6 characters';
            return;
        }
        
        if (!confirmPassword) {
            document.getElementById('confirm-new-password-error').textContent = 'Please confirm your password';
            return;
        }
        
        if (newPassword !== confirmPassword) {
            document.getElementById('confirm-new-password-error').textContent = 'Passwords do not match';
            return;
        }
        
        // Update password
        users[currentForgotEmail].password = newPassword;
        
        // Save to localStorage
        localStorage.setItem('users', JSON.stringify(users));
        
        showSuccessMessage('Password reset successfully! You can now login.');
        forgotPasswordModal.style.display = 'none';
        resetForgotPasswordModal();
        
        // Auto-fill email in login form
        emailInput.value = currentForgotEmail;
        passwordInput.focus();
    }
});

// ============================
// SOCIAL LOGIN (PLACEHOLDER)
// ============================

facebookBtn.addEventListener('click', () => {
    alert('Facebook login is not implemented in this demo.');
});

googleBtn.addEventListener('click', () => {
    alert('Google login is not implemented in this demo.');
});

// ============================
// MODAL CLOSE HANDLERS
// ============================

// Close modal on Escape key
document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') {
        signupModal.style.display = 'none';
        forgotPasswordModal.style.display = 'none';
    }
});

// Close modal if clicked outside
window.addEventListener('click', (e) => {
    if (e.target === signupModal) {
        signupModal.style.display = 'none';
        signupForm.reset();
    }
    if (e.target === forgotPasswordModal) {
        forgotPasswordModal.style.display = 'none';
        resetForgotPasswordModal();
    }
});

// After successful user login
// const returnUrl = sessionStorage.getItem('returnUrl');
// if (returnUrl) {
//     // sessionStorage.removeItem('returnUrl');
//     // window.location.href = returnUrl;
// } else {
//     window.location.href = 'login.html';
// }