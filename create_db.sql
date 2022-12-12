CREATE DATABASE IF NOT EXISTS pet_shop;

CREATE TABLE IF NOT EXISTS pet_shop.breeds(
    id INT AUTO_INCREMENT PRIMARY KEY,
    breed_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS pet_shop.animal_characteristics(
    id INT AUTO_INCREMENT PRIMARY KEY,
    kind VARCHAR(255) NOT NULL,
    breed_id INT NULL,
    FOREIGN KEY (breed_id) REFERENCES pet_shop.breeds(id)
);

CREATE TABLE IF NOT EXISTS pet_shop.prodution_details(
    id INT AUTO_INCREMENT PRIMARY KEY,
    manufacturer VARCHAR(255) NOT NULL,
    compound VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS pet_shop.products(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    descripton VARCHAR(255) NULL,
    pet_ch_id INT NULL,
    production_ch_id INT NULL,
    FOREIGN KEY (pet_ch_id) REFERENCES pet_shop.animal_characteristics(id),
    FOREIGN KEY (production_ch_id) REFERENCES pet_shop.prodution_details(id),
    CHECK (price>=0),
    CHECK (quantity>=0)
);

CREATE TABLE IF NOT EXISTS pet_shop.users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    products VARCHAR(50) NOT NULL,
    email VARCHAR(25) NOT NULL,
    password VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS pet_shop.customers(
    id INT PRIMARY KEY,
    user_id INT NOT NULL,
    phone_num INT NULL,
    FOREIGN KEY (id) REFERENCES pet_shop.users(id)
);

CREATE TABLE IF NOT EXISTS pet_shop.admins(
    id INT PRIMARY KEY,
    user_id INT NOT NULL,
    FOREIGN KEY (id) REFERENCES pet_shop.users(id)
);

CREATE TABLE IF NOT EXISTS pet_shop.coupons(
    id INT AUTO_INCREMENT PRIMARY KEY,
    discount_percentage INT NOT NULL,
    customer_id INT NOT NULL,
    used BOOLEAN DEFAULT false,
    FOREIGN KEY (customer_id) REFERENCES pet_shop.customers(id)
);

CREATE TABLE IF NOT EXISTS pet_shop.orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_time DATETIME NOT NULL,
    delivery_address VARCHAR(255) NOT NULL,
    admin_id INT NOT NULL,
    customer_id INT NOT NULL,
    used_coupon_id INT NULL,
    quantity INT DEFAULT 0 NOT NULL,
    total_price INT DEFAULT 0 NOT NULL,
    FOREIGN KEY (admin_id) REFERENCES pet_shop.admins(id),
    FOREIGN KEY (customer_id) REFERENCES pet_shop.customers(id),
    FOREIGN KEY (used_coupon_id) REFERENCES pet_shop.coupons(id),
    CHECK (total_price>=0)
);

CREATE TABLE IF NOT EXISTS pet_shop.messages(
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text VARCHAR(255) NOT NULL,
    admin_id INT NULL,
    customer_id INT NOT NULL,
    product_id INT NULL,
    answer_text VARCHAR(255) NULL,
    FOREIGN KEY (admin_id) REFERENCES pet_shop.admins(id),
    FOREIGN KEY (customer_id) REFERENCES pet_shop.customers(id),
    FOREIGN KEY (product_id) REFERENCES pet_shop.products(id)

);

CREATE TABLE IF NOT EXISTS pet_shop.order_pruducts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    order_id INT NOT NULL,
    product_price INT NOT NULL ,
    FOREIGN KEY (product_id) REFERENCES pet_shop.products(id),
    FOREIGN KEY (order_id) REFERENCES pet_shop.orders(id)
);

CREATE TABLE IF NOT EXISTS pet_shop.actions(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    date_time DATETIME NOT NULL,
    type_of_action ENUM(
        'registrated',
        'order_creacted',
        'message_writed',
        'massage_answered',
        'coupon_added'
    ) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES pet_shop.users(id)
);



-- SET FOREIGN_KEY_CHECKS=0; DROP TABLE pet_shop.orders; SET FOREIGN_KEY_CHECKS=1;
-- SET FOREIGN_KEY_CHECKS=0; DROP TABLE pet_shop.order_pruducts; SET FOREIGN_KEY_CHECKS=1;
-- SET FOREIGN_KEY_CHECKS=0; DROP TABLE pet_shop.animal_characteristics; SET FOREIGN_KEY_CHECKS=1;