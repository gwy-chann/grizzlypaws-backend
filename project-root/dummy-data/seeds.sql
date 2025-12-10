-- ============================================
-- GrizzlyPaws Database Seed Script
-- Auto-generated on 2025-12-10T03:43:16.509Z
-- Total Products: 353
-- ============================================

-- Clear existing data (CAUTION: Uncomment to use)
-- DELETE FROM product_variations;
-- DELETE FROM product;
-- ALTER TABLE product AUTO_INCREMENT = 1;
-- ALTER TABLE product_variations AUTO_INCREMENT = 1;

-- ============================================
-- Product Data Inserts
-- ============================================

-- Product 1: Hill's Prescription Diet Canine z/d Food Sensitivities
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    51,
    'Hill\'s Prescription Diet Canine z/d Food Sensitivities',
    'Hill\'s Prescription Diet Canine z/d Food Sensitivities - Dietetic dry food for adult dogs with food allergies and intolerances, with a hypoallergenic recipe to help with dermatitis and hair loss, as well as reducing digestive upset.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 1/hillsPrescriptionDiet1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 1/hillsPrescriptionDiet2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 1/hillsPrescriptionDiet3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_1 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_1, '6kg', 3999.00, 10),
(@product_id_1, '10kg', 5999.00, 10);


-- Product 2: Hill's Prescription Diet Canine Metabolic+Mobility Weight+Joint Care Chicken
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    51,
    'Hill\'s Prescription Diet Canine Metabolic+Mobility Weight+Joint Care Chicken',
    'Specialist dry food for overweight dogs suffering from osteoarthritis. The clinically proven formula is filling yet lean and contains calcium, chondroitin & glucosamine for healthy bones & joints',
    10,
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 2/Hill_sPrescriptionDietCanineMetabolic1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 2/Hill_sPrescriptionDietCanineMetabolic2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 2/Hill_sPrescriptionDietCanineMetabolic3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_2 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_2, 'Prescription', 3199.00, 10);


-- Product 3: Royal Canin Maxi Adult
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    51,
    'Royal Canin Maxi Adult',
    'Balanced dry food for large breed adult dogs, designed to promote optimum digestion, a source of glucosamine and chondroitin, enriched with vitamin D and antioxidants, with a tailored kibble size',
    10,
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 3/RoyalCaninMaxiAdult1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 3/RoyalCaninMaxiAdult2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 3/RoyalCaninMaxiAdult3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_3 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_3, '6kg', 5000.00, 10),
(@product_id_3, '10kg', 6500.00, 10);


-- Product 4: Royal Canin Medium Adult
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    51,
    'Royal Canin Medium Adult',
    'Balanced dry food for adult dogs of medium-sized breeds, provides high-quality proteins, highly-digestible ingredients, source of antioxidants, with a tailored kibble size.Balanced dry food for adult dogs of medium-sized breeds, provides high-quality proteins, highly-digestible ingredients, source of antioxidants, with a tailored kibble size.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 4/RoyalCaninMediumAdult1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 4/RoyalCaninMediumAdult2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/product-images/Dog/Category 1 - Dry Dog Food/Category 1 - Products/Product 4/RoyalCaninMediumAdult3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_4 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_4, '4kg', 799.00, 10),
(@product_id_4, '10kg', 1200.00, 10),
(@product_id_4, '15kg', 1999.00, 10);


-- Product 5: Rocco Sensitive
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    52,
    'Rocco Sensitive',
    'Rocco Sensitive is a well-balanced complete wet food for dogs with sensitive tummies. Dogs with allergies, nutritional intolerances and gastrointestinal disorders don\'t need to compromise on tasty food.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 1/RoccoSensitive.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 1/RoccoSensitive 1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 1/RoccoSensitive2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_5 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_5, '6kg', 600.00, 10),
(@product_id_5, '8kg', 800.00, 10);


-- Product 6: Rocco Diet Care Gastrointestinal
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    52,
    'Rocco Diet Care Gastrointestinal',
    'Rocco Diet Care Gastrointestinal is a meat-based therapeutic wet dog food that helps to relieve intestinal dysfunction during and after acute diarrhoea. This complete food has an increased electrolyte content and contains easy-to-digest ingredients which also helps compensate an inadequate digestion.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 2/RoccoDietCareGastrointestinal1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 2/RoccoDietCareGastrointestinal2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 2/RoccoDietCare Gastrointestinal3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_6 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_6, '8kg', 3600.00, 10),
(@product_id_6, '19kg', 5400.00, 10);


-- Product 7: Royal Canin Mini
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    52,
    'Royal Canin Mini',
    'Everyone loves to be pampered and small breed dogs are no exception. Royal Canin Mini Adult in Gravy has been specially developed for small breed dogs up to 10kg.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 3/RoyalCaninMini1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 3/RoyalCaninMini2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 3/RoyalCaninMini3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_7 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_7, '4kg', 1300.00, 10),
(@product_id_7, '6kg', 2500.00, 10),
(@product_id_7, '10kg', 3500.00, 10);


-- Product 8: Royal Canin Maxi Puppy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    52,
    'Royal Canin Maxi Puppy',
    'During your large breed puppy\'s growth phase, it is essential that it receives sufficient calories and the right nutrients to support development. This is a particular challenge for dogs of this size, as calcium and vitamin levels need to be specially tailored to help avoid bone and joint problems that are common in larger breeds.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 4/RoyalCaninMaxiPuppy.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 4/RoyalCaninMaxiPuppy1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 4/RoyalCaninMaxiPuppy2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_8 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_8, '4kg', 2300.00, 10),
(@product_id_8, '10kg', 4500.00, 10),
(@product_id_8, '15kg', 6000.00, 10);


-- Product 9: Wolf of Wilderness Expedition Stony Creek
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    52,
    'Wolf of Wilderness Expedition Stony Creek',
    'Wolf of Wilderness Adult Expedition wet dog food - discover the untamed nature of the wolf on its forays for prey and new territories.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 5/WolfofWildernessStonyCreek.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 5/WolfofWildernessStonyCreek1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 5/WolfofWildernessStonyCreek2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_9 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_9, '5kg', 100.00, 10);


-- Product 10: Hill's Prescription Diet Canine
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    52,
    'Hill\'s Prescription Diet Canine',
    'This Hill\'s Prescription Diet Canine z/d Food Sensitivities has been specially developed for adult dogs with nutritional intolerances. It is a hypoallergenic wet food that contains selected sources of carbohydrates and chicken liver hydrolysate as the sole source of hydrolysed protein.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 6/Hill_sPrescriptionDietCanine.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 6/Hill_sPrescriptionDietCanine1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 6/Hill_sPrescriptionDietCanine2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_10 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_10, '5kg', 3300.00, 10),
(@product_id_10, '9kg', 6400.00, 10);


-- Product 11: Rocco Classic Saver
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    52,
    'Rocco Classic Saver',
    'Meaty grain-free dinners for your dog, with a high proportion of meat & offal and 100% fresh, quality ingredients. Species-appropriate. No artificial additives. Great value in a 24 x 400g saver pack!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 7/RoccoClassicSaver.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 7/RoccoClassicSaver1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 7/RoccoClassicSaver2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_11 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_11, '15kg', 2500.00, 10),
(@product_id_11, '10kg', 1700.00, 10),
(@product_id_11, '7kg', 1500.00, 10),
(@product_id_11, '4kg', 1300.00, 10);


-- Product 12: Concept for Life Veterinary Diet Hypoallergenic
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    52,
    'Concept for Life Veterinary Diet Hypoallergenic',
    'Dietetic wet food for adult dogs with food intolerances, dermatosis and hair loss. This vet food can be used as an exclusion or elimination diet as kangaroo is the only source of animal protein',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 8/ConceptforLifeVeterinaryDietHypoallergenic.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 8/ConceptforLifeVeterinaryDietHypoallergenic1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 8/ConceptforLifeVeterinaryDietHypoallergenic2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_12 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_12, '15kg', 2500.00, 10),
(@product_id_12, '10kg', 1700.00, 10),
(@product_id_12, '7kg', 1500.00, 10),
(@product_id_12, '4kg', 1300.00, 10);


-- Product 13: Almo Nature BioOrganic Maintenance
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    52,
    'Almo Nature BioOrganic Maintenance',
    'Balanced organic wet food for dogs, with organic ingredients and a range of tasty varieties offering vital nutrients and vitamins, in handy trays with no genetically modified ingredients.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 9/AlmoNatureBioOrganicMaintenance.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 9/AlmoNatureBioOrganicMaintenance1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 9/AlmoNatureBioOrganicMaintenance2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_13 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_13, '15kg', 2500.00, 10),
(@product_id_13, '10kg', 1700.00, 10),
(@product_id_13, '7kg', 1500.00, 10),
(@product_id_13, '4kg', 1300.00, 10);


-- Product 14: Cesar Pouches Deliciously Fresh Favourites in Sauce
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    52,
    'Cesar Pouches Deliciously Fresh Favourites in Sauce',
    'Tasty wet food in sauce, 4 varieties, selected meat & vegetables, balanced, complete, with vitamins & minerals, in a fresh bag, easy to portion, without sugar & artificial flavourings.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 10/CesarPouchesDeliciouslyFreshFavouritesinSauce.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 10/CesarPouchesDeliciouslyFreshFavouritesinSauce1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 2 - Wet Dog Food/Category 2/Product 10/CesarPouchesDeliciouslyFreshFavouritesinSauce2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_14 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_14, '4kg', 1700.00, 10);


-- Product 15: Pedigree Dentastix
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    53,
    'Pedigree Dentastix',
    'Tasty wet food in sauce, 4 varieties, selected meat & vegetables, balanced, complete, with vitamins & minerals, in a fresh bag, easy to portion, without sugar & artificial flavourings.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 1/PedigreeDentastix.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 1/PedigreeDentastix1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 1/PedigreeDentastix2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_15 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_15, 'Small 110g', 92.00, 10),
(@product_id_15, 'Medium 185g', 137.00, 10),
(@product_id_15, 'Large 112g', 70.00, 10);


-- Product 16: Pedigree Schmackos
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    53,
    'Pedigree Schmackos',
    'Tasty chewy strips or sticks for dogs, in a range of flavours. These meaty treats are easy to portion, making them ideal for rewarding your dog, and contain valuable omega-3, vitamins and minerals.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 2/PedigreeSchmackos.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 2/PedigreeSchmackos1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 2/PedigreeSchmackos2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_16 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_16, 'Small 110g', 92.00, 10),
(@product_id_16, 'Medium 185g', 137.00, 10),
(@product_id_16, 'Large 112g', 70.00, 10);


-- Product 17: Rocco Rolls Chew Sticks
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    53,
    'Rocco Rolls Chew Sticks',
    'A firm favourite from Rocco: Low-fat rawhide chew sticks, wrapped in mouth-watering chicken or duck fillet, or fish skin. These dog treats provide lots of tasty, chewy fun while aiding dental hygiene.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 3/RoccoRollsChewSticks.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 3/RoccoRollsChewSticks1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 3/RoccoRollsChewSticks2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_17 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_17, 'Small 110g', 92.00, 10),
(@product_id_17, 'Medium 185g', 137.00, 10),
(@product_id_17, 'Large 112g', 70.00, 10);


-- Product 18: Greenies Canine Dental Chews
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    53,
    'Greenies Canine Dental Chews',
    'Delicious snacks to mechanically clean your dog\'s teeth, with a unique surface structure designed to reduce tartar, plaque and mouth odour, easy to digest and helping support fresh breath.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 4/GreeniesCanineDentalChews.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 4/GreeniesCanineDentalChews1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 4/GreeniesCanineDentalChews2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_18 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_18, '340g', 229.00, 10);


-- Product 19: Advance Hypoallergenic Snack
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    53,
    'Advance Hypoallergenic Snack',
    'Delicious, digestible snacks for nutritionally-sensitive dogs, with 100% hydrolysed protein, highly digestible and in a semi-moist biscuit format that is ideal for rewarding your dog.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 5/AdvanceHypoallergenicSnack1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 5/AdvanceHypoallergenicSnack2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 5/AdvanceHypoallergenicSnack.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_19 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_19, '150g', 135.00, 10),
(@product_id_19, '450g', 275.00, 10);


-- Product 20: Rocco Cow Ears
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    53,
    'Rocco Cow Ears',
    'One of the most popular Rocco snacks! These cows\' ears are low in fat and odour, with a chewy consistency that keeps your dog entertained for hours.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 6/RoccoNaturalDriedCows_Ear.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 6/RoccoNaturalDriedCows_Ear1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 6/RoccoNaturalDriedCows_Ear2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_20 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_20, '1kg', 369.00, 10);


-- Product 21: Rosie's Farm Adult Tender Steak Bites
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    53,
    'Rosie\'s Farm Adult Tender Steak Bites',
    'Delicious dog snacks that taste like home-cooking! The tasty treats in a re-sealable pouch contain 30% chicken and are totally grain-free, with no sugar or artificial aroma or colour. Made in Austria.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 7/Rosie_sFarmAdultTenderSteakBites.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 7/Rosie_sFarmAdultTenderSteakBites1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 7/Rosie_sFarmAdultTenderSteakBites2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_21 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_21, 'Small 110g', 92.00, 10),
(@product_id_21, 'Medium 185g', 137.00, 10),
(@product_id_21, 'Large 112g', 70.00, 10);


-- Product 22: Vitakraft Beef-Sticks
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    53,
    'Vitakraft Beef-Sticks',
    'Mouth-watering 93% meat chew sticks, easy to break into small portions for rewards on the go. Each stick is packed full of vitamins, sugar free, with no colours, preservatives or flavour enhancers.entertained for hours.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 8/VitakraftBeef-Sticks.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 8/VitakraftBeef-Sticks1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 8/VitakraftBeef-Sticks2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_22 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_22, 'Small 110g', 92.00, 10),
(@product_id_22, 'Medium 185g', 137.00, 10),
(@product_id_22, 'Large 112g', 70.00, 10);


-- Product 23: Zesty Paws Hip & Joint Chews Mobility
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    53,
    'Zesty Paws Hip & Joint Chews Mobility',
    'Delicious snacks for dogs over 4 months old, to support natural mobility and bodily immunity, rich in vitamins C and E combined with glucosamine, chondroitin and green-lipped mussel.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 9/ZestyPawsHip&JointChewsMobility.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 9/ZestyPawsHip&JointChewsMobility1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 9/ZestyPawsHip&JointChewsMobility2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_23 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_23, 'Small 110g', 92.00, 10),
(@product_id_23, 'Medium 185g', 137.00, 10),
(@product_id_23, 'Large 112g', 70.00, 10);


-- Product 24: Trixie PREMIO Strips with Chicken and Cheese
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    53,
    'Trixie PREMIO Strips with Chicken and Cheese',
    'Gluten- & sugar-free snack for dogs, with lots of tasty chicken meat & hearty cheese, low-fat recipe, for extensive chewing, high in protein, resealable bag for lasting freshness.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 10/TrixiePREMIOStripswithChickenandCheese.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 10/TrixiePREMIOStripswithChickenandCheese1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 3 - Dog Treats & Bones/Category 3/Product 10/TrixiePREMIOStripswithChickenandCheese2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_24 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_24, '100g', 99.00, 10);


-- Product 25: Burns Adult & Senior Original Chicken & Brown Rice
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    54,
    'Burns Adult & Senior Original Chicken & Brown Rice',
    'Wheat-free dry food for adult & older dogs, low-fat recipe, without soy & dairy products, natural ingredients, high in fiber, valuable fatty acids, easily digestible, tasty.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 1/BurnsAdult&SeniorOriginalChicken&BrownRice.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 1/BurnsAdult&SeniorOriginalChicken&BrownRice1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 1/BurnsAdult&SeniorOriginalChicken&BrownRice2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_25 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_25, '6kg', 899.00, 10),
(@product_id_25, '14kg', 1119.00, 10),
(@product_id_25, '16kg', 1459.00, 10);


-- Product 26: Briantos Adult Grain-Free Duck & Potato
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    54,
    'Briantos Adult Grain-Free Duck & Potato',
    'Complete grain-free dry dog food with tender duck and hearty sweet potatoes. The soft kibble has an irresistible flavour and has been gently prepared to ensure proper and healthy digestion.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 2/BriantosAdultGrain-FreeDuck&Potato.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 2/BriantosAdultGrain-FreeDuck&Potato1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 2/BriantosAdultGrain-FreeDuck&Potato2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_26 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_26, '12kg', 1800.00, 10),
(@product_id_26, '24kg', 3400.00, 10);


-- Product 27: YuMOVE Joint Care for Adult Dogs
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    54,
    'YuMOVE Joint Care for Adult Dogs',
    'Keep your dog\'s joints healthy and mobile with omega-3 & natural chondroitin from green-lipped mussels, in this YuMOVE nutritional supplement to promote cartilage health and mobility.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 3/YuMOVEJointCareforAdultDogs.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 3/YuMOVEJointCareforAdultDogs1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 3/YuMOVEJointCareforAdultDogs2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_27 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_27, '10kg', 6200.00, 10);


-- Product 28: Royal Canin Medium Ageing in Loaf
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    54,
    'Royal Canin Medium Ageing in Loaf',
    'Premium wet food for older dogs (from 7 years of age) of medium-sized breeds (11-25 kg), with high-quality protein and digestion-boosting prebiotics which supports the body\'s own defences.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 4/RoyalCaninMediumAgeinginLoaf.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 4/RoyalCaninMediumAgeinginLoaf1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 4/RoyalCaninMediumAgeinginLoaf2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_28 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_28, '4kg', 2800.00, 10);


-- Product 29: Eukanuba Daily Care Mono-Protein with Duck
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    54,
    'Eukanuba Daily Care Mono-Protein with Duck',
    'Appealing complete dry food for dogs, with a single source protein from hearty duck, containing FOS and MOS with delicious sweet potato, enriched with omega-3 and -6 fatty acids.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 5/EukanubaDailyCareMono-ProteinwithDuck.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 5/EukanubaDailyCareMono-ProteinwithDuck1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 5/EukanubaDailyCareMono-ProteinwithDuck2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_29 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_29, '12kg', 4300.00, 10),
(@product_id_29, '24kg', 5600.00, 10);


-- Product 30: PRO PLAN Skin & Coat Dog Supplement Oil
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    54,
    'PRO PLAN Skin & Coat Dog Supplement Oil',
    'Appealing complete dry food for dogs, with a single source protein from hearty duck, containing FOS and MOS with delicious sweet potato, enriched with omega-3 and -6 fatty acids.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 6/PROPLANSkin&CoatDogSupplementOil.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 6/PROPLANSkin&CoatDogSupplementOil1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 6/PROPLANSkin&CoatDogSupplementOil2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_30 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_30, '2kg', 788.00, 10);


-- Product 31: Burns Hypo-Allergenic Mixer
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    54,
    'Burns Hypo-Allergenic Mixer',
    'Appealing complete dry food for dogs, with a single source protein from hearty duck, containing FOS and MOS with delicious sweet potato, enriched with omega-3 and -6 fatty acids.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 7/BurnsHypo-AllergenicMixer.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 7/BurnsHypo-AllergenicMixer1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 7/BurnsHypo-AllergenicMixer2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_31 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_31, '2kg', 421.00, 10);


-- Product 32: LUPO Herb Pellets
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    54,
    'LUPO Herb Pellets',
    'Supplement for dogs, with a multi-vitamin complex from herbs and micronutrients to support healthy nutrition, with trace elements and easy to serve in handy tablets in a resealable tub.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 8/LUPOHerbPellets.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 8/LUPOHerbPellets1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 8/LUPOHerbPellets2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_32 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_32, '600g', 299.00, 10);


-- Product 33: PURINA PRO PLAN Fortiflora Canine Probiotic
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    54,
    'PURINA PRO PLAN Fortiflora Canine Probiotic',
    'Probiotic supplement for dogs, contains living lactic acid bacteria and minerals, can promote intestinal health and strengthen the immune system, in practical sachets, easy to feed to your dog.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 9/PURINAPROPLANFortifloraCanineProbiotic.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 9/PURINAPROPLANFortifloraCanineProbiotic1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 9/PURINAPROPLANFortifloraCanineProbiotic2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_33 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_33, '300g', 199.00, 10);


-- Product 34: Hyaloral for Large & Giant Breeds
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    54,
    'Hyaloral for Large & Giant Breeds',
    'Probiotic supplement for dogs, contains living lactic acid bacteria and minerals, can promote intestinal health and strengthen the immune system, in practical sachets, easy to feed to your dog.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 10/HyaloralforLarge&GiantBreeds.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 10/HyaloralforLarge&GiantBreeds1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 4 - Dog Supplements & Special Food/Category 4/Product 10/HyaloralforLarge&GiantBreeds2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_34 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_34, '3.2kg', 2300.00, 10),
(@product_id_34, '6.2kg', 3000.00, 10);


-- Product 35: Beaphar Toothpaste
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    55,
    'Beaphar Toothpaste',
    'Toothpaste specially designed to support dental hygiene in cats and dogs, with a meaty flavour and anti-plaque enzymes to keep your pet\'s mouth in optimum health without the use of fluoride.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 1/beapharToothpaste.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 1/beapharToothpaste1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 1/beapharToothpaste2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_35 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_35, '100g', 300.00, 10);


-- Product 36: Puppy Trainer Pads
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    55,
    'Puppy Trainer Pads',
    'No description available',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 2/PuppyTrainerPads.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 2/PuppyTrainerPads1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 2/PuppyTrainerPads2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_36 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_36, 'Puppy Trainer Pads', 280.00, 10),
(@product_id_36, '30 x X-Large Pads: 90 x 60 cm (L x W)', 350.00, 10);


-- Product 37: Clean Teeth Cleaning Pads
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    55,
    'Clean Teeth Cleaning Pads',
    'Cleaning pads to support dental health in dogs, fastening to your finger and offering easy and effective use to help support tooth and gum health, reducing plaque and tartar.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 3/CleanTeethCleaningPads.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 3/CleanTeethCleaningPads1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 3/CleanTeethCleaningPads2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_37 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_37, '50 Pads', 350.00, 10);


-- Product 38: ProDen PlaqueOff Organic Dental Care
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    55,
    'ProDen PlaqueOff Organic Dental Care',
    'Cleaning pads to support dental health in dogs, fastening to your finger and offering easy and effective use to help support tooth and gum health, reducing plaque and tartar.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 4/ProDenPlaqueOffOrganicDentalCare.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 4/ProDenPlaqueOffOrganicDentalCare1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 4/ProDenPlaqueOffOrganicDentalCare2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_38 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_38, '60g', 89.00, 10),
(@product_id_38, '6.2kg', 5000.00, 10);


-- Product 39: TIAKI Biodegradable Dog Poop Bags
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    55,
    'TIAKI Biodegradable Dog Poop Bags',
    'Cleaning pads to support dental health in dogs, fastening to your finger and offering easy and effective use to help support tooth and gum health, reducing plaque and tartar',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 5/TIAKIBiodegradableDogPoopBags.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 5/TIAKIBiodegradableDogPoopBags1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 5/TIAKIBiodegradableDogPoopBags2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_39 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_39, '8 rolls', 300.00, 10);


-- Product 40: Kooa Double-sided Grooming Glove
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    55,
    'Kooa Double-sided Grooming Glove',
    'Convenient grooming glove for cats & dogs, in the shape of a paw, with thick & thin rubber bristles. For massaging & supporting daily grooming, reliably catches hair and is easy to care for.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 6/kooaDoublesidedGroomingGlove.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 6/kooaDoublesidedGroomingGlove1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 6/kooaDoublesidedGroomingGlove2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_40 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_40, '12 Pair of Gloves', 210.00, 10);


-- Product 41: FURminator Dual Grooming Brush
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    55,
    'FURminator Dual Grooming Brush',
    '2-in-1 coat care brush for daily use on dogs and cats, with hard wire bristles to detangle and clean, and soft boar bristles to keep the coat glossy, with an anti-slip, ergonomic handle',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 7/FURminatorDualGroomingBrush.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 7/FURminatorDualGroomingBrush1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 7/FURminatorDualGroomingBrush2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_41 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_41, '21 x 6.5 x 4 cm (L x W x H) ', 89.00, 10);


-- Product 42: Dental Care Set for Dogs
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    55,
    'Dental Care Set for Dogs',
    'Two-piece dental care set for dogs, toothbrush with 3 brush heads & textured comfort grip, tooth gel with vitamin C, grapefruit and peppermint extract, supports mouth & dental hygiene',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 8/DentalCareSetforDogs.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 8/DentalCareSetforDogs1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 8/DentalCareSetforDogs2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_42 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_42, 'Toothbrush and toothpaste', 120.00, 10),
(@product_id_42, 'Toothbrush', 100.00, 10),
(@product_id_42, 'Toothpaste', 50.00, 10);


-- Product 43: Trixie Foam Dry Shampoo
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    55,
    'Trixie Foam Dry Shampoo',
    'Foam dry shampoo for cleaning your pet’s coat without any water, suitable for dogs, cats and other small pets, deodorising and caring for fur with a ready-to-use foam.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 9/TrixieFoamDryShampoo.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 9/TrixieFoamDryShampoo1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 9/TrixieFoamDryShampoo2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_43 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_43, '230 ml', 300.00, 10),
(@product_id_43, '500 ml', 500.00, 10),
(@product_id_43, '1 L', 800.00, 10);


-- Product 44: Trixie Dog Dirt Bag Dispenser, Plastic
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    55,
    'Trixie Dog Dirt Bag Dispenser, Plastic',
    'Foam dry shampoo for cleaning your pet’s coat without any water, suitable for dogs, cats and other small pets, deodorising and caring for fur with a ready-to-use foam.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 10/TrixieDogDirtBagDispenser,Plastic.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 10/TrixieDogDirtBagDispenser,Plastic1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 5 - Dog Grooming & Care/Category 5/Product 10/TrixieDogDirtBagDispenser,Plastic2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_44 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_44, 'Dispenser + 2 Rolls (20 bags per roll)', 130.00, 10),
(@product_id_44, 'Dispenser + 4 Rolls (20 bags per roll)', 200.00, 10),
(@product_id_44, 'Dispenser + 8 Rolls (20 bags per roll)', 300.00, 10);


-- Product 45: TIAKI Cova Feeding Station
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    56,
    'TIAKI Cova Feeding Station',
    'Foam dry shampoo for cleaning your pet’s coat without any water, suitable for dogs, cats and other small pets, deodorising and caring for fur with a ready-to-use foam.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 1/TIAKICovaFeedingStation.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 1/TIAKICovaFeedingStation1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 1/TIAKICovaFeedingStation2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_45 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_45, '2 x 350ml (diameter 15cm)', 370.00, 10),
(@product_id_45, '2 x 700ml (diameter 20cm)', 470.00, 10);


-- Product 46: Trixie Junior Lick'n'Snack Licking Plate
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    56,
    'Trixie Junior Lick\'n\'Snack Licking Plate',
    'Fillable licking plate with grooves, ideal for puppies. Helps prevent gobbling food and can be filled with pastes or wet food. Made of hygienic, tooth-friendly material, dishwasher safe.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 2/TrixieJuniorLick_n_SnackLickingPlate.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 2/TrixieJuniorLick_n_SnackLickingPlate1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 2/TrixieJuniorLick_n_SnackLickingPlate2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_46 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_46, 'Approx. 15cm diameter', 120.00, 10);


-- Product 47: Trixie Eat on Feet Bowl Set with Stand
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    56,
    'Trixie Eat on Feet Bowl Set with Stand',
    'Stylish set of two ceramic bowls with a powder-coated metal stand, suitable for both wet and dry food or water, with anti-slip feet for security, as well as being dishwasher-proof for hygiene.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 3/TrixieEatonFeetBowlSetwithStand.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 3/TrixieEatonFeetBowlSetwithStand1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 3/TrixieEatonFeetBowlSetwithStand2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_47 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_47, '2 x 0.6 l', 430.00, 10),
(@product_id_47, '2 x 1.6 l ', 560.00, 10),
(@product_id_47, 'Dispenser + 8 Rolls (20 bags per roll)', 300.00, 10);


-- Product 48: Dog Bowl Stand with 2 Stainless Steel Bowls
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    56,
    'Dog Bowl Stand with 2 Stainless Steel Bowls',
    'Fully adjustable stand with stainless steel bowls. Choose the right feeding height to ensure your pets enjoy feeding times. Suitable for large breeds, older dogs and for dogs which are still growing.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 4/DogBowlStandwith2StainlessSteelBowls.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 4/DogBowlStandwith2StainlessSteelBowls1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 4/DogBowlStandwith2StainlessSteelBowls2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_48 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_48, '300 ml', 130.00, 10);


-- Product 49: TIAKI double bowl owl
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    56,
    'TIAKI double bowl owl',
    'Cuddly double bowl for cats and smaller dogs, in cute owl design, 2 removable stainless steel bowls, dishwasher-safe, slightly inclined, with non-slip base, colour.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 5/TIAKIdoublebowlowl.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 5/TIAKIdoublebowlowl1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 5/TIAKIdoublebowlowl2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_49 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_49, '300 ml', 230.00, 10);


