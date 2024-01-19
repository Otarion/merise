-- Création de la base de données
CREATE DATABASE IF NOT EXISTS merise;

-- Utilisation de la base de données 
USE merise;

-- Création de la table 'user'
CREATE TABLE IF NOT EXISTS user (
    num_user BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    password VARCHAR (100) NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    );

-- Création de la table "product"
CREATE TABLE IF NOT EXISTS product (
   num_product BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL, 
   quantity BIGINT(100) NOT NULL, 
   status BIGINT(100) NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Création de la table "category"
 CREATE TABLE IF NOT EXISTS category (
    num_category BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE,
);

-- Création de la table "tag"
CREATE TABLE IF NOT EXISTS tag (
    num_tag BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE,
);

-- Création de la table "order"
CREATE TABLE IF NOT EXISTS order (
   num_order BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
   num_invoice VARCHAR(100) NOT NULL,
   status BIGINT(100) NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   num_user BIGINT UNSIGNED,
   FOREIGN KEY (num_user) REFERENCES user(num_user) ON DELETE SET NULL
);

-- Création de la table "tagProduct"
CREATE TABLE IF NOT EXISTS tagProduct (
    num_tagProduct BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    num_tag BIGINT UNSIGNED,
    num_product BIGINT UNSIGNED,
 FOREIGN KEY (num_tag) REFERENCES tag (num_tag),
 FOREIGN KEY (num_product) REFERENCES product (num_product)
);

-- Création de la table "ordersDetails"
CREATE TABLE IF NOT EXISTS ordersDetails (
    num_orderDetails BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    quantity BIGINT(100) NOT NULL, 
    num_order BIGINT UNSIGNED,
    num_product BIGINT UNSIGNED,
 FOREIGN KEY (num_order) REFERENCES order(num_order),
 FOREIGN KEY (num_product) REFERENCES product(num_product)
);