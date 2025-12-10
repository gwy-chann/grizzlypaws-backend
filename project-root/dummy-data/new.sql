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
    81,
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
    81,
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
    84,
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
    84,
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
    84,
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
    81,
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
    81,
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
    81,
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
    81,
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
    81,
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
    81,
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
