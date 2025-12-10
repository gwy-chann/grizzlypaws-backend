# Payment and Order Status Logic - GrizzlyPaws

## Order Flow Summary

### User Checkout
When a user checks out:
- **Order Status**: `preparing` ⭐
- **Payment Status**: `pending` ⭐
- Items are added to orders
- Stock is deducted from inventory

### Admin Order Management

#### Status Progression
```
preparing → shipped → delivered
           ↘ cancelled
```

#### Payment Status Logic

**Automatic Payment Marking:**
- When admin sets order status to `delivered`
- AND payment method is `cod` (Cash on Delivery)
- System automatically sets payment_status to `paid`

**Manual Payment Update:**
- Admin can manually update payment status for other payment methods
- E-wallet, Credit/Debit payments should be marked paid manually

## Implementation Details

### 1. User Checkout (basket.js)
```javascript
{
  order_status: "preparing",    // Default status
  payment_status: "pending",    // All start as pending
  payment_method: "cod|ewallet|card"
}
```

### 2. Admin Updates Order (update_order.php)
```php
// Automatic COD payment on delivery
if ($order_status === 'delivered' && $payment_method === 'cod') {
    $payment_status = 'paid';  // Auto-marked
}
```

### 3. User Track Order
- Shows current order_status from admin
- Shows current payment_status
- Updates in real-time from admin changes

## Status Definitions

### Order Status
| Status | Description | Next Action |
|--------|-------------|-------------|
| `preparing` | Order received, being prepared | Ship it |
| `shipped` | Order shipped to customer | Delivery |
| `delivered` | Order delivered to customer | Complete |
| `cancelled` | Order cancelled | None |

### Payment Status
| Status | Description | When Set |
|--------|-------------|----------|
| `pending` | Payment not received | Default on checkout |
| `paid` | Payment received | Auto: COD+Delivered<br>Manual: Other methods |
| `failed` | Payment failed | Manual by admin |

## Examples

### Example 1: Cash on Delivery (COD)
```
1. User checks out → Status: preparing, Payment: pending
2. Admin: Set status to "shipped" → Payment: still pending
3. Admin: Set status to "delivered" → Payment: auto "paid" ✅
```

### Example 2: E-Wallet Payment
```
1. User checks out → Status: preparing, Payment: pending
2. User pays via e-wallet (outside system)
3. Admin: Manually set payment to "paid" ✅
4. Admin: Set status to "shipped"
5. Admin: Set status to "delivered" → Payment: stays "paid"
```

### Example 3: Credit Card
```
1. User checks out → Status: preparing, Payment: pending
2. Admin: Verify card payment, manually set to "paid" ✅
3. Admin: Progress order status normally
```

## Admin Notifications

When admin sets status to "delivered" for COD orders:
```
✅ Success!
Order status updated successfully! 
Payment automatically marked as paid (COD Delivered).
```

## User Purchase History

Shows:
- Order number
- Order status (updated by admin)
- Payment status
- Order date
- Total amount

All updates from admin are reflected immediately.

## Database Changes

### Transactions Table
```sql
CREATE TABLE transactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_number VARCHAR(50),
    total_amount DECIMAL(10,2),
    payment_method VARCHAR(50),      -- cod, ewallet, card
    payment_status VARCHAR(50),      -- pending, paid, failed
    order_status VARCHAR(50),        -- preparing, shipped, delivered, cancelled
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

## API Endpoints

### Update Order Status
```http
POST /admin/api/update_order.php
{
    "transaction_id": 123,
    "order_status": "delivered"
}

Response:
{
    "success": true,
    "message": "Order updated successfully",
    "auto_paid": true  // If COD was auto-marked as paid
}
```

## Benefits

✅ **COD Safety**: Payment only marked when actually delivered
✅ **Flexibility**: Admin can manually handle other payment methods
✅ **Transparency**: Users see real-time status updates
✅ **Automation**: Reduces manual work for COD orders
✅ **Accuracy**: Payment status matches actual delivery

## Testing Scenarios

### Test 1: COD Order Complete Flow
1. User checkout with COD
2. Verify status: preparing, payment: pending
3. Admin update to shipped
4. Verify payment still pending
5. Admin update to delivered
6. ✅ Verify payment auto-changed to paid

### Test 2: E-Wallet Order
1. User checkout with E-Wallet
2. Verify status: preparing, payment: pending
3. Admin manually set payment: paid
4. Admin update status to shipped
5. Admin update status to delivered
6. ✅ Verify payment stays paid (no duplicate)

### Test 3: Cancelled COD Order
1. User checkout with COD
2. Admin cancel order
3. ✅ Verify payment stays pending (not paid)

## Notes

⚠️ **Stock Deduction**: Happens on checkout (status: preparing)
⚠️ **Payment for COD**: Only marked paid on delivery
⚠️ **Other Methods**: Must be manually marked paid by admin after verification
⚠️ **User View**: Always shows latest status from admin updates
