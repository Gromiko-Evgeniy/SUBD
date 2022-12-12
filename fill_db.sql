-- INSERT INTO pet_shop.breeds (id, breed_name)
-- VALUES (1, 'labrador'), 
--     (2, 'poodle'),
--     (3, 'bulldog'),
--     (4, 'beagle'),
--     (5, 'mastiff'),
--     (6, 'british shorthair'),
--     (7, 'persian Cat'),
--     (8, 'abyssinian cat'),
--     (9, 'devon rex'),
--     (10, 'megatron');

-- INSERT INTO pet_shop.animal_characteristics (id, kind, breed_id)
-- VALUES (1, 'dog', 1), 
--     (2, 'dog', 2),
--     (3, 'dog', 3),
--     (4, 'dog', 4),
--     (5, 'dog', 5),
--     (6, 'cat', 6),
--     (7, 'cat', 7),
--     (8, 'cat', 7),
--     (9, 'cat', 8),
--     (10, 'cat', 9),
--     (11, 'hamster', NULL),
--     (12, 'rat', 10),
--     (13, 'budgie', NULL);
    
-- INSERT INTO pet_shop.prodution_details (id, manufacturer, compound)
-- VALUES (1, 'Royal Canin', 'fish'), 
--     (2, 'Royal Canin', 'pork'),
--     (3, 'Purina Pro Plan', 'beef'),
--     (4, 'Purina Pro Plan', 'turkey'),
--     (5, 'Pedigree', 'beef'),
--     (6, 'Pedigree', 'pork'),
--     (7, 'Pedigree', 'fish'),
--     (8, 'Diamond Naturals', 'dried fruits'),
--     (9, 'Kaytee Wild Bird Food', 'seeds'),
--     (10, 'Kaytee Wild Bird Food', 'beef'),
--     (11, 'Iams ProActive Health', 'pork'),
--     (12, 'Iams ProActive Health', 'seeds'),
--     (13, 'Iams ProActive Health', 'fish');

-- INSERT INTO pet_shop.products (id, name, price, quantity, descripton, pet_ch_id, production_ch_id)
-- VALUES (1, 'cat beef food', 30, 4, 'best price', NULL, 5), 
--     (2, 'cat beef food', 45, 3, 'best price and taste', NULL, 3), 
--     (3, 'cat turkey food', 45, 10, 'best taste', NULL, 4), 
--     (4, 'cat cheep food', 25, 1,  'best price and taste', NULL, 8),
--     (5, 'bird fruit food', 65, 7, 'best bird food', NULL, 9),
--     (6, 'bird seed food', 15, 0, 'best price of bird food', NULL, 9),
--     (7, 'dog pork food', 45, 2, 'best dog food', NULL, 11),
--     (8, 'dog pork food', 40, 1,'best dog pork food', NULL, 6),
--     (9, 'dog', 15, 6, 'best dog', 2, NULL),
--     (10, 'cat', 15, 0, 'best cat', 8, NULL),
--     (11, 'rat', 15, 1, 'you', 12, NULL),
--     (12, 'budgie', 15, 8, 'little budgie', 13, NULL),
--     (13, 'cat fish food', 50, 5, 'best quality', NULL, 1); 

-- INSERT INTO pet_shop.users (id, name, email, password)
-- VALUES (1, 'Jack', 'Jack@gmail.com', 'Jack123'), 
--     (2, 'Alex', 'Alex@gmail.com', 'Alex123'), 
--     (3, 'Mary', 'Mary@gmail.com', 'Mary123'), 
--     (4, 'Rick', 'Rick@gmail.com', 'Rick123');

-- INSERT INTO pet_shop.customers (id, user_id,  phone_num)
-- VALUES (1, 1, 251112233), 
--     (2, 2, 291112233), 
--     (3, 3, 441112233); 

-- INSERT INTO pet_shop.admins (id, user_id)
-- VALUES (1, 4);

-- INSERT INTO pet_shop.coupons (id, discount_percentage, customer_id)
-- VALUES (1, 10, 1), 
--     (2, 20, 2), 
--     (3, 30, 3),
--     (4, 10, 3),
--     (5, 10, 1); 

-- INSERT INTO pet_shop.orders (id, date_time, delivery_address, customer_id, used_coupon_id)
-- VALUES (1, '2022-01-11 10:05:00', 'Minsk', 1, NULL), 
--     (2, '2022-02-15 13:46:00', 'Vitebsk', 3, NULL), 
--     (3, '2022-03-05 22:55:00', 'Gomel', 2, NULL),
--     (4, '2022-04-21 03:27:00', 'Brest', 2, NULL),
--     (5, '2022-05-10 11:00:00', 'Grodno', 1, NULL);


-- INSERT INTO pet_shop.messages (id, question_text, admin_id, customer_id, product_id, answer_text)
-- VALUES (1, 'how much it costs?', 1, 1, 2, '45'), 
--     (2, 'what food is best for poodle?', NULL, 3, NULL, NULL), 
--     (3, 'why are you gay?', 1, 2, NULL, 'couse i love you'),
--     (4, 'are budgies noisy?', 1, 2, NULL, 'sometimes'),
--     (5, 'can you deliver to Grodno? ', 1, 1, NULL, 'yes');

-- INSERT INTO pet_shop.order_pruducts (id, product_id, order_id, product_price)
-- VALUES (1, 1, 1, 30), 
--     (2, 3, 3, 45), 
--     (3, 4, 2, 25),
--     (4, 6, 2, 15),
--     (5, 3, 1, 45);



SELECT * FROM pet_shop.customers