-- CREATE TRIGGER pet_shop.registrated_log AFTER INSERT ON pet_shop.users
-- FOR EACH ROW BEGIN
--     INSERT INTO pet_shop.actions SET user_id = NEW.id, type_of_action = 'registrated';
-- END;

-- CREATE TRIGGER pet_shop.order_log AFTER INSERT ON pet_shop.orders 
-- FOR EACH ROW BEGIN
-- INSERT INTO pet_shop.actions
-- SET user_id = NEW.customer_id,
--     type_of_action = 'order_creacted';
-- END;

-- CREATE TRIGGER pet_shop.message_W_log AFTER INSERT ON pet_shop.messages
-- FOR EACH ROW BEGIN
-- INSERT INTO pet_shop.actions
-- SET user_id = NEW.customer_id,
--     type_of_action = 'message_writed';
-- END;

-- CREATE TRIGGER pet_shop.message_a_log AFTER UPDATE ON pet_shop.messages
-- FOR EACH ROW BEGIN
-- INSERT INTO pet_shop.actions
-- SET user_id = NEW.admin_id,
--     type_of_action = 'massage_answered';
-- END;

-- CREATE TRIGGER pet_shop.coupon_log AFTER INSERT ON pet_shop.coupons
-- FOR EACH ROW BEGIN
-- INSERT INTO pet_shop.actions
-- SET user_id = NEW.customer_id,
--     type_of_action = 'coupon_added';
-- END;

-- DROP TRIGGER pet_shop.order_total_price;

-- CREATE TRIGGER pet_shop.order_total_price AFTER INSERT ON pet_shop.order_pruducts -- добавление в order_products причем заказ нужно...
-- FOR EACH ROW BEGIN
-- UPDATE pet_shop.orders
-- SET total_price = total_price + NEW.product_price WHERE id = NEW.order_id;
-- END;

-- SELECT * FROM pet_shop.orders;

INSERT INTO pet_shop.order_pruducts (id, product_id, order_id, product_price)
VALUES (8, 1, 3, 40);
SELECT * FROM pet_shop.orders;

-- ___________________________________________________________________________________________

-- CREATE PROCEDURE pet_shop.Select_user_by_id (IN get_id INT)
-- begin
-- SELECT * FROM pet_shop.users WHERE id = get_id;
-- END;
-- CALL pet_shop.Select_user_by_id(3);


-- CREATE PROCEDURE pet_shop.Select_all_users()
-- BEGIN
-- SELECT * FROM pet_shop.users;
-- END;
-- CALL pet_shop.Select_all_users();
