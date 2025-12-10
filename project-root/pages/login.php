<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gizzly Paws | Log in</title>
    <link rel="icon" type="image/x-icon" href="images/favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <link rel="stylesheet" href="../assets/css/login.css" />
  </head>
  <body>
    <div class="container">
      <div class="welcome-container">
        <img
          src="../assets/images/login.png"
          alt="Grizzly Paws Logo"
          class="welcome-image"
        />
        <div class="welcome-text">
          <h2>Furry, Feathered, or Finned – We've Got You Covered!</h2>
          <p>
            Your one-stop destination for all pet needs. Login to access
            exclusive deals and manage your pet care.
          </p>
        </div>
      </div>

      <div class="login-container">
        <div class="login-header">
          <h2>LOG IN</h2>
          <img
          src="/images/welcome.png"
          alt="Grizzly Paws Logo"
          class="welcome-image-phone"
        />
          <p>Welcome back! Please login to your account.</p>
        </div>

        <form id="login-form" novalidate>
          <div class="form-group">
            <label for="email">Email</label>
            <input
              type="email"
              id="email"
              name="email"
              placeholder="Enter your email"
              required
            />
            <small class="error-message" id="email-error"></small>
          </div>

          <div class="form-group">
            <label for="password">Password</label>
            <input
              type="password"
              id="password"
              name="password"
              placeholder="Enter your password"
              required
            />
            <small class="error-message" id="password-error"></small>
          </div>

          <div class="forgot-password">
            <a id="forgot-password-link">Forgot Password?</a>
          </div>

          <div id="login-error" class="error-message login-error"></div>

          <button type="submit" class="login-btn">LOG IN</button>
        </form>

        <div class="continue-without-account">
          <p><a href="/grizzlypaws-backend/project-root/index.php" id="continue">Continue without account</a></p>
        </div>
    

        <div class="social-login">
          <div class="social-login-title">
            <span>OR</span>
          </div>

          <div class="social-buttons">
            <div class="social-btn" id="facebook-login">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 1024 1024"
                id="facebook"
              >
                <path
                  fill="#1877f2"
                  d="M1024,512C1024,229.23016,794.76978,0,512,0S0,229.23016,0,512c0,255.554,187.231,467.37012,432,505.77777V660H302V512H432V399.2C432,270.87982,508.43854,200,625.38922,200C681.40765,200,740,210,740,210V336H675.43713C611.83508,336,592,375.46667,592,415.95728V512H734L711.3,660H592v357.77777C836.769,979.37012,1024,767.554,1024,512Z"
                ></path>
                <path
                  fill="#fff"
                  d="M711.3,660,734,512H592V415.95728C592,375.46667,611.83508,336,675.43713,336H740V210s-58.59235-10-114.61078-10C508.43854,200,432,270.87982,432,399.2V512H302V660H432v357.77777a517.39619,517.39619,0,0,0,160,0V660Z"
                ></path>
              </svg>
              Facebook
            </div>
            <div class="social-btn" id="google-login">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                id="google"
                viewBox="-380.2 274.7 65.7 65.8"
              >
                <circle
                  cx="-347.3"
                  cy="307.6"
                  r="32.9"
                  style="fill: #e0e0e0"
                ></circle>
                <circle
                  cx="-347.3"
                  cy="307.1"
                  r="32.4"
                  style="fill: #fff"
                ></circle>
                <g>
                  <defs>
                    <path
                      id="SVGID_1_"
                      d="M-326.3 303.3h-20.5v8.5h11.8c-1.1 5.4-5.7 8.5-11.8 8.5-7.2 0-13-5.8-13-13s5.8-13 13-13c3.1 0 5.9 1.1 8.1 2.9l6.4-6.4c-3.9-3.4-8.9-5.5-14.5-5.5-12.2 0-22 9.8-22 22s9.8 22 22 22c11 0 21-8 21-22 0-1.3-.2-2.7-.5-4z"
                    ></path>
                  </defs>
                  <clipPath id="SVGID_2_">
                    <use xlink:href="#SVGID_1_" overflow="visible"></use>
                  </clipPath>
                  <path
                    d="M-370.8 320.3v-26l17 13z"
                    style="clip-path: url(#SVGID_2_); fill: #fbbc05"
                  ></path>
                  <defs>
                    <path
                      id="SVGID_3_"
                      d="M-326.3 303.3h-20.5v8.5h11.8c-1.1 5.4-5.7 8.5-11.8 8.5-7.2 0-13-5.8-13-13s5.8-13 13-13c3.1 0 5.9 1.1 8.1 2.9l6.4-6.4c-3.9-3.4-8.9-5.5-14.5-5.5-12.2 0-22 9.8-22 22s9.8 22 22 22c11 0 21-8 21-22 0-1.3-.2-2.7-.5-4z"
                    ></path>
                  </defs>
                  <clipPath id="SVGID_4_">
                    <use xlink:href="#SVGID_3_" overflow="visible"></use>
                  </clipPath>
                  <path
                    d="M-370.8 294.3l17 13 7-6.1 24-3.9v-14h-48z"
                    style="clip-path: url(#SVGID_4_); fill: #ea4335"
                  ></path>
                  <g>
                    <defs>
                      <path
                        id="SVGID_5_"
                        d="M-326.3 303.3h-20.5v8.5h11.8c-1.1 5.4-5.7 8.5-11.8 8.5-7.2 0-13-5.8-13-13s5.8-13 13-13c3.1 0 5.9 1.1 8.1 2.9l6.4-6.4c-3.9-3.4-8.9-5.5-14.5-5.5-12.2 0-22 9.8-22 22s9.8 22 22 22c11 0 21-8 21-22 0-1.3-.2-2.7-.5-4z"
                      ></path>
                    </defs>
                    <clipPath id="SVGID_6_">
                      <use xlink:href="#SVGID_5_" overflow="visible"></use>
                    </clipPath>
                    <path
                      d="M-370.8 320.3l30-23 7.9 1 10.1-15v48h-48z"
                      style="clip-path: url(#SVGID_6_); fill: #34a853"
                    ></path>
                  </g>
                  <g>
                    <defs>
                      <path
                        id="SVGID_7_"
                        d="M-326.3 303.3h-20.5v8.5h11.8c-1.1 5.4-5.7 8.5-11.8 8.5-7.2 0-13-5.8-13-13s5.8-13 13-13c3.1 0 5.9 1.1 8.1 2.9l6.4-6.4c-3.9-3.4-8.9-5.5-14.5-5.5-12.2 0-22 9.8-22 22s9.8 22 22 22c11 0 21-8 21-22 0-1.3-.2-2.7-.5-4z"
                      ></path>
                    </defs>
                    <clipPath id="SVGID_8_">
                      <use xlink:href="#SVGID_7_" overflow="visible"></use>
                    </clipPath>
                    <path
                      d="M-322.8 331.3l-31-24-4-3 35-10z"
                      style="clip-path: url(#SVGID_8_); fill: #4285f4"
                    ></path>
                  </g>
                </g>
              </svg>
              Google
            </div>
          </div>
        </div>

        <div class="signup-link">
          <p>New to Pet Shop? <a href="#" id="signup-link">Sign up</a></p>
        </div>
      </div>
    </div>

    <!-- Forgot Password Modal -->
    <div class="modal" id="forgot-password-modal">
      <div class="modal-content">
        <div class="modal-header">
          <h3>Forgot Password</h3>
          <button class="close-btn" id="close-forgot-modal">&times;</button>
        </div>
        <div class="modal-body">
          <form id="forgot-password-form">
            <div class="form-group">
              <label for="forgot-email">Enter your email</label>
              <input
                type="email"
                id="forgot-email"
                placeholder="Enter your registered email"
                required
              />
              <small class="error-message" id="forgot-email-error"></small>
            </div>
            <div id="security-questions" style="display: none;">
              <div class="form-group">
                <label id="security-question-1-label"></label>
                <input
                  type="text"
                  id="security-answer-1"
                  placeholder="Your answer"
                  required
                />
                <small class="error-message" id="security-answer-1-error"></small>
              </div>
              <div class="form-group">
                <label id="security-question-2-label"></label>
                <input
                  type="text"
                  id="security-answer-2"
                  placeholder="Your answer"
                  required
                />
                <small class="error-message" id="security-answer-2-error"></small>
              </div>
            </div>
            <div id="password-reset" style="display: none;">
              <p style="color: #2ecc71; margin-bottom: 15px; font-weight: 500;">Security questions verified! Set your new password:</p>
              <div class="form-group">
                <label for="new-password">New Password</label>
                <input
                  type="password"
                  id="new-password"
                  placeholder="Enter new password"
                  required
                />
                <small class="error-message" id="new-password-error"></small>
              </div>
              <div class="form-group">
                <label for="confirm-new-password">Confirm Password</label>
                <input
                  type="password"
                  id="confirm-new-password"
                  placeholder="Confirm new password"
                  required
                />
                <small class="error-message" id="confirm-new-password-error"></small>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button class="modal-btn" id="forgot-password-btn">Continue</button>
        </div>
      </div>
    </div>

    <!-- Sign Up Modal -->
    <div class="modal" id="signup-modal">
      <div class="modal-content signup-modal-content">
        <div class="modal-header">
          <h3>Create Account</h3>
          <button class="close-btn" id="close-signup-modal">&times;</button>
        </div>
        <div class="modal-body">
          <form id="signup-form">
            <!-- Personal Information -->
            <div class="form-section">
              <h4>Personal Information</h4>
              <div class="form-group">
                <label for="signup-firstname">First Name *</label>
                <input
                  type="text"
                  id="signup-firstname"
                  placeholder="Enter your first name"
                  required
                />
                <small class="error-message" id="signup-firstname-error"></small>
              </div>
              <div class="form-group">
                <label for="signup-middlename">Middle Name</label>
                <input
                  type="text"
                  id="signup-middlename"
                  placeholder="Enter your middle name (optional)"
                />
              </div>
              <div class="form-group">
                <label for="signup-lastname">Last Name *</label>
                <input
                  type="text"
                  id="signup-lastname"
                  placeholder="Enter your last name"
                  required
                />
                <small class="error-message" id="signup-lastname-error"></small>
              </div>
            </div>

            <!-- Contact Information -->
            <div class="form-section">
              <h4>Contact Information</h4>
              <div class="form-group">
                <label for="signup-email">Email *</label>
                <input
                  type="email"
                  id="signup-email"
                  placeholder="Enter your email"
                  required
                />
                <small class="error-message" id="signup-email-error"></small>
              </div>
              <div class="form-group">
                <label for="signup-mobile">Mobile Number *</label>
                <input
                  type="tel"
                  id="signup-mobile"
                  placeholder="Enter your mobile number"
                  required
                />
                <small class="error-message" id="signup-mobile-error"></small>
              </div>
              <div class="form-group">
                <label for="signup-address">Address *</label>
                <textarea
                  id="signup-address"
                  placeholder="Enter your complete address"
                  rows="3"
                  required
                ></textarea>
                <small class="error-message" id="signup-address-error"></small>
              </div>
            </div>

            <!-- Password -->
            <div class="form-section">
              <h4>Create Password</h4>
              <div class="form-group">
                <label for="signup-password">Password *</label>
                <input
                  type="password"
                  id="signup-password"
                  placeholder="Enter password (min. 6 characters)"
                  required
                />
                <small class="error-message" id="signup-password-error"></small>
              </div>
              <div class="form-group">
                <label for="signup-confirm-password">Confirm Password *</label>
                <input
                  type="password"
                  id="signup-confirm-password"
                  placeholder="Confirm your password"
                  required
                />
                <small class="error-message" id="signup-confirm-password-error"></small>
              </div>
            </div>

            <!-- Security Questions -->
            <div class="form-section">
              <h4>Security Questions</h4>
              <p style="font-size: 13px; color: #666; margin-bottom: 15px;">These questions will help you recover your password if you forget it.</p>
              
              <div class="form-group">
                <label for="security-question-1">Security Question 1 *</label>
                <select id="security-question-1" required>
                  <option value="">Select a question</option>
                  <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
                  <option value="In what city were you born?">In what city were you born?</option>
                  <option value="What is your favorite color?">What is your favorite color?</option>
                  <option value="What was your childhood nickname?">What was your childhood nickname?</option>
                </select>
                <small class="error-message" id="security-question-1-error"></small>
              </div>
              <div class="form-group">
                <label for="security-answer-1-signup">Your Answer *</label>
                <input
                  type="text"
                  id="security-answer-1-signup"
                  placeholder="Enter your answer"
                  required
                />
                <small class="error-message" id="security-answer-1-signup-error"></small>
              </div>

              <div class="form-group">
                <label for="security-question-2">Security Question 2 (Pet-related) *</label>
                <select id="security-question-2" required>
                  <option value="">Select a question</option>
                  <option value="What is your first pet's name?">What is your first pet's name?</option>
                  <option value="What type of pet do you have?">What type of pet do you have?</option>
                  <option value="What is your favorite pet breed?">What is your favorite pet breed?</option>
                  <option value="What is your pet's favorite toy?">What is your pet's favorite toy?</option>
                </select>
                <small class="error-message" id="security-question-2-error"></small>
              </div>
              <div class="form-group">
                <label for="security-answer-2-signup">Your Answer *</label>
                <input
                  type="text"
                  id="security-answer-2-signup"
                  placeholder="Enter your answer"
                  required
                />
                <small class="error-message" id="security-answer-2-signup-error"></small>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button class="modal-btn" id="signup-btn">Create Account</button>
        </div>
      </div>
    </div>

    <script src="../assets/js/login.js"></script>
  </body>
</html>