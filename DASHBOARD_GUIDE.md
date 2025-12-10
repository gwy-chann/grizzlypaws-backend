# Admin Dashboard - Real-Time Data

## Overview
The admin dashboard now displays real-time data from your GrizzlyPaws system.

## Dashboard Features

### 📊 Statistics Cards

1. **New Orders Today**
   - Shows count of orders created today
   - Only counts orders with status != 'cart'

2. **Sales Today**
   - Shows total revenue from today's orders
   - Formatted as currency (₱)

3. **Low Stock Products**
   - Shows products with stock < 10
   - Helps prevent stockouts

### 🔔 Action Items (Dynamic Notifications)

The dashboard automatically shows:

#### 1. New User Signups 🎉
- Shows all users who signed up today
- Displays name, email, and time of signup
- Marked as "New Member" priority

**Example:**
```
✓ New User Signup
  John Doe (john@example.com) signed up 5 minutes ago
  [New Member]
```

#### 2. Low Stock Alerts ⚠️
- Lists products below minimum stock (< 10 units)
- Shows top 3 products needing restock
- High priority alert

#### 3. Preparing Orders 📦
- Shows count of orders in "preparing" status
- Reminds admin to process these orders
- High priority

#### 4. Pending Reviews ⭐
- Shows reviews needing attention
- Medium priority

## Auto-Refresh

- Dashboard refreshes every **30 seconds** automatically
- No manual refresh needed
- Real-time updates

## API Endpoint

**GET** `/admin/api/get_dashboard_stats.php`

Returns:
```json
{
  "success": true,
  "data": {
    "today_orders": 5,
    "today_sales": 12500.00,
    "low_stock_count": 3,
    "new_users_today": 2,
    "new_users": [
      {
        "customer_id": 123,
        "name": "John Doe",
        "email": "john@example.com",
        "created_at": "2025-12-10 14:25:30"
      }
    ],
    "preparing_orders": 4,
    "low_stock_details": [
      {
        "id": 5,
        "name": "Dog Food Premium",
        "stock": 8,
        "unit": "5kg"
      }
    ],
    "pending_reviews": 3
  }
}
```

## Files Created

1. **`admin/api/get_dashboard_stats.php`**
   - Backend API for dashboard data
   
2. **`admin/assets/js/dashboard.js`**
   - Frontend JavaScript for dynamic updates
   
3. **`admin/pages/dashboard.php`** (Updated)
   - Main dashboard page with real-time data

## Time Format

Action items show relative time:
- "just now" - less than 1 minute
- "5 minutes ago"
- "2 hours ago"
- "Dec 10, 2:30 PM" - for older items

## Priority Levels

- **High** (Red) - Urgent actions needed
- **Medium** (Orange) - Should address soon
- **Low** (Blue) - Informational

## Database Requirements

### Required Columns

**customers** table:
- `customer_id`
- `first_name`
- `last_name`
- `email`
- `created_at` (TIMESTAMP)

**transactions** table:
- `created_at`
- `total_amount`
- `order_status`

**product_variations** table:
- `stock`
- `product_id`

**reviews** table (if exists):
- `status`

## Testing

1. **Create a new user** → Should appear in action items immediately
2. **Place an order** → Count updates in "New Orders Today"
3. **Check after 30 seconds** → Auto-refresh happens
4. **Set product stock < 10** → Appears in low stock alerts

## Customization

### Change Refresh Interval

In `dashboard.js`, line 8:
```javascript
// Change 30000 to desired milliseconds
this.refreshInterval = setInterval(() => {
  this.loadDashboardStats();
}, 30000); // 30 seconds
```

### Change Low Stock Threshold

In `get_dashboard_stats.php`, line 23:
```php
// Change 10 to desired threshold
WHERE stock < 10 AND stock > 0
```

### Modify Action Items

In `dashboard.js`, the `updateActionItems` function controls what appears.

## Benefits

✅ **Real-time visibility** into system activities
✅ **New user notifications** - know immediately when someone signs up
✅ **Automated alerts** - don't miss important actions
✅ **No manual refresh** - data updates automatically
✅ **Performance optimized** - efficient queries

## Notes

⚠️ If `created_at` column is missing from `customers` table, new user signups won't show
⚠️ Dashboard only counts orders where `order_status != 'cart'`
⚠️ Auto-refresh stops when you navigate away from the page
⚠️ First load might take 1-2 seconds depending on data volume

## Future Enhancements

Possible additions:
- Chart showing today's sales vs yesterday
- Top selling products today
- Average order value
- Customer activity timeline
- Order status breakdown (pie chart)
