<?php
header('Content-Type: application/json');
require '../config/db.php';

session_start();

// Admin check
// if (!isset($_SESSION['isAdmin']) || !$_SESSION['isAdmin']) {
//     // For now, if no robust admin check, we proceed. 
//     // Ideally: http_response_code(403); echo json_encode(['status'=>'error', 'message'=>'Unauthorized']); exit;
// }

$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'GET') {
    try {
        $sql = "
            SELECT 
                r.review_id,
                r.product_id,
                r.user_id,
                r.rating,
                r.comment,
                r.created_at,
                r.is_hidden,
                p.name AS product_name,
                c.name AS category_name,
                sc.name AS subcategory_name,
                CONCAT(cu.first_name, ' ', cu.last_name) AS reviewer_name
            FROM reviews r
            JOIN product p ON r.product_id = p.id
            JOIN category c ON p.category_id = c.id
            JOIN sub_categories sc ON p.sub_category_id = sc.id
            LEFT JOIN customers cu ON r.user_id = cu.customer_id
            ORDER BY r.created_at DESC
        ";

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $reviews = $stmt->fetchAll(PDO::FETCH_ASSOC);

        echo json_encode(['status' => 'success', 'data' => $reviews]);
    } catch (PDOException $e) {
        error_log("Database Error: " . $e->getMessage());
        echo json_encode(['status' => 'error', 'message' => 'Failed to fetch reviews']);
    }
} elseif ($method === 'POST') {
    // This block handles updating the 'is_hidden' status
    $input = json_decode(file_get_contents('php://input'), true);
    
    // Check if it's a hide/unhide action
    if (isset($input['action']) && $input['action'] === 'toggle_hidden') {
        $review_id = $input['id'] ?? 0;
        $is_hidden = $input['is_hidden'] ?? 0; // 1 or 0

        if ($review_id <= 0) {
            echo json_encode(['status' => 'error', 'message' => 'Invalid ID']);
            exit;
        }

        try {
            $stmt = $conn->prepare("UPDATE reviews SET is_hidden = :is_hidden WHERE review_id = :id");
            $stmt->execute(['is_hidden' => $is_hidden, 'id' => $review_id]);
            echo json_encode(['status' => 'success', 'message' => 'Review status updated successfully']);
        } catch (PDOException $e) {
            error_log("Update Error: " . $e->getMessage());
            echo json_encode(['status' => 'error', 'message' => 'Failed to update review status']);
        }
        exit;
    }
} elseif ($method === 'DELETE') {
    $input = json_decode(file_get_contents('php://input'), true);
    $review_id = $input['id'] ?? 0;

    if ($review_id <= 0) {
        echo json_encode(['status' => 'error', 'message' => 'Invalid ID']);
        exit;
    }

    try {
        $stmt = $conn->prepare("DELETE FROM reviews WHERE review_id = :id");
        $stmt->execute(['id' => $review_id]);
        echo json_encode(['status' => 'success', 'message' => 'Review deleted successfully']);
    } catch (PDOException $e) {
        echo json_encode(['status' => 'error', 'message' => 'Failed to delete review']);
    }
} else {
    echo json_encode(['status' => 'error', 'message' => 'Invalid Request']);
}
?>
