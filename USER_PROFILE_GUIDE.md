# User Profile Edit Feature

## Overview
Users can now edit their profile information, and all changes are saved directly to the `customers` table in the database.

## Features Implemented

### ✅ Profile Viewing
- Loads user data from `customers` table
- Displays personal information, contact details, and address
- Shows default profile photo (user icon)

### ✅ Profile Editing
- Click "Edit Profile" button to enable edit mode
- Editable fields:
  - First Name
  - Middle Name  
  - Last Name
  - Mobile Number
  - Address

- Read-only fields:
  - Email (cannot be changed)
  - Bio (not stored in database)

### ✅ Profile Saving
- Validates required fields
- Saves changes to `customers` table
- Email duplication check
- Success/error notifications

## Files Created/Modified

### Created Files

**`project-root/api/customer_profile.php`** - API for profile operations
- **GET** - Fetch customer profile by customer_id
- **POST/PUT** - Update customer profile
- Email duplication validation
- Error handling and validation

### Modified Files

**`project-root/assets/js/profile.js`**
- Updated to use new `customer_profile.php` API
- Changed from localStorage to database storage
- Uses `customer_id` from sessionStorage
- Real-time database updates

## Database Structure

### Customers Table
```sql
customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    middle_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    mobile_number VARCHAR(20),
    address TEXT
)
```

## API Endpoints

### Get Customer Profile
```http
GET /project-root/api/customer_profile.php?customer_id=123

Response:
{
  "success": true,
  "data": {
    "customer_id": 123,
    "first_name": "John",
    "middle_name": "M",
    "last_name": "Doe",
    "email": "john@example.com",
    "mobile_number": "09171234567",
    "address": "123 Main St, City"
  }
}
```

### Update Customer Profile
```http
POST /project-root/api/customer_profile.php
Content-Type: application/json

{
  "customer_id": 123,
  "first_name": "John",
  "middle_name": "M",
  "last_name": "Doe",
  "email": "john@example.com",
  "mobile_number": "09171234567",
  "address": "456 New Address"
}

Response:
{
  "success": true,
  "message": "Profile updated successfully"
}
```

## User Flow

### 1. View Profile
```
1. User clicks "My Profile" in navbar
2. System checks sessionStorage for user_id
3. Fetches profile from database using customer_id
4. Displays profile in read-only mode
```

### 2. Edit Profile
```
1. User clicks "Edit Profile" button
2. Form fields become editable (except email)
3. "Save Changes" and "Cancel" buttons appear
4. "Edit Profile" button hides
```

### 3. Save Changes
```
1. User modifies information
2. Clicks "Save Changes"
3. System validates:
   ✓ First name required
   ✓ Last name required
   ✓ Mobile number required
   ✓ Address required
   ✓ Email unique (if changed)
4. Sends POST to customer_profile.php
5. Updates customers table
6. Shows success message
7. Returns to read-only mode
```

### 4. Cancel Edit
```
1. User clicks "Cancel"
2. Restores original data
3. Returns to read-only mode
```

## Validation Rules

### Client-Side Validation
- **First Name**: Required, cannot be empty
- **Last Name**: Required, cannot be empty
- **Mobile Number**: Required, cannot be empty
- **Address**: Required, cannot be empty

### Server-Side Validation
- **Email**: Must be unique across all customers
- **Customer ID**: Must exist in database
- **All updates**: Properly sanitized via prepared statements

## Security Features

✅ **SQL Injection Protection** - Prepared statements  
✅ **Email Validation** - Duplicate check  
✅ **Session Validation** - Requires valid user_id  
✅ **Input Sanitization** - trim() on all inputs  
✅ **Error Suppression** - Clean JSON responses only  

## Error Handling

### Common Errors

**No user_id in session:**
```javascript
// Redirects to login page
alert('Session expired. Please log in again.');
window.location.href = 'login.php';
```

**Email already exists:**
```json
{
  "success": false,
  "message": "Email already in use by another account"
}
```

**Customer not found:**
```json
{
  "success": false,
  "message": "Customer not found"
}
```

## Testing

### Test Profile Edit
1. **Login** as a customer
2. **Navigate** to user.php (My Profile)
3. **Click** "Edit Profile"
4. **Modify** name, mobile, or address
5. **Click** "Save Changes"
6. **Verify** success message appears
7. **Check database** - changes reflected in customers table

### Test Email Validation
1. Edit profile
2. Try to change email to one already in use
3. Should show error: "Email already in use"

### Test Required Fields
1. Edit profile
2. Clear first name field
3. Try to save
4. Should show error: "First name is required"

## Session Requirements

User must have in sessionStorage:
- `user_id` - Customer ID from database
- `loggedInUser` - User email (legacy)

Set during login:
```javascript
sessionStorage.setItem('user_id', customer_id);
sessionStorage.setItem('loggedInUser', email);
```

## Future Enhancements

Possible additions:
- Profile photo upload to server
- Bio field in database
- Password change functionality
- Email verification on change
- Profile completion percentage
- Activity log (last updated timestamp)

## Notes

⚠️ **Email is read-only** - Can be changed via API but form keeps it readonly for safety  
⚠️ **Bio field** - Currently not saved to database (no bio column in customers table)  
⚠️ **Profile photo** - Uses default icon (no image storage implemented)  
⚠️ **Session required** - Must have valid user_id in sessionStorage  

## Benefits

✅ **Real-time updates** - Changes immediately reflected in database  
✅ **No localStorage** - All data stored securely in database  
✅ **Validation** - Both client and server-side  
✅ **User-friendly** - Easy edit/cancel workflow  
✅ **Secure** - Protected against SQL injection and duplicates  

---

**Page Location:** `/project-root/pages/user.php`  
**API Location:** `/project-root/api/customer_profile.php`  
**JavaScript:** `/project-root/assets/js/profile.js`
