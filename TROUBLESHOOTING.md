# TROUBLESHOOTING GUIDE - Order Management System

## Issue: "Failed to load orders" in Admin Panel

### Step 1: Check if Transactions Exist in Database

Visit this URL in your browser:
```
http://localhost/grizzlypaws-backend/admin/api/test_transactions.php
```

**What to look for:**
- ✅ Should show a list of transactions
- ✅ Check "Order Status" column - should NOT be 'cart' (should be 'pending', 'preparing', etc.)
- ❌ If "No transactions found" → User checkout didn't work

### Step 2: Test API Directly

Visit this URL:
```
http://localhost/grizzlypaws-backend/admin/api/test_api.php
```

**What to look for:**
- ✅ Should show JSON response with orders
- ✅ "success": true
- ❌ If error → API has issues

### Step 3: Run Database Migration

Visit this URL to add the updated_at column:
```
http://localhost/grizzlypaws-backend/admin/api/migrate_updated_at.php
```

**Expected response:**
```json
{
  "success": true,
  "message": "updated_at column added successfully"
}
```

### Step 4: Check Browser Console

1. Open admin manage_order page
2. Press F12 to open Developer Tools
3. Go to Console tab
4. Look for errors

**Common errors and fixes:**

#### Error: "404 Not Found" for get_orders.php
**Solution:** The file wasn't created. It should now exist at:
`grizzlypaws-backend/admin/api/get_orders.php`

#### Error: CORS or Network Error
**Solution:** Make sure XAMPP Apache is running

#### Error: "Column 'updated_at' not found"
**Solution:** Run migration script (Step 3 above)

### Step 5: Verify User Checkout Created Order

After user checks out, verify the order was created:

1. Go to: `http://localhost/grizzlypaws-backend/admin/api/test_transactions.php`
2. Check the most recent transaction
3. Verify:
   - ✅ `order_status` = 'pending' (NOT 'cart')
   - ✅ `customer_id` matches logged-in user
   - ✅ `total_amount` > 0

### Step 6: Common Issues and Solutions

#### Issue: Orders exist but not showing in admin
**Possible causes:**
1. order_status is 'cart' → Orders with status 'cart' are hidden from admin
2. JavaScript not loading → Check browser console
3. API path wrong → Should be `../api/get_orders.php` from manage_order.php

**Solution:**
```sql
-- Check order statuses in database
SELECT id, order_number, order_status FROM transactions;

-- If orders are 'cart', update them to 'pending'
UPDATE transactions SET order_status = 'pending' WHERE order_status = 'cart';
```

#### Issue: User can checkout but stock doesn't decrease
**Cause:** Order status is 'cart'

**Solution:** Update basket.js (already done - order_status should be 'pending')

#### Issue: Network error when loading orders
**Cause:** Apache not running or wrong path

**Solution:**
1. Check XAMPP Apache is running
2. Verify file exists: `admin/api/get_orders.php`
3. Check browser console for exact URL being called

### Step 7: Manual Database Check

Run this SQL in phpMyAdmin:

```sql
-- Check all transactions
SELECT * FROM transactions ORDER BY created_at DESC LIMIT 5;

-- Check transaction items
SELECT * FROM transaction_items ORDER BY id DESC LIMIT 5;

-- Check transactions NOT in cart status (these should appear in admin)
SELECT COUNT(*) as total_visible_orders 
FROM transactions 
WHERE order_status != 'cart';
```

**Expected:**
- At least 1 row where `order_status != 'cart'`

### Step 8: Check File Permissions

Make sure these files exist and are readable:
```
✅ admin/api/get_orders.php
✅ admin/api/update_order.php
✅ admin/assets/js/manage_order.js
✅ admin/api/db.php
```

### Quick Fix Commands

If transactions exist but all are 'cart' status:
```sql
UPDATE transactions 
SET order_status = 'pending' 
WHERE order_status = 'cart';
```

If updated_at column is missing:
```
Visit: http://localhost/grizzlypaws-backend/admin/api/migrate_updated_at.php
```

### Debug Checklist

- [ ] XAMPP Apache is running
- [ ] Visited test_transactions.php - shows orders
- [ ] Visited test_api.php - shows JSON with success=true
- [ ] Visited migrate_updated_at.php - column added
- [ ] Browser console shows no errors
- [ ] At least 1 order with order_status != 'cart'
- [ ] Files exist in correct locations

### Still Not Working?

**Check Browser Console Logs:**

With the updated manage_order.js, you should see:
```
Fetching orders from: ../api/get_orders.php?limit=50&offset=0
Response status: 200
API Response: {success: true, data: [...], ...}
Found X orders
```

**If you see:**
- "Response status: 404" → File doesn't exist
- "Response status: 500" → PHP error (check PHP error log)
- No console logs → JavaScript not loading

### Contact Points

After checking all above:
1. Share the output of test_transactions.php
2. Share the browser console logs
3. Share any PHP errors from XAMPP error log
