<?php
require '../config/db.php';

echo "Attempting to fix database schema...\n";

try {
    // Check if we can drop the old key
    // We use the constraint name from the user's error message: reviews_ibfk_2
    try {
        $conn->exec("ALTER TABLE reviews DROP FOREIGN KEY reviews_ibfk_2");
        echo "Dropped incorrect foreign key 'reviews_ibfk_2'.\n";
    } catch (Exception $e) {
        echo "Could not drop 'reviews_ibfk_2' (it might not exist or name differs): " . $e->getMessage() . "\n";
        // Attempt to drop referencing 'products' in case name is auto-generated differently
        // But usually we need the name. 
    }

    // Attempt to add the correct foreign key pointing to 'product' table
    // verify 'product' table exists first? Assume yes based on get_products.php
    $conn->exec("ALTER TABLE reviews ADD CONSTRAINT reviews_product_id_fk FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE");
    echo "Added correct foreign key 'reviews_product_id_fk' referencing 'product' table.\n";

} catch (PDOException $e) {
    echo "Database Error: " . $e->getMessage() . "\n";
}
?>
