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
    </head>
    <body>
        <?php include '../includes/header.php'; ?>

        <main class="container">
        <!-- Login Required Message (shown when user is not logged in) -->
        <div class="login-required-container" id="login-required" style="display: none;">
            <div class="login-required-card">
            <i class="fas fa-lock login-required-icon"></i>
            <h2>Login Required</h2>
            <p>You need to be logged in to view your profile.</p>
            <a href="login.html" class="login-required-btn">Go to Login</a>
            </div>
        </div>

        <!-- Profile Container (shown when user is logged in) -->
        <div class="profile-container" id="profile-container" style="display: none;">
            <div class="profile-card">
            <div class="profile-header">
                <h2>Personal Information</h2>
            </div>

            <div class="profile-content">
                <div class="profile-photo-section">
                <div class="profile-photo-wrapper">
                    <img src="" alt="Profile" class="profile-photo" id="profile-photo" />
                    <div class="profile-photo-overlay">
                    <label for="photo-upload" class="photo-upload-label">
                        <i class="fas fa-camera"></i>
                    </label>
                    <input type="file" id="photo-upload" accept="image/*" style="display: none;" />
                    </div>
                </div>
                </div>

                <form class="profile-form" id="profile-form">
                <!-- Personal Information -->
                <div class="form-row">
                    <div class="form-group">
                    <label for="first-name">First Name</label>
                    <input type="text" id="first-name" class="form-input" readonly />
                    </div>
                    <div class="form-group">
                    <label for="middle-name">Middle Name</label>
                    <input type="text" id="middle-name" class="form-input" readonly />
                    </div>
                    <div class="form-group">
                    <label for="last-name">Last Name</label>
                    <input type="text" id="last-name" class="form-input" readonly />
                    </div>
                </div>

                <!-- Bio Section -->
                <div class="form-group">
                    <label for="bio">Bio</label>
                    <textarea 
                    id="bio" 
                    class="form-input bio-textarea" 
                    rows="4"
                    readonly
                    placeholder="Add bio"
                    ></textarea>
                </div>

                <!-- Contact Information -->
                <h3 class="section-title">Contact Information</h3>
                <div class="form-row">
                    <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" class="form-input" readonly />
                    </div>
                    <div class="form-group">
                    <label for="mobile">Mobile Number</label>
                    <input type="tel" id="mobile" class="form-input" readonly />
                    </div>
                </div>

                <!-- Address -->
                <h3 class="section-title">Address</h3>
                <div class="form-group">
                    <textarea 
                    id="address" 
                    class="form-input address-textarea" 
                    rows="3"
                    readonly
                    ></textarea>
                </div>

                <!-- Action Buttons -->
                <div class="profile-actions">
                    <button type="button" class="btn btn-logout" id="logout-btn">
                    <i class="fas fa-sign-out-alt"></i> Log out
                    </button>
                    <button type="button" class="btn btn-edit" id="edit-btn">
                    <i class="fas fa-edit"></i> Edit Profile
                    </button>
                    <button type="submit" class="btn btn-save" id="save-btn" style="display: none;">
                    <i class="fas fa-save"></i> Save Changes
                    </button>
                    <button type="button" class="btn btn-cancel" id="cancel-btn" style="display: none;">
                    <i class="fas fa-times"></i> Cancel
                    </button>
                </div>
                </form>
            </div>
            </div>
        </div>
        </main>

        <?php include '../includes/footer.php'; ?>
        <!-- <script src="../assets/js/dynamic-display.js"></script> -->
        <script src="../assets/js/profile.js"></script>
        <!-- <script src="../dummy-data/category.js"></script> -->
        <!-- <script src="../dummy-data/products.js"></script> -->
        <!-- <script src="../assets/js/dynamic-display.js"></script> -->
        <!-- <script src="../assets/js/actions.js"></script> -->


    </body>
    </html>