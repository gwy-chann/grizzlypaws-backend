<?php
header('Content-Type: application/json');
require '../config/db.php';
session_start();

$method = $_SERVER['REQUEST_METHOD'];

// Helper to get input data
function getJsonInput() {
    return json_decode(file_get_contents('php://input'), true);
}

// Authentication Check
function isAuthenticated() {
    return isset($_SESSION['user_id']);
}

// Get User Info
function getCurrentUser() {
    if (!isAuthenticated()) return null;
    return [
        'user_id' => $_SESSION['user_id'],
        'first_name' => $_SESSION['first_name'] ?? 'User',
        'email' => $_SESSION['email'] ?? ''
    ];
}

switch ($method) {
    case 'GET':
        // Fetch reviews for a product
        $product_id = isset($_GET['product_id']) ? intval($_GET['product_id']) : 0;
        
        if ($product_id <= 0) {
            echo json_encode(['status' => 'error', 'message' => 'Invalid product ID']);
            exit;
        }

        try {
            // Join with customers table to get reviewer name
            $stmt = $conn->prepare("
                SELECT r.*, c.first_name, c.last_name 
                FROM reviews r
                LEFT JOIN customers c ON r.user_id = c.customer_id
                WHERE r.product_id = :product_id AND (r.is_hidden = 0 OR r.is_hidden IS NULL)
                ORDER BY r.created_at DESC
            ");
            $stmt->execute(['product_id' => $product_id]);
            $reviews = $stmt->fetchAll(PDO::FETCH_ASSOC);

            // Format reviews for frontend
            $formattedReviews = array_map(function($review) {
                return [
                    'id' => $review['review_id'],
                    'productId' => $review['product_id'],
                    'userId' => $review['user_id'],
                    'userName' => $review['first_name'] . ' ' . $review['last_name'],
                    'rating' => intval($review['rating']),
                    'text' => $review['comment'],
                    'date' => $review['created_at'],
                    'isHidden' => false // You might want to add this to DB if needed
                ];
            }, $reviews);

            echo json_encode(['status' => 'success', 'data' => $formattedReviews]);
        } catch (PDOException $e) {
            error_log("Database Error: " . $e->getMessage());
            echo json_encode(['status' => 'error', 'message' => 'Failed to fetch reviews']);
        }
        break;

    case 'POST':
        // Add new review
        if (!isAuthenticated()) {
            echo json_encode(['status' => 'error', 'message' => 'Login required']);
            exit;
        }

        $input = getJsonInput();
        $user = getCurrentUser();
        
        $product_id = intval($input['productId'] ?? 0);
        $rating = intval($input['rating'] ?? 0); // 1-5
        $comment = trim($input['text'] ?? '');

        if ($product_id <= 0 || $rating < 1 || $rating > 5 || empty($comment)) {
            echo json_encode(['status' => 'error', 'message' => 'Invalid input']);
            exit;
        }

        try {
            // Optional: Check if user already reviewed this product?
            // For now, allow multiple reviews or handle as per requirement.
            
            $stmt = $conn->prepare("
                INSERT INTO reviews (user_id, product_id, rating, comment, created_at)
                VALUES (:user_id, :product_id, :rating, :comment, NOW())
            ");
            
            $stmt->execute([
                'user_id' => $user['user_id'],
                'product_id' => $product_id,
                'rating' => $rating,
                'comment' => $comment
            ]);

            echo json_encode(['status' => 'success', 'message' => 'Review posted successfully']);
        } catch (PDOException $e) {
            error_log("Database Error: " . $e->getMessage());
            echo json_encode(['status' => 'error', 'message' => 'Failed to post review: ' . $e->getMessage()]);
        }
        break;

    case 'PUT':
        // Update review
        if (!isAuthenticated()) {
            echo json_encode(['status' => 'error', 'message' => 'Login required']);
            exit;
        }

        $input = getJsonInput();
        $user = getCurrentUser();
        
        $review_id = intval($input['id'] ?? 0);
        $rating = intval($input['rating'] ?? 0);
        $comment = trim($input['text'] ?? '');

        if ($review_id <= 0 || $rating < 1 || $rating > 5 || empty($comment)) {
            echo json_encode(['status' => 'error', 'message' => 'Invalid input']);
            exit;
        }

        try {
            // Verify ownership
            $stmt = $conn->prepare("SELECT user_id FROM reviews WHERE review_id = :id");
            $stmt->execute(['id' => $review_id]);
            $review = $stmt->fetch(PDO::FETCH_ASSOC);

            if (!$review || $review['user_id'] != $user['user_id']) {
                echo json_encode(['status' => 'error', 'message' => 'Unauthorized']);
                exit;
            }

            // Update
            $updateStmt = $conn->prepare("
                UPDATE reviews 
                SET rating = :rating, comment = :comment, created_at = NOW() 
                WHERE review_id = :id
            ");
            // Note: usually we'd have updated_at, but user schema implies created_at is the main timestamp. 
            // Updating created_at bumps it to top of list which might be desired.

            $updateStmt->execute([
                'rating' => $rating,
                'comment' => $comment,
                'id' => $review_id
            ]);

            echo json_encode(['status' => 'success', 'message' => 'Review updated successfully']);
        } catch (PDOException $e) {
            error_log("Database Error: " . $e->getMessage());
            echo json_encode(['status' => 'error', 'message' => 'Failed to update review']);
        }
        break;

    case 'DELETE':
        // Delete review
        if (!isAuthenticated()) {
            echo json_encode(['status' => 'error', 'message' => 'Login required']);
            exit;
        }

        $input = getJsonInput();
        $user = getCurrentUser();
        $review_id = intval($input['id'] ?? 0);

        if ($review_id <= 0) {
            echo json_encode(['status' => 'error', 'message' => 'Invalid ID']);
            exit;
        }

        try {
            // Verify ownership
            $stmt = $conn->prepare("SELECT user_id FROM reviews WHERE review_id = :id");
            $stmt->execute(['id' => $review_id]);
            $review = $stmt->fetch(PDO::FETCH_ASSOC);

            // Allow admin to delete? (Checking session 'isAdmin' or similar if implemented)
            // For now specific check for owner.
            if (!$review || $review['user_id'] != $user['user_id']) {
                echo json_encode(['status' => 'error', 'message' => 'Unauthorized']);
                exit;
            }

            $delStmt = $conn->prepare("DELETE FROM reviews WHERE review_id = :id");
            $delStmt->execute(['id' => $review_id]);

            echo json_encode(['status' => 'success', 'message' => 'Review deleted successfully']);
        } catch (PDOException $e) {
            error_log("Database Error: " . $e->getMessage());
            echo json_encode(['status' => 'error', 'message' => 'Failed to delete review']);
        }
        break;

    default:
        echo json_encode(['status' => 'error', 'message' => 'Method not allowed']);
        break;
}
?>