-- Product 50: Food & Water Dispenser 2 in 1
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    56,
    'Food & Water Dispenser 2 in 1',
    '2 in 1 is both a food AND water dispenser that provides your pet with regular food portions and a constant supply of water.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 6/Food&WaterDispenser2in1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 6/Food&WaterDispenser2in11.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 6/Food&WaterDispenser2in12.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_50 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_50, '5 litre', 120.00, 10);


-- Product 51: U-Shaped Dog Bowl Stand with Stainless Steel Bowls
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    56,
    'U-Shaped Dog Bowl Stand with Stainless Steel Bowls',
    'Very stable dog bar with 2 stainless steel bowls included. The bar is suitable for all dog breeds and the adjustable height makes mealtimes much easier for your pets.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 7/U-ShapedDogBowlStandwithStainlessSteelBowls.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 7/U-ShapedDogBowlStandwithStainlessSteelBowls1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 7/U-ShapedDogBowlStandwithStainlessSteelBowls2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_51 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_51, '2 x 1.6 litre', 2200.00, 10);


-- Product 52: Kerbl Pet ecoFLEX
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    56,
    'Kerbl Pet ecoFLEX',
    'Food storage and feeding station in one, featuring 2 stainless steel bowls, innovative ecoFlex® made from 60% recycled plastic, weather resistant making it ideal for outdoors, easy assembly, spacious.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 8/KerblPetecoFLEX.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 8/KerblPetecoFLEX1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 8/KerblPetecoFLEX2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_52 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_52, '2 x 1.2l, 54 x 30 x 39.5cm (L x W x H)', 7200.00, 10),
(@product_id_52, 'Dispenser + 4 Rolls (20 bags per roll)', 200.00, 10),
(@product_id_52, 'Dispenser + 8 Rolls (20 bags per roll)', 300.00, 10);


-- Product 53: TIAKI Food and Water Dispenser 2-in-1
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    56,
    'TIAKI Food and Water Dispenser 2-in-1',
    '2-in-1 feeding station for dogs & cats, water station with bottle that automatically refills the bowl with water using suction, feeding station with stainless steel bowl & anti-gulping bowl.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 9/TIAKIFoodandWaterDispenser2-in-1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 9/TIAKIFoodandWaterDispenser2-in-11.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 9/TIAKIFoodandWaterDispenser2-in-12.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_53 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_53, '200ml Bowl & 500ml Bottle', 899.00, 10);


-- Product 54: Wolf of Wilderness Stainless Steel Non-Slip Dog Bowl
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    56,
    'Wolf of Wilderness Stainless Steel Non-Slip Dog Bowl',
    'A hygienic dog bowl made from easy to clean, hard-wearing stainless steel. The taste-neutral food bowl has a non-slip, silicone base, is dishwasher-safe and won\'t break if you drop it. Wild and Free!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 10/WolfofWildernessStainlessSteelNon-SlipDogBowl.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 10/WolfofWildernessStainlessSteelNon-SlipDogBowl1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 6 - Dog Bowls & Feeders/Category 6/Product 10/WolfofWildernessStainlessSteelNon-SlipDogBowl2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_54 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_54, '0.85 litre, diameter 23cm', 129.00, 10);


-- Product 55: Dog Overall Mint
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    57,
    'Dog Overall Mint',
    'Functional dog overalls with mid-length sleeves to offer all-round protection against wet, cold and dirt. It is light and comfortable, with fleece filling and drawstring to ensure it can be adjusted.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 1/DogOverallMint.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 1/DogOverallMint1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 1/DogOverallMint2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_55 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_55, 'Size L: 35cm Zip Length', 1600.00, 10);


-- Product 56: Sports & Protective Dog Boots
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    57,
    'Sports & Protective Dog Boots',
    'Smart looking set of 4 protective dog boots, made from faux leather and polyester, with anti-slip profile and reflective Velcro fastening. A great way to protect your dog\'s paws.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 2/Sports&ProtectiveDogBoots.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 2/Sports&ProtectiveDogBoots1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 2/Sports&ProtectiveDogBoots2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_56 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_56, 'Small', 190.00, 10),
(@product_id_56, 'Medium', 198.00, 10),
(@product_id_56, 'Large', 200.00, 10),
(@product_id_56, 'XL', 250.00, 10);


-- Product 57: Kooa Deluxe Microfibre Dog Bathrobe
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    57,
    'Kooa Deluxe Microfibre Dog Bathrobe',
    'Very absorbent bathrobe for small to large dogs, dries dogs quickly & thoroughly after bathing or swimming, prevents the dog from cooling down, double-layered, made of quick-drying microfibre.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 3/kooaDeluxeMicrofibreDogBathrobe.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 3/kooaDeluxeMicrofibreDogBathrobe1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 3/kooaDeluxeMicrofibreDogBathrobe2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_57 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_57, 'Small', 190.00, 10),
(@product_id_57, 'Medium', 198.00, 10),
(@product_id_57, 'Large', 200.00, 10),
(@product_id_57, 'XL', 250.00, 10);


-- Product 58: JULIUS-K9 IDC
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    57,
    'JULIUS-K9 IDC',
    'Hard-wearing saddle harness for dogs, ergonomic fit, fully adjustable, break-proof buckle, reflective elements, scratch-resistant, zooplus-exclusive colour combination, made of polyester.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 4/JULIUS-K9IDC.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 4/JULIUS-K9IDC1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 4/JULIUS-K9IDC2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_58 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_58, 'Small', 190.00, 10),
(@product_id_58, 'Medium', 198.00, 10),
(@product_id_58, 'Large', 200.00, 10),
(@product_id_58, 'XL', 250.00, 10);


-- Product 59: Norwegian Dog Pullover
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    57,
    'Norwegian Dog Pullover',
    'A lovely dog pullover in a Norwegian knit pattern. Treat your dog to this warm 100% cotton knit with a soft, cosy fleece lining, turtle neck and Velcro tapes and make a fashion statement this season.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 5/NorwegianDogPullover.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 5/NorwegianDogPullover1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 5/NorwegianDogPullover2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_59 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_59, 'Small', 190.00, 10),
(@product_id_59, 'Medium', 198.00, 10),
(@product_id_59, 'Large', 200.00, 10),
(@product_id_59, 'XL', 250.00, 10);


-- Product 60: Nomad Tales Spirit USB LED Nylon Collar
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    57,
    'Nomad Tales Spirit USB LED Nylon Collar',
    'nnovative collar for dogs with LED function, can be switched on in the dark for better visibility, 3 different light modes, infinitely adjustable in size, rechargeable, made of nylon.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 6/NomadTalesSpiritUSBLEDNylonCollar.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 6/NomadTalesSpiritUSBLEDNylonCollar1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 6/NomadTalesSpiritUSBLEDNylonCollar2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_60 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_60, 'Small', 190.00, 10),
(@product_id_60, 'Medium', 198.00, 10),
(@product_id_60, 'Large', 200.00, 10);


-- Product 61: Trixie Protective Socks
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    57,
    'Trixie Protective Socks',
    'Protective socks for cats and dogs, helping to keep any wounds or bandages dry and clean, suitable for front and back paws, made from flexible silicone material that can be cut to size.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 7/TrixieProtectiveSocks.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 7/TrixieProtectiveSocks1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 7/TrixieProtectiveSocks2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_61 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_61, 'Small', 190.00, 10),
(@product_id_61, 'Medium', 198.00, 10),
(@product_id_61, 'Large', 200.00, 10);


-- Product 62: TIAKI Spooky Costume
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    57,
    'TIAKI Spooky Costume',
    'Fun Halloween costume for small dogs and cats, reminiscent of an iconic horror movie doll. Includes an easy to put on body costume and a mask for the ears.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 8/TIAKISpookyCostume.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 8/TIAKISpookyCostume1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 8/TIAKISpookyCostume2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_62 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_62, 'Small', 190.00, 10),
(@product_id_62, 'Medium', 198.00, 10),
(@product_id_62, 'Large', 200.00, 10);


-- Product 63: Rukka Summer Dog Shoes
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    57,
    'Rukka Summer Dog Shoes',
    'Lightweight grey summer shoes for dogs, made of breathable mesh material. Protects dogs\' paws from hot pavements or rough gravel, quick and easy to put on, with reflective details.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 9/RukkaSummerDogShoes.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 9/RukkaSummerDogShoes1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 9/RukkaSummerDogShoes2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_63 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_63, 'Size 2: 33mm Sole Width (2 Pieces) ', 440.00, 10),
(@product_id_63, 'Size 3: 35mm Sole Width (2 Pieces) ₱540', 490.00, 10),
(@product_id_63, 'Size 4: 40mm Sole Width (2 Pieces)', 540.00, 10),
(@product_id_63, 'Size 5: 48mm Sole Width (2 Pieces)', 640.00, 10);


-- Product 64: Hurtta Bare Rain Overalls Pine
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    57,
    'Hurtta Bare Rain Overalls Pine',
    'High-quality dog overalls made from water-resistant Oeko-Tex material, with fully sealed stitching, offering optimum protection from head to foot, individually adjustable for a great fit.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 10/HurttaBareRainOverallsPine.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 10/HurttaBareRainOverallsPine1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 7 - Dog Clothing/Category 7/Product 10/HurttaBareRainOverallsPine2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_64 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_64, 'Approx. 35cm Back Length', 1200.00, 10),
(@product_id_64, 'Approx. 50cm Back Length', 1500.00, 10);


-- Product 65: Spikey the Hedgehog Dog Toy with Squeaker
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    58,
    'Spikey the Hedgehog Dog Toy with Squeaker',
    'A hedgehog toy for dogs, made from padded cotton with an integrated squeaker and string for its spines. Ideal for hours of fun playing and cuddling.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 1/SpikeytheHedgehogDogToywithSqueaker.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 1/SpikeytheHedgehogDogToywithSqueaker1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 1/SpikeytheHedgehogDogToywithSqueaker2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_65 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_65, 'Approx. 17cm', 150.00, 10),
(@product_id_65, 'Approx. 25cm', 200.00, 10);


-- Product 66: KONG AirDog Squeakair Ball
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    58,
    'KONG AirDog Squeakair Ball',
    'A sporty tennis ball toy with an integrated squeaker, perfect for playful and sporty dogs. With a robust felt fabric cover that is gentle on your dog\'s teeth as it chews. Perfect for Ball Launchers!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 2/KONGAirDogSqueakairBall.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 2/KONGAirDogSqueakairBall1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 2/KONGAirDogSqueakairBall2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_66 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_66, 'Medium', 380.00, 10),
(@product_id_66, 'Large', 440.00, 10);


-- Product 67: Chuckit! Ultra Ball
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    58,
    'Chuckit! Ultra Ball',
    'A sporty tennis ball toy with an integrated squeaker, perfect for playful and sporty dogs. With a robust felt fabric cover that is gentle on your dog\'s teeth as it chews. Perfect for Ball Launchers!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 3/Chuckit!UltraBall.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 3/Chuckit!UltraBall1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 3/Chuckit!UltraBall2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_67 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_67, 'Small', 380.00, 10),
(@product_id_67, 'Medium', 440.00, 10),
(@product_id_67, 'Large', 500.00, 10);


-- Product 68: Chuckit! Ultra Squeaker Ball
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    58,
    'Chuckit! Ultra Squeaker Ball',
    'An extra-bouncy, durable rubber ball with a squeaker. Ideal for playing fetch & retrieving in water as well as on dry land. Suitable for the Chuckit Ball Launcher. Colour: Orange/blue.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 4/Chuckit!UltraSqueakerBall.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 4/Chuckit!UltraSqueakerBall1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 4/Chuckit!UltraSqueakerBall2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_68 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_68, 'Small', 380.00, 10),
(@product_id_68, 'Medium', 440.00, 10),
(@product_id_68, 'Large', 500.00, 10);


-- Product 69: Dog Toy Cotton Rope Animal
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    58,
    'Dog Toy Cotton Rope Animal',
    'The robust material will withstand even the sharp teeth of growing puppies. Dogs love measuring their strength and this toy will be just the right tool for them, while providing lots of play and fun. A great side-effect: the tooth-cleaning properties of the cotton fibres.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 5/DogToyCottonRopeAnimal.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 5/DogToyCottonRopeAnimal1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 5/DogToyCottonRopeAnimal2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_69 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_69, 'Monkey approx 18cm', 210.00, 10),
(@product_id_69, 'Elephant approx 20cm', 250.00, 10),
(@product_id_69, 'Giraffe approx 22cm', 300.00, 10),
(@product_id_69, 'Hippo approx 25cm', 350.00, 10),
(@product_id_69, 'Lion approx 30cm', 400.00, 10);


-- Product 70: KONG Wild Knots Bears
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    58,
    'KONG Wild Knots Bears',
    'A cuddly toy for dogs, with a soft plush exterior and a squeaker inside. The integrated knots make it even more fun to play with, and the soft plush is gentle on your dog\'s teeth.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 6/KONGWildKnotsBears.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 6/KONGWildKnotsBears1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 6/KONGWildKnotsBears2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_70 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_70, 'Small', 460.00, 10),
(@product_id_70, 'Medium', 740.00, 10),
(@product_id_70, 'Large', 900.00, 10);


-- Product 71: TIAKI Dog Toy Octopus
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    58,
    'TIAKI Dog Toy Octopus',
    'Resistant dog toy made of rope, in the shape of an octopus, for playing and chewing, can support dental care, also suitable for puppies, non-toxic materials, made of cotton and polyester.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 7/TIAKIDogToyOctopus.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 7/TIAKIDogToyOctopus1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 7/TIAKIDogToyOctopus2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_71 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_71, 'Approx. 17cm', 150.00, 10),
(@product_id_71, 'Approx. 25cm', 200.00, 10);


-- Product 72: TIAKI Dog Toy Rope Ball
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    58,
    'TIAKI Dog Toy Rope Ball',
    'Sophisticated dog toy in ball shape, made of durable rope, for exuberant tugging and chewing games, supports mouth hygiene, can help puppies with teething, made of polyester & cotton',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 8/TIAKIDogToyRopeBall.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 8/TIAKIDogToyRopeBall1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 8/TIAKIDogToyRopeBall2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_72 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_72, 'Approx. 17cm', 150.00, 10),
(@product_id_72, 'Approx. 25cm', 200.00, 10),
(@product_id_72, 'Approx. 30cm', 250.00, 10);


-- Product 73: TIAKI Latex Dog Toy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    58,
    'TIAKI Latex Dog Toy',
    'Cute, handy toy for dogs with integrated squeaker in the shape of a small dog with a large nose made of non-toxic, tooth-friendly and easy-to-wash latex material.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 9/TIAKILatexDogToy.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 9/TIAKILatexDogToy1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 9/TIAKILatexDogToy2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_73 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_73, '5 x 5 x 8cm (L x W x H)', 130.00, 10),
(@product_id_73, '10 x 10 x 15cm (L x W x H)', 200.00, 10),
(@product_id_73, '15 x 15 x 20cm (L x W x H)', 300.00, 10);


-- Product 74: KONG SqueakAir Ball with Rope
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    58,
    'KONG SqueakAir Ball with Rope',
    'This robust dog ball resembles a tennis ball, with rope & squeaker inside for added fun! It is made from natural rubber, which is kind to your dog’s teeth, & is perfect for throwing & fetching.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 10/KONGSqueakAirBallwithRope.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 10/KONGSqueakAirBallwithRope1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 8 - Dog Toys, Sports & Training/Category 8/Product 10/KONGSqueakAirBallwithRope2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_74 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_74, 'Small', 60.00, 10),
(@product_id_74, 'Medium', 90.00, 10),
(@product_id_74, 'Large', 150.00, 10);


-- Product 75: Sporty Pet Stroller for Small Dogs
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    59,
    'Sporty Pet Stroller for Small Dogs',
    'A very comfortable buggy for transporting smaller dog breeds or unwell dogs. Suitable for dogs up to 15kg. Ideal for long walks, when travelling, or in town. Colour: navy blue/grey',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 1/SportyPetStrollerforSmallDogs.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 1/SportyPetStrollerforSmallDogs1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 1/SportyPetStrollerforSmallDogs2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_75 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_75, 'Navy Blue & Grey', 3675.00, 10),
(@product_id_75, 'Pink & Grey', 3675.00, 10),
(@product_id_75, 'Black & Grey', 3675.00, 10);


-- Product 76: Stepway Pet Stairs
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    59,
    'Stepway Pet Stairs',
    'Practical steps to help your pet climb up and down, stable and non-slip, multi-use, remove cover to wash, easy to assemble, ideal for puppies, senior dogs and cats weighing up to 40kg, colour: grey',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 2/StepwayPetStairs.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 2/StepwayPetStairs1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 2/StepwayPetStairs2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_76 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_76, 'Medium: 40 x 40 x 30cm (L x W x H)', 975.00, 10),
(@product_id_76, 'Large: 40 x 40 x 40cm (L x W x H)', 1200.00, 10),
(@product_id_76, 'XLarge: 40 x 40 x 50cm (L x W x H)', 1500.00, 10);


-- Product 77: Trixie Capri Open Top Pet Carrier
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    59,
    'Trixie Capri Open Top Pet Carrier',
    'A sturdy transport box for cats and small dogs weighing up to 12kg, with openings at the top and the front, seatbelt attachment, stable, well ventilated, robust and easy to clean, made from plastic',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 3/TrixieCapriOpenTopPetCarrier.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 3/TrixieCapriOpenTopPetCarrier1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 3/TrixieCapriOpenTopPetCarrier2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_77 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_77, '61 x 40 x 38cm (L x W x H) ', 1575.00, 10),
(@product_id_77, '71 x 32 x 30cm (L x W x H)', 1600.00, 10),
(@product_id_77, '11 x 28 x 28cm (L x W x H)', 1900.00, 10);


-- Product 78: First Class Basic Transport Crate
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    59,
    'First Class Basic Transport Crate',
    'Foldable transport crate, ideal at home or when out and about, two mesh doors, frame supported with metal bars, easy assembly, good air circulation, with side pockets and cushion, made from nylon',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 4/FirstClassBasicTransportCrate.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 4/FirstClassBasicTransportCrate1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 4/FirstClassBasicTransportCrate2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_78 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_78, 'Small 53.5 x 38 x 46cm', 1875.00, 10),
(@product_id_78, 'Medium 61 x 46 x 51cm', 2000.00, 10),
(@product_id_78, 'Large 76 x 53 x 61cm', 2500.00, 10),
(@product_id_78, 'XLarge 91 x 61 x 66cm', 3000.00, 10);


-- Product 79: Savic Trotter 1 Happy Planet Transport Box
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    59,
    'Savic Trotter 1 Happy Planet Transport Box',
    'Transport carrier for cats and small dogs <5kg, made of 90% recycled plastic, strong and stable, natural colours, removable top half and mesh door, good air circulation, made of plastic.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 5/SavicTrotter1HappyPlanetTransportBox.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 5/SavicTrotter1HappyPlanetTransportBox1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 5/SavicTrotter1HappyPlanetTransportBox2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_79 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_79, 'Small 49 x 33 x 30cm ', 1275.00, 10),
(@product_id_79, 'Medium 58 x 38 x 36cm', 1500.00, 10),
(@product_id_79, 'Large 68 x 42 x 42cm', 2000.00, 10);


-- Product 80: Dog Car Seat
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    59,
    'Dog Car Seat',
    'Foldable car seat for small dogs. With a reversible plush cushion and practical strap fastenings to help keep your dog safe while travelling.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 6/DogCarSeat.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 6/DogCarSeat1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 6/DogCarSeat2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_80 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_80, 'Small 47.5 x 38 x 27.5 cm', 2999.00, 10),
(@product_id_80, 'Medium 55 x 45 x 30 cm', 3500.00, 10),
(@product_id_80, 'Large 65 x 50 x 35 cm', 4000.00, 10);


-- Product 81: HAFENBANDE Room Cage Twin Door
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    59,
    'HAFENBANDE Room Cage Twin Door',
    'Practical Indoor kennel for dogs, mobile & safe retreat, 2 doors with 2 latches each, removable bottom tray with rim, practical carrying handle, quick assembly, made of metal & plastic',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 7/HAFENBANDERoomCageTwinDoor.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 7/HAFENBANDERoomCageTwinDoor1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 7/HAFENBANDERoomCageTwinDoor2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_81 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_81, 'Small 47.5 x 38 x 27.5 cm', 2999.00, 10),
(@product_id_81, 'Medium 55 x 45 x 30 cm', 3500.00, 10),
(@product_id_81, 'Large 65 x 50 x 35 cm', 4000.00, 10);


-- Product 82: Protective Boot Mat Mucky Pup
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    59,
    'Protective Boot Mat Mucky Pup',
    'An easy-to-clean mat to protect you boot area from hairs and dirt, high-quality material, available in two colours.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 8/ProtectiveBootMatMuckyPup.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 8/ProtectiveBootMatMuckyPup1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 8/ProtectiveBootMatMuckyPup2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_82 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_82, '150 x 120.5 cm (L x W)', 600.00, 10),
(@product_id_82, '150 x 150 cm (L x W)', 700.00, 10),
(@product_id_82, '150 x 180 cm (L x W)', 800.00, 10);


-- Product 83: Trixie Dog Car Harness
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    59,
    'Trixie Dog Car Harness',
    'Harness for dogs, ideal for secure fixation in the car, can also be used as a regular harness, adjustable on the neck and stomach, incl. adjustable seat belt, suitable for most seat belt locks.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 9/TrixieDogCarHarness.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 9/TrixieDogCarHarness1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 9/TrixieDogCarHarness2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_83 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_83, '150 x 120.5 cm (L x W)', 600.00, 10),
(@product_id_83, '150 x 150 cm (L x W)', 700.00, 10),
(@product_id_83, '150 x 180 cm (L x W)', 800.00, 10);


-- Product 84: Savic Dog Barrier 2
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    59,
    'Savic Dog Barrier 2',
    'No description available',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 10/SavicDogBarrier2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 10/SavicDogBarrier21.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 9 - Dog Crates and Dog Travel/Category 9/Product 10/SavicDogBarrier22.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_84 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_84, '150 x 120.5 cm (L x W)', 600.00, 10),
(@product_id_84, '150 x 150 cm (L x W)', 700.00, 10),
(@product_id_84, '150 x 180 cm (L x W)', 800.00, 10);


-- Product 85: HUNTER London Collar
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    60,
    'HUNTER London Collar',
    'Robust dog collar in a stylish olive green, ideal for small to large dogs and fully adjustable, with a practical safety closure and made from tear-resistant material that is light and flexible.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 1/HUNTERLondonCollar.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 1/HUNTERLondonCollar1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 1/HUNTERLondonCollar2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_85 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_85, 'Vario Basic Size S: 24-36cm neck circumference, 10mm (W) ', 125.00, 10),
(@product_id_85, 'Vario Basic Size M: 30-50cm neck circumference, 15mm (W)', 150.00, 10),
(@product_id_85, 'Vario Basic Size L: 40-65cm neck circumference, 20mm (W)', 200.00, 10);


-- Product 86: Flexi New Comfort Tape Lead Large
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    60,
    'Flexi New Comfort Tape Lead Large',
    'An extendable tape lead for dogs up to 50kg, with a comfortable short-stroke braking system and permanent stop function to fix the lead, offering freedom for your dog to explore.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 2/FlexiNewComfortTapeLeadLarge.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 2/FlexiNewComfortTapeLeadLarge1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 2/FlexiNewComfortTapeLeadLarge2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_86 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_86, 'Black', 2150.00, 10),
(@product_id_86, 'Blue', 2150.00, 10),
(@product_id_86, 'Pink', 2150.00, 10);


-- Product 87: TIAKI Reflective Rubber Dog Leash
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    60,
    'TIAKI Reflective Rubber Dog Leash',
    'Reflective leash for dogs, with useful non-slip surface, durable & weatherproof, triple length adjustable for quick shorting, with decorative TIAKI patch, made of polyester.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 3/TIAKIReflectiveRubberDogLeash.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 3/TIAKIReflectiveRubberDogLeash1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 3/TIAKIReflectiveRubberDogLeash2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_87 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_87, '200 cm long, 20 mm wide', 350.00, 10),
(@product_id_87, '200 cm long, 25 mm wide', 400.00, 10),
(@product_id_87, '200 cm long, 30 mm wide', 450.00, 10);


-- Product 88: Nomad Tales Tartan Collar, Lead, Poop Bag Dispenser & Scrunchie Set
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    60,
    'Nomad Tales Tartan Collar, Lead, Poop Bag Dispenser & Scrunchie Set',
    'Beautiful collection for dogs and owners, with matching collar, lead, poop bag dispenser and hair scrunchie in stylish tartan design, made of soft, robust fabric, ideal for outings together.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 4/NomadTalesTartanCollar,Lead,PoopBagDispenser&ScrunchieSet.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 4/NomadTalesTartanCollar,Lead,PoopBagDispenser&ScrunchieSet1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 4/NomadTalesTartanCollar,Lead,PoopBagDispenser&ScrunchieSet2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_88 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_88, 'Collar Size S + Lead + Poop Bag Dispenser + Scrunchie', 1000.00, 10),
(@product_id_88, 'Collar Size M + Lead + Poop Bag Dispenser + Scrunchie', 1200.00, 10),
(@product_id_88, 'Collar Size L + Lead + Poop Bag Dispenser + Scrunchie', 1500.00, 10);


-- Product 89:  Nomad Tales Bloom Retractable Lead Liberty
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    60,
    ' Nomad Tales Bloom Retractable Lead Liberty',
    'High-quality retractable lead for dogs, with solid & reflective strap, easy to use, with comfortable soft grip, with practical short stop and locking function, pretty design, made of plastic.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 5/NomadTalesBloomRetractableLeadLiberty.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 5/NomadTalesBloomRetractableLeadLiberty1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 5/NomadTalesBloomRetractableLeadLiberty2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_89 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_89, 'Size S: up to 11.8kg', 580.00, 10),
(@product_id_89, 'Size M: up to 15kg', 680.00, 10),
(@product_id_89, 'Size L: up to 25kg', 780.00, 10);


-- Product 90: Flexi Neon Dog Lead
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    60,
    'Flexi Neon Dog Lead',
    'Modern and safe: a retractable lead in black casing with a yellow print pattern. The 5m lead is bright neon yellow. Stay visible when the light starts to fades.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 6/FlexiNeonDogLead.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 6/FlexiNeonDogLead1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 6/FlexiNeonDogLead2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_90 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_90, 'Black / Neon', 2650.00, 10),
(@product_id_90, 'Pink / Neon', 2650.00, 10),
(@product_id_90, 'Blue / Neon', 2650.00, 10);


-- Product 91: HUNTER Retriever Slip Lead
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    60,
    'HUNTER Retriever Slip Lead',
    'Collar and lead in one piece, ideal for dogs that love water, available in a variety of colours.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 7/HUNTERRetrieverSlipLead.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 7/HUNTERRetrieverSlipLead1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 7/HUNTERRetrieverSlipLead2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_91 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_91, 'Black', 2100.00, 10),
(@product_id_91, 'Red', 2100.00, 10);


-- Product 92: Nomad Tales Spirit Collar, tangerine
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    60,
    'Nomad Tales Spirit Collar, tangerine',
    'Dew dog collar in first-class quality, size adjustable according to dog, lightweight and comfortable to wear, with vegan leather, cheerful colour scheme, with chic patch, made of polyester.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 8/NomadTalesSpiritCollar,tangerine.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 8/NomadTalesSpiritCollar,tangerine1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 8/NomadTalesSpiritCollar,tangerine2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_92 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_92, 'Small', 460.00, 10),
(@product_id_92, 'Medium', 740.00, 10),
(@product_id_92, 'Large', 900.00, 10);


-- Product 93: Flexi Back Cushioning Belt
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    60,
    'Flexi Back Cushioning Belt',
    'Re-absorbing strap to complement the dog leash, elastic strap piece dampens the pull on collar & harness, protects the joint, can be combined with all flexi leashes, available in two different sizes.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 9/FlexiBackCushioningBelt.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 9/FlexiBackCushioningBelt1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 9/FlexiBackCushioningBelt2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_93 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_93, 'Small to Medium: 47 cm long', 430.00, 10),
(@product_id_93, 'Medium to Large: 60 cm long', 500.00, 10),
(@product_id_93, 'Large to Extra Large: 70 cm long', 600.00, 10);


-- Product 94: Trixie Reflective Paws Dog Collar
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    1,
    60,
    'Trixie Reflective Paws Dog Collar',
    'Chic, reflective Trixie dog collar made of nylon with a cute paw pattern. Offers your and your dog safety when walking at twilight or in the dark.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 10/TrixieReflectivePawsDogCollar.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 10/TrixieReflectivePawsDogCollar1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Dog/Category 10 - Dog Leads & Collars/Category 10/Product 10/TrixieReflectivePawsDogCollar2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_94 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_94, 'Small to Medium: 47 cm long', 430.00, 10),
(@product_id_94, 'Medium to Large: 60 cm long', 500.00, 10),
(@product_id_94, 'Large to Extra Large: 70 cm long', 600.00, 10);


