# GrizzlyPaws Checkout & Order Management System

## Overview
This implementation provides a complete checkout and order management system that:
- Allows users to checkout and create orders
- Automatically deducts stock from inventory
- Displays orders in admin panel for management
- Allows admin to update order and payment status
- Shows order history to users with status updates from admin

## Features Implemented

### 1. User Checkout System
- **Location**: `project-root/pages/basket.php`
- **JavaScript**: `project-root/assets/js/basket.js`
- Users can select items from cart and proceed to checkout
- Payment method selection (COD, E-Wallet, Credit/Debit)
- Order status starts as "pending" after checkout
- Automatic cart clearing after successful order

### 2. Stock Management
- **Location**: `project-root/api/transaction.php`
- Automatically checks stock availability before order creation
- Deducts stock from `product_variations` table when order is placed
- Transaction rollback if insufficient stock
- Prevents overselling

### 3. Admin Order Management
- **Location**: `admin/pages/manage_order.php`
- **JavaScript**: `admin/assets/js/manage_order.js`
- **APIs**: 
  - `admin/api/get_orders.php` - Fetch orders
  - `admin/api/update_order.php` - Update order status

#### Admin Features:
- View all customer orders with product details
- Filter by order status (pending, preparing, shipped, delivered, cancelled)
- Filter by payment status (paid, pending, failed)
- Search by order number, product name, or customer name
- Update order status
- Update payment status
- Cancel orders

### 4. User Purchase History
- **Location**: `project-root/pages/purchase.php`
- **JavaScript**: `project-root/assets/js/purchase-history.js`
- Users can view their order history
- Order status reflects admin updates
- Filter orders by date range and status
- View detailed order information

## Database Schema

### Transactions Table
```sql
CREATE TABLE transactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_number VARCHAR(50),
    total_amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    order_status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

### Transaction Items Table
```sql
CREATE TABLE transaction_items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_id INT,
    product_id INT,
    variation_id INT,
    quantity INT,
    price DECIMAL(10,2),
    subtotal DECIMAL(10,2)
);
```

## Order Status Flow

1. **Cart** → Items in cart (not visible to admin)
2. **Pending** → User checked out, waiting for admin confirmation
3. **Preparing** → Admin is preparing the order
4. **Shipped** → Order has been shipped
5. **Delivered** → Order delivered to customer
6. **Cancelled** → Order cancelled by admin or customer

## Payment Status
- **Pending** → Payment not yet confirmed
- **Paid** → Payment confirmed
- **Failed** → Payment failed

## Setup Instructions

### 1. Database Migration
Run the migration script to add `updated_at` column:
```
http://localhost/grizzlypaws-backend/admin/api/migrate_updated_at.php
```

### 2. File Structure
```
grizzlypaws-backend/
├── admin/
│   ├── api/
│   │   ├── get_orders.php         # Fetch orders for admin
│   │   ├── update_order.php       # Update order status
│   │   └── migrate_updated_at.php # Database migration
│   ├── assets/
│   │   └── js/
│   │       └── manage_order.js    # Admin order management
│   └── pages/
│       └── manage_order.php       # Admin order page
└── project-root/
    ├── api/
    │   ├── transaction.php        # Transaction CRUD with stock mgmt
    │   └── cart.php              # Cart management
    ├── assets/
    │   └── js/
    │       ├── basket.js          # Checkout functionality
    │       └── purchase-history.js # User order history
    └── pages/
        ├── basket.php             # Shopping cart page
        └── purchase.php           # User purchase history
```

## API Endpoints

### User APIs

#### Create Transaction (Checkout)
```javascript
POST /project-root/api/transaction.php
{
    "customer_id": 1,
    "total_amount": 1000.00,
    "payment_method": "cod",
    "payment_status": "paid",
    "order_status": "pending",
    "items": [
        {
            "product_id": 1,
            "variation_id": 1,
            "quantity": 2,
            "price": 500.00
        }
    ]
}
```

#### Get User Transactions
```javascript
GET /project-root/api/transaction.php?customer_id=1
```

### Admin APIs

#### Get All Orders
```javascript
GET /admin/api/get_orders.php?order_status=pending&payment_status=paid&search=PET
```

#### Update Order Status
```javascript
POST /admin/api/update_order.php
{
    "transaction_id": 1,
    "order_status": "preparing",
    "payment_status": "paid"
}
```

## Stock Deduction Logic

When a user checks out:
1. System validates stock availability for all items
2. If stock is sufficient, creates transaction
3. Deducts quantity from `product_variations.stock`
4. If any step fails, transaction rolls back
5. Stock is only deducted when `order_status` is not 'cart'

### Example:
```sql
-- Before checkout
SELECT stock FROM product_variations WHERE id = 1;
-- Result: 100

-- User orders 5 units
-- After successful checkout
SELECT stock FROM product_variations WHERE id = 1;
-- Result: 95
```

## Testing the System

### 1. User Checkout Flow
1. Go to `basket.php`
2. Add items to cart
3. Select items using checkboxes
4. Click "Proceed to checkout"
5. Choose payment method
6. Click "Proceed"
7. Verify order is created

### 2. Admin Management
1. Go to `admin/pages/manage_order.php`
2. View orders from customers
3. Filter by status/payment
4. Update order status to "preparing"
5. Update payment status

### 3. User Purchase History
1. Go to `purchase.php`
2. View order history
3. Check that status matches admin update
4. View order details

## Important Notes

⚠️ **Stock Deduction**: Stock is automatically deducted when order is created with status other than 'cart'

⚠️ **Order Visibility**: Only orders with status other than 'cart' appear in admin panel

⚠️ **Status Updates**: Admin status updates are reflected in real-time in user's purchase history

⚠️ **Payment Status**: Current implementation marks orders as "paid" during checkout - adjust this based on actual payment gateway integration

## Future Enhancements

- Email notifications on status change
- Order tracking with logistics integration
- Product return/refund workflow
- Inventory restocking on order cancellation
- Multi-item order display in admin view
- Customer contact information in admin order view
- PDF invoice generation
- Order analytics and reports

## Troubleshooting

### Orders not showing in admin
- Check that order_status is not 'cart'
- Verify database connection
- Check browser console for JavaScript errors

### Stock not deducting
- Verify variation_id is being passed correctly
- Check that order_status is set to 'pending' or other status (not 'cart')
- Verify product_variations table has stock column

### Status updates not saving
- Check `update_order.php` permissions
- Verify transaction_id is being passed correctly
- Check database logs for errors

## Support

For issues or questions:
1. Check browser console for JavaScript errors
2. Check PHP error logs
3. Verify database structure matches schema
4. Ensure all API files are in correct locations
