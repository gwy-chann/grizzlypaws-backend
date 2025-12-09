<?php
include "db.php";

$sql = "
SELECT 
p.id,
p.name,
p.stock,
p.image1,
p.image2,
p.image3,
c.name AS category,
s.name AS subcategory
FROM product p
JOIN category c ON p.category_id = c.id
JOIN sub_categories s ON p.sub_category_id = s.id
ORDER BY p.id DESC
";

$result = $conn->query($sql);
$data = [];

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode($data);
?>