-- Product 95: Orijen Six Fish
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    61,
    'Orijen Six Fish',
    'Premium dry cat food made with six wild-caught fish varieties (salmon, herring, flounder, mackerel, redfish, hake). High protein (40%) builds lean muscle, limited carbs (20%) maintain healthy weight. Rich in omega fatty acids for healthy skin and coat. Grain-free with no artificial ingredients, perfect for cats with sensitivities.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 1 - Orijen Original/OrijenCat.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 1 - Orijen Original/OrijenCat2.png',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_95 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_95, '2kg', 1999.00, 10),
(@product_id_95, '5.4kg', 4599.00, 10);


-- Product 96: Aozi Pure Natural Organic Dry Cat Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    61,
    'Aozi Pure Natural Organic Dry Cat Food',
    'USDA-certified organic cat food with free-range chicken (30% protein) as main ingredient. Contains organic sweet potatoes, peas, and flaxseed for balanced nutrition. Free from common allergens (corn, wheat, soy) and artificial preservatives. Includes organic cranberries for urinary health and prebiotic fiber for digestion. Available in age-specific formulas.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 1 - Orijen Original/OrijenCat.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 1 - Orijen Original/OrijenCat2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 1 - Orijen Original/OrijenCat3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_96 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_96, 'Kitten (2.5kg)', 979.00, 10),
(@product_id_96, 'Adult (2.5kg)', 949.00, 10);


-- Product 97: Powercat Fresh Ocean Tuna Dry Cat Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    61,
    'Powercat Fresh Ocean Tuna Dry Cat Food',
    'Seafood kibble with real tuna chunks (26% protein) that cats love. Contains taurine for heart and vision health plus balanced minerals for urinary tract care. Crunchy texture reduces plaque buildup while omega oils promote healthy skin. Includes vitamin E for immune support with no artificial colors. Affordable quality nutrition.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 2 - Aozi Cat Food/AoziAdult.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 2 - Aozi Cat Food/AoziAdult2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 2 - Aozi Cat Food/AoziKitten.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_97 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_97, '1.5kg', 799.00, 10),
(@product_id_97, '3kg', 1499.00, 10),
(@product_id_97, '7kg', 3299.00, 10);


-- Product 98: Vitality Cat Care Dry Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    61,
    'Vitality Cat Care Dry Food',
    'Complete nutrition with 26 vitamins and minerals formulated by veterinary experts. Features special X-shaped kibble that cleans teeth while eating, reducing tartar by up to 80%. Chicken-based protein (32%) maintains muscle with controlled phosphorus for kidney health. Contains antioxidant-rich berries for immune support and L-carnitine for healthy weight.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 3 - PowerCat/Powercat-Kibble-Ocean-tuna-fish.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 3 - PowerCat/PowerCat3.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 3 - PowerCat/PowerCatDry.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_98 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_98, '2kg', 1199.00, 10),
(@product_id_98, '4kg', 2299.00, 10);


-- Product 99: Brit Care Kitten
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    61,
    'Brit Care Kitten',
    'High-protein (38%) formula specifically designed for growing kittens with increased calories for development. Contains DHA from fish oil for brain and vision development. Features small, soft kibble (4mm) for developing teeth. Easily digestible proteins reduce stool odor, with prebiotics for sensitive digestion and optimal calcium/phosphorus for bone growth.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 4 - Vitality/Vitality3.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 4 - Vitality/VitalityCat1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 4 - Vitality/VitalityCat2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_99 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_99, '1kg', 1200.00, 10),
(@product_id_99, '2kg', 2300.00, 10);


-- Product 100: Natural Balance
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    61,
    'Natural Balance',
    'Limited-ingredient cat food with single animal protein source (30% duck, salmon, or venison) and minimal carbohydrates. Ideal for cats with allergies, food sensitivities, or IBD. Contains no grains, dairy, eggs, potatoes or artificial additives. Features balanced omega fatty acids to reduce inflammation and controlled minerals to prevent urinary crystals. Every batch is safety-tested.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 6 - Natural Balance/NaturalBalanceSalmon.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 6 - Natural Balance/NaturalBalanceChicken.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 6 - Natural Balance/NaturalBalance1.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_100 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_100, 'Duck (2.2kg)', 1899.00, 10),
(@product_id_100, 'Salmon (2.2kg)', 1899.00, 10),
(@product_id_100, 'Chicken (2.2kg)', 1899.00, 10);


-- Product 101: Monello Cat Food Adult
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    61,
    'Monello Cat Food Adult',
    'Premium Brazilian cat food with 34% protein and unique star-shaped kibble that reduces plaque by up to 70%. Contains pH-balancing minerals to prevent urinary crystals and FOS prebiotics for better digestion. Features natural antioxidants from rosemary and green tea instead of artificial preservatives. Comes in resealable bag with oxygen barrier technology.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 7 - Monello/MonelloCatFOodAdult.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 7 - Monello/MonelloCatFOod2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 7 - Monello/MonelloCatFood3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_101 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_101, '1kg', 799.00, 10),
(@product_id_101, '3kg', 2199.00, 10),
(@product_id_101, '7.5kg', 4899.00, 10);


-- Product 102: Special Cat Urinary Dry Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    61,
    'Special Cat Urinary Dry Food',
    'Veterinarian-developed formula that maintains urinary pH between 6.2-6.5 through controlled mineral levels. Prevents and dissolves struvite crystals while providing complete nutrition. Contains cranberry extract to prevent urinary tract infections and higher moisture content (9%) for better hydration. Enhanced with L-methionine to naturally acidify urine.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 8 - Special Cat Urinary/SpecialCatUrinary.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 8 - Special Cat Urinary/SpecialCatKibble.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 8 - Special Cat Urinary/SpecialCatUrinary2.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_102 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_102, '1.5kg', 1299.00, 10),
(@product_id_102, '3kg', 2399.00, 10);


-- Product 103: Smart Heart Adult Cat Food Chicken And Tuna
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    61,
    'Smart Heart Adult Cat Food Chicken And Tuna',
    'Affordable quality nutrition with balanced 28% protein to 12% fat ratio to maintain healthy weight. Contains real chicken as main ingredient with natural vitamin E preservatives. Fortified with essential vitamins (A, D3, E, B-complex) plus taurine for heart/eye health and zinc/biotin for healthy skin and coat. Free from artificial colors and harmful preservatives.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 9 - Smart Heart Cat Food/SmartHeartCat.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 9 - Smart Heart Cat Food/SmartHeart2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 9 - Smart Heart Cat Food/SmartHeartKibble.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_103 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_103, '1.2kg', 499.00, 10),
(@product_id_103, '3kg', 1199.00, 10),
(@product_id_103, '7kg', 2599.00, 10);


-- Product 104: Zoi Cat Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    61,
    'Zoi Cat Food',
    'Cat Food is suitable for all breeds of cats. Complete with value from vitamins. Minerals and amino acids are essential to the cat’s body so that your beloved cat is healthy and complete.Low sodium formula. Maintain gums and teeth. Reduce plaque and limestone stains.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 10 - Zoi Cat/ZoiCat.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 10 - Zoi Cat/ZoiCat2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 1 - Dry Cat Food/Category 1 - Products/Product 10 - Zoi Cat/ZoiCatKibble.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_104 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_104, '1.8kg', 1399.00, 10),
(@product_id_104, '6kg', 3999.00, 10);


-- Product 105: Royal Canin Light Weight Care Wet Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    62,
    'Royal Canin Light Weight Care Wet Food',
    'Low-calorie wet food (63 kcal/can) that satisfies hunger while promoting weight loss. Contains special protein blend (10%) to preserve lean muscle and L-carnitine to convert fat to energy. Features unique fiber blend for increased fullness between meals. Soft mousse texture appeals to picky eaters and ensures easy digestion. Provides 100% complete nutrition despite reduced calories.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 1 - Royal Canine Light Weight/RoyalCanineLigh3.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 1 - Royal Canine Light Weight/RoyalCanineLight.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 1 - Royal Canine Light Weight/RoyalCanineLight2.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_105 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_105, '85g pouch (12-pack)', 999.00, 10),
(@product_id_105, '85g pouch (24-pack)', 1899.00, 10);


-- Product 106: Feline Gourmet Fresh Tuna and Tender Chicken Wet Cat Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    62,
    'Feline Gourmet Fresh Tuna and Tender Chicken Wet Cat Food',
    'Premium human-grade wet food with visible meat chunks (50% meat content) in rich savory gravy. Available in chicken breast and Tuna varieties. Slow-cooked in small batches to preserve nutrients and enhance flavor. Contains no by-products, artificial preservatives, or thickeners. High moisture content (82%) supports urinary tract health. Comes in BPA-free, easy-open 3oz cans.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 2- Feline Gourmet/feline-gourmet-sardine-cutlets-with-shrimp-chicken-400g-cat-wet-food.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 2- Feline Gourmet/FelineGourmet1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 2- Feline Gourmet/FelineGourmet2.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_106 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_106, '1 can 400g', 190.00, 10),
(@product_id_106, '2 cans 400g', 360.00, 10);


-- Product 107: Purina Friskies Wet Cat Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    62,
    'Purina Friskies Wet Cat Food',
    'Classic meat and fish flavors in both gravy and pate textures. Available in variety packs featuring chicken, turkey, beef, and seafood options to prevent meal boredom. Each serving provides complete nutrition with added vitamins E, B-12, and D3. Affordable quality for multi-cat households. Features easy-open pull tabs on 5.5oz cans. Contains taurine for heart and vision support with no artificial colors.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 3 -Purina Friskies/PurinaFriskies1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 3 -Purina Friskies/PurinaFriskies2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 3 -Purina Friskies/PurinaFriskies3.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_107 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_107, 'Mixed Variety (5.5oz, 12-pack)', 499.00, 10),
(@product_id_107, 'Mixed Variety (5.5oz, 24-pack)', 899.00, 10);


-- Product 108: Weruva Chicken & Tuna Formula in Gravy Wet Cat Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    62,
    'Weruva Chicken & Tuna Formula in Gravy Wet Cat Food',
    'Your kitty will pounce on Weruva Kitten, Chicken & Tuna Formula in Gravy Wet Cat Food! This delicious medley of chicken and tuna is fortified with essential vitamins and minerals to support your kitten’s physical and mental growth. Each delightful dish offers the lean protein and moisture your furbaby needs to thrive. Weruva cat food is produced in human food facilities following strict global standards to ensure high quality meals for your precious puddy. Plus, it contains no by-products, corn, carrageenan, gluten, grain, soy or artificial colors and preservatives.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 4 - Weruva Chicken & Tuna Formula in Gravy/Weruva.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 4 - Weruva Chicken & Tuna Formula in Gravy/WeruvaChicken1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 4 - Weruva Chicken & Tuna Formula in Gravy/WeruvaPack.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_108 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_108, 'Minced Chicken & Pumpkin', 599.00, 10),
(@product_id_108, 'Pate Tuna & Salmon ', 599.00, 10),
(@product_id_108, 'Variety Pack (Fur Baby Favorites', 1099.00, 10);


-- Product 109: Aozi Tuna Wet Cat Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    62,
    'Aozi Tuna Wet Cat Food',
    'Certified organic wet food with 95% organic meat content and no artificial preservatives or colors. Features novel proteins ideal for cats with allergies to common proteins. Contains 5% organic vegetables for added nutrients and fiber. Packed in eco-friendly, BPA-free packaging from recycled materials. Free from carrageenan, gums, and artificial thickeners.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 5 - Aozi Tuna Wet Cat Food/AoziTuna1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 5 - Aozi Tuna Wet Cat Food/AoziTuna2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 5 - Aozi Tuna Wet Cat Food/AoziTuna3.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_109 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_109, '1 can 430g', 149.00, 10),
(@product_id_109, '2 can 430g', 260.00, 10);


-- Product 110: KitCat Gravy Wet Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    62,
    'KitCat Gravy Wet Food',
    'Grain-free recipe featuring shredded meat textures that mimic a cat\'s natural prey diet. Contains 65% high-quality animal proteins in shredded or flaked form in light broth. Enhanced with salmon oil (0.5%) for coat health and taurine (0.1%) for heart and eye support. No carrageenan, artificial thickeners, or gelling agents. Available in chicken and tuna flavor.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 6 - KitCat Gravy Wet Food/KitCatChicken2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 6 - KitCat Gravy Wet Food/KitCatCLassicChicken.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 6 - KitCat Gravy Wet Food/KitCatClassicTuna.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_110 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_110, 'Classic Tuna Flavor 70g', 799.00, 10),
(@product_id_110, 'Classic Chicken Flavor 70g', 799.00, 10);


-- Product 111: NaturLife Grain-free Wet Cat Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    62,
    'NaturLife Grain-free Wet Cat Food',
    'Holistic recipe for cats with sensitive digestion or IBD symptoms. Contains single-source novel proteins (rabbit, duck, or venison) at 60% meat content. Enhanced with digestive enzymes to break down food for easier absorption. Includes 3% pumpkin as natural fiber to regulate digestion. Free from common allergens including grains, dairy, and eggs. Available in easy-open 3oz cans with resealable lids.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 7 - NaturLife Grain-free/NaturLife1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 7 - NaturLife Grain-free/NaturLife2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 7 - NaturLife Grain-free/NaturLife3.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_111 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_111, '1 can 400g', 105.00, 10),
(@product_id_111, '2 cans 400g', 199.00, 10);


-- Product 112: Cindy's Recipe Wet Cat Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    62,
    'Cindy\'s Recipe Wet Cat Food',
    'Handcrafted, homestyle meals prepared in small batches with visible vegetable pieces in hearty sauce. Contains 55% human-grade meat with 8% vegetables including sweet potatoes, carrots, and green beans. Stew-like consistency provides both hydration and texture variety. Made in human food facility with premium standards. Enhanced with organic flaxseed oil (1%) for skin and coat health. Available in Cans showing chunky ingredients.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 8 - Cindy_s Recipe/CindysRecipe1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 8 - Cindy_s Recipe/CindysRecipeFavorite.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 8 - Cindy_s Recipe/CindysRecipeOriginal.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_112 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_112, 'Cindy’s Recipe Original Pack', 799.00, 10),
(@product_id_112, 'Cindy’s Recipe Favorites Pack', 799.00, 10);


-- Product 113: Aristo Cat Wet Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    62,
    'Aristo Cat Wet Food',
    'Ultra-premium pate with silky smooth texture perfect for senior cats or those with dental issues. Rich in essential nutrients with 12% protein and elevated taurine (0.2%) for vision and heart health. Contains prebiotics (FOS and MOS) for gut health and immune function. Features Vitamin E as natural preservative and antioxidant. Consistently blended with no chunks or gristle.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 9 - Aristo Cat/AristoCat1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 9 - Aristo Cat/AristoCatShrimp.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 9 - Aristo Cat/AristoCatSmokedSalmon.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_113 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_113, 'Smoked Salmon 400g can', 199.00, 10),
(@product_id_113, 'Shrimp Jelly 400g can', 199.00, 10);


-- Product 114: Brit Premium Wet Cat Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    62,
    'Brit Premium Wet Cat Food',
    'Veterinarian-developed single-protein options for cats with food allergies or sensitivities. Each recipe features one novel protein source with minimal additional ingredients. Contains superfoods including cranberries for urinary health and salmon oil to reduce inflammation. Free from grains, gluten, and common allergens. Includes green-lipped mussel extract (0.5%) for joint health. Available in pate and mousse textures.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 10 - Brit Premium Wet/BritPremium1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 2 - Wet Cat Food/Product 10 - Brit Premium Wet/BritPremium2.png',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_114 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_114, '85g pouch', 149.00, 10);


-- Product 115: Vitakraft Cat Liquid Snack
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    63,
    'Vitakraft Cat Liquid Snack',
    'Creamy, lickable treat in convenient squeeze tubes (15g servings). Available in irresistible flavors like salmon, chicken, duck, and tuna with cheese. Perfect for bonding moments or disguising medication. Contains taurine (0.1%) for heart health and salmon oil for coat support. Only 6 calories per serving - suitable for daily treats without weight concerns. Sealed tubes preserve freshness without refrigeration for up to two years. Free from artificial colors and preservatives.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 1 - Vitakraft/Vitakraft1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 1 - Vitakraft/Vitakraft2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 1 - Vitakraft/Vitakraft3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_115 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_115, 'Saver Pack 24pcs x 15g', 1299.00, 10),
(@product_id_115, '16pcs x 15g', 899.00, 10);


-- Product 116: Miamor Cat Cream
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    63,
    'Miamor Cat Cream',
    'Velvety smooth European-style cream treat with rich, decadent texture cats love. Contains high-quality milk proteins (4%) and taurine (0.1%) with minimal sugar (2%) for healthier indulgence. Features sophisticated flavors including "Cheese & Malt Anti-Hairball Formula" and "Liver & Zinc for Immune Support." Easy-to-dispense tube with resealable cap. Contains biotin for skin and coat health. Only 8 calories per 15g serving.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 10 -Delectables Squeeze Up/Delectables1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 10 -Delectables Squeeze Up/Delectables2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 10 -Delectables Squeeze Up/Delectables3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_116 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_116, 'Variety Pack (3 flavors) 6 x 15g', 1099.00, 10);


-- Product 117: Cosma Snackies Chicken
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    63,
    'Cosma Snackies Chicken',
    '100% freeze-dried pure chicken breast pieces with no additives, preservatives, or fillers. Gentle freeze-drying locks in flavor while creating a light, crunchy texture cats love. Contains 80% protein - highly nutritious and ideal for training rewards. Resealable tub preserves freshness. Just 2 calories per piece despite rich flavor. Can be crumbled over regular food as appetite stimulant for picky eaters or recovering cats.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 2 - Miamor Cream/Miamor2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 2 - Miamor Cream/Miamor3.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 2 - Miamor Cream/MiamorCatCream1.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_117 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_117, '10g Pouch', 99.00, 10);


-- Product 118: Applaws Tuna Loin Treat
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    63,
    'Applaws Tuna Loin Treat',
    'Applaws Cat Tuna Loin is an exclusive snack food, made from 100% premium tuna fillet. The succulent fillet pieces are from tuna sourced from sustainable fisheries. The manufacturing process avoids the use of grains or soya as well as other vegetable-based ingredients, making Applaws Cat Tuna Loin an ideal snack for cats that have grain allergies or sensitivities. With Applaws Cat Tuna Loin you are giving your cat a snack that meets its nutritional needs as well as being easily digested and converted into energy. This food does not contain any flavour enhancers, preservatives, or flavourings',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 3 - Cosma Snackies Chicken/CosmaSnackies.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 3 - Cosma Snackies Chicken/CosmaSnackies2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 3 - Cosma Snackies Chicken/CosmaSnackies3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_118 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_118, '30g', 129.00, 10),
(@product_id_118, 'Saver Pack 3 x 30g', 349.00, 10);


-- Product 119: Feringa Sticks
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    63,
    'Feringa Sticks',
    'Feringa Sticks are a flavoursome, grain-free snack for cats. The tasty cat snacks are made to a carefully created recipe which contains lots of valuable animal protein, healthy vitamins and essential taurine. Your cat will adore these delicious cat snack sticks and you can feed them at any time, as a little treat between meals or as a reward. Your cat will taste the love and care that has gone into creating these snacks which are made by a small family business in Austria. Each stick is packaged individually so that they retain their fresh, aromatic taste. And the sticks have handy indentations so that you can break off a piece as needed.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 4 -Applaws Tuna Loin Treat/Applaws2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 4 -Applaws Tuna Loin Treat/Applaws3.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 4 -Applaws Tuna Loin Treat/Applaws4.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_119 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_119, 'Mixed Variety (3 x 3 sticks 6g each)', 299.00, 10),
(@product_id_119, 'Mixed Variety (12 sticks)', 549.00, 10);


-- Product 120: Smilla Toothies Dental Care Snack
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    63,
    'Smilla Toothies Dental Care Snack',
    'Smilla Toothies are tasty, easily digested dental care snacks for cats. They have been developed with the help of leading pet nutrition experts, with the latest scientific knowledge in mind. They contain natural fibres which together with the special structure of the surface ensure an effective shear effect on the tooth surface, aiding your cat\'s daily dental care. Smilla Toothies are available in an original tooth shape to make dental care even more fun, and are made from slightly larger kibble, so your cat chews for longer.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 5 - Feringa Sticks/FeringaSticks1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 5 - Feringa Sticks/FeringaSticks2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 5 - Feringa Sticks/FeringaSticks3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_120 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_120, '125g pouch', 199.00, 10),
(@product_id_120, '3 x 125g pouch', 449.00, 10);


-- Product 121: Temptations Classic Treats
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    63,
    'Temptations Classic Treats',
    'Uniquely designed treats with crunchy outer shell and soft, meaty center for textural contrast. Available in irresistible flavors including chicken, seafood, dairy, and catnip. Just 2 calories per piece despite rich taste. Distinctive shake-sound packaging creates excitement. Contains added vitamins and minerals including taurine, vitamin E, and zinc. Unique shape helps clean teeth during chewing. Patented stay-fresh container with easy-pour spout.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 6 - Smilla Toothies Dental Care Snack/SmillaToothies1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 6 - Smilla Toothies Dental Care Snack/SmillaToothies2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 6 - Smilla Toothies Dental Care Snack/SmillaToothies3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_121 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_121, '6.3-0z Bag', 199.00, 10),
(@product_id_121, '16-oz Tub', 449.00, 10);


-- Product 122: Inaba Churu Purée
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    63,
    'Inaba Churu Purée',
    'Hand-fed creamy treat that strengthens the bond between you and your cat through interactive feeding. Made with farm-raised chicken, tuna, or salmon (14% protein) in a smooth, lickable consistency. No grains or preservatives, with added vitamin E. Only 6 calories per tube with high moisture content (91%) for additional hydration. Perfect for senior cats or those with dental issues. Can be served whole or in portions.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 7 - Temptations Classic Treats/Temptations1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 7 - Temptations Classic Treats/Temptations2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 7 - Temptations Classic Treats/Temptations3.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_122 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_122, '0.4-oz 4 Tubes', 199.00, 10),
(@product_id_122, '0.4-oz, 24 Tubes', 899.00, 10);


-- Product 123: Greenies Dental Treats
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    63,
    'Greenies Dental Treats',
    'One GREENIES Original Dental Treat a day is all it takes for clean teeth, fresh breath, and a happy dog. Your dog can\'t wait to sink their teeth into these delicious, original-flavor dental dog breath chews because they feature a delightfully chewy texture that fights plaque and tartar. Irresistibly tasty and incredibly powerful, GREENIES Treats for Dogs are vet-recommended for at-home oral health care and accepted by the VOHC (Veterinary Oral Health Council.) Best of all, these natural dog breath treats are made with highly soluble ingredients that are safe and easy to digest. Give your dog the mouth-wowing treat that helps promote their overall health with GREENIES Dog Treats. Natural Dog Treats Plus Vitamins, Minerals, and Other Nutrients.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 8 - Inaba Churu Purée/InabaChuru1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 8 - Inaba Churu Purée/InabaChuru3.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 8 - Inaba Churu Purée/InabaChuru4.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_123 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_123, '60g pouch', 249.00, 10),
(@product_id_123, '130g pouch', 499.00, 10);


-- Product 124: Delectables Squeeze Up
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    63,
    'Delectables Squeeze Up',
    'Interactive lickable treat for hand-feeding and bonding experiences. Perfect for senior cats or those with dental issues. Contains real chicken or fish (8% protein) in smooth, bisque-like texture with added vitamins E and B. High moisture content (93%) provides hydration for cats who don\'t drink enough water. Each 0.5oz tube contains only 15 calories. Shelf-stable pouch needs no refrigeration before opening. Free from byproducts and artificial flavors.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 9 - Greenies Dental Treats/Greenies1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 9 - Greenies Dental Treats/Greenies2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 3 - Cat Treats & Snacks/Category 3 - Treats - Products/Product 9 - Greenies Dental Treats/Greenies3.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_124 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_124, '2-oz Pack of 8', 229.00, 10),
(@product_id_124, '8-0z Pack of 2', 649.00, 10);


-- Product 125: Interactive Laser Pointer
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    64,
    'Interactive Laser Pointer',
    'Professional-grade handheld device projecting a bright red dot (650nm wavelength) for exciting chase games. Features pattern settings including straight line, circle, figure-eight, and random movements. Automatic mode provides 15-minute play sessions for independent entertainment. Made with aircraft-grade aluminum housing in multiple colors (silver, black, gold). Includes auto-shutoff after 5 minutes of continuous use for eye safety. Operates on two AAA batteries (included) with 20 hours of play time.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 1 - Interactive Laser Pointer/LaserPointer1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 1 - Interactive Laser Pointer/LaserPointer2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 1 - Interactive Laser Pointer/LaserPointer3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_125 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_125, 'Silver', 199.00, 10);


-- Product 126: Feather Waggler Toy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    64,
    'Feather Waggler Toy',
    'Cat wagglers are very popular toys. All you need to do is waggle it around and your cat will try to pounce on it. It\'s a great way to indulge your cat\'s natural hunting instincts while playing together. And because it is approx. 55cm long, your hand is far enough away to avoid getting scratched.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 2 - Feather Waggler Toy/FeatherWaggler1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 2 - Feather Waggler Toy/FeatherWaggler2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 2 - Feather Waggler Toy/FeatherWaggler3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_126 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_126, '55cm', 159.00, 10);


-- Product 127: Wild Mouse Cat Toy with Sounds and LED Eyes
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    64,
    'Wild Mouse Cat Toy with Sounds and LED Eyes',
    'This authentic-looking mouse is designed to stimulate your cat’s hunting instincts and encourage lots of fun play. The Wild Mouse Cat Toy makes a realistic squeak and has fiery red eyes, simulating real prey behaviour to give your cat an authentic hunting experience. The fake fur covering feels soft on your cat’s paws and also makes this toy a comforting cuddle buddy for after playtime has finished.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 3 -  Wild Mouse Cat Toy/WildMouse1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 3 -  Wild Mouse Cat Toy/WildMouse2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 3 -  Wild Mouse Cat Toy/WildMouse3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_127 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_127, 'Single Mouse', 199.00, 10);


-- Product 128: Bird Cat Dangler Toy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    64,
    'Bird Cat Dangler Toy',
    'Awaken your cat’s hunting instincts with this Bird Cat Dangler Toy. The dangler pole is particularly long and has an elastic rubber band, which has real feathers attached to the end. The perfect flight of the feathers and the bird-like sound that imitates your cat’s natural prey ensure this toy will provide hours of fun. The movement helps to train your cat’s concentration and agility. This Bird Cat Dangler Toy also helps to turn your cat into a swift hunter, for fun, games and entertainment!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 4- Bird Cat Dangler Toy/BirdCatToy.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 4- Bird Cat Dangler Toy/BirdCatToy2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 4- Bird Cat Dangler Toy/BirdCatToy3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_128 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_128, '1 Toy', 199.00, 10);


-- Product 129: Interactive Food Puzzle
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    64,
    'Interactive Food Puzzle',
    'Mental stimulation toy made from BPA-free, food-grade plastic that dispenses treats as your cat solves the puzzle. Features three difficulty levels adjusted by rotating internal components. Contains multiple compartments and sliding doors requiring different paw movements to access treats. Transparent design lets cats see and smell treats inside. Non-skid rubber base keeps puzzle stable during play. All components dishwasher-safe for easy cleaning.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 5- Interactive Food Puzzle/FoodPuzzle1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 5- Interactive Food Puzzle/Foodpuzzle2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 5- Interactive Food Puzzle/FoodPuzzle3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_129 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_129, 'Blue', 199.00, 10),
(@product_id_129, 'Red', 199.00, 10),
(@product_id_129, 'Purple', 199.00, 10);


-- Product 130: Crackle Ball
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    64,
    'Crackle Ball',
    'The colorful play balls made of rustling foil are ideal for large and small to chase after, catch and play with. The crackling attracts the attention and curiosity of your house cat. The extremely light ball flies particularly far and your house cat can run after it and live out its hunting instinct.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 6- Crackle Ball/CrackleBall1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 6- Crackle Ball/CrackleBall2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 6- Crackle Ball/CrackleBall3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_130 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_130, '4 Balls (Assorted Color)', 699.00, 10);


-- Product 131: Snack Ball Cat Toy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    64,
    'Snack Ball Cat Toy',
    'The snack ball is based on a very simple but effective idea. It is made from sturdy, durable plastic with a spiral inside and an opening on the bottom where the treat will fall out. Fill this opening with dry food or treats and shake the ball so that the spiral moves to the top. Then give it to your cat and watch how it discovers how to roll the ball in such a way that the food moves down the spiral and falls out.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 7- Snack Ball Cat Toy/SnackBallToy1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 7- Snack Ball Cat Toy/SnackBallToy2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 7- Snack Ball Cat Toy/SnackBallToy3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_131 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_131, '1 Toy', 299.00, 10);


-- Product 132: Trixie Catnip Herbal Mix
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    64,
    'Trixie Catnip Herbal Mix',
    'Catnip is composed of the leaves of the Nepeta Cataria. The scent of this mint inspires cats to playful behaviour. You can use this mint in combination with your darling\'s toys or scratching post. The scent of the catnip is long-lasting so your cat will have plenty of fun with this natural pleasure.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 8- Trixie Catnip Herbal Mix/TrixieCatnip1.jpg',
    NULL,
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_132 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_132, '20g', 149.00, 10);


