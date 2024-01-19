-- Création de la base de données
CREATE DATABASE IF NOT EXISTS merise;

-- Utilisation de la base de données 
USE merise;

-- Création de la table 'users'
CREATE TABLE IF NOT EXISTS users (
    num_user BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    password VARCHAR (100) NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

-- Création de la table "products"
CREATE TABLE IF NOT EXISTS products (
   num_product BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL, 
   quantity BIGINT(100) NOT NULL, 
   status BIGINT(100) NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Création de la table "categories"
CREATE TABLE IF NOT EXISTS categories (
    num_category BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Création de la table "tags"
CREATE TABLE IF NOT EXISTS tags (
    num_tag BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Création de la table "orders"
CREATE TABLE IF NOT EXISTS orders (
   num_order BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
   num_invoice VARCHAR(100) NOT NULL,
   status BIGINT(100) NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   num_user BIGINT UNSIGNED,
   FOREIGN KEY (num_user) REFERENCES users(num_user) ON DELETE SET NULL
);

-- Création de la table "tagProducts"
CREATE TABLE IF NOT EXISTS tagProducts (
    num_tagProduct BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    num_tag BIGINT UNSIGNED,
    num_product BIGINT UNSIGNED,
 FOREIGN KEY (num_tag) REFERENCES tags (num_tag),
 FOREIGN KEY (num_product) REFERENCES products (num_product)
);

-- Création de la table "ordersDetails"
CREATE TABLE IF NOT EXISTS ordersDetails (
    num_orderDetails BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    quantity BIGINT(100) NOT NULL, 
    num_order BIGINT UNSIGNED,
    num_product BIGINT UNSIGNED,
 FOREIGN KEY (num_order) REFERENCES orders (num_order),
 FOREIGN KEY (num_product) REFERENCES products (num_product)
);