<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grizzly Paws Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <style>
        .content {
            padding: 30px;
            max-width: 2000px;
            margin: 0 auto;
            max-height: calc(100vh - 80px); /* Adjust based on your header height */
            overflow-y: auto;
        }

        /* ===== Admin Profile Section ===== */
        .admin-profile-container {
        padding: 20px;
        max-width: 1250px;
        margin: 0 auto;
        }

        .admin-profile-card {
        background: white;
        border-radius: 15px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        }

        .admin-profile-header {
        background: #8baa6d;
        padding: 15px;
        color: white;
      
        }

        .admin-profile-header h2 {
        font-size: 28px;
        margin: 0;
        font-weight: 600;
        }

        /* Admin Profile Content Layout - Side by Side */
        .admin-profile-content {
        padding: 40px;
        display: grid;
        /* grid-template-columns: 180px 1fr; */
        gap: 40px;
        align-items: start;
        }

        /* Admin Photo Section - Left Side */
        .admin-photo-section {
        display: flex;
        justify-content: center;
        }

        .admin-photo-wrapper {
        position: relative;
        width: 150px;
        height: 150px;
        border-radius: 50%;
        overflow: hidden;
        background-color: #f0f0f0;
        }

        .admin-photo {
        width: 100%;
        height: 100%;
        object-fit: cover;
        }

        /* Admin Info Section - Right Side */
        .admin-info-section {
        width: 100%;
        }

        .admin-info-group {
        margin-bottom: 20px;
        }

        .admin-info-group label {
        display: block;
        font-size: 14px;
        font-weight: 600;
        color: #555;
        margin-bottom: 8px;
        }

        .admin-info-display {
        width: 100%;
        padding: 12px 15px;
        border: 2px solid #e0e0e0;
        border-radius: 8px;
        font-size: 15px;
        background-color: #f9f9f9;
        color: #333;
        }

        .admin-info-input {
        width: 100%;
        padding: 12px 15px;
        border: 2px solid #e0e0e0;
        border-radius: 8px;
        font-size: 15px;
        background-color: white;
        color: #333;
        }

        .admin-info-input[readonly] {
        background-color: #f9f9f9;
        }

        .admin-photo-input {
        margin-top: 10px;
        }

        /* Admin Profile Actions */
        .admin-profile-actions {
        display: flex;
        gap: 15px;
        justify-content: center;
        margin-top: 30px;
        padding-bottom: 20px;
        }

        .admin-btn {
        padding: 12px 30px;
        border: none;
        border-radius: 25px;
        font-size: 15px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s;
        display: inline-flex;
        align-items: center;
        gap: 8px;
        }

        .admin-btn-edit {
        background-color: #8baa6d;
        color: white;
        }

        .admin-btn-edit:hover {
        background-color: #7a9a5c;
        transform: translateY(-2px);
        }

        .admin-btn-save {
        background-color: #8baa6d;
        color: white;
        }

        .admin-btn-save:hover {
        background-color: #7a9a5c;
        transform: translateY(-2px);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
        .admin-profile-content {
            padding: 30px 20px;
            grid-template-columns: 1fr;
            gap: 30px;
        }

        .admin-profile-header {
            padding: 20px;
        }

        .admin-profile-header h2 {
            font-size: 24px;
        }

        .admin-profile-actions {
            flex-direction: column;
        }

        .admin-btn {
            width: 100%;
            justify-content: center;
        }
        }

        @media (max-width: 480px) {
        .admin-profile-container {
            padding: 10px;
        }

        .admin-profile-content {
            padding: 20px 15px;
            grid-template-columns: 1fr;
            gap: 20px;
        }

        .admin-photo-wrapper {
            width: 120px;
            height: 120px;
        }
}

    </style>
</head>
<body>
    <!-- Header -->
     <?php include '../includes/header.php'; ?>

    <!-- Main Container -->
    <div class="main-container">
        <!-- Sidebar -->
       <?php include '../includes/sidebar.php'; ?>

        <!-- Content Area -->
        <div class="content">
           
            <!-- Admin Profile Section -->
<!-- Admin Profile Section -->
<!-- Admin Profile Container -->
<div class="admin-profile-container">
  <div class="admin-profile-card">
    <div class="admin-profile-header">
      <h2>Admin Profile</h2>
    </div>

    <div class="admin-profile-content">
      <div class="admin-photo-section">
        <div class="admin-photo-wrapper">
          <img src="images/default-avatar.png" alt="Admin Profile" class="admin-photo" id="admin-photo" />
        </div>
<input type="file" id="photo-input" class="admin-photo-input" accept="image/*" style="display: none;" disabled />      </div>

      <div class="admin-info-section">
        <div class="admin-info-group">
          <label>First Name</label>
          <input type="text" class="admin-info-input" id="first-name" value="Admin First Name" readonly />
        </div>

        <div class="admin-info-group">
          <label>Middle Name</label>
          <input type="text" class="admin-info-input" id="middle-name" value="Admin Middle Name" readonly />
        </div>

        <div class="admin-info-group">
          <label>Last Name</label>
          <input type="text" class="admin-info-input" id="last-name" value="Admin Last Name" readonly />
        </div>

        <div class="admin-info-group">
          <label>Role</label>
          <input type="text" class="admin-info-input" id="role" value="Administrator" readonly />
        </div>

        <div class="admin-info-group">
          <label>Email</label>
          <input type="email" class="admin-info-input" id="email" value="admin@gmail.com" readonly />
        </div>
      </div>
    </div>

    <div class="admin-profile-actions">
      <button class="admin-btn admin-btn-edit" id="edit-btn">
        <i class="fas fa-edit"></i> Edit Profile
      </button>
      <button class="admin-btn admin-btn-save" id="save-btn" style="display: none;">
        <i class="fas fa-save"></i> Save Changes
      </button>
    </div>
  </div>
</div>


            
            <div>
                <div class="footer">
                    Copyright © 2025 GrizzlyPaws. All rights reserved
                </div>
            </div>
        </div>
    </div>

    <script>
    const editBtn = document.getElementById('edit-btn');
    const saveBtn = document.getElementById('save-btn');
    const inputs = document.querySelectorAll('.admin-info-input');

    editBtn.addEventListener('click', () => {
        // Use confirm() to ask the user for confirmation
        const confirmation = confirm("Are you sure you want to enter Edit Mode?");

        if (confirmation) {
            // If the user clicks OK (confirmation is true), proceed with edit mode:
            inputs.forEach(input => input.removeAttribute('readonly'));
            editBtn.style.display = 'none';
            saveBtn.style.display = 'inline-flex';
        } else {
            // If the user clicks Cancel (confirmation is false), do nothing.
            alert("Edit mode canceled.");
        }
    });

    saveBtn.addEventListener('click', () => {
        inputs.forEach(input => input.setAttribute('readonly', true));
        editBtn.style.display = 'inline-flex';
        saveBtn.style.display = 'none';
        
        // Here you would typically send the data to the server to save
        alert('Profile saved! (Note: In a real application, this would update the backend.)');
    });
</script>

</body>
</html>