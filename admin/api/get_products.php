<?php
include "db.php";

$category = $_GET['category'] ?? null;
$subCategory = $_GET['sub-category'] ?? null;
$product_id = $_GET['product-id'] ?? null;

// ✅ BASE PRODUCT QUERY
$sql = "
    SELECT 
        p.id,
        p.category_id,
        p.sub_category_id,
        p.name,
        p.description,
        p.stock,
        p.image1,
        p.image2,
        p.image3,
        p.status,
        p.created_at,
        c.name AS category,
        s.name AS subcategory
    FROM product p
    JOIN category c ON p.category_id = c.id
    JOIN sub_categories s ON p.sub_category_id = s.id
    WHERE 1=1
";

$types = "";
$params = [];

if (!empty($product_id)) {
    $sql .= " AND p.id = ?";
    $types .= "i";
    $params[] = $product_id;
}


if (!empty($category)) {
    $sql .= " AND c.name = ?";
    $types .= "s";
    $params[] = $category;
}

if (!empty($subCategory)) {
    $sql .= " AND s.name = ?";
    $types .= "s";
    $params[] = $subCategory;
}

$sql .= " ORDER BY p.id DESC";

$stmt = $conn->prepare($sql);

if (!empty($params)) {
    $stmt->bind_param($types, ...$params);
}

$stmt->execute();
$result = $stmt->get_result();

$data = [];

while ($row = $result->fetch_assoc()) {

    // ✅ GET VARIATIONS FOR EACH PRODUCT
    $varSql = "
        SELECT 
            id,
            product_id,
            unit,
            price,
            stock
        FROM product_variations
        WHERE product_id = ?
        ORDER BY id ASC
    ";

    $varStmt = $conn->prepare($varSql);
    $varStmt->bind_param("i", $row['id']);
    $varStmt->execute();
    $varResult = $varStmt->get_result();

    $variations = [];
    while ($v = $varResult->fetch_assoc()) {
        $variations[] = $v;
    }

    // ✅ ATTACH VARIATIONS TO PRODUCT
    $row['variations'] = $variations;
    $data[] = $row;
}

echo json_encode($data);
?>
