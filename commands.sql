-- ALTER TABLE pet_shop.users
-- ADD CONSTRAINT UNIQUE (name);

-- CREATE INDEX price ON pet_shop.products(price);
-- SELECT * FROM pet_shop.products ORDER BY price;
-- SELECT * FROM pet_shop.products WHERE quantity>5 AND price <= 60;
-- SELECT * FROM pet_shop.products WHERE price IS NULL;

-- UPDATE pet_shop.products SET quantity = 4 ;
-- SELECT * FROM pet_shop.products WHERE price BETWEEN 20 AND 47;

-- CREATE INDEX quantity ON pet_shop.products(quantity);
-- SELECT * FROM pet_shop.products WHERE quantity < 120; 

-- SELECT * FROM pet_shop.products ORDER BY price ASC;
-- SELECT * FROM pet_shop.products ORDER BY price DESC;

-- SELECT * FROM pet_shop.products ORDER BY price DESC;

-- SELECT DISTINCT price FROM pet_shop.products;

-- SELECT * FROM pet_shop.products WHERE pet_shop.products.quantity < 120;

-- CREATE UNIQUE INDEX compound ON pet_shop.prodution_details(compound);
-- SELECT * FROM pet_shop.prodution_details WHERE compound = 5;

-- UPDATE pet_shop.products SET price = 50 WHERE id = 1;

-- SELECT * FROM pet_shop.products WHERE price < 55 LIMIT 2;

-- SELECT MIN(price) FROM pet_shop.products;
-- SELECT COUNT(price) FROM pet_shop.products where price = 3;
-- SELECT SUM(price) FROM pet_shop.payments WHERE quantity = 2;

-- SELECT pet_shop.messages.id, pet_shop.admins.id, pet_shop.customers.id
-- FROM ((pet_shop.messages
-- INNER JOIN pet_shop.admins ON pet_shop.messages.admin_id = pet_shop.admins.id)
-- INNER JOIN pet_shop.customers ON pet_shop.messages.customer_id = pet_shop.customers.id);

-- SELECT pet_shop.products.id, pet_shop.products.name, pet_shop.products.price, pet_shop.prodution_details.manufacturer, pet_shop.order_pruducts.order_id, pet_shop.orders.id, pet_shop.orders.date_time
-- FROM (((pet_shop.products
-- INNER JOIN pet_shop.prodution_details ON pet_shop.products.production_ch_id = pet_shop.prodution_details.id)
-- INNER JOIN pet_shop.order_pruducts ON pet_shop.products.id = pet_shop.order_pruducts.product_id)
-- INNER JOIN pet_shop.orders ON pet_shop.order_pruducts.order_id = pet_shop.orders.id);
-- SELECT * FROM pet_shop.products
-- WHERE price < 40 AND
-- EXISTS
-- (SELECT quantity FROM pet_shop.products WHERE quantity > 4);

-- SELECT id, breed_id,
-- CASE 
-- WHEN breed_id = 1 THEN 'labrador (the dog)'
-- WHEN breed_id = 2 THEN 'poodle (the dog)'
-- WHEN breed_id = 3 THEN 'bulldog (the dog)'
-- WHEN breed_id = 4 THEN 'beagle (the dog)'
-- WHEN breed_id = 5 THEN 'mastiff (the dog)'
-- WHEN breed_id = 6 THEN 'british shorthair (the cat)'
-- WHEN breed_id = 7 THEN 'persian cat '
-- WHEN breed_id = 8 THEN 'abyssinian cat'
-- WHEN breed_id = 9 THEN 'devon rex (the cat)'
-- WHEN breed_id = 10 THEN 'megatron (super mega cool decepticon leader)'
-- END AS breeds
-- FROM pet_shop.animal_characteristics;