-- Product 133: Aumüller Baldini Valerian Pillow
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    64,
    'Aumüller Baldini Valerian Pillow',
    'These cute little cushions contain top quality pharmacy strength valerian root which animates and stimulates your pet, encouraging it to play. Cats love to sniff and inspect the pillow. They can also flip it in the air and chase after it. It\'s a great toy for hours of fun.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 9- Aumüller Baldini Valerian Pillow/Pillow1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 9- Aumüller Baldini Valerian Pillow/Pillow2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 9- Aumüller Baldini Valerian Pillow/Pillow3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_133 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_133, '2 Pillows (Assorted Color)', 199.00, 10);


-- Product 134: Aumüller Ferret Cat Toy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    64,
    'Aumüller Ferret Cat Toy',
    'Cats are naturally passionate hunters and they love to chase after their prey. This fun Aumüller Ferret Cat Toy will have an invigorating effect on every playful feline! The natural ingredients of certified pharmacy quality come from the non-toxic Matatabi plant, which grows in the mountainous regions of Japan and China. This Aumüller Ferret Cat Toy contains catnip and valerian. The odour of these ingredients can encourage long-lasting play and can have a positive effect in stressful situations. The stomach has very little padding, which makes it easy to grab and throw. The cuddly soft plush surface makes this delightful Aumüller Ferret Cat Toy the perfect cuddle companion! ',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 10 - Aumüller Ferret Cat Toy/Aumuller2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 10 - Aumüller Ferret Cat Toy/Aumuller3.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 4 - Cat Toys/Category 4 - Toys - Products/Product 10 - Aumüller Ferret Cat Toy/AumullerToy.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_134 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_134, '1 Toy', 299.00, 10);


-- Product 135: Cozy Cat Bed 
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    65,
    'Cozy Cat Bed ',
    'Ultra-soft plush bed with temperature-reflective core technology that captures and returns body heat for natural warming. Features 4-inch raised edges providing security and neck support during sleep. Washable microfiber cover removes via hidden zipper for easy maintenance. Non-slip silicone dotted bottom keeps bed securely in place. Oval shape (20 x 16) accommodates various sleeping positions. Internal cushion contains hypoallergenic polyester fill that maintains loft after washing. Waterproof inner liner protects against accidents and spills. Suitable for cats up to 15 pounds.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 1- Cozy Cat Bed/CozyCatBed1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 1- Cozy Cat Bed/CozyCatBed2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 1- Cozy Cat Bed/CozyCatBed3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_135 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_135, 'Dark Green', 899.00, 10),
(@product_id_135, 'White', 899.00, 10);


-- Product 136: Dream Window Sill Mat - White
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    65,
    'Dream Window Sill Mat - White',
    'The White Dream window sill mat turns cold, uncomfortable window sills into cosy, warm places where your cat can watch the world go by or just curl up and snooze. Made from soft white plush, it fits in with any décor. There is a 2 cm thick, soft foam pad inside the fluffy cover and anti-slip nubs on the base to prevent it sliding around on the smooth window sill. There is a zip for easy removal of the cover which can be hand washed at up to 30°C.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 2- Dream Window Sill Mat - White/DreamWindowMat1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 2- Dream Window Sill Mat - White/DreamWindowMat2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 2- Dream Window Sill Mat - White/DreamWindowMat3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_136 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_136, '60 x 26 x 2 cm (L x W x H)', 199.00, 10);


-- Product 137: Windowsill Seat
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    65,
    'Windowsill Seat',
    'Windowsills are very popular places among cats for relaxing and observing the surroundings in the home and through the window. Often, a radiator underneath creates a wonderfully warm atmosphere. The Pluschi Windowsill Seat transforms a narrow space into a cosy and spacious place for your feline friend to lie down.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 3-Windowsill Seat/Windowsill Seat.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 3-Windowsill Seat/WindowsillSeat2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 3-Windowsill Seat/WindowsillSeat3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_137 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_137, 'Gray', 1299.00, 10),
(@product_id_137, 'Black', 1299.00, 10);


-- Product 138: Mochi Cat Bed
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    65,
    'Mochi Cat Bed',
    'The Mochi Cat Bed offers your cat an extremely cosy and snug environment to snooze and sleep in. The bed is shaped like a nest and is made from very fluffy, long-pile material. It is the perfect place to curl up in and will make your pet feel totally at home.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 4- Mochi Cat Bed/MochiBed1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 4- Mochi Cat Bed/MochiBed2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 4- Mochi Cat Bed/MochiBed3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_138 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_138, '1 Toy', 599.00, 10);


-- Product 139: Cat Hammock
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    65,
    'Cat Hammock',
    'Under-chair hanging bed creating a secure hideaway space utilizing furniture you already own. Attaches to chair legs via adjustable straps with quick-release buckles fitting chairs measuring 16-24 inches between legs. Suspended canvas hammock (18 x 14) provides gentle movement that cats find soothing and comfortable. Removable fleece liner adds softness and warmth while being machine washable. Design maximizes floor space in small apartments or homes. Installation requires no tools and takes less than 2 minutes. Supports cats up to 15 pounds comfortably.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 5- Cat Hammock/CatHammock.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 5- Cat Hammock/CatHammock2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 5- Cat Hammock/CatHammock3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_139 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_139, '2 Hammocks, White and Navy Blue (19.7"L x 0.4"W x 13.7)', 350.00, 10);


-- Product 140: Wall-Mounted Cat Shelves
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    65,
    'Wall-Mounted Cat Shelves',
    'Set of three floating shelves creating vertical territory for climbing and perching. Each solid wood shelf (varying sizes: 14", 20", and 24" lengths) supports up to 30 pounds and installs securely into wall studs using included mounting hardware. Minimalist design complements modern home décor. Shelves include replaceable carpeted surfaces for secure footing and comfortable napping. Thoughtfully designed pathway creates logical climbing route with appropriate jumping distances between levels. Full installation requires approximately 45 minutes with a stud finder and drill. Includes detailed templates for perfect placement.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 6- Wall-Mounted Cat Shelves/CatShelves1.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 6- Wall-Mounted Cat Shelves/CatShelves2.png',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 6- Wall-Mounted Cat Shelves/CatShelves3.png',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_140 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_140, 'Wood', 1599.00, 10);


-- Product 141: Cuddle Den
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    65,
    'Cuddle Den',
    'Who is that, peeking out from inside the den? Two stable artificial felt trays combine to form this spacious Big Baby Cuddle Den, where your cat can hideaway and relax! This den features a removable cushion that creates a cosy refuge for your cat to enjoy. A great feature of this Big Baby Cuddle Den is that it can be separated into two halves using a zip fastener, which can then be stacked to form a comfortable bed with the fleece cushion.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 7- Cuddle Den/CuddleDen1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 7- Cuddle Den/CuddleDen2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 7- Cuddle Den/CuddleDen3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_141 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_141, '1 Piece', 799.00, 10);


-- Product 142: Relax Radiator Bed
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    65,
    'Relax Radiator Bed',
    'What better place for your cat to relax than on the warming radiator, and the Relax Radiator Bed is the perfect retreat for your pet. The bed is quickly and easily attached to a radiator of your choice and your cat can stretch out and get comfortable in no time. The stable metal frame fits all standard radiators with a depth of 7-10 cm, so you can hang up your cat’s bed wherever you like. Just pull the plush cover over the metal frame to create a generous space where your cat can snooze and dream. If the cover gets dirty from the many naps, you can remove it using the zip and wash it at 30°C. Living room, office, or even the bathroom - no matter where you put this cosy bed your cat will always have a warm and comfortable place to observe its surroundings from.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 8- Relax Radiator Bed/RelaxRadBed1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 8- Relax Radiator Bed/RelaxRadBed2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 8- Relax Radiator Bed/RelaxRadBed3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_142 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_142, 'Sheepskin White', 799.00, 10);


-- Product 143: Pawty Fleece Blanket
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    65,
    'Pawty Fleece Blanket',
    'The lightweight Pawty fleece blanket is versatile, whether at home or on the go. It provides your pet with a cosy place to sleep, rest or play anywhere. Covered with cute paw prints, it shows everyone whose territory is marked out here. It is available in two sizes with the same pattern: the small version with dark grey paws on a light grey background and the large blanket with light grey paws on a dark grey background.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 9- Pawty Fleece Blanket/PawtyBlanket1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 9- Pawty Fleece Blanket/PawtyBlanket2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_143 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_143, '150 x 100 cm (L x W) Black', 899.00, 10),
(@product_id_143, '150 x 100 cm (L x W) White', 899.00, 10);


-- Product 144: Modern Living Window Lounger Billund
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    65,
    'Modern Living Window Lounger Billund',
    'Our favorite\'s new viewing post is mounted on the window glass using suction cups. This means your cat can doze in the sun or enjoy the view outside. The Modern Living Billund window lounger consists of a sturdy wooden frame and a felt lying surface that serves as a comfortable base for your velvet paw.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 10- Modern Living Window Lounger Billund/ModernLivingWIndow1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 10- Modern Living Window Lounger Billund/ModernLivingWindow2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 5 - Cat Beds & Furniture/Category 5 - Cat Bed and Furnitures - Products/Product 10- Modern Living Window Lounger Billund/ModernLivingWindow3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_144 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_144, 'Standard', 2599.00, 10),
(@product_id_144, ' Deluxe (With integrated toy attachments)', 2899.00, 10);


-- Product 145: Cat's Best Smart Pellets Cat litter
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    66,
    'Cat\'s Best Smart Pellets Cat litter',
    'Cat\'s Best Smart Pellets cat litter is ideal for long-haired cats as the pellets are non-sticky. Thanks to the smooth surface, the pellets do not stick to fur or paws. Cat\'s Best Smart Pellets is a soft clumping litter and consists of 100% natural active wood fibres, it is biodegradable and compostable.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 1- Cat_s Best Smart Pellets Cat litter/CatsBestSmart1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 1- Cat_s Best Smart Pellets Cat litter/CatsBestSmart2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 1- Cat_s Best Smart Pellets Cat litter/CatsBestSmart3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_145 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_145, '20lb Bag', 999.00, 10);


-- Product 146: Cat's Best Universal
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    66,
    'Cat\'s Best Universal',
    'Cat\'s Best Universal is a natural litter and the universal genius for small animals. The litter consists of 100% natural, uncontaminated plant fibres. The plant fibre pellets are particularly impressive due to their high absorbency. Odours and moisture are particularly well bound inside the fibre pellets. The pellets are spore and germ-free, compostable and 100% biodegradable.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 2- Cat_s Best Universal/CatsBestUniversal1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 2- Cat_s Best Universal/CatsBestUniversal2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 2- Cat_s Best Universal/CatsBestUniversal3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_146 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_146, '20lb Bag', 799.00, 10);


-- Product 147: Tigerino Premium Cat Litter - Babypowder Scented
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    66,
    'Tigerino Premium Cat Litter - Babypowder Scented',
    'Tigerino Premium Cat Litter with a delicate, natural baby powder scent is particularly fine, clumps immediately and produces little dust. The extremely high yield, highly absorbent clumping litter made of natural clay forms solid clumps that can be hygienically and safely removed from the litter box. As a natural product, this clumping litter is free of chemical additives, while reliably and persistently preventing unpleasant odours. Tigerino Premium Baby Powder is our most popular cat litter variety: 390 satisfied customers have rated it with 5 stars. Let us convince you, too! Available in many scent variations.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 3- Tigerino Premium Cat Litter - Babypowder Scented/Tigerino1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 3- Tigerino Premium Cat Litter - Babypowder Scented/Tigerino2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 3- Tigerino Premium Cat Litter - Babypowder Scented/Tigerino3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_147 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_147, '6kg Bag', 799.00, 10),
(@product_id_147, '12kg Bag', 1399.00, 10);


-- Product 148: Greenwoods Plant Fibre Natural Clumping Litter
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    66,
    'Greenwoods Plant Fibre Natural Clumping Litter',
    'We understand your cat\'s business - that\'s why we concentrate on the important things: Greenwoods Plant Fibre Natural Clumping Litter is highly absorbent, fast-acting and gentle enough for even the most sensitive of cat paws. Dust? That\'s a thing of the past, along with those bad smells. And it\'s made from environmentally friendly, 100% natural, compostable plant fibres, so it\'s biodegradable. Just scoop it up and flush it away. It\'s that easy!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 4-Greenwoods Plant Fibre Natural Clumping Litter/Greenwods3.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 4-Greenwoods Plant Fibre Natural Clumping Litter/Greenwoods1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 4-Greenwoods Plant Fibre Natural Clumping Litter/Greenwoods2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_148 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_148, '12.9kg Bag', 589.00, 10),
(@product_id_148, '3.4kg Bag', 299.00, 10);


-- Product 149: Catsan Smart Pack
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    66,
    'Catsan Smart Pack',
    'Cats are the world champions in grooming and place the highest importance in cleanliness and hygiene. Catsan has now developed the new Smart Pack, especially for our discerning feline friends. The new Catsan Smart Pack is an all-round winner: it provides simple handling, hygiene, freshness and long-lasting use. It is ideal for almost all cat trays and contains a combination of extra-absorbent micro-fleece and hygiene cat litter. On top of this, it\'ll keep the bottom of your cat\'s litter tray pleasantly clean and will save you time on cleaning when you change the litter. ',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 5- Catsan Smart Pack/Catsan1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 5- Catsan Smart Pack/Catsan2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 5- Catsan Smart Pack/Catsan3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_149 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_149, '2 Packs', 649.00, 10);


-- Product 150: Golden Gray Master
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    66,
    'Golden Gray Master',
    'The clay used for Golden Grey Master cat litter is a purely natural product, so it is entirely harmless for your cat. Its superior power (approx. 350% absorbency) eradicates unpleasant smells while the litter gives out a gentle baby powder scent. The litter is low in dust production and consists of extra-clumping granules that won\'t stick to your kitty\'s feet and get spread around the house.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 6- Golden Gray Master/GoldenGray1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 6- Golden Gray Master/GoldenGray2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 6- Golden Gray Master/GoldenGray3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_150 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_150, '20lb Bag', 799.00, 10),
(@product_id_150, '20lb Bag', 1399.00, 10);


-- Product 151: Super Benek Corn Cat Natural Clumping Litter
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    66,
    'Super Benek Corn Cat Natural Clumping Litter',
    'Super Benek Corn Cat Natural is an innovative new litter made of 100% natural plant-based material without chemical additives. Because it is made from pure organic materials, the litter is compostable and biodegradeable and can also be flushed down the toilet. The litter is highly absorbent, so it picks up liquids quickly and forms compact, flat clumps, which means that you can easily scoop out waste and clean the litter box. Odours are absorbed immediately and efficiently neutralised, whilst its neutral odour means it is easily accepted by cats. The litter’s design also means that it is less likely to be spread around outside the litter box.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 7 - Super Benek Corn Cat Natural Clumping Litter/SuperBenek1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 7 - Super Benek Corn Cat Natural Clumping Litter/SuperBenek2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 7 - Super Benek Corn Cat Natural Clumping Litter/SuperBenek3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_151 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_151, '4.4kg Bag', 299.00, 10),
(@product_id_151, '15.7kg Bag', 999.00, 10);


-- Product 152: Litter Scoop
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    66,
    'Litter Scoop',
    ' This litter scoop was developed for especially fine and clumping cat litter. Hence, when cleaning your cat toilet hardly any litter is lost. The small slits in the scoop allow unused cat litter to fall through.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 8- Litter Scoop/Litterscoop1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 8- Litter Scoop/LitterScoop2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_152 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_152, '1 scoop', 99.00, 10);


-- Product 153: Nature's Miracle Cat Set-In Stain and Odour Remover
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    66,
    'Nature\'s Miracle Cat Set-In Stain and Odour Remover',
    ' If your cat\'s breakfast finds its way onto the carpet soon after eating, or if your pet decides to mark their territory, you\'ll need a powerful cleaning agent to swiftly and effectively eliminate the mess. Nature\'s Miracle Cat Set-In Stain and Odour Remover is specifically designed for such situations, providing a cleaning solution that effectively eliminates any residue and unpleasant odour, leaving behind only a delicate orange fragrance.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 9- Nature_s Miracle Cat Set-In Stain and Odour Remover/NatureMiracle2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 9- Nature_s Miracle Cat Set-In Stain and Odour Remover/NatureMiracle3.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 9- Nature_s Miracle Cat Set-In Stain and Odour Remover/NaturesMiracle1.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_153 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_153, '700ml', 799.00, 10);


-- Product 154: World's Best Cat Litter Extra Strength
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    66,
    'World\'s Best Cat Litter Extra Strength',
    ' Made from whole maize from the USA, this clumping cat litter is 100% ecological. World\'s Best Cat Litter Extra Strength is an effective extra-strong cat litter that is ideal for multicat households, forming clumps that can be easily removed from the remaining litter and helping to trap odours deep inside the litter, keeping your home smelling fresh. This World\'s Best Cat Litter Extra Strength can be flushed down the toilet after use and is particularly lightweight, thanks to the concentrated corn that it is made from',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 10- World_s Best Cat Litter Extra Strength/WorldsBest1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 6 - Cat Litter & Accessories/Category 6 - Cat Litter & Accessories - Products/Product 10- World_s Best Cat Litter Extra Strength/WorldsBest2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_154 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_154, '6kg Bag', 899.00, 10),
(@product_id_154, '12.7kg Bag', 1899.00, 10);


-- Product 155: Lint Roll Pick up
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    67,
    'Lint Roll Pick up',
    'Goodbye to annoying hair and lint! The lint roll is covered in double-sided sticky tape, which with its stick surface only cleans upholstery, textiles and other materials when rolled. Following use, the dirty sticky tape can be simply removed and disposed of. The roll is immediately ready for action and can easily be replaced with a new lint roll when used up. ',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 1- Lint Roll Pick up/LintRolls1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 1- Lint Roll Pick up/LintRolls2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_155 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_155, 'Complete Set Including 2 Refills Roll', 99.00, 10);


-- Product 156: Kooa Bamboo Slicker Brush
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    67,
    'Kooa Bamboo Slicker Brush',
    'The kooa Bamboo Slicker Brush is great for your pet\'s daily grooming session. It is especially suitable for dogs, and also cats, with silky coats that tend to tangle easily. The fine, closely set tines help to efficiently detangle knots and matted fur.Your pet will enjoy the soothing massaging effect when groomed with this brush and it\'s very useful when your pet is moulting, removing loose hair from the undercoat. Regular brushing can also help to prevent vermin infestation. The kooa Slicker Brush has a bamboo handle and is comfortable to hold.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 2- Kooa Bamboo Slicker Brush/KooaBrush1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 2- Kooa Bamboo Slicker Brush/KooaBrush2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 2- Kooa Bamboo Slicker Brush/KooaBrush3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_156 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_156, '2 Piece', 149.00, 10);


-- Product 157: Corner Brush for Cats
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    67,
    'Corner Brush for Cats',
    'Turn every corner of your home into a luxurious cat spa with the kooa Corner Brush for Cats! This brush for cats has been specially developed to remove and collect loose hair while providing your cat with an unrivalled grooming experience. With two different bristle thicknesses and -lengths, this corner brush for cats is ideal for all fur types.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 3- Corner Brush for Cats/CornerBrush1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 3- Corner Brush for Cats/CornerBrush2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 3- Corner Brush for Cats/CornerBrush3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_157 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_157, '1 piece', 119.00, 10);


-- Product 158: Claw Pet Clippers
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    67,
    'Claw Pet Clippers',
    'Regular claw-trimming is an important part of good pet care and makes life more pleasant for both you and your pet. The claw scissors have a non-slip grip for maximum control when trimming. The blades are made from stainless steel blades and will not corrode.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 4-Claw Pet Clippers/ClawClipper1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 4-Claw Pet Clippers/ClawClipper2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 4-Claw Pet Clippers/ClawClipper3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_158 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_158, '1 Piece', 89.00, 10);


-- Product 159: Kooa Sensitive Shampoo
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    67,
    'Kooa Sensitive Shampoo',
    'Pamper your pet with a range of gentle, plant-based grooming products, made to the same high standards you\'d expect for yourself. Kooa is a natural, vegan pet care range that is passionate about your pet\'s well-being. We want you and your pet to enjoy every day together to the fullest.The very mild, pH-neutral formula gently cleans your pet\'s skin and coat and is free from nasty, artificial colours and synthetic fragrances.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 5- Kooa Sensitive Shampoo/KooaShampoo1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 5- Kooa Sensitive Shampoo/KooaShampoo2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 5- Kooa Sensitive Shampoo/KooaShampoo3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_159 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_159, '300 ml', 249.00, 10);


-- Product 160: Feliway Friends
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    67,
    'Feliway Friends',
    'Feliway® Friends is ideal for multi-cat households where the cats are showing signs of tension or conflict. It can help to ease tricky situations and calm things down. Cats are solitary hunters and many see other cats as a potential threat to food resources. This can cause clashes and struggles between your pets. Most cats quickly get on with each other again, but for some it can turn into a long-lasting feud, which can sadly result in drastic measures such as rehoming one of the cats.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 6- Feliway Friends/Feliway1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 6- Feliway Friends/Feliway2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 6- Feliway Friends/Feliway3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_160 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_160, '48ml', 1200.00, 10);


-- Product 161: Pet Brush
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    67,
    'Pet Brush',
    'This soft brush gently removes loose hair, dust and dirt from your pet\'s fur. The coat will have a silky, healthy shine. The natural bristles are non-static so it is ideal when trimming your pet\'s coat. Use it to remove the trimmed hair and to calm statically charged fur.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 7 - Pet Brush/PetBrush1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 7 - Pet Brush/PetBrush2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_161 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_161, '17cm', 159.00, 10);


-- Product 162: Felisept Dental Care Finger Pads
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    67,
    'Felisept Dental Care Finger Pads',
    'The Felisept dental care finger pads show how easy dental hygiene can be: instead of laboriously handling a toothbrush and toothpaste, you can clean your cat\'s mouth cavity and teeth directly with your finger. Simply put a pad on and let it glide over the cat\'s teeth.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 8- Felisept Dental Care Finger Pads/Felisept1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 8- Felisept Dental Care Finger Pads/Felisept2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_162 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_162, '50 finger Pads', 399.00, 10);


-- Product 163: XL Wash Bag
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    67,
    'XL Wash Bag',
    'Those who have pets with lots of hair will know that, during the moulting season, blankets, cushions and covers get covered in no time with so much fur that you could make another pet out of it all. This XL wash bag comes in handy when washing all kinds of pet accessories. This wash bag can prevent pet hair from getting into the washing machine while allowing the water and soap suds to reach the accessories inside. Everything will come out clean and the washing machine will remain hygienic and clean. The wash bag also reduces the risk of damage to the washing machine due to hard objects such as buckles or rings on collars or harnesses. The wash bag is made from thick, robust fabric which pet hair can’t stick to. The fur is collected inside and can easily be shaken out.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 9- XL Wash Bag/XLWashBag1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 9- XL Wash Bag/XLWashBag2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 9- XL Wash Bag/XLWashbag3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_163 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_163, '75 x 80cm ', 249.00, 10);


-- Product 164: Soft Brush
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    67,
    'Soft Brush',
    'Time for a little wellness session for your pet! Cats and dogs also appreciate a soothing massage, especially when it removes pesky loose hairs and tangles from their fur. The soft brush with brush cleaner is suitable for grooming cats and dogs of all coat types and gently massages the skin while you brush your pet.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 10- Soft Brush/SoftBrush1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 10- Soft Brush/SoftBrush2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 7 - Cat Grooming & Hygiene/Category 7 - Grooming & Hygiene - Products/Product 10- Soft Brush/SoftBrush3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_164 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_164, 'W/ Brush Cleaner', 149.00, 10),
(@product_id_164, 'W/O  Brush Cleaner', 99.00, 10);


-- Product 165: Otifree Ear Cleaning Solution
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    68,
    'Otifree Ear Cleaning Solution',
    'Discharges and deposits in the ear can provide important bodily protection for your cat or dog, helping to protect against bacteria and fungi, amongst other things. However, too much of these deposits can lead to ear infections, which are particularly unpleasant for your pet. This Otifree Ear Cleaning Solution can offer great relief for pets, particularly some dog breeds that are prone to ear infections. It can be used to regularly care for sensitive feline and canine ears.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 1-Otifree Ear Cleaning Solution/Otifree1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 1-Otifree Ear Cleaning Solution/Otifree2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_165 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_165, '60ml', 399.00, 10);


-- Product 166: Zylkene Capsules 75mg for Small Dogs or Cats <10kg
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    68,
    'Zylkene Capsules 75mg for Small Dogs or Cats <10kg',
    'Pets can get stressed when they face certain situations or something in their environment changes. Many different things can contribute to your pet feeling anxious, including going into kennels or a cattery, moving house, visits to the vet and new additions to the family. You can use Zylkene to help your cat or small dog cope with unexpected or unusual situations that cause anxiety. Zylkene capsules help your pet to cope with stress more easily, using only natural active ingredients.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 2- Zylkene Capsules 75mg for Small Dogs or Cats 10kg/Zylkene.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 2- Zylkene Capsules 75mg for Small Dogs or Cats 10kg/Zylkene2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 2- Zylkene Capsules 75mg for Small Dogs or Cats 10kg/Zylkene3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_166 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_166, '3 capsules', 489.00, 10),
(@product_id_166, '100 capsules', 1399.00, 10);


-- Product 167: Vetericyn Plus Wound & Skin Protection Spray
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    68,
    'Vetericyn Plus Wound & Skin Protection Spray',
    'This naturally effective Vetericyn Plus Wound & Skin Protection Spray is a must in every first aid kit. The hypochlorous solution is for spraying on wounded or injured skin in order to speed up the healing process. It is ideal for dogs, cats, small pets and birds, suitable for all skin types and any age of pet. This environmentally-friendly pump spray bottle offers an easy way to apply pain-relieving liquid to the injured areas of skin. This helps to keep wounds free from foreign bodies and moist, promoting healthy tissue and effectively combating bacteria.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 3- Vetericyn Plus Wound & Skin Protection Spray/Vetericyn1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 3- Vetericyn Plus Wound & Skin Protection Spray/Vetericyn2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_167 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_167, '89ml', 800.00, 10);


-- Product 168: Dibo Salmon Oil
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    68,
    'Dibo Salmon Oil',
    ' Dibo Salmon Oil is a great supplementary food for cats and dogs. It is rich in essential, polyunsaturated omega 3 and omega 6 fatty acids. Omega 3 fatty acids play an important role in the body\'s physiological processes and support the development and functionality of various organs. It is especially important for healthy joints, heart and circulation as well as helping to improve the immune system, skin and fur. Salmon oil can also be beneficial if your pet is suffering from skin issues, heart problems and infections and it can also help wounds to heal as well helping to relieve any symptoms if your cat or dog suffers from allergies.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 4-Dibo Salmon Oil/Dibo1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 4-Dibo Salmon Oil/Dibo2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 4-Dibo Salmon Oil/Dibo3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_168 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_168, '500ml', 459.00, 10);


-- Product 169: Felisept Dental Care Finger Pads
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    68,
    'Felisept Dental Care Finger Pads',
    'The Felisept dental care finger pads show how easy dental hygiene can be: instead of laboriously handling a toothbrush and toothpaste, you can clean your cat\'s mouth cavity and teeth directly with your finger. Simply put a pad on and let it glide over the cat\'s teeth.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 5- Felisept Dental Care Finger Pads/Felisept1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 5- Felisept Dental Care Finger Pads/Felisept2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_169 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_169, '50 finger Pads', 399.00, 10);


-- Product 170: Felisept Home Comfort Calming Spray
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    68,
    'Felisept Home Comfort Calming Spray',
    ' The Felisept Home Comfort Calming Spray helps to relax your cat\'s behaviour in stressful situations and promote their well-being. With real catnip, but without pheromones, the spray has a natural calming effect and helps your cat to feel more comfortable. Proven in scientific studies and recommended by vets, the spray is a trusted choice to reduce stress-related behaviour.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 6- Felisept Home Comfort Calming Spray/FeliseptHome1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 6- Felisept Home Comfort Calming Spray/FeliseptHome2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 6- Felisept Home Comfort Calming Spray/FeliseptHome3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_170 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_170, '100ml', 899.00, 10),
(@product_id_170, ' 2 x 100ml', 1759.00, 10);


-- Product 171: Trixie Catnip Herbal Mix
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    68,
    'Trixie Catnip Herbal Mix',
    'Catnip is composed of the leaves of the Nepeta Cataria. The scent of this mint inspires cats to playful behaviour. You can use this mint in combination with your darling\'s toys or scratching post. The scent of the catnip is long-lasting so your cat will have plenty of fun with this natural pleasure.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 7 - Trixie Catnip Herbal Mix/TrixieCatnip1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 7 - Trixie Catnip Herbal Mix/TrixieCatnip2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_171 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_171, '20g', 99.00, 10);


-- Product 172: Beaphar CatComfort refill bottle
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    68,
    'Beaphar CatComfort refill bottle',
    'When a new animal roommate moves in, a move is imminent or a trip to the vet, this can sometimes mean a lot of stress for your velvet paw. To make these situations more bearable for your cat, beaphar CatComfort® can help. The feel-good pheromone it contains is a synthetic replica of the facial pheromone that cats emit when they feel safe. It conveys a calming message to your cat and has been scientifically proven to reduce stress levels.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 8- Beaphar CatComfort refill bottle/Beaphar1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 8- Beaphar CatComfort refill bottle/Beaphar2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 8- Beaphar CatComfort refill bottle/Beaphar3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_172 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_172, '48ml', 900.00, 10);


-- Product 173: Virbac Epiotic Ear Cleanser
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    68,
    'Virbac Epiotic Ear Cleanser',
    'Virbac Epiotic Ear Cleanser has been specially developed to support daily cleaning of your pet\'s ears, ideal for both dogs and cats. The innovative S-I-S technology (Skin Innovative Science™) offers a double effect - helping to prevent the adhesion of micro-organisms while stimulating the skin\'s natural antimicrobial defence mechanisms with the cleanser\'s Defensin technology. This can help to support vitality in the ear canal and improve your pet\'s wellbeing.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 9- Virbac Epiotic Ear Cleanser/Virbac1.jpg',
    NULL,
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_173 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_173, '125ml', 799.00, 10);


-- Product 174: Felisept Eye Care Pads
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    68,
    'Felisept Eye Care Pads',
    'Especially in cats with light-coloured and long fur, unsightly tear stains can detract from the otherwise elegant appearance of your velvet paw. But regular eye care is also important for cat hygiene, regardless of breed and coat colour! Felisept Eye Care Pads provide you with useful aids for uncomplicated cleaning of watery cat eyes.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 10- Felisept Eye Care Pads/FeliseptEye1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 8 - Cat Health & Wellness/Category 8 - Health & Wellness - Products/Product 10- Felisept Eye Care Pads/FeliseptEye2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_174 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_174, '100 Pieces', 699.00, 10),
(@product_id_174, 'W/O  Brush Cleaner', 99.00, 10);


-- Product 175: Scratching Furniture Wave
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    69,
    'Scratching Furniture Wave',
    ' Do you want to protect your furniture and carpets from your pet\'s claws? Then the Welle scratching furniture is the ideal choice. It not only offers your cat an excellent opportunity to sharpen its claws, but also a cosy place to relax. The wave shape made of robust corrugated cardboard is particularly attractive to cats and will quickly become your four-legged friend\'s favourite place.The Wave scratching furniture is printed on both sides with an elegant pattern in grey and white and can be used for twice as long simply by turning it over. It also comes with a sachet of Catnip, which can be sprinkled over the cardboard and makes the scratching furniture irresistible to your cat. When the scratching surface is worn out, it can be disposed of and recycled in an environmentally friendly way.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 1-Scratching Furniture Wave/ScartchWave3.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 1-Scratching Furniture Wave/ScratchWave1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 1-Scratching Furniture Wave/ScratchWave2.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_175 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_175, '1 Piece', 399.00, 10);


-- Product 176: Trixie Sisal Cat Scratching Board
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    69,
    'Trixie Sisal Cat Scratching Board',
    'The Trixie Sisal Cat Scratching Board is an essential accessory for all cat lovers who want to protect their home from the natural scratching habits of their feline friends. This practical scratching furniture can be easily mounted on any wall and blends stylishly into your home.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 2- Trixie Sisal Cat Scratching Board/TrixieSisal1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 2- Trixie Sisal Cat Scratching Board/TrixieSisal2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 2- Trixie Sisal Cat Scratching Board/TrixieSisal3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_176 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_176, ' 70 x 17cm', 199.00, 10);


-- Product 177: Cosma Cat Scratching Pad
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    69,
    'Cosma Cat Scratching Pad',
    'The Cosma Cat Scratching Pad is the perfect piece of furniture for diva cats. This sleek scratching pad is shaped like a modern chaise longue and but it is strong enough to also withstand crazy scratch attacks. The Cosma cat scratcher is made from 100% recyclable cardboard and when one side is looking a little worn, just flip it over and it looks as good as new! On the one side the gentle curves provide a comfy dip where your cat will love to lounge. The other side is flat, with rounded ends, where your cat can rest its head and watch the world go by. It has shiny black sides, decorated with the Cosma logo. Cats love cardboard, so this cat scratching pad is bound to be very popular. But just in case there is also a little bag of catnip which you can sprinkle on the scratcher. As with all Cosma accessories, this cat scratching board has a timeless elegance and will not look out of place, whatever your décor.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 3- Cosma Cat Scratching Pad/CosmaScratch1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 3- Cosma Cat Scratching Pad/CosmaScratch2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 3- Cosma Cat Scratching Pad/CosmaScratch3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_177 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_177, '50 x 24 x 12 cm (L x W x H)', 600.00, 10);


-- Product 178: Scratch & Play Scratching Furniture
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    69,
    'Scratch & Play Scratching Furniture',
    'The Scratch & Play Scratching Furniture is the ultimate cat toy that offers two functions in one. It combines a practical scratching toy for claw care with an intelligence toy that will keep your cat occupied for hours. The top is made of corrugated cardboard, ideal for cats to fulfil their natural urge to scratch, and protects your furniture.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 4-Scratch & Play Scratching Furniture/ScratchPlay1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 4-Scratch & Play Scratching Furniture/ScratchPlay2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 4-Scratch & Play Scratching Furniture/ScratchPlay3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_178 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_178, '45.5 x 24 x 9.3 cm (L x W x H)', 459.00, 10);


-- Product 179: Scratching Furniture
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    69,
    'Scratching Furniture',
    'Your cat will love the corrugated cardboard scratching furniture! Cats can hardly resist this material as it is perfect for grooming their claws. The scratching furniture supports your cat\'s natural urge to sharpen its claws and mark its territory. Thanks to the special attraction that the cardboard exerts on cats, your furniture and wallpaper will be spared in future.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 5- Scratching Furniture/ScratchingFurniture1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 5- Scratching Furniture/ScratchingFurniture2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 5- Scratching Furniture/ScratchingFurniture3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_179 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_179, '43.5 x 19 x 5-12.5 cm (L x W x H)', 449.00, 10);


-- Product 180: Relax Scratch Bed
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    69,
    'Relax Scratch Bed',
    ' The Relax Scratch Bed with its pretty black and white butterflies and flowers is a great addition to your scratching post. At the same time, the Relax Scratch Bed gives your velvet paw a cosy little bed on which it can lounge and doze for hours. Thanks to the large diameter, even large cats will find plenty of space to make themselves comfortable.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 6- Relax Scratch Bed/RelaxScratch1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 6- Relax Scratch Bed/RelaxScratch2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 6- Relax Scratch Bed/RelaxScratch3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_180 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_180, 'Diameter 39 x H 14.5 cm', 399.00, 10);


-- Product 181: XL Cat House with Scratching Pad Winter Edition
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    69,
    'XL Cat House with Scratching Pad Winter Edition',
    'The attractive XL Cat House with Scratching Pad Winter Edition offers plenty of space, even for large cats, ensuring your cat has somewhere to relax, hide or nap. The natural scratching instincts can also be satisfied thanks to the stable scratching block in the floor, made from corrugated cardboard and perfect for daily claw care. This also helps to save your furniture, carpets and walls from scratch attacks! The reversible scratching board allows for twice the amount of scratching fun.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 7 - XL Cat House with Scratching Pad Winter Edition/XLCatHOuse1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 7 - XL Cat House with Scratching Pad Winter Edition/XLCatHouse2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 7 - XL Cat House with Scratching Pad Winter Edition/XLCatHouse3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_181 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_181, '58 x 36 x 41cm (L x W x H)', 899.00, 10);


-- Product 182: Multi-Scratch Cardboard Scratching Pad
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    69,
    'Multi-Scratch Cardboard Scratching Pad',
    'The Multi-Scratch Cardboard Scratching Pad is the ideal companion for your cat to sharpen its claws and protect your furniture at the same time. The reversible scratching block is made of robust corrugated cardboard, which has been specially developed for long-lasting use. A practical cardboard frame prevents the catnip from trickling through and ensures that your home stays clean.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 8- Multi-Scratch Cardboard Scratching Pad/MultiScratch1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 8- Multi-Scratch Cardboard Scratching Pad/MultiScratch2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 8- Multi-Scratch Cardboard Scratching Pad/MultiScratch3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_182 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_182, 'Brown', 150.00, 10);


-- Product 183: Round Scratch Board
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    69,
    'Round Scratch Board',
    'With this 3 in 1 toy for cats, you can keep your pet busy for a long time. In addition to a cardboard scratching board, it contains a play rail with an integrated ball and a crazy buzzing bee with fluttering wings that your furry nose can chase. The round scratching block made of robust corrugated cardboard is reversible and thus gets a double life span. Besides playing, your cat can groom its claws so that they stay sharp and short. In this way, you can also prevent your darling from sharpening his claws on furniture or carpets and thereby breaking them.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 9- Round Scratch Board/RoundScratch1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 9- Round Scratch Board/RoundScratch2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 9- Round Scratch Board/RoundScratch3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_183 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_183, '36 x H 25 cm', 899.00, 10);


-- Product 184: Scratching Post
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    69,
    'Scratching Post',
    'The zooplus Basics Scratching Post is ideal for your cat to groom its claws and stretch out extensively. The high scratching post is wrapped in sisal, which is perfect for sharpening claws. Thanks to the stable construction with a plush-covered base plate, the scratching post stands securely and remains stable even during intensive use.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 10- Scratching Post/ScratchPost1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 10- Scratching Post/ScratchPost2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 9 - Scratchers & Scratching Posts/Category 9 - Scratch - Products/Product 10- Scratching Post/ScratchPost3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_184 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_184, 'Grey', 299.00, 10);


-- Product 185: Scratching Furniture Wave
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    1,
    'Scratching Furniture Wave',
    'A collar shows at first glance that a free-roaming cat is not a stray, but has a home where it is cared for. To make it even clearer that your feline friends belong, the TIAKI Home cat collar has an address strip that you can label with your address and telephone number on the inside. A small bell on the collar also prevents your pet from poaching silently and successfully. This is a particularly useful measure during the breeding season for songbirds.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 1-Cat Collar Home/CatCollar1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 1-Cat Collar Home/CatCollar2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 1-Cat Collar Home/CatCollar3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_185 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_185, '1 Piece', 99.00, 10);


-- Product 186: Custom Cat Harness
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    70,
    'Custom Cat Harness',
    'The Trixie Sisal Cat Scratching Board is an essential accessory for all cat lovers who want to protect their home from the natural scratching habits of their feline friends. This practical scratching furniture can be easily mounted on any wall and blends stylishly into your home.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 2- Cat Harness With Custom Name/CatHarness1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 2- Cat Harness With Custom Name/CatHarness2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 2- Cat Harness With Custom Name/CatHarness3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_186 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_186, 'Black', 149.00, 10),
(@product_id_186, 'Red', 149.00, 10);


-- Product 187: Chrome Plated Address Pendant
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    70,
    'Chrome Plated Address Pendant',
    'Designed with an attractive and smooth chrome surface, this screw-on waterproof address pendant contains a small piece of paper for the name and address of your pet. Should your pet become lost then he or she can be easily identified and returned.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 3- Chrome Plated Address Pendant/ChromePlated1.jpg',
    NULL,
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_187 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_187, '3.6cm', 50.00, 10);


-- Product 188: Simon's Cat Collar
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    70,
    'Simon\'s Cat Collar',
    'A safety closure on the Simon\'s Cat Collar ensures that the collar pops open automatically if your cat gets caught on anything. The Simon\'s Cat Collar is fully adjustable. It has the Simon\'s Cat logo as well as a collar attachment and a fun motif all the way around. This collar is particularly robust, perfect for cats that are as adventurous as Simon\'s Cat!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 4-Simon_s Cat Collar/SImonsCollar1.jpg',
    NULL,
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_188 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_188, 'Grey', 99.00, 10);


-- Product 189: Easy Go Folding Transport Box
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    70,
    'Easy Go Folding Transport Box',
    'This Easy Go Folding Transport Box is the perfect retreat for your dog to sleep and relax, whether that be on a camping trip, for on journeys or at home. It is made from robust polyester with integrated metal rods offering stability and flexibility, as well as being easy and space-saving to store.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 5- Easy Go Folding Transport Box/EasyGo1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 5- Easy Go Folding Transport Box/EasyGo2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 5- Easy Go Folding Transport Box/EasyGo3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_189 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_189, 'S: 48 x 41 x 41 cm (L x W x H)', 549.00, 10),
(@product_id_189, 'M: 65 x 49 x 50 cm (L x W x H)', 749.00, 10),
(@product_id_189, 'L: 77 x 57 x 63 cm (L x W x H)', 949.00, 10);


-- Product 190: Slip-Proof Cat Bowl
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    70,
    'Slip-Proof Cat Bowl',
    'This stainless steel food bowl is easy to clean and made slip-proof with a rubber ring. It\'ll stay firm on the ground, even with very eager feeders!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 6- Slip-Proof Cat Bowl/SlipProof1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 6- Slip-Proof Cat Bowl/SlipProof2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 6- Slip-Proof Cat Bowl/SlipProof3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_190 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_190, '200 ml, Diameter 15 cm', 150.00, 10);


-- Product 191: Trixie Ceramic Cat Dish for Short-Nosed Breeds
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    70,
    'Trixie Ceramic Cat Dish for Short-Nosed Breeds',
    'Cat breeds with shorter noses can have problems with getting their food out of conventional cat bowls. This Trixie Ceramic Cat Dish for Short-Nosed Breeds is made from smooth ceramic and has been specially developed for short-nosed breeds such as Persians. It has no high border to hamper your cat, making it easy to take in its food. The flat shape of the bowl also prevents irritation to the sensitive whiskers. Once the bowl is licked clean, you will see the cute cat design and delightful paw pattern around the edge of the Trixie Ceramic Cat Dish for Short-Nosed Breeds. Perfect! ',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 7 - Trixie Ceramic Cat Dish for Short-Nosed Breeds/CeramicCat1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 7 - Trixie Ceramic Cat Dish for Short-Nosed Breeds/CeramicCat2.jpg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_191 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_191, '0.2 litre', 150.00, 10);


-- Product 192: Cat Drinking Fountain
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    70,
    'Cat Drinking Fountain',
    'Drinking enough water is essential for supporting your pet\'s health, which is why it is so important to ensure a fresh supply is always available. If your cat or dog struggles to take in sufficient fluids from a standard water bowl, this Cat Mate Drinking Fountain can be an ideal alternative. The constantly-flowing water is a great way to encourage your pet to drink more.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 8- Cat Drinking Fountain/DrinkingFountain1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 8- Cat Drinking Fountain/DrinkingFountain2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 8- Cat Drinking Fountain/DrinkingFountain3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_192 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_192, '2Liters', 1899.00, 10);


-- Product 193: Cat Face Ceramic Bowl
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    70,
    'Cat Face Ceramic Bowl',
    'The shallow Trixie Cat Face Ceramic Bowl adds a charming touch to your cat\'s eating area. The pretty dish has a cute feline face with a heart-shaped nose painted on the base. Adorable painted grey ears and a narrow grey rim complete the look. The Cat Face bowl is made from heavy stoneware and has a lightly rough base to stop the dish from slipping around.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 9- Cat Face Ceramic Bowl/CatFace1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 9- Cat Face Ceramic Bowl/CatFace2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 9- Cat Face Ceramic Bowl/CatFace3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_193 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_193, '250ml, Diameter 12cm', 149.00, 10);


-- Product 194: Cosmo Dual Feeding Bowl
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    2,
    70,
    'Cosmo Dual Feeding Bowl',
    ' The Cosma Dual Feeding Bowl makes mealtimes even better. No matter whether you are feeding your cat with Cosma premium cat food or another brand, everything tastes twice as nice from these cat bowls. It combines functionality and great design. The feeding station is made from elegant black melamine, a hygienic and easy to care for material. The base has a discreet Cosma logo on the side and holds two stainless steel bowls of different sizes. The separate metal bowls are removeable making it easy to fill them and take them out for easy cleaning, ready for the next meal. They are made from stainless steel, a taste-neutral and durable material that doesn\'t scratch easily. The black feeding station has handy recessed grips and rubber nubs to prevent it slipping. It can be used with or without the stainless steel bowls. This elegant silver and black dual feeding station fits in with any décor and adds a definite touch of luxury to your cat\'s mealtimes.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 10-  Cosmo Dual Feeding Bowl/CosmaDual1.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 10-  Cosmo Dual Feeding Bowl/CosmaDual2.jpg',
    '/grizzlypaws-backend/project-root/assets/images/Cat/Category 10 -  Cat Collars & Accessories/Category 10 - Accessories/Product 10-  Cosmo Dual Feeding Bowl/CosmaDual3.jpg',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_194 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_194, '0.25 litre + 0.75 litre (1 each)', 299.00, 10);


-- Product 195: Lillebro Fat Balls Wild Bird Food Saver Pack
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    81,
    'Lillebro Fat Balls Wild Bird Food Saver Pack',
    'Lillebro Fat Balls contain a mix of grain, minerals, oils and fats which help wild birds to build up their energy reserves so that they can stay healthy during the long cold winter. Fat balls are very popular but they are especially vital when the temperature outside falls below zero or if everything is covered in snow. This kind of weather makes it difficult for birds to find food naturally, so it is a good time to put out some fat balls. The wild birds in your garden will appreciate it.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/food/1_432317_pla_almonature_mix_hs_01_0.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/food/200896_pla_versele_laga_countrys_best_gold_4mix_20kg_hs_01_9.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_195 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_195, '100 x 90g (without net)', 1246.17, 10);


-- Product 196: Lillebro Wild Bird Food with Berries
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    81,
    'Lillebro Wild Bird Food with Berries',
    'Lillebro Wild Bird Food with Berries is an excellent source of energy for wild birds. It\'s a mix of seeds, grain and berries suitable for all seasons. The food contains no shells or husks, resulting in less mess and waste. It\'s ragweed seed tested and made with European quality.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/food/sunflowers_seeds_10kg_0.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/food/77975_pla_versele_natureclean_2_5kg_0.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_196 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_196, '1.5 kg', 700.00, 10);


-- Product 197: Savic Primo 60 Open Empire
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    81,
    'Savic Primo 60 Open Empire',
    'The Savic Primo 60 Open Empire bird cage is a spacious home for canaries with a height of 95 cm. It offers enough space to attach the included perches, feeding bowls, drinking fountain, and bird bath. You can access the inside through door openings at the front and sides, and the cage can be opened at the top for free flying.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/food/106036_pla_verselelaga_prestigeloro_parque_amazone_papageimix_hs_01_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/food/212198_versele_versele_laga_nutribird_p15_tropical_hs_13_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_197 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_197, 'L 80 x W x H 50 x 115 cm', 7097.00, 10);


-- Product 198: Trixie Nesting Box for Budgies
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    81,
    'Trixie Nesting Box for Budgies',
    'This box is made of natural untreated wood and is specially designed to meet the needs of Budgies. A mould for a nest is incorporated into the floor of the box. Furthermore, a wooden perch is included, which can be attached outside the entrance hole. The box can be opened from above.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/food/sunflowers_seeds_10kg_0.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/food/19059_pla_schesirsmall_megapack_gelee_thunfisch_6x50g_hs_01_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_198 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_198, '21 x 13 x 13 cm (L x W x H)', 414.96, 10);


-- Product 199: Savic Crock Feeding Dish with Screw Fastening
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    81,
    'Savic Crock Feeding Dish with Screw Fastening',
    'Savic Crock Feeding Dish with Screw Fastening is a quick and easy solution to dirty dishes. This deep feeding bowl can be positioned where you want, avoiding areas where it can get dirty. Birds like to be up high, so this is a great way to let them feed in a species-appropriate way. The dish is easy to clean and can be removed with a simple twist.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/food/38434_pla_prestige_wellensittich_4kg_6.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/food/106097_pla_verselelaga_prestigeloro_parque_african_papageimix_hs_01_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_199 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_199, '550ml', 703.33, 10),
(@product_id_199, '300ml', 625.96, 10);


-- Product 200: TIAKI Java Wood Foraging Toy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    81,
    'TIAKI Java Wood Foraging Toy',
    'The TIAKI Java Wood Foraging Toy offers a world of discovery and play for your bird. Made from natural java wood, it provides a safe and environmentally-friendly solution for allowing birds to peck and explore. The robust construction ensures your bird can slowly take in food, helping to reduce overfeeding and promote healthy digestion.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/food/200900_pla_verselelaga_countrysbest_gold_4mini_mix_20kg_hs_01_2.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/food/606454_lillebro_wild_bird_food_4kg_mit_schalen_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_200 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_200, '6 x 6 x 22 cm (L x W x H)', 287.00, 10);


-- Product 201: TIAKI Ladder Bird Toy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    81,
    'TIAKI Ladder Bird Toy',
    'Enrich your bird\'s home with this TIAKI Ladder Bird Toy, made from wood for small and medium birds. The robust ladder fits harmoniously into any bird cage and can be easily installed using practical hooks. The colourful, moving wooden beads encourage your bird to play and explore. It\'s the perfect combination of fitness accessory and toy.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/food/106036_pla_verselelaga_prestigeloro_parque_amazone_papageimix_hs_01_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/food/200896_pla_versele_laga_countrys_best_gold_4mix_20kg_hs_01_9.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_201 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_201, '30.5 x 9 x 1.5 cm (L x W x H)', 146.00, 10);


-- Product 202: JR Birds Foxtail Millet, Yellow
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    81,
    'JR Birds Foxtail Millet, Yellow',
    'Foxtail millet is a tasty, easy to digest treat which birds adore. Parakeets, canaries, and exotic birds all love foxtail millet and especially enjoy picking the seeds out of the husks. It is easy to attach the millet to the cage with a clip or clothes peg. Foxtail millet is suitable for breeding pairs or when raising a young bird.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/food/77975_pla_versele_natureclean_2_5kg_0.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/food/sunflowers_seeds_10kg_0.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_202 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_202, '1kg', 478.00, 10);


-- Product 203: TIAKI Capsule Transport Backpack for Birds
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    81,
    'TIAKI Capsule Transport Backpack for Birds',
    'The TIAKI Capsule Transport Backpack for Birds is ideal for transporting parakeets and small parrots. It features a large window for observation and generous ventilation holes for air circulation. The backpack has adjustable straps for comfortable carrying and comes equipped with a removable perch and bowl to increase comfort while traveling.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/food/106097_pla_verselelaga_prestigeloro_parque_african_papageimix_hs_01_6.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/food/lillebro_wbf_mealworms_0_5kg_1000x1000_8.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_203 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_203, '33 x 28 x 42 cm (L x W x H)', 1821.00, 10);


-- Product 204: TIAKI Log Cabin Nesting Box
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    81,
    'TIAKI Log Cabin Nesting Box',
    'The TIAKI Log Cabin Nesting Box is a charming home for wild birds. With its rustic design, it blends seamlessly into any garden and offers wild birds a safe place to nest. Thanks to the weatherproof material, it is perfect for outdoor use and can withstand all weather conditions. The protected interior ensures that birds feel safe and secure.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/food/32198_pla_catsbest_original_20l_hs_01_5.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/food/106097_pla_verselelaga_prestigeloro_parque_african_papageimix_hs_01_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_204 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_204, 'approx. 20 x 20cm (diameter x H)', 1300.00, 10);


-- Product 205: Savic Primo 60 Open Empire
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    82,
    'Savic Primo 60 Open Empire',
    'With the Savic Primo 60 Open Empire bird cage, you have a spacious home for your canaries. With a height of 95 cm, the cage is particularly high and therefore offers enough space to attach the included perches and feeding bowls, as well as the drinking fountain and bird bath.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/71861_pla_vogelvoliere_planeta_9.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/58108_58109_pla_caesar_papageienkaefig_lg_8825_5.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_205 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_205, 'L 80 x W x H 50 x 115 cm', 4500.00, 10);


-- Product 206: Ferplast Planeta Bird Aviary
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    82,
    'Ferplast Planeta Bird Aviary',
    'The Ferplast Planeta Bird Aviary offers the perfect haven for your birds, providing a spacious home for a range of different bird species. The aviary features 8 separate door openings, four at the front and two at each side, which allow great access to the cage. The Ferplast Planeta Bird Aviary also comes with an adorable birdbath that can be attached to the mesh. The removable floor tray allows for more thorough cleaning and helps prevent your birds from becoming stressed when the aviary is being cleaned.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/475196_pla_tiaki_bird_cage_120_fg_2426_2.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/388097_ml_bird_cage_industrial_fg_3873_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_206 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_206, 'L 99.5 x W 53 x H 171.5 cm', 7500.00, 10);


-- Product 207: TIAKI Noble Parrot Cage
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    82,
    'TIAKI Noble Parrot Cage',
    'The TIAKI Noble Parrot Cage is not only stable and long-lasting, but also offers maximum comfort for your birds. The large front door and additional side doors make it possible to enter the cage from various sides. The perch on top of the cage has an integrated ladder, perch and feeding station, offering your parrot an additional space to relax and play. For easy cleaning, the grille and collection tray can be removed.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/388097_pla_ml_bird_cage_industrial_fg_3872_6.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/352200_pla_vogelk_fig_ferplast_piano_6_hs_01_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_207 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_207, '82 x 77.4 x 164 cm (L x W x H)', 7899.00, 10);


-- Product 208: Caesar Parrot Cage
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    82,
    'Caesar Parrot Cage',
    'With this elegant aviary, offer your parrot a roomy home. The aviary is rectangular and measures 101 x 61 x 121 cm (L x W x H) without the droppings collector, arch, or feet. With the arch included the cage stands 178cm tall. 2 perches allow your pet a comfortable place to sit and sleep.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/360199_pla_ferplast_vogelvoliere_planeta_hs_05_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/465396_pla_tiaki_wooden_chicken_coop_ranch_fg_3272_4.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_208 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_208, '123 x 82 x 178 cm', 7899.00, 10);


-- Product 209: TIAKI Ranch Wooden Chicken Coop
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    82,
    'TIAKI Ranch Wooden Chicken Coop',
    'The TIAKI Ranch Wooden Chicken Coop (Optionally Expandable) offers your chickens a comfortable and safe home. Made from natural fir wood, the hutch blends seamlessly into your garden and impresses with its sturdy construction. With an easily accessible incubator and a weatherproof roof, this chicken coop is suitable for all weather conditions and offers protection from rain and wind.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/352200_pla_vogelk_fig_ferplast_piano_6_hs_01_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/475196_pla_tiaki_bird_cage_120_fg_2426_2.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_209 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_209, '116 x 78 x 89.8 cm (L x W x H)', 6000.00, 10);


-- Product 210: TIAKI Bird Cage 120
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    82,
    'TIAKI Bird Cage 120',
    'The TIAKI Bird Cage 120 offers your feathered friends a spacious home. This elegant cage is ideal for birds such as finches, budgies, large parakeets, etc. With a total of 10 cage doors, you can easily access all areas to change food and water or keep your birds company. Optionally, you can also fit the wheels supplied to easily move your birdhouse to different locations.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/58108_58109_pla_caesar_papageienkaefig_lg_8825_5.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/85438_pla_skyline_vogelvoliere_loretto_xl_4.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_210 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_210, '120 x 59 x 132 cm (L x W x H)', 8899.00, 10);


-- Product 211: Ferplast Piano 6 Bird Cage
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    82,
    'Ferplast Piano 6 Bird Cage',
    'The Ferplast Piano 6 Bird Cage is a spacious cage with a wide range of accessories for your budgies, zebra finches or canaries. The cage accessories supplied are made of plastic and are easy to clean. A total of four rotating food containers ensure a varied diet for your birds, while two included water bottles ensure their hydration.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/465396_pla_tiaki_wooden_chicken_coop_ranch_fg_3272_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/352200_pla_ferplast_vogelkaefig_piano_6_braun_schwarz_hs_01_5.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_211 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_211, 'Black: 87 x 46.5 x 70cm (L x W x H)', 4999.00, 10);


-- Product 212: Modern Living Industrial Bird Cage
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    82,
    'Modern Living Industrial Bird Cage',
    'With its industrial design and patterned rear wall in brass, the Modern Living Industrial Bird Cage is a truly eye-catching addition to your home. It features a cage top with wooden perch, as well as two additional wooden perches inside the cage, ensuring there is sufficient space for your bird to move around and play. Two free-standing food holders ensure your bird can always access its food and have a sense of wellbeing.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/85438_pla_skyline_vogelvoliere_loretto_xl_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/388097_ml_bird_cage_industrial_fg_3873_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_212 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_212, '81 x 48 x 84 / 102 cm (L x W x H)', 4799.00, 10);


-- Product 213: TIAKI Bird Aviary
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    82,
    'TIAKI Bird Aviary',
    'The TIAKI Bird Aviary offers your little feathered friends a cosy home that encourages their natural urge to move. Thanks to the generous height, the birds can fly and climb freely, which leads to a happier and more active life. The large front door gives you easy access to the inside, whether for cleaning or interacting with your birds.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/360199_pla_ferplast_vogelvoliere_planeta_hs_05_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/369520_pla_tiaki_noble_fg_0290_1.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_213 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_213, '79 x 69.5 x 167 cm (L x W x H)', 6899.00, 10);


-- Product 214: Skyline bird aviary Loretto XL
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    82,
    'Skyline bird aviary Loretto XL',
    'Loretto XL from Skyline is a spacious and functional aviary for budgies, canaries and exotic birds. The modern aviary with birch wood elements impresses with its design and functionality. The included accessoires offer your birds species-appropriate comfort. The practical feeding counter contains 3 chrome-plated feeding bowls and can be swung completely outwards, making it easier to refill and clean the feeding area.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/475196_pla_tiaki_bird_cage_120_fg_2426_2.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/cages/71861_pla_vogelvoliere_planeta_9.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_214 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_214, 'L 78 x W x H 75 x 175 cm', 5599.00, 10);


-- Product 215: TIAKI Wide Pumice Bird Perch
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    83,
    'TIAKI Wide Pumice Bird Perch',
    'Offer your feathered friends the ideal combination of comfort and care with this TIAKI Wide Pumice Bird Perch. The robust perch is not only a playground for birds such as parrots and parakeets, or small animals such as hamsters and degus, but also a natural grooming station for all kinds of animals. Made from natural pumice stone, it supports the care of birds\' claws and beaks by regulating their growth in a natural way. Small pets can also keep their teeth in good condition by gnawing on this mineral chewing stone.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/374505_pla_tiaki_vogelsitzstange_breit_aus_bims_fg_0014_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/377928_pla_tiaki_bendable_bird_perch_54cm_fg_0046_2.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_215 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_215, '13.5 x 7 x 2.8 cm (L x W x H)', 199.00, 10);


-- Product 216: TIAKI Natural Wood Perch
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    83,
    'TIAKI Natural Wood Perch',
    'Turn your bird\'s cage or aviary into a natural paradise with this TIAKI Natural Wood Perch. The high-quality bird perch is carefully made with untreated wood, to provide your bird with a comfortable place to sit as well as somewhere to play. Installing the wooden perch is particularly simple as it requires no additional tools, with integrated bolts and nuts to secure it easily into the cage.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/1366062_pla_ferplast_gro_sittich_vogelbad_hs_01_5.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/377920_pla_tiaki_coco_cup_perch_fg_9863_8.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_216 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_216, 'Size M: diameter 3 - 4 x (L) 30 cm', 189.00, 10),
(@product_id_216, 'Size S: diameter 2 - 3 x (L) 20 cm', 159.00, 10);


-- Product 217: TIAKI Feeding Cup with Clamp
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    83,
    'TIAKI Feeding Cup with Clamp',
    'Discover this TIAKI Feeding Cup with Clamp, an essential accessory for your bird\'s home. The cleverly-designed bowl can be easily fastened inside or outside of the cage, making spilled food or water a thing of the past. Your bird can feast to its heart\'s desire, without you needing to worry about cleaning up the mess afterwards!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/377932_pla_tiaki_jute_rope_perch_3_2cm_l60cm_fg_0075_8.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/377907_pla_tiaki_rope_sphere_30cm_fg_9852_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_217 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_217, '13 x 11.5 x 4.5 cm (L x W x H)', 299.00, 10);


-- Product 218: Trixie Sand-Blasted Branch
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    83,
    'Trixie Sand-Blasted Branch',
    'This sand-blasted vine from Trixie is an ideal natural decoration for any cage. The vine has many branches, providing the perfect opportunity for climbing rodents such as hamsters, mice, rats or degus to act their instinctive behaviours.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/35582_PLA_Savic_Futterhalter_Pincer_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/378006_pla_tiaki_java_wooden_parrot_stand_fg_0097_7.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_218 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_218, '40 - 60 cm', 320.00, 10);


-- Product 219: Trixie Nesting Box for Budgies
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    83,
    'Trixie Nesting Box for Budgies',
    'This box is made of natural untreated wood and is specially designed to meet the needs of Budgies (also referred to as Australian Parrots). A mould for a nest is incorporated into the floor of the box. Furthermore, a wooden perch is included, which can be attached outside the entrance hole. The box can be opened from above.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/369417_pla_tiaki_playstand_fg_0263_9.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/9860_PLA_Y_Sitzstange_9.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_219 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_219, '21 x 13 x 13 cm (L x W x H)', 700.00, 10);


-- Product 220: TIAKI Multi-Coloured Hanging Bridge
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    83,
    'TIAKI Multi-Coloured Hanging Bridge',
    'Add a splash of colour to your bird\'s cage and offer a playful challenge with this TIAKI Multi-Coloured Hanging Bridge! It is made from natural wood and is entirely non-toxic for your bird, as well as creating a safe environment to climb and play. The flexibility of this toy allows it to be formed into different shapes, as a simple bridge or an exciting ladder to climb.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/19655_PLA_hagen_pedi_perch_1.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/377921_pla_tiaki_suspension_bridge_multicolor_fg_9883_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_220 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_220, '61 x 12 cm (L x H)', 259.00, 10);


-- Product 221: TIAKI Rope Sphere
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    83,
    'TIAKI Rope Sphere',
    'Turn your bird\'s cage into a play area fit for royalty with this TIAKI Rope Sphere. The swinging movement helps to test your bird\'s natural balance, helping to offer both a cosy and stimulating environment. The TIAKI Rope Sphere is made with soft, cotton-like material that is gentle on your bird\'s claws and allows for safe play. It has no hard edges of rough surfaces - just pure comfort!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/378006_pla_tiaki_java_wooden_parrot_stand_fg_0097_7.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/369417_pla_tiaki_playstand_fg_0263_9.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_221 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_221, 'Size M: diameter 23cm', 150.00, 10),
(@product_id_221, 'Size L: diameter 30cm', 190.00, 10);


-- Product 222: Hagen Pedi-Perch
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    83,
    'Hagen Pedi-Perch',
    'Cement perches help maintain blunt, well-groomed claws and additionally clean the beak. Your bird will love these healthy perches from Hagen.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/19655_PLA_hagen_pedi_perch_1.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/377920_pla_tiaki_coco_cup_perch_fg_9863_8.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_222 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_222, '12cm & 1.6cm cage clip / diameter 2.5cm', 99.00, 10);


-- Product 223: TIAKI Rope Climbing Wall
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    83,
    'TIAKI Rope Climbing Wall',
    'Turn your bird\'s cage into an adventure playground with this TIAKI Rope Climbing Wall! The unique toy not only offers never-ending climbing opportunities for your bird, but also boosts wellbeing and activity. The climbing toy is made from natural materials such as real wood with bark, and jute, helping to withstand even the sharpest claws.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/377921_pla_tiaki_suspension_bridge_multicolor_fg_9883_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/35582_PLA_Savic_Futterhalter_Pincer_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_223 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_223, 'Size S: 40 x 35 cm (L x H)', 150.00, 10),
(@product_id_223, 'Size L: 70 x 40 cm (L x H)', 180.00, 10);


-- Product 224: Trixie Cotton Ring
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    83,
    'Trixie Cotton Ring',
    'Fun playing and climbing for your feathered friend. The ring is perfect for swinging and climbing- don\'t be suprised to find a little acrobat on your hands. The metal hook makes it easy to secure the cotton ring to the bars of the cage.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/374505_pla_tiaki_vogelsitzstange_breit_aus_bims_fg_0014_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/accessories/377932_pla_tiaki_jute_rope_perch_3_2cm_l60cm_fg_0075_8.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_224 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_224, '24 cm', 199.00, 10);


-- Product 225: JR Birds Foxtail Millet, Yellow
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'JR Birds Foxtail Millet, Yellow',
    'Foxtail millet is a tasty, easy to digest treat which birds adore. Parakeets, canaries, and exotic birds all love foxtail millet and especially enjoy picking the seeds out of the husks. It is easy to attach the millet to the cage with a clip or clothes peg. JR Birds Foxtail Millet is great way to give your bird a delicious treat and keep it amused at the same time.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/501445_pla_hugro_grosssittich_ohne_sbk_hs_01_6.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/67129_pla_naturpur_kraeuterwiese_7.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_225 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_225, '1kg', 350.00, 10);


-- Product 226: JR Farm Red Foxtail Millet
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'JR Farm Red Foxtail Millet',
    'Foxtail millet is a tasty, easy to digest treat which birds adore. Parakeets, canaries, and exotic birds all love foxtail millet and especially enjoy picking the seeds out of the husks. It is easy to attach the millet to the cage with a clip or clothes peg. JR Birds Foxtail Millet is great way to give your bird a delicious treat and keep it amused at the same time.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/195593_mucki_vogelwiese_1.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/367_10846_pla_jrfarm_kolbenhirse_gelb_9.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_226 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_226, '1kg', 450.00, 10);


-- Product 227: JR Farm Banana Chips
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'JR Farm Banana Chips',
    'JR Farm banana crisps are the perfect addition to your small pet\'s diet. Variety is important, and these crunchy crisps provide just that. Not only are they delicious, but they also contain essential nutrients that rodents also eat in the wild.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/784_pla_vitakraft_kr_cker_papagei_honig_anis_180g_hs_01_0.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/501534_pla_hugro_grosssittich_ohne_sbk_hs_01_3.jpg_1.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_227 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_227, '150g', 199.00, 10);


-- Product 228: Exotic Fruit Mix for Parrots
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'Exotic Fruit Mix for Parrots',
    'Your parrot will love this mix of top-quality seed and grain, enriched with dried fruit packed with vitamins. A delicious, healthy treat. Your parrot\'s natural habitat is in tropical and subtropical regions so it\'s bound to enjoy this exotic mix of dried bananas, raisins, papaya, apricots, pineapples and rose-hips.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/98738_pla_verselelager_prestige_parrots_15kg_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/12011_pla_jr_farm_kolbenhirse_rot_2.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_228 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_228, '2 x 15kg', 4999.00, 10),
(@product_id_228, '600g', 420.00, 10);


-- Product 229: Mucki Bird Grass
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'Mucki Bird Grass',
    'Pet birds need fresh food for their daily vitamins. This dish contains everything that you need to grow your own bird grass: a mineral substrate (vermiculite*) stores water which is then slowly released, providing a constant source of water for the little germinating plants.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/66507_pla_mixed_pack_versele_laga_prestige_sticks_wellensittiche_02_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/66508_ps_grosssittiche_pake_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_229 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_229, '2 x Bird grass dishes with brackets', 300.00, 10);


-- Product 230: Prestige Sticks for Large Parakeets Mixed Pack
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'Prestige Sticks for Large Parakeets Mixed Pack',
    'Got a large feathered friend? Get an XL snack! Your large parakeet will enjoy trying the new multipack of Prestige Sticks for Parakeets from Versele-Laga! The two, new oven-baked flavours are crammed with high-quality, tasty ingredients and offer great variation to your parakeet\'s meals.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/38542_PLA_Versele_EXOTIC_FRUIT_600g_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/64917_PLA_Versele_EXOTIC_NUTS_750g_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_230 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_230, '4 x 2 Sticks (560g)', 999.00, 10);


-- Product 231: JR Birds Pick 'n' Fun Large Parakeets and Parrots
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'JR Birds Pick \'n\' Fun Large Parakeets and Parrots',
    'JR Birds Pick \'n\' Fun Snack is a delicious supplementary food for large parakeets and parrots. The wholemeal seed mix has been baked so that it is very hard. It will keep your bird busy for hours, picking at the seeds. The seed mixture has hardwood at the top and bottom.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/34318_PLA_jrfarm_pick_n_fun_grosssittich_papagei_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/756_pla_vitakraft_kr_cker_wellensittiche_trio_mix_ei_aprikose_honig_hs_01_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_231 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_231, '1 item, wholemeal', 499.00, 10);


-- Product 232: Versele-Laga Exotic Nuts
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'Versele-Laga Exotic Nuts',
    'Versele-Laga Exotic Nuts is a delicacy which parrots just love. Macaws, cockatoos, African Grey Parrots, Eclectus Parrots and Amazons will particularly love it. They want their fill of the many whole nuts (including almonds, peanuts, hazelnuts, and brazil nute) and enjoy the rich mix of grains, seeds, fruits and veg. Give Exotic Nuts as feed, as a reward, or with a Versele-Laga seed mixture; for happy and healthy parrots.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/501534_pla_hugro_grosssittich_ohne_sbk_hs_01_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/66507_pla_mixed_pack_versele_laga_prestige_sticks_wellensittiche_02_4.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_232 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_232, 'Saver Pack: 2 x 750g', 799.00, 10),
(@product_id_232, 'Saver Pack: 750g', 450.00, 10);


-- Product 233: JR Birds Natural Gourmet String
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'JR Birds Natural Gourmet String',
    'This Gourmet string made from crackers, wood and cork is a treat for all kinds of ornamental birds. As well as being a tasty treat, it makes for great enrichment. Once the baked crackers are all eaten up, your pet can still enjoy using the willow ball and wood twigs for perching, nibbling or sharpening its beak.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/784_pla_vitakraft_kr_cker_papagei_honig_anis_180g_hs_01_0.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/756_pla_vitakraft_kr_cker_wellensittiche_trio_mix_ei_aprikose_honig_hs_01_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_233 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_233, '100g', 199.00, 10),
(@product_id_233, 'Twin Pack: 2 x 100g', 279.00, 10);


-- Product 234: JR Farm Apple Chips
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'JR Farm Apple Chips',
    'JR Farm apple crisps are a delicious single feed for rodents that will add variety to your little friend\'s diet. The crisps are gently dried during production so that the majority of the natural vitamins are retained. This treat is not only tasty, but also a species-appropriate addition to the daily diet.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/98738_pla_verselelager_prestige_parrots_15kg_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/snacks/12011_pla_jr_farm_kolbenhirse_rot_2.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_234 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_234, 'Saver Pack: 3 x 250g', 559.00, 10),
(@product_id_234, '250g', 199.00, 10);


-- Product 235: TIAKI Multi-Coloured Hanging Bridge
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    85,
    'TIAKI Multi-Coloured Hanging Bridge',
    'Add a splash of colour to your bird\'s cage and offer a playful challenge with this TIAKI Multi-Coloured Hanging Bridge. It is made from natural wood and is entirely non-toxic for your bird, as well as creating a safe environment to climb and play. The flexibility of this toy allows it to be formed into different shapes, as a simple bridge or an exciting ladder to climb.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/377921_pla_tiaki_suspension_bridge_multicolor_fg_9883_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/21068_PLA_Vogelschaukel_Natur_2.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_235 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_235, '61 x 12 cm (L x H)', 199.00, 10);


-- Product 236: TIAKI Ladder Bird Toy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    85,
    'TIAKI Ladder Bird Toy',
    'Enrich your bird\'s home with this TIAKI Ladder Bird Toy, made from wood and specially developed for small and medium birds. The robust ladder will fit harmoniously into any bird cage and can be easily installed using practical hooks. The colourful, moving wooden beads on this TIAKI Ladder Bird Toy encourage your bird to play and explore. It is the perfect combination of fitness accessory and toy.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/377916_pla_tiaki_climbing_rope_net_40x_35cm_fg_9982_8.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/378001_pla_tiaki_rope_sphere_23cm_fg_9844_7.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_236 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_236, '30.5 x 9 x 1.5 cm (L x W x H)', 250.00, 10);


-- Product 237: Trixie Cotton Ring
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    85,
    'Trixie Cotton Ring',
    'Fun playing and climbing for your feathered friend. The ring is perfect for swinging and climbing- don\'t be surprised to find a little acrobat on your hands. The metal hook makes it easy to secure the cotton ring to the bars of the cage.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/514996_pla_beeztees_huehner_snackturm_hs_07_7.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/378008_pla_tiaki_bird_kebab_shreddable_toy_28cm_fg_9919_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_237 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_237, 'Ø 24 cm', 250.00, 10);


-- Product 238: TIAKI Rope Climbing Wall
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    85,
    'TIAKI Rope Climbing Wall',
    'Turn your bird\'s cage into an adventure playground with this TIAKI Rope Climbing Wall! The unique toy not only offers never-ending climbing opportunities for your bird, but also boosts wellbeing and activity. The climbing toy is made from natural materials such as real wood with bark, and jute, helping to withstand even the sharpest claws.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/377919_pla_tiaki_climbing_rope_net_70x_40cm_fg_9975_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/352999_1_5.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_238 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_238, 'Size S: 40 x 35 cm (L x H)', 199.00, 10),
(@product_id_238, 'Size L: 70 x 40 cm (L x H)', 230.00, 10);


-- Product 239: TIAKI Java Wood Foraging Toy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    85,
    'TIAKI Java Wood Foraging Toy',
    'Open the door to a world of new discovery and play for your bird with this TIAKI Java Wood Foraging Toy. The unique foraging toy for birds is more than just entertainment - it is an every-day adventure! It is made from natural java wood, offering a safe and environmentally-friendly solution for allowing your bird to peck and explore to its heart\'s content. The robust material ensures it is long-lasting, as well as being completely non-toxic for your birds.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/377917_pla_tiaki_bird_ladder_fg_9871_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/59841_pla_katzenfederspiel_fg_4943_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_239 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_239, '6 x 6 x 22 cm (L x W x H)', 399.00, 10);


-- Product 240: Beeztees Snack Tower for Chickens
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    85,
    'Beeztees Snack Tower for Chickens',
    'The Beeztees Snack Tower for Chickens is the perfect addition to your chicken coop. Made from recycled plastic, the tower is not only sustainable but also particularly durable. Your chickens will love the two levels with access holes for their curious beaks that allow them to reach the snacks inside.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/377910_pla_tiaki_suspension_bridge_fg_9829_2.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/20974_pla_trixie_holzspielplatznaturallivingsittiche_1.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_240 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_240, '30 x 32.5cm (diameter x H)', 899.00, 10);


-- Product 241: TIAKI Peck & Pull Coconut Toy for Birds
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    85,
    'TIAKI Peck & Pull Coconut Toy for Birds',
    'Keep your feathered friend entertained with this TIAKI Peck & Pull Coconut Toy for Birds. The unique bird toy is handmade from natural, sustainable materials, providing hours of mental stimulation and physical play. It has three openings through which your bird can peek. The toy is a great opportunity to boost activity, as well as promoting clever use of its feet and beak.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/352998_pla_tiaki_bird_coco_foraging_toy_fg_9996_5.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/377932_pla_tiaki_jute_rope_perch_3_2cm_l60cm_fg_0075_8.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_241 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_241, 'approx. diameter 15 x (H) 30 cm', 300.00, 10);


-- Product 242: TIAKI Kebab Chew Toy for Birds
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    85,
    'TIAKI Kebab Chew Toy for Birds',
    'Treat your feathered friend to this TIAKI Kebab Chew Toy for Birds, a safe and enjoyment way to support natural behaviours and maintain health. This toy is made from natural wood and jute, materials that are absolutely non-toxic for parakeets, finches and parrots. It offers a fun activity, as well as helping your bird to keep its beak in shape.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/378002_pla_tiaki_ferris_wheel_swing_m_fg_9893_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/374507_pla_tiaki_bamboo_paper_schredder_bird_toy_fg_0006_1.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_242 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_242, 'diameter 3.5 x (L) 28 cm', 159.00, 10),
(@product_id_242, 'diameter 4.5 x (L) 33 cm', 199.00, 10);


-- Product 243: TIAKI XL Java Wood Perch Station Swing
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    85,
    'TIAKI XL Java Wood Perch Station Swing',
    'Offer your birds a natural place to play with this TIAKI XL Java Wood Perch Station Swing, ideal for adding directly to their cage. It is made from robust java wood and provides plenty of perches for your birds to sit on and rest, as well as allowing for climbing and swinging. The perches are designed so that three or four birds can sit at the same time. This promotes socialisation within the bird cage.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/377999_pla_tiaki_ferris_wheel_swing_s_fg_9910_0.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/377913_pla_tiaki_java_wood_foraging_toy_fg_9885_7.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_243 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_243, '51 x 25 x 19cm (L x W x H)', 999.00, 10);


-- Product 244: TIAKI Rope Sphere
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    85,
    'TIAKI Rope Sphere',
    'Turn your bird\'s cage into a play area fit for royalty with this TIAKI Rope Sphere. The swinging movement helps to test your bird\'s natural balance, helping to offer both a cosy and stimulating environment. The TIAKI Rope Sphere is made with soft, cotton-like material that is gentle on your bird\'s claws and allows for safe play. It has no hard edges of rough surfaces - just pure comfort!',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/378004_pla_tiaki_ferris_wheel_swing_l_fg_9901_5.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/toys/377907_pla_tiaki_rope_sphere_30cm_fg_9852_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_244 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_244, 'Size M: diameter 23cm', 250.00, 10),
(@product_id_244, 'Size L: diameter 30cm', 300.00, 10);


-- Product 245: JR Birds Foxtail Millet, Yellow
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    86,
    'JR Birds Foxtail Millet, Yellow',
    'Foxtail millet is a tasty, easy to digest treat which birds adore. Parakeets, canaries, and exotic birds all love foxtail millet and enjoy picking the seeds out of the husks. It is easy to attach the millet to the cage with a clip or clothes peg. JR Birds Foxtail Millet is a great way to give your bird a delicious treat and keep it amused.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/health/37794_pla_quiko_mineralstein_flower_hs_01_6.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/health/37910_PLA_quiko_Classic_Egg_Food_500g_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_245 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_245, '1kg', 350.00, 10);


-- Product 246: TIAKI Wide Pumice Bird Perch
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    86,
    'TIAKI Wide Pumice Bird Perch',
    'Offer your feathered friends the ideal combination of comfort and care with this TIAKI Wide Pumice Bird Perch. The robust perch is not only a playground for birds such as parrots and parakeets, but also a natural grooming station. Made from natural pumice stone, it supports the care of birds\' claws and beaks by regulating their growth in a natural way. Small pets can also keep their teeth in good condition by gnawing on this mineral chewing stone.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/health/159496_pla_vogelgrit_5.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/health/513701_pla_vitakraft_vitagarden_protein_mix_hs_01_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_246 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_246, '13.5 x 7 x 2.8 cm (L x W x H)', 150.00, 10);


-- Product 247: Quiko Vitacombex V
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    86,
    'Quiko Vitacombex V',
    'Vitacombex V is a pleasant tasting multivitamin juice for the treatment and prevention of vitamin deficiencies. The diverse vitamins contained in high concentrations contribute to the optimal flow of bodily functions and strengthen the immune system. The tasty juice is best added to the drinking water or the feed and the animal usually likes to eat it.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/health/98844_pla_versele_verselelaga_oropharma_calci_lux_500g_9.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/health/367_10846_pla_jrfarm_kolbenhirse_gelb_9.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_247 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_247, 'Saver Pack: 2 x 125ml', 599.00, 10),
(@product_id_247, '125ml', 329.00, 10);


-- Product 248: Quiko Egg Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    86,
    'Quiko Egg Food',
    'Egg food is a healthy and much-loved food supplement for ornamental birds. Especially during breeding and when bringing up young, egg food provides an essential source of protein. Birds weakened by illness can be helped to regain their strength with egg food supplement. A high vitamin content helps with moulting.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/health/52610_ardap_care_quiko_vitacombex_v_hs_01_5.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/health/451130_cage_fg_0197_4.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_248 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_248, 'Saver Pack: 2 x 500g', 259.00, 10),
(@product_id_248, '500g', 150.00, 10);


-- Product 249: Quiko Mineral Stone Flower
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    86,
    'Quiko Mineral Stone Flower',
    'These clay stones by Quiko with flowers and grains are lots of fun and will keep your bird busy for ages. The tasty treats baked into the clay will make it keep pecking away, taking in the small clay stones. These will act as bird grit, which is essential for a healthy digestion.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/health/99510_pla_lupo_moorliquid_1000vorne_hs_01_6.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/health/523898_pla_donath_sonnenblumenkerne_schwarz_1kg_1000x1000_hs_01_2.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_249 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_249, 'Saver Pack: 2 mineral stones, 7 x 7 cm', 300.00, 10),
(@product_id_249, '1 mineral stone, 7 x 7 cm', 170.00, 10);


-- Product 250: beaphar Bird Grit
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    86,
    'beaphar Bird Grit',
    'Many pet birds require grit to help with healthy digestion. A bird\'s stomach is made up of two parts - the glandular stomach where whole grains are pre-digested with enzymes, then a muscular stomach where the pre-digested food is ground up. The tiny stones in the grit that your bird swallows act like mill stones and turn the food into fine, digestible particles. If birds do not have grit, they can have difficulty digesting food.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/health/195593_mucki_vogelwiese_1.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/health/37910_pla_ardap_care_quiko_eifutter_hs_01_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_250 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_250, '225g', 299.00, 10);


-- Product 251: LUPO MoorLiquid
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    86,
    'LUPO MoorLiquid',
    'LUPO MoorLiquid is a unique feed supplement suitable for a wide range of pets. With a high proportion of naturally pure moor, it provides a wealth of vital nutrients derived from a cycle that has been undisturbed for thousands of years. This product is not only rich in iron, but also contains fennel, which provides vitamin C. The liquid moor extract is particularly palatable and is well accepted by many animals.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/health/67129_pla_naturpur_kraeuterwiese_7.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/health/451130_tiaki_lava_stone_fg_9685_1.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_251 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_251, '1000g', 1099.00, 10);


-- Product 252: Trixie Extra Large Feeding Pole with Millet
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    86,
    'Trixie Extra Large Feeding Pole with Millet',
    'For birdwatchers, there\'s nothing better than watching wild birds foraging in your garden. The extra-long feeding pole consists of protein-rich mealworms as well as nutritious sunflower seeds, millet, seeds and other grains. The Trixie Extra Large Feeding Pole with Millet has a practical cord so that you can hang it up in a suitable place.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/health/367_10846_pla_jrfarm_kolbenhirse_gelb_9.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/health/98844_pla_versele_verselelaga_oropharma_calci_lux_500g_9.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_252 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_252, '170g', 99.00, 10);


-- Product 253: Versele-Laga Oropharma Calci-Lux
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    86,
    'Versele-Laga Oropharma Calci-Lux',
    'Calcium deficiency can quickly lead to health problems in birds, so it is sometimes useful to feed additional calcium. Versele-Laga Oropharma Calci-Lux is a high-quality calcium source that is water-soluble and can be administered dissolved in drinking water and soft feed.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/health/451130_tiaki_lava_stone_fg_9685_1.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/health/523898_pla_donath_sonnenblumenkerne_schwarz_1kg_1000x1000_hs_01_2.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_253 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_253, '2 x 500 g', 1899.00, 10);


-- Product 254: Donath Black Sunflower Seeds
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    86,
    'Donath Black Sunflower Seeds',
    'Donath Black Sunflower Seeds are ideal for filling feeders or as scatter food for the wild birds in your garden. Their delicious flavour makes them a real delicacy for all types of tits, finches, nuthatches and sparrows. The high-quality seeds are particularly rich in oil and provide important fats for the birds. The Donath Black Sunflower Seeds are also easier to crack than the striped seeds thanks to their softer shell.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/health/513701_pla_vitakraft_vitagarden_protein_mix_hs_01_6.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/health/37910_PLA_quiko_Classic_Egg_Food_500g_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_254 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_254, '1kg', 250.00, 10),
(@product_id_254, '9kg', 2199.00, 10);


-- Product 255: Chipsi Super Litter
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'Chipsi Super Litter',
    'Chipsi Super Litter made from softwood granules is a new and very effective litter product. The litter is specially dried, has twice the absorbency of other wood litter and therefore traps moisture and odour inside the plant fibre. It is virtually dust- and germ-free, making Chipsi Super ideal for allergic or respiratory small animals. The softwood granules can be used particularly sparingly and have excellent rotting properties.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/59320_pla_hugro_backtolife_einstreu_25l_2.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/2820_PLA_Krallenschere_2.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_255 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_255, '24kg', 999.00, 10);


-- Product 256: Verm-x poultry pellets
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'Verm-x poultry pellets',
    'Whether turkey, duck or chicken – hardly any poultry can resist the tasty Verm-X poultry pellets. It is a natural supplementary feed that is suitable for all types of poultry - regardless of breed and age. It is also a good choice for chicks and adults with sensitive digestions.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/371699_pla_anibest_kleintierstreu_500l_hs_01_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/39544_pla_versele_vogelsand_kristall5kg_1.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_256 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_256, '750 g', 899.00, 10);


-- Product 257: Chipsi Extra Beechwood Chips 15kg
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'Chipsi Extra Beechwood Chips 15kg',
    'Chipsi Extra Beechwood-Granulate is a natural bedding that was specially developed with the needs of reptiles and some breeds of birds in mind.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/21282_pla_versele_vogelsand_marine5kg_5.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/164799_pla_demavic_verm_x_gefluegelpellets_750g_hs_01_4.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_257 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_257, 'Medium-Grain', 699.00, 10),
(@product_id_257, 'XXL-Grain', 699.00, 10);


-- Product 258: Versele-Laga Prestige Premium Bird Sand
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'Versele-Laga Prestige Premium Bird Sand',
    'The Versele-Laga Prestige Premium Bird Sand is sterilised at a very high temperature. A shell sand with 50% oyster shells, other shells and enriched with minerals, it is a good source of minerals, encourages healthy digestion, bones and feathers. Versele-Laga Prestige Premium Bird Sand smells fresh, is dust-free and environmentally friendly. For optimum cleanliness change 1-2 per week.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/13923_PLA_Chipsie_Extra_Buchenholzspaene_medium_15kg_1.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/10520_PLA_Chipsi_Extra_Buchenholzspaene_XXL_15kg_1.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_258 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_258, '5kg', 400.00, 10);


-- Product 259: Fidelio Bird Sand
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'Fidelio Bird Sand',
    'This Fidelio Bird Sand is washed, dried and enriched with valuable, natural additives such as natural chalk and mussel grit. It has a fine scent, strengthens your pet\'s bones and encourages a healthy metabolism, as well as promoting glorious plumage. This Fidelio Bird Sand can offer a significant improvement to your pet bird\'s overall health and wellbeing, with this particularly absorbent sand ensuring a clean home environment.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/371698_pla_anibest_kleintierstreu_60l_hs_01_5.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/39544_pla_verselelaga_kristall_muschelsand_5kg_4.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_259 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_259, '5 kg bag', 400.00, 10);


-- Product 260: Hugro Back to Life Cellulose Litter
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    1,
    'Hugro Back to Life Cellulose Litter',
    'Discover the Hugro Back to Life Cellulose Litter, the perfect choice for your little darling. This natural bedding has been specially developed for small animal and bird cages and offers a dust-free, loose consistency. Thanks to their high absorbency and ability to neutralise odours, they keep your pet\'s home fresh and clean.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/606454_lillebro_wild_bird_food_4kg_mit_schalen_6.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/bedding/55128_pla_chipsi_super_heimtierstreu_24kg_7.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_260 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_260, '25l', 1300.00, 10),
(@product_id_260, 'Economy Pack: 2 x 25l', 2699.00, 10);


-- Product 261: Lillebro Fat Balls Wild Bird Food Saver Pack
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    88,
    'Lillebro Fat Balls Wild Bird Food Saver Pack',
    'Lillebro Fat Balls contain a mix of grain, minerals, oils and fats which help wild birds to build up their energy reserves so that they can stay healthy during the long cold winter. Fat balls are very popular but they are especially vital when the temperature outside falls below zero or if everything is covered in snow. This kind of weather makes it difficult for birds to find food naturally, so it is a good time to put out some fat balls. The wild birds in your garden will appreciate it.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/2228967_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/606454_lillebro_wild_bird_food_4kg_mit_schalen_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_261 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_261, '100 x 90g (with net)', 799.00, 10),
(@product_id_261, '100 x 90g (without net)', 750.00, 10);


-- Product 262: Lillebro Husk-Free Sunflower Seeds
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    88,
    'Lillebro Husk-Free Sunflower Seeds',
    'In order to protect the future bird population, wild birds should be provided with energy-rich food year-round, not just in the cold periods. Since habitat deterioration in our part of the world severely reduces the natural food supply, wild birds need additional sources of food.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/77975_pla_versele_natureclean_2_5kg_0.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/lillebro_sack_sbk_1kg_rot_0.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_262 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_262, '1kg', 300.00, 10),
(@product_id_262, 'Economy Pack: 3kg', 800.00, 10);


-- Product 263: Lillebro Wild Bird Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    88,
    'Lillebro Wild Bird Food',
    'Wild birds have to cope with an ever-dwindling natural supply of food, especially in urban areas. You can help by providing wild birds with a balanced mix of selected seeds and grains which are suitable for all-year feeding, such as Lillebro Wild Bird Food.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/sunflowers_seeds_10kg_0.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/68373_pla_lillebro_sonnenblumenkerne_geschaelt_1_kg_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_263 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_263, '4kg', 600.00, 10),
(@product_id_263, '20kg', 1999.00, 10);


-- Product 264: Menu Nature Four Seasons Mix
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    88,
    'Menu Nature Four Seasons Mix',
    'Versele-Laga offers a delicious Menu Nature Four Seasons Mix wild bird food, specially composed to offer a nutritionally balanced mix of selected grains, seeds and nuts. The feed has been tested for the presence of Ambrosia. This wild bird feed is suitable for feeding all year round.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/100_meisenkn_del_in_box_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/sunflowers_seeds_3kg_9.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_264 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_264, '4kg', 799.00, 10),
(@product_id_264, '20kg', 3099.00, 10);


-- Product 265: Lillebro Husk-Free Sunflower Seeds
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    88,
    'Lillebro Husk-Free Sunflower Seeds',
    'In order to protect the future bird population, wild birds should be provided with energy-rich food year-round, not just in the cold periods. Since habitat deterioration in our part of the world severely reduces the natural food supply, wild birds need additional sources of food.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/352496__352498__3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/62080_pla_lillebro_erdnuesse_gehackt_1_kg_4.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_265 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_265, '1kg', 300.00, 10),
(@product_id_265, 'Economy Pack: 3kg', 800.00, 10);


-- Product 266: Menu Nature Clean Garden Mix
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    88,
    'Menu Nature Clean Garden Mix',
    'This delicious natural Menu Nature Clean Garden Mix from Versele-Laga is the perfect mix for all year round, tasting delicious to wild birds and extremely user-friendly. The supplementary feed is designed to meet the needs of wild birds, with an ideal mix of seeds and nuts without shells, to help ensure your feathered friends don\'t have any unwanted accidents.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/lillebro_wbf_mealworms_0_5kg_1000x1000_8.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/300908_pla_lilebro_fatballs_1000x1000_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_266 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_266, '2.5kg', 280.00, 10),
(@product_id_266, '10kg', 1099.00, 10);


-- Product 267: Lillebro Sunflower Seeds for Wild Birds
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    88,
    'Lillebro Sunflower Seeds for Wild Birds',
    'Overwintering birds need a diet rich in energy to get through the cold season. Frost and snow restrict their natural food intake, and urbanisation makes it increasingly difficult for them to survive on natural food sources. Especially in cities, wild birds benefit from supplementary feeding.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/gefullter_pinienzapfen_new_1000x1000_3.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/606455_lillebro_wild_bird_food_20kg_mit_schalen_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_267 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_267, '1kg', 240.00, 10),
(@product_id_267, '5kg', 1099.00, 10),
(@product_id_267, '10kg', 2150.00, 10);


-- Product 268: Lillebro Fat Balls Wild Bird Food Saver Pack
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    88,
    'Lillebro Fat Balls Wild Bird Food Saver Pack',
    'Lillebro Fat Balls contain a mix of grain, minerals, oils and fats which help wild birds to build up their energy reserves so that they can stay healthy during the long cold winter. Fat balls are very popular but they are especially vital when the temperature outside falls below zero or if everything is covered in snow. This kind of weather makes it difficult for birds to find food naturally, so it is a good time to put out some fat balls. The wild birds in your garden will appreciate it.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/32198_pla_catsbest_original_20l_hs_01_5.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/62079_pla_lillebro_mehlwuermer_getrocknet_500_g_6.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_268 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_268, '100 x 90g (with net)', 799.00, 10),
(@product_id_268, '100 x 90g (without net)', 750.00, 10);


-- Product 269: Lillebro Fat Balls
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    88,
    'Lillebro Fat Balls',
    'Lillebro Fat Balls contain a mix of grain and seed which provides wild birds with important minerals and helps to build up their energy reserves. The fat is an important part of their diet and helps them to stay healthy during the long, cold winter.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/300908_pla_lilebro_fatballs_1000x1000_6.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/lillebro_wbf_mealworms_0_5kg_1000x1000_8.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_269 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_269, '6 x 90g', 190.00, 10),
(@product_id_269, 'Saver Pack: 30 x 90g', 600.00, 10);


-- Product 270: Lillebro Fat Balls with Insects
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    4,
    88,
    'Lillebro Fat Balls with Insects',
    'These fat balls with insects are a tasty, energy-rich snack for the birds in your garden. Oils & fats are combined with mealworms - a real treat for your feathered friends all year round.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/62080_pla_lillebro_erdnuesse_gehackt_1_kg_4.jpg.jpeg',
    '/grizzlypaws-backend/project-root/assets/images/bird/wild/2228967_3.jpg.jpeg',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_270 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_270, '340g', 200.00, 10),
(@product_id_270, 'Saver Pack: 4 x 340g', 750.00, 10);


-- Product 271: Fluval Plant and Shrimp Stratum
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    91,
    'Fluval Plant and Shrimp Stratum',
    'Specialized substrate designed to promote healthy plant growth and create an ideal environment for shrimp. Its porous structure provides superior biological filtration while maintaining stable pH levels optimal for sensitive species.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 1 - Fluval Plant and Shrimp Stratum, 8.8 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 1 - Fluval Plant and Shrimp Stratum, 8.8 lbs/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 1 - Fluval Plant and Shrimp Stratum, 8.8 lbs/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_271 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_271, '4.4 lb bag', 750.00, 10),
(@product_id_271, '8.8 lb bag', 1350.00, 10),
(@product_id_271, '17.6 lb bag', 2450.00, 10);


-- Product 272: GloFish Black Multi-Color Lagoon Aquarium Gravel
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    91,
    'GloFish Black Multi-Color Lagoon Aquarium Gravel',
    'Specially designed to complement GloFish and other fluorescent fish species. This dramatic black substrate contains vibrant colored pieces that glow dramatically under aquarium lighting, creating a mesmerizing underwater effect.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 2 - Imagitarium Neon Aquarium Gravel Substrate, Pink, 5 lbs/green.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 2 - Imagitarium Neon Aquarium Gravel Substrate, Pink, 5 lbs/pink.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 3 - GloFish Black Multi-Color Lagoon Aquarium Gravel, 5 lbs/Capture.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_272 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_272, '5 lb bag', 550.00, 10);


-- Product 273: Aqua Natural Midnight Pearl Gravel
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    91,
    'Aqua Natural Midnight Pearl Gravel',
    'Premium dark substrate with iridescent flecks that create a subtle, sophisticated shimmer in your aquarium. This natural-looking gravel adds depth and elegance to any freshwater setup.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 3 - GloFish Black Multi-Color Lagoon Aquarium Gravel, 5 lbs/Capture2.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 4 - Aqua Natural Midnight Pearl Gravel, 10 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 4 - Aqua Natural Midnight Pearl Gravel, 10 lbs/Capture1.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_273 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_273, '5 lb bag', 520.00, 10);


-- Product 274: Dennerle Shrimp King Active Soil
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    91,
    'Dennerle Shrimp King Active Soil',
    'Professional-grade aquarium soil specially formulated for breeding and keeping sensitive freshwater shrimp species. Stabilizes water parameters and provides essential minerals for healthy molting and vibrant coloration.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 4 - Aqua Natural Midnight Pearl Gravel, 10 lbs/Capture2.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 5 - Dennerle Shrimp King Active Soil, 8 Liters/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 5 - Dennerle Shrimp King Active Soil, 8 Liters/Capture1.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_274 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_274, '4 lb bag', 950.00, 10),
(@product_id_274, '8 lb bag', 1750.00, 10),
(@product_id_274, '16 lb bag', 3200.00, 10);


-- Product 275: Pure Water Pebbles Bio-Activ Live African Cichlid Substrates
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    91,
    'Pure Water Pebbles Bio-Activ Live African Cichlid Substrates',
    'Specialized substrate containing beneficial bacteria and essential minerals that help create the ideal water chemistry for African cichlids. Helps maintain alkaline pH levels while promoting healthy bacterial colonies.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 5 - Dennerle Shrimp King Active Soil, 8 Liters/Capture2.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 6 - Pure Water Pebbles Bio-Activ Live African Cichlid Substrates, 20 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 6 - Pure Water Pebbles Bio-Activ Live African Cichlid Substrates, 20 lbs/Capture1.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_275 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_275, '10 lb bag', 1250.00, 10);


-- Product 276: Aqua Natural Betta World Tutti Frutti Gravel
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    91,
    'Aqua Natural Betta World Tutti Frutti Gravel',
    'Colorful, smooth-edged gravel mix designed specifically for betta tanks. The bright, playful colors enhance your betta\'s environment without sharp edges that could damage delicate fins.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 7 - Aqua Natural Betta World Tutti Frutti Gravel, Small/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 7 - Aqua Natural Betta World Tutti Frutti Gravel, Small/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 7 - Aqua Natural Betta World Tutti Frutti Gravel, Small/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_276 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_276, 'Tropical Blend, 3 lb bag', 380.00, 10),
(@product_id_276, 'Ocean Mix, 3 lb bag', 380.00, 10),
(@product_id_276, 'Sunset Collection, 3 lb bag', 400.00, 10);


-- Product 277: Aqua Natural Diamond Black Quartz
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    91,
    'Aqua Natural Diamond Black Quartz',
    'Premium jet-black quartz substrate that creates a dramatic, contemporary look in any aquarium. The fine grain size is ideal for planted tanks and helps prevent debris from settling between particles.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 8 - Aqua Natural Diamond Black Quartz, 10 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 8 - Aqua Natural Diamond Black Quartz, 10 lbs/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 8 - Aqua Natural Diamond Black Quartz, 10 lbs/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_277 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_277, '5 lb bag', 850.00, 10);


-- Product 278: Fluval Bio Stratum Aquarium
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    91,
    'Fluval Bio Stratum Aquarium',
    'Advanced biological substrate that supports beneficial bacteria growth while providing an ideal foundation for live plants. Its spherical shape allows optimal water flow and prevents harmful gas pockets.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 9 - Fluval Bio Stratum Aquarium, 8.8 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 9 - Fluval Bio Stratum Aquarium, 8.8 lbs/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 1 - Aquarium Sand, Gravel & Substrates/Category 1 - Products/Product 9 - Fluval Bio Stratum Aquarium, 8.8 lbs/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_278 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_278, '4.4 lb bag', 780.00, 10),
(@product_id_278, '8.8 lb bag', 1400.00, 10),
(@product_id_278, '17.6 lb bag', 2500.00, 10);


-- Product 279: Imagitarium Open-Glass Aquarium Tank 10 Gallon
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    92,
    'Imagitarium Open-Glass Aquarium Tank 10 Gallon',
    'Sleek, frameless glass aquarium perfect for small community setups or as a starter tank. The open-top design allows maximum viewing and flexibility in equipment placement.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 1 - Imagitarium Open-Glass Aquarium Tank, 10 Gallon/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 1 - Imagitarium Open-Glass Aquarium Tank, 10 Gallon/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 1 - Imagitarium Open-Glass Aquarium Tank, 10 Gallon/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_279 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_279, '10 Gallon', 2850.00, 10);


-- Product 280: Marineland 5 Gallon Portrait Glass LED Aquarium Kit
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    92,
    'Marineland 5 Gallon Portrait Glass LED Aquarium Kit',
    'Space-saving vertical design with integrated LED lighting and hidden filtration. The curved corners and clear glass provide distortion-free viewing from multiple angles.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 2 - Marineland 5 Gallon Portrait Glass LED Aquarium Kit/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 2 - Marineland 5 Gallon Portrait Glass LED Aquarium Kit/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 2 - Marineland 5 Gallon Portrait Glass LED Aquarium Kit/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_280 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_280, 'White LED', 3950.00, 10),
(@product_id_280, 'RGB LED', 4500.00, 10),
(@product_id_280, 'With Stand', 5200.00, 10);


-- Product 281: Imagitarium Open-Glass Aquarium Tank 29 Gallon
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    92,
    'Imagitarium Open-Glass Aquarium Tank 29 Gallon',
    'Mid-sized, seamless glass aquarium with reinforced bottom panel for stability. The generous dimensions provide ample swimming space for larger fish species or more elaborate aquascapes.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 3 - Imagitarium Open-Glass Aquarium Tank, 29 Gallon/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 3 - Imagitarium Open-Glass Aquarium Tank, 29 Gallon/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 3 - Imagitarium Open-Glass Aquarium Tank, 29 Gallon/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_281 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_281, '29 Gallon', 6750.00, 10);


-- Product 282: biOrb Classic 30 Black Aquarium with Standard Light 10 Gallon
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    92,
    'biOrb Classic 30 Black Aquarium with Standard Light 10 Gallon',
    'Contemporary spherical aquarium combining stunning looks with biological filtration technology. The acrylic construction is clearer than glass and provides a 360° view of your underwater world.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 4 - biOrb CLASSIC 30 Black Aquarium with Standard Light, 10 Gallon/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 4 - biOrb CLASSIC 30 Black Aquarium with Standard Light, 10 Gallon/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 4 - biOrb CLASSIC 30 Black Aquarium with Standard Light, 10 Gallon/Capture222222.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_282 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_282, 'White LED', 8900.00, 10),
(@product_id_282, 'Color-Changing LED', 9500.00, 10),
(@product_id_282, 'With Stand', 10800.00, 10);


-- Product 283: Aqueon Standard Open-Glass Aquarium Tank, 40 Gallon
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    92,
    'Aqueon Standard Open-Glass Aquarium Tank, 40 Gallon',
    'Large capacity glass aquarium perfect for advanced aquascaping or housing multiple fish communities. The sturdy construction and precision silicone sealing ensure long-term durability.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 5 - Aqueon Standard Open-Glass Glass Aquarium Tank, 40 Gallon/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 5 - Aqueon Standard Open-Glass Glass Aquarium Tank, 40 Gallon/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 5 - Aqueon Standard Open-Glass Glass Aquarium Tank, 40 Gallon/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_283 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_283, '40 Gallon', 9200.00, 10);


-- Product 284: Fluval Flex Aquarium Kit
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    92,
    'Fluval Flex Aquarium Kit',
    'Modern curved-front aquarium with integrated multi-stage filtration and customizable LED lighting. The honeycomb-concealed rear compartment hides equipment while maximizing viewing area.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 6 - Fluval Flex Aquarium Kit/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 6 - Fluval Flex Aquarium Kit/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_284 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_284, '9 Gallon', 7500.00, 10),
(@product_id_284, '15 Gallon', 10200.00, 10),
(@product_id_284, '32.5 Gallon', 15800.00, 10);


-- Product 285: Aqueon LED 29 Gallon Aquarium
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    92,
    'Aqueon LED 29 Gallon Aquarium',
    'Complete aquarium setup featuring energy-efficient LED lighting, quiet filtration system, and heater. This all-in-one kit provides everything needed to start your aquatic hobby.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 7 - Aqueon LED 29 Gallon Aquarium Kit, 32.25_ L X 14.25_ W X 20.63_ H/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 7 - Aqueon LED 29 Gallon Aquarium Kit, 32.25_ L X 14.25_ W X 20.63_ H/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 7 - Aqueon LED 29 Gallon Aquarium Kit, 32.25_ L X 14.25_ W X 20.63_ H/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_285 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_285, '29 Gallon', 8500.00, 10);


-- Product 286: Imagitarium Glass Versa Aquarium, 9.5 Gallon
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    92,
    'Imagitarium Glass Versa Aquarium, 9.5 Gallon',
    'Versatile glass aquarium with modular design that allows for custom configurations. The low-profile dimensions make it perfect for desktop placement or as a nano reef tank.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 8 - Imagitarium Glass Versa Aquarium, 9.5 Gallons/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 8 - Imagitarium Glass Versa Aquarium, 9.5 Gallons/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 8 - Imagitarium Glass Versa Aquarium, 9.5 Gallons/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_286 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_286, '9.5 Gallon', 3950.00, 10);


-- Product 287: Fluval Black Spec III Aquarium Kit, 2.6 Gallon
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    92,
    'Fluval Black Spec III Aquarium Kit, 2.6 Gallon',
    'Compact desktop aquarium with sleek etched-glass design and integrated filtration. Perfect for small spaces, offices, or as a stylish betta habitat.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 9 - Fluval Black Spec III Aquarium Kit, 2.6 Gallon/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 9 - Fluval Black Spec III Aquarium Kit, 2.6 Gallon/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 9 - Fluval Black Spec III Aquarium Kit, 2.6 Gallon/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_287 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_287, 'Black', 3500.00, 10),
(@product_id_287, 'White', 3500.00, 10),
(@product_id_287, 'With LED Light', 4200.00, 10);


-- Product 288: Aquatic Fundamentals Black Scroll Aquarium Stand
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    92,
    'Aquatic Fundamentals Black Scroll Aquarium Stand',
    'Elegant, powder-coated steel stand with decorative scroll design. Provides sturdy support for aquariums while adding a touch of sophistication to your home décor.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 10 - Aquatic Fundamentals Black Scroll Aquarium Stand - for 10 Gallon Aquariums/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 10 - Aquatic Fundamentals Black Scroll Aquarium Stand - for 10 Gallon Aquariums/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 2 -  Fish Tanks & Aquariums/Category 2 - Products/Product 10 - Aquatic Fundamentals Black Scroll Aquarium Stand - for 10 Gallon Aquariums/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_288 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_288, '10-20 Gallon', 4200.00, 10),
(@product_id_288, '29-55 Gallon', 5800.00, 10),
(@product_id_288, '75 Gallon', 7500.00, 10);


-- Product 289: Fluval External Power Filter Media
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    93,
    'Fluval External Power Filter Media',
    'High-performance filter media designed specifically for Fluval external filters. Removes impurities while promoting beneficial bacterial growth for superior biological filtration.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 1 - Fluval External Power Filter Media/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 1 - Fluval External Power Filter Media/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 1 - Fluval External Power Filter Media/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_289 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_289, 'Mechanical Media', 450.00, 10),
(@product_id_289, 'Carbon Media', 550.00, 10),
(@product_id_289, 'BioMax Ceramic Rings', 650.00, 10);


-- Product 290: Tetra Whisper IQ Filter
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    93,
    'Tetra Whisper IQ Filter',
    'Quiet, innovative filter system with self-priming technology and adjustable flow control. The sound-dampening design ensures peaceful operation while providing exceptional water quality.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 2 - Tetra Whisper IQ Filter, 30 Gallon/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 2 - Tetra Whisper IQ Filter, 30 Gallon/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 2 - Tetra Whisper IQ Filter, 30 Gallon/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_290 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_290, '10 Gallon', 1250.00, 10),
(@product_id_290, '20 Gallon', 1750.00, 10),
(@product_id_290, '30 Gallon', 2250.00, 10);


-- Product 291: Tetra Whisper Bio-Bag Large Disposable Filter Cartridges
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    93,
    'Tetra Whisper Bio-Bag Large Disposable Filter Cartridges',
    'Convenient all-in-one filter cartridges with activated carbon and dual-sided mesh for efficient mechanical and chemical filtration. Compatible with most Tetra Whisper power filters.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 3 - Tetra Whisper Bio-Bag Large Disposable Filter Cartridges for Aquariums, Count of 3/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 3 - Tetra Whisper Bio-Bag Large Disposable Filter Cartridges for Aquariums, Count of 3/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 3 - Tetra Whisper Bio-Bag Large Disposable Filter Cartridges for Aquariums, Count of 3/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_291 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_291, '3-pack', 380.00, 10),
(@product_id_291, '6-pack', 680.00, 10),
(@product_id_291, '12-pack', 1200.00, 10);


-- Product 292: Penn Plax Small World Pump and Filter Kit
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    93,
    'Penn Plax Small World Pump and Filter Kit',
    'Compact, submersible filtration system ideal for small aquariums, terrariums, and turtle habitats. Operates quietly while providing thorough water circulation and oxygenation.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 4 - Penn Plax Small World Pump and Filter Kit/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 4 - Penn Plax Small World Pump and Filter Kit/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_292 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_292, 'Standard', 950.00, 10);


-- Product 293: Lifegard Aquatics Submersible Nano Filter With Carbon
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    93,
    'Lifegard Aquatics Submersible Nano Filter With Carbon',
    'Ultra-compact internal filter perfect for nano tanks and desktop aquariums. Includes carbon filtration and adjustable flow rate for customized water movement.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 5 - Lifegard Aquatics Submersible Nano Filter with Carbon and Sponge 93 GPH Pump/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 5 - Lifegard Aquatics Submersible Nano Filter with Carbon and Sponge 93 GPH Pump/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 5 - Lifegard Aquatics Submersible Nano Filter with Carbon and Sponge 93 GPH Pump/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_293 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_293, 'Standard', 780.00, 10);


-- Product 294: Lifegard Aquatics Customflo Water System
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    93,
    'Lifegard Aquatics Customflo Water System',
    'Modular filtration system that can be customized with various media types to address specific water quality needs. Perfect for advanced aquarists seeking tailored filtration solutions.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 6 - Lifegard Aquatics Customflo Water System Complete Kit, 3 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 6 - Lifegard Aquatics Customflo Water System Complete Kit, 3 lbs/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 6 - Lifegard Aquatics Customflo Water System Complete Kit, 3 lbs/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_294 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_294, 'Starter Kit', 2850.00, 10);


-- Product 295: TetraPond Replacement Pre-Filter Foam
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    93,
    'TetraPond Replacement Pre-Filter Foam',
    'High-density foam pre-filter designed to extend the life of your pond filter by trapping larger debris before it reaches the main filtration system.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 7 - TetraPond Replacement Pre-Filter Foam For Use In Tetra Water Garden Pump/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 7 - TetraPond Replacement Pre-Filter Foam For Use In Tetra Water Garden Pump/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 7 - TetraPond Replacement Pre-Filter Foam For Use In Tetra Water Garden Pump/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_295 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_295, 'Standard', 650.00, 10);


-- Product 296: TetraPond Filtration Fountain Kit
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    93,
    'TetraPond Filtration Fountain Kit',
    'Combination filter and fountain system for small to medium-sized ponds. Provides both mechanical and biological filtration while creating an attractive water feature.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 8 - TetraPond Filtration Fountain Kit with Flat Box Filter/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 8 - TetraPond Filtration Fountain Kit with Flat Box Filter/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 8 - TetraPond Filtration Fountain Kit with Flat Box Filter/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_296 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_296, '50 Gallon', 2950.00, 10),
(@product_id_296, '100 Gallon', 3850.00, 10),
(@product_id_296, '250 Gallon', 5500.00, 10);


-- Product 297: Pond Boss Medium Filter Kit
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    93,
    'Pond Boss Medium Filter Kit',
    'Complete pond filtration system including submersible pump, filter box, and UV clarifier. Effectively controls algae while maintaining crystal-clear water.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 9 - Pond Boss Medium Filter Kit with Pump, 12.36_ L X 6.22_ W X 21.9_ H/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 9 - Pond Boss Medium Filter Kit with Pump, 12.36_ L X 6.22_ W X 21.9_ H/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 9 - Pond Boss Medium Filter Kit with Pump, 12.36_ L X 6.22_ W X 21.9_ H/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_297 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_297, 'Standard', 6500.00, 10);


-- Product 298: Exo-Terra Turtle Filter Foam and Carbon Pads
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    93,
    'Exo-Terra Turtle Filter Foam and Carbon Pads',
    'Specialized replacement filter media designed specifically for turtle habitats. These pads efficiently remove odors and impurities common in reptile environments.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 10 - Exo-Terra Turtle Filter Foam & Carbon Pads/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 10 - Exo-Terra Turtle Filter Foam & Carbon Pads/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 3 -  Aquarium Filters & Pumps/Category 3 - Products/Product 10 - Exo-Terra Turtle Filter Foam & Carbon Pads/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_298 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_298, '2-pack', 350.00, 10),
(@product_id_298, '4-pack', 650.00, 10),
(@product_id_298, '8-pack', 1200.00, 10);


-- Product 299: TetraColor Select Tropical Flakes
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    94,
    'TetraColor Select Tropical Flakes',
    'Premium color-enhancing flake food featuring a blend of high-quality ingredients that intensify the natural colors of tropical fish. Formulated with added vitamins for optimal health.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 1 - Tetra TetraColor Select Tropical Flakes Color-Enhancing Tropical Fish Food, 2.2 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 1 - Tetra TetraColor Select Tropical Flakes Color-Enhancing Tropical Fish Food, 2.2 oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 1 - Tetra TetraColor Select Tropical Flakes Color-Enhancing Tropical Fish Food, 2.2 oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_299 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_299, '1.94 oz', 350.00, 10),
(@product_id_299, '3.53 oz', 580.00, 10),
(@product_id_299, '7.06 oz', 980.00, 10);


-- Product 300: Imagitarium Bloodworms for Betta Fish
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    94,
    'Imagitarium Bloodworms for Betta Fish',
    'Nutritious freeze-dried bloodworms that serve as an excellent protein-rich treat for bettas and other small tropical fish. Helps stimulate natural hunting behaviors while providing essential nutrients.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 2 - Imagitarium Bloodworms for Betta Fish, 0.15 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 2 - Imagitarium Bloodworms for Betta Fish, 0.15 oz/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_300 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_300, '0.2 oz', 450.00, 10);


-- Product 301: Aqueon Betta Color Enhancing Pellets Betta Food
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    94,
    'Aqueon Betta Color Enhancing Pellets Betta Food',
    'Specialized micro pellets formulated to intensify the vibrant colors of betta fish. Contains natural ingredients that promote fin health and overall vitality.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 3 - Aqueon Betta Color Enhancing Pellets Betta Food, .95 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 3 - Aqueon Betta Color Enhancing Pellets Betta Food, .95 oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 3 - Aqueon Betta Color Enhancing Pellets Betta Food, .95 oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_301 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_301, '0.5 oz', 280.00, 10),
(@product_id_301, '1.0 oz', 490.00, 10),
(@product_id_301, '1.5 oz', 680.00, 10);


-- Product 302: Aqueon Stick'ems Freeze-Dried High Protein Treat
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    94,
    'Aqueon Stick\'ems Freeze-Dried High Protein Treat',
    'Versatile, adhesive treats that can be pressed onto aquarium glass, creating an engaging feeding experience for fish. Rich in protein and perfect as a supplement to regular diet.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 4 - Aqueon Stick_ems Freeze-Dried High Protein Treat, 0.42 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 4 - Aqueon Stick_ems Freeze-Dried High Protein Treat, 0.42 oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 4 - Aqueon Stick_ems Freeze-Dried High Protein Treat, 0.42 oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_302 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_302, '0.28 oz', 380.00, 10);


-- Product 303: Hikari First Bites
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    94,
    'Hikari First Bites',
    'Ultra-fine micro-particle food designed specifically for newly hatched fry and very small fish species. The specialized formula supports rapid growth and development.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 5 - Hikari First Bites/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 5 - Hikari First Bites/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 5 - Hikari First Bites/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_303 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_303, '0.35 oz', 420.00, 10);


-- Product 304: Hikari Vibra Bites Tropical Aquatic Diet
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    94,
    'Hikari Vibra Bites Tropical Aquatic Diet',
    'Innovative food sticks that mimic the movement of bloodworms in water, triggering natural feeding responses. Contains specialized ingredients for vibrant colors and improved immunity.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 6 - Hikari Vibra Bites Tropical Aquatic Diet, 2.57 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 6 - Hikari Vibra Bites Tropical Aquatic Diet, 2.57 oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 6 - Hikari Vibra Bites Tropical Aquatic Diet, 2.57 oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_304 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_304, '0.7 oz', 350.00, 10),
(@product_id_304, '2.8 oz', 980.00, 10),
(@product_id_304, '5.29 oz', 1650.00, 10);


-- Product 305: Fluval Bug Bites Granules for Small Tropical Fish
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    94,
    'Fluval Bug Bites Granules for Small Tropical Fish',
    'Premium granular food with insect larvae as the primary protein source, reflecting the natural diet of many fish species. Contains essential minerals and vitamins for complete nutrition.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 7 - Fluval Bug Bites Granules for Small Tropical Fish, 1.59 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 7 - Fluval Bug Bites Granules for Small Tropical Fish, 1.59 oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 7 - Fluval Bug Bites Granules for Small Tropical Fish, 1.59 oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_305 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_305, '0.7 oz', 410.00, 10),
(@product_id_305, '1.59 oz', 820.00, 10),
(@product_id_305, '3.53 oz', 1550.00, 10);


-- Product 306: Nutramar Tigrio Live Copepods
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    94,
    'Nutramar Tigrio Live Copepods',
    'Live zooplankton cultures that serve as an excellent natural food source for small fish, corals, and filter feeders. Helps create a self-sustaining micro-ecosystem within your aquarium.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 8 - Nutramar Tigrio Live Copepods, 4 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 8 - Nutramar Tigrio Live Copepods, 4 oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 8 - Nutramar Tigrio Live Copepods, 4 oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_306 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_306, 'culture', 850.00, 10);


-- Product 307: Sera Spirulina Tabs Nature Foods
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    94,
    'Sera Spirulina Tabs Nature Foods',
    'Plant-based tablet food rich in spirulina algae and other vegetable ingredients. Ideal for herbivorous fish species and promotes healthy digestion with natural fiber content.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 9 - Sera Spirulina Tabs Nature Food, 0.5 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 9 - Sera Spirulina Tabs Nature Food, 0.5 oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 9 - Sera Spirulina Tabs Nature Food, 0.5 oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_307 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_307, '24 tablets', 320.00, 10),
(@product_id_307, '100 tablets', 950.00, 10),
(@product_id_307, '275 tablets', 2300.00, 10);


-- Product 308: Fluval Bug Bites Stick
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    94,
    'Fluval Bug Bites Stick',
    'Slow-sinking food sticks formulated with insect protein for carnivorous bottom-feeders. The high protein content supports muscle development and overall health.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 10 - Fluval Bug Bites Sticks for Medium-Large Plecos., 4.59 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 10 - Fluval Bug Bites Sticks for Medium-Large Plecos., 4.59 oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 4 - Fish Food & Treats/Category 4 - Products/Product 10 - Fluval Bug Bites Sticks for Medium-Large Plecos., 4.59 oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_308 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_308, '1.6 oz', 580.00, 10);


-- Product 309: Imagitarium Resin Cave Hideout
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    95,
    'Imagitarium Resin Cave Hideout',
    'Naturalistic rock-like cave that provides essential hiding spots for fish and invertebrates. The durable resin construction is safe for all aquarium inhabitants and adds depth to your aquatic landscape.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 1 - Fluval Plant and Shrimp Stratum, 8.8 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 1 - Fluval Plant and Shrimp Stratum, 8.8 lbs/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 1 - Fluval Plant and Shrimp Stratum, 8.8 lbs/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_309 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_309, 'Small', 450.00, 10),
(@product_id_309, 'Medium', 750.00, 10),
(@product_id_309, 'Large', 1200.00, 10);


-- Product 310: Marina Naturals Driftwood
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    95,
    'Marina Naturals Driftwood',
    'Authentic-looking driftwood replica that adds a natural touch to your aquarium without affecting water chemistry. The smooth surface is ideal for beneficial bacteria colonization.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 2 - Imagitarium Neon Aquarium Gravel Substrate, Pink, 5 lbs/confetti.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 2 - Imagitarium Neon Aquarium Gravel Substrate, Pink, 5 lbs/green.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 2 - Imagitarium Neon Aquarium Gravel Substrate, Pink, 5 lbs/pink.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_310 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_310, 'Small', 580.00, 10),
(@product_id_310, 'Medium', 980.00, 10),
(@product_id_310, 'Large', 1650.00, 10);


-- Product 311: Fluval Bonsai Floating Log
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    95,
    'Fluval Bonsai Floating Log',
    'Artistic floating ornament inspired by traditional bonsai aesthetics. Creates both above and below water interest while providing resting spots for fish near the surface.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 3 - GloFish Black Multi-Color Lagoon Aquarium Gravel, 5 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 3 - GloFish Black Multi-Color Lagoon Aquarium Gravel, 5 lbs/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 3 - GloFish Black Multi-Color Lagoon Aquarium Gravel, 5 lbs/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_311 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_311, 'Standard', 1250.00, 10);


-- Product 312: GloFish Color-Changing Plant
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    95,
    'GloFish Color-Changing Plant',
    'Vibrant artificial plants that shift colors under different lighting conditions. Specially designed to complement GloFish and other colorful aquarium inhabitants.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 4 - Aqua Natural Midnight Pearl Gravel, 10 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 4 - Aqua Natural Midnight Pearl Gravel, 10 lbs/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 4 - Aqua Natural Midnight Pearl Gravel, 10 lbs/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_312 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_312, 'Small Cluster', 480.00, 10),
(@product_id_312, 'Medium Cluster', 780.00, 10),
(@product_id_312, 'Large Cluster', 1100.00, 10);


-- Product 313: Exo-Terra Rainforest Vine
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    95,
    'Exo-Terra Rainforest Vine',
    'Flexible, life-like vine that can be shaped and positioned throughout the aquarium. Perfect for creating natural-looking climbing and resting areas for fish and invertebrates.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 5 - Dennerle Shrimp King Active Soil, 8 Liters/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 5 - Dennerle Shrimp King Active Soil, 8 Liters/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 5 - Dennerle Shrimp King Active Soil, 8 Liters/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_313 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_313, 'Standard', 650.00, 10);


-- Product 314: Marineland Bamboo for Aquariums
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    95,
    'Marineland Bamboo for Aquariums',
    'Realistic bamboo replica that adds an Asian-inspired aesthetic to your tank. The durable construction ensures long-lasting beauty without deterioration.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 6 - Pure Water Pebbles Bio-Activ Live African Cichlid Substrates, 20 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 6 - Pure Water Pebbles Bio-Activ Live African Cichlid Substrates, 20 lbs/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_314 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_314, 'Single Stalk', 420.00, 10),
(@product_id_314, 'Triple Stalk', 780.00, 10),
(@product_id_314, 'Bamboo Grove', 1250.00, 10);


-- Product 315: Aqua Natural Sunken Ship Ornament
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    95,
    'Aqua Natural Sunken Ship Ornament',
    'Detailed shipwreck decoration that creates an exciting underwater adventure scene. Features multiple chambers and passages for fish to explore and hide.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 7 - Aqua Natural Betta World Tutti Frutti Gravel, Small/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 7 - Aqua Natural Betta World Tutti Frutti Gravel, Small/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 7 - Aqua Natural Betta World Tutti Frutti Gravel, Small/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_315 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_315, 'Standard', 1450.00, 10);


-- Product 316: Imagitarium Bubbling Volcano
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    95,
    'Imagitarium Bubbling Volcano',
    'Interactive ornament featuring an integrated air stone that creates a dramatic bubbling effect. Adds movement and oxygen to your aquarium while serving as a striking centerpiece.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 8 - Aqua Natural Diamond Black Quartz, 10 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 8 - Aqua Natural Diamond Black Quartz, 10 lbs/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 8 - Aqua Natural Diamond Black Quartz, 10 lbs/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_316 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_316, 'Standard', 1200.00, 10);


-- Product 317: Marina Naturals Rock Outcrop
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    95,
    'Marina Naturals Rock Outcrop',
    'Realistic stone formation that adds vertical dimension to your aquascape. The multiple levels provide perching spots for fish at different heights in the water column.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 9 - Fluval Bio Stratum Aquarium, 8.8 lbs/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 9 - Fluval Bio Stratum Aquarium, 8.8 lbs/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 5 -  Aquarium Decorations & Substrate/Category 5 - Products/Product 9 - Fluval Bio Stratum Aquarium, 8.8 lbs/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_317 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_317, 'Small', 550.00, 10),
(@product_id_317, 'Medium', 850.00, 10),
(@product_id_317, 'Large', 1350.00, 10);


-- Product 318: Aqueon LED Deluxe Full Hood
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    96,
    'Aqueon LED Deluxe Full Hood',
    'Integrated hood and lighting system that provides full tank coverage. The energy-efficient LEDs create a natural daylight effect while preventing fish from jumping.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 2 - Aqueon Optibright + LED Light Fixtures, Adjustable 30-36_ L/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 2 - Aqueon Optibright + LED Light Fixtures, Adjustable 30-36_ L/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 2 - Aqueon Optibright + LED Light Fixtures, Adjustable 30-36_ L/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_318 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_318, '10 Gallon', 2450.00, 10),
(@product_id_318, '20 Gallon', 3250.00, 10),
(@product_id_318, '29 Gallon', 3950.00, 10);


-- Product 319: Aqueon OptiBright + LED Light Fixtures
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    96,
    'Aqueon OptiBright + LED Light Fixtures',
    'Advanced LED system with customizable day and night modes. The enhanced spectrum promotes plant growth while making fish colors pop with vibrant clarity.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 2 - Aqueon Optibright + LED Light Fixtures, Adjustable 30-36_ L/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 2 - Aqueon Optibright + LED Light Fixtures, Adjustable 30-36_ L/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 2 - Aqueon Optibright + LED Light Fixtures, Adjustable 30-36_ L/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_319 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_319, '18"-24"', 3850.00, 10),
(@product_id_319, '24"-36"', 4950.00, 10),
(@product_id_319, '36"-48"', 6500.00, 10);


-- Product 320: Aqueon Betta LED Light
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    96,
    'Aqueon Betta LED Light',
    'Compact LED specifically designed for betta tanks and small aquariums. The gentle illumination highlights betta colors without causing stress from excessive brightness.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 3 - Aqueon Betta LED Light/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 3 - Aqueon Betta LED Light/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 3 - Aqueon Betta LED Light/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_320 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_320, 'Standard', 980.00, 10);


-- Product 321: Aqueon Live Planted Aquarium Clip-On LED Fixture
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    96,
    'Aqueon Live Planted Aquarium Clip-On LED Fixture',
    'Specialized clip-on light with a spectrum optimized for aquatic plant growth. The adjustable arm allows precise positioning for targeted illumination.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 4 - Aqueon Live Planted Aquarium Clip-On LED Fixture/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 4 - Aqueon Live Planted Aquarium Clip-On LED Fixture/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 4 - Aqueon Live Planted Aquarium Clip-On LED Fixture/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_321 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_321, '6W', 1650.00, 10),
(@product_id_321, '9W', 2200.00, 10),
(@product_id_321, '12W', 2850.00, 10);


-- Product 322: Imagitarium Freshwater Aquarium LED Clip-On Light
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    96,
    'Imagitarium Freshwater Aquarium LED Clip-On Light',
    'Versatile clip-on light that attaches securely to most aquarium rims. Features adjustable brightness settings for customized lighting effects.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 5 - Imagitarium Freshwater Aquarium LED Clip-on Light/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 5 - Imagitarium Freshwater Aquarium LED Clip-on Light/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 5 - Imagitarium Freshwater Aquarium LED Clip-on Light/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_322 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_322, 'Standard', 1450.00, 10);


-- Product 323: Fluval Aquasky LED Strip Light
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    96,
    'Fluval Aquasky LED Strip Light',
    'Programmable LED system with remote control for custom color settings and dynamic lighting effects. The sleek, waterproof design fits seamlessly on most aquarium tops.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 6 - Fluval Aquasky LED Strip Light, 27 Watts/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 6 - Fluval Aquasky LED Strip Light, 27 Watts/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 6 - Fluval Aquasky LED Strip Light, 27 Watts/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_323 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_323, '12"-18"', 3950.00, 10),
(@product_id_323, '24"-36"', 5450.00, 10),
(@product_id_323, '36"-48"', 7250.00, 10);


-- Product 324: Aqueon LED Strip Light Fixture for Aquariums
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    96,
    'Aqueon LED Strip Light Fixture for Aquariums',
    'Slim profile LED fixture that delivers bright, energy-efficient illumination. The low-profile design minimizes water evaporation while showcasing your aquatic display.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 7 - Aqueon LED Strip Light Fixture for Aquariums, 20_ L/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 7 - Aqueon LED Strip Light Fixture for Aquariums, 20_ L/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 7 - Aqueon LED Strip Light Fixture for Aquariums, 20_ L/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_324 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_324, '20"', 1850.00, 10),
(@product_id_324, '30"', 2450.00, 10),
(@product_id_324, '36"', 2950.00, 10);


-- Product 325: Imagitarium Mini Clip-On Betta Light
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    96,
    'Imagitarium Mini Clip-On Betta Light',
    'Ultra-compact LED designed specifically for nano tanks and betta bowls. Provides gentle illumination without taking up valuable space.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 8 - Imagitarium Mini Clip-On Betta Light/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 8 - Imagitarium Mini Clip-On Betta Light/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 8 - Imagitarium Mini Clip-On Betta Light/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_325 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_325, 'Standard', 750.00, 10);


-- Product 326: GloFish 10-Inches LED Light Stick for Fish Aquariums
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    96,
    'GloFish 10-Inches LED Light Stick for Fish Aquariums',
    'Specialized light that enhances the fluorescent colors of GloFish and similar species. Creates a dramatic glowing effect that showcases your fish in a new light.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 9 - GloFish 10-Inch LED Light Stick for Fish Aquariums up to 20 Gallons, White, Blue and Magenta Lights/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 9 - GloFish 10-Inch LED Light Stick for Fish Aquariums up to 20 Gallons, White, Blue and Magenta Lights/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 9 - GloFish 10-Inch LED Light Stick for Fish Aquariums up to 20 Gallons, White, Blue and Magenta Lights/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_326 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_326, 'Standard', 1250.00, 10);


-- Product 327: Seaview Brilliant Backgrounds Deep Sea Blue
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    96,
    'Seaview Brilliant Backgrounds Deep Sea Blue',
    'Illuminated aquarium background that creates depth and ambiance. The gentle backlighting adds another dimension to your aquarium display.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 10 - Seaview Brilliant Backgrounds Deep Sea Blue- Midnight black, 24_ L X 48_ W/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 10 - Seaview Brilliant Backgrounds Deep Sea Blue- Midnight black, 24_ L X 48_ W/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 6 -  Aquarium Lighting/Category 6 - Products/Product 10 - Seaview Brilliant Backgrounds Deep Sea Blue- Midnight black, 24_ L X 48_ W/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_327 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_327, '18"', 1450.00, 10),
(@product_id_327, '24"', 1850.00, 10),
(@product_id_327, '36"', 2350.00, 10);


-- Product 328: Imagitarium Stress Treatment, 2fl. oz.
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    97,
    'Imagitarium Stress Treatment, 2fl. oz.',
    'Gentle solution that reduces stress in fish during acclimation, water changes, or after transportation. Contains essential electrolytes and vitamins to support fish health during challenging periods.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 1 - Imagitarium Stress Treatment, 2 fl. oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 1 - Imagitarium Stress Treatment, 2 fl. oz/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_328 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_328, '2fl. oz.', 380.00, 10);


-- Product 329: API MelaFix For Aquariums, 4 oz
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    97,
    'API MelaFix For Aquariums, 4 oz',
    'Natural remedy that promotes healing of damaged fin tissue and minor wounds. The botanical formula is safe for all aquarium inhabitants and does not discolor water.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 2 - API MelaFix for Aquariums, 4 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 2 - API MelaFix for Aquariums, 4 oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 2 - API MelaFix for Aquariums, 4 oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_329 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_329, '4 oz', 450.00, 10),
(@product_id_329, '8 oz', 780.00, 10),
(@product_id_329, '16 oz', 1250.00, 10);


-- Product 330: API PimaFix, 4oz.
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    97,
    'API PimaFix, 4oz.',
    'Antifungal treatment derived from natural botanical extracts. Effectively treats fungal infections while being gentle on biological filtration.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 3 - API PimaFix, 4 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 3 - API PimaFix, 4 oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 3 - API PimaFix, 4 oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_330 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_330, '4 oz', 450.00, 10),
(@product_id_330, '8 oz', 780.00, 10),
(@product_id_330, '16 oz', 1250.00, 10);


-- Product 331: Tetra Lifeguard Treats Disease
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    97,
    'Tetra Lifeguard Treats Disease',
    'Broad-spectrum treatment that addresses multiple common fish ailments simultaneously. The effervescent tablets distribute medication evenly throughout the aquarium.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 4 - Tetra Lifeguard Treats Disease-Causing Organisms In Aquariums, 12 Count/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 4 - Tetra Lifeguard Treats Disease-Causing Organisms In Aquariums, 12 Count/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 4 - Tetra Lifeguard Treats Disease-Causing Organisms In Aquariums, 12 Count/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_331 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_331, '8 tablets', 580.00, 10);


-- Product 332: Clomicalm 80 mg
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    97,
    'Clomicalm 80 mg',
    'Specialized medication for treating specific bacterial infections in aquarium fish. Contains pharmaceutical-grade ingredients for reliable results.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 5 - Clomicalm 80 mg for Dogs, 30 Tablets/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 5 - Clomicalm 80 mg for Dogs, 30 Tablets/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_332 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_332, 'Standard', 850.00, 10);


-- Product 333: Zymox Small Animal & Exotic Topical Solution
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    97,
    'Zymox Small Animal & Exotic Topical Solution',
    'Gentle topical treatment for external parasites and skin conditions in aquatic pets. Safe for sensitive species when used as directed.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 6 - Zymox Small Animal & Exotic Topical Solution, 1.25 fl. oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 6 - Zymox Small Animal & Exotic Topical Solution, 1.25 fl. oz/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 6 - Zymox Small Animal & Exotic Topical Solution, 1.25 fl. oz/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_333 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_333, 'Standard', 780.00, 10);


-- Product 334: Microcyn Manna Pro AH Wound & Skin Care
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    97,
    'Microcyn Manna Pro AH Wound & Skin Care',
    'Advanced wound care solution that promotes healing while preventing secondary infections. Ideal for treating injuries in larger aquarium fish.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 7 - Microcyn Manna Pro AHWound & Skin Care, 16 fl. oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 7 - Microcyn Manna Pro AHWound & Skin Care, 16 fl. oz/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_334 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_334, 'Standard', 950.00, 10);


-- Product 335: Clomicalm
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    97,
    'Clomicalm',
    'Concentrated medication designed to target specific bacterial pathogens in freshwater aquariums. Formulated to minimize impact on beneficial bacteria.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 8 - Clomicalm 5 mg for Dogs, 30 Tablets/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 8 - Clomicalm 5 mg for Dogs, 30 Tablets/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_335 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_335, '20 mg', 580.00, 10),
(@product_id_335, '40 mg', 750.00, 10),
(@product_id_335, '80 mg', 950.00, 10);


-- Product 336: Imagitarium Parasite Remedy
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    97,
    'Imagitarium Parasite Remedy',
    'Effective treatment for common external parasites including ich and flukes. The gentle formula is safe for scaleless fish when used as directed.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 9 - Imagitarium Parasite Remedy, 4oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 9 - Imagitarium Parasite Remedy, 4oz/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_336 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_336, 'Standard', 550.00, 10);


-- Product 337: DMSO Dimethyl Sulfoxide Gel Formula
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    97,
    'DMSO Dimethyl Sulfoxide Gel Formula',
    'Specialized topical application for treating localized infections and lesions in larger fish. Should be used only under guidance for specific conditions.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 10 - DMSO Dimethyl Sulfoxide Gel Formula, 16 oz/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 7 - Fish Health & Medication/Category 7 - Products/Product 10 - DMSO Dimethyl Sulfoxide Gel Formula, 16 oz/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_337 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_337, 'Standard', 1250.00, 10);


-- Product 338: Imagitarium Cleaning Brush
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    98,
    'Imagitarium Cleaning Brush',
    'Versatile brush with angled head design that reaches difficult corners and crevices. The soft bristles effectively remove algae without scratching glass surfaces.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 1 - Imagitarium Cleaning Brush/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 1 - Imagitarium Cleaning Brush/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_338 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_338, 'Small', 280.00, 10),
(@product_id_338, 'Medium', 350.00, 10),
(@product_id_338, 'Large', 450.00, 10);


-- Product 339: Aqueon Siphon Vacuum Aquariums Gravel Cleaner
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    98,
    'Aqueon Siphon Vacuum Aquariums Gravel Cleaner',
    'Efficient siphon system that removes debris from substrate while performing water changes. The transparent tube allows visual monitoring of water clarity.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 2 - Aqueon Siphon Vacuum Aquarium Gravel Cleaner, Mini, 5_/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 2 - Aqueon Siphon Vacuum Aquarium Gravel Cleaner, Mini, 5_/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 2 - Aqueon Siphon Vacuum Aquarium Gravel Cleaner, Mini, 5_/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_339 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_339, 'Mini', 450.00, 10),
(@product_id_339, 'Medium', 650.00, 10),
(@product_id_339, 'Large', 850.00, 10);


-- Product 340: Imagitarium Aquarium Net For Fish
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    98,
    'Imagitarium Aquarium Net For Fish',
    'Soft-mesh net designed for safe fish handling during transfers. The fine mesh prevents fin damage while the sturdy frame ensures control and durability.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 3 - Imagitarium Aquarium Net for Fish, 3_ x 10_/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 3 - Imagitarium Aquarium Net for Fish, 3_ x 10_/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_340 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_340, '3"', 180.00, 10),
(@product_id_340, '5"', 250.00, 10),
(@product_id_340, '8"', 350.00, 10);


-- Product 341: Imagitarium Floating Magnetic Scraper
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    98,
    'Imagitarium Floating Magnetic Scraper',
    'Innovative magnetic algae scraper that floats when detached, preventing it from sinking into the substrate. The ergonomic design makes cleaning glass surfaces effortless.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 4 - Imagitarium Floating Magnetic Scraper, Medium/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 4 - Imagitarium Floating Magnetic Scraper, Medium/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 4 - Imagitarium Floating Magnetic Scraper, Medium/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_341 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_341, 'Standard', 750.00, 10);


-- Product 342: Imagitarium Glass Aquarium Scraper
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    98,
    'Imagitarium Glass Aquarium Scraper',
    'Precision-engineered scraper with replaceable stainless steel blade for removing stubborn algae. Features a long handle for reaching deep into larger tanks.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 5 - Imagitarium Glass Aquarium Scraper/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 5 - Imagitarium Glass Aquarium Scraper/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_342 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_342, 'Standard', 580.00, 10);


-- Product 343: Fluval Aqua Pro Vac Gravel Cleaner
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    98,
    'Fluval Aqua Pro Vac Gravel Cleaner',
    'Premium gravel cleaning system with dual-action vacuuming technology. The adjustable flow control allows for precise cleaning without disturbing delicate plants.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 6 - Fluval Aqua Pro Vac Gravel Cleaner/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 6 - Fluval Aqua Pro Vac Gravel Cleaner/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 6 - Fluval Aqua Pro Vac Gravel Cleaner/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_343 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_343, 'Small', 1250.00, 10),
(@product_id_343, 'Medium', 1650.00, 10),
(@product_id_343, 'Large', 2250.00, 10);


-- Product 344: Imagitarium Aquarium Glass Cleaner Tool Set
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    98,
    'Imagitarium Aquarium Glass Cleaner Tool Set',
    'Comprehensive cleaning kit containing multiple tools for complete aquarium maintenance. Includes scraper, brush, and extension handle for thorough cleaning.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 7 - Imagitarium Aquarium Glass Cleaner Tool Set/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 7 - Imagitarium Aquarium Glass Cleaner Tool Set/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_344 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_344, 'Standard', 1450.00, 10);


-- Product 345: Aqueon Siphon Vacuum Aquarium Gravel Cleaner
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    98,
    'Aqueon Siphon Vacuum Aquarium Gravel Cleaner',
    'Self-starting siphon with debris trap that simplifies water changes while cleaning substrate. The dual-function design saves time during routine maintenance.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 8 - Aqueon Siphon Vacuum Aquarium Gravel Cleaner, Medium/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 8 - Aqueon Siphon Vacuum Aquarium Gravel Cleaner, Medium/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 8 - Aqueon Siphon Vacuum Aquarium Gravel Cleaner, Medium/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_345 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_345, 'Small', 580.00, 10),
(@product_id_345, 'Medium', 780.00, 10),
(@product_id_345, 'Large', 980.00, 10);


-- Product 346: Python Pro-Clean Gravel Washer Siphon Kit
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    98,
    'Python Pro-Clean Gravel Washer Siphon Kit',
    'Professional-grade maintenance system that connects directly to faucets for efficient water changes. Eliminates the need for buckets while providing thorough gravel cleaning.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 9 - Python Pro-Clean Gravel Washer Siphon Kit, Medium/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 9 - Python Pro-Clean Gravel Washer Siphon Kit, Medium/Capture1.PNG',
    NULL,
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_346 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_346, 'Standard', 3250.00, 10);


-- Product 347: Fluva FX4/FX5/FX6 Phosphate Remover Pad
INSERT INTO product (
    category_id,
    sub_category_id,
    name,
    description,
    stock,
    image1,
    image2,
    image3,
    status,
    created_at
) VALUES (
    5,
    98,
    'Fluva FX4/FX5/FX6 Phosphate Remover Pad',
    'Specialized filter media that effectively removes phosphates from aquarium water, helping prevent algae blooms. Compatible with Fluval FX series canister filters.',
    10,
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 10 - Fluval FX4-FX5-FX6 Phosphate Remover Pad, Pack of 3/Capture.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 10 - Fluval FX4-FX5-FX6 Phosphate Remover Pad, Pack of 3/Capture1.PNG',
    '/grizzlypaws-backend/project-root/assets/images/Aquatic/Category 8 - Aquarium Maintenance & Cleaning/Category 8 - Products/Product 10 - Fluval FX4-FX5-FX6 Phosphate Remover Pad, Pack of 3/Capture2.PNG',
    'active',
    CURRENT_TIMESTAMP
);

SET @product_id_347 = LAST_INSERT_ID();

INSERT INTO product_variations (product_id, unit, price, stock) VALUES
(@product_id_347, 'Single Pack', 450.00, 10),
(@product_id_347, '2-Pack', 850.00, 10),
(@product_id_347, '3-Pack', 1200.00, 10);


-- ============================================
-- Verification Queries
-- ============================================

-- Count products
SELECT COUNT(*) as total_products FROM product;

-- Count variations
SELECT COUNT(*) as total_variations FROM product_variations;

-- View all products with their variations
SELECT 
    p.id,
    p.name,
    p.category_id,
    p.sub_category_id,
    COUNT(pv.id) as variation_count,
    p.status
FROM product p
LEFT JOIN product_variations pv ON p.id = pv.product_id
GROUP BY p.id
ORDER BY p.id;

-- View all variations with prices
SELECT 
    pv.id,
    p.name as product_name,
    pv.unit,
    pv.price,
    pv.stock
FROM product_variations pv
JOIN product p ON pv.product_id = p.id
ORDER BY p.id, pv.id;
