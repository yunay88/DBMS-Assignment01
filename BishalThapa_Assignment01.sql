CREATE DATABASE butwal_quickmart;
USE butwal_quickmart;

SHOW DATABASES;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    phone VARCHAR(20) UNIQUE,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(120) NOT NULL,
    sku VARCHAR(50) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL,
    stock_qty INT NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE customers;

DESCRIBE products;

INSERT INTO customers
VALUES (NULL, 'Amit Sharma', 'amit.sharma@gmail.com', '9800000001', TRUE, DEFAULT);

INSERT INTO customers (full_name, email, phone, is_active)
VALUES ('Suresh Thapa', 'suresh.thapa@gmail.com', '9800000002', TRUE);

SELECT * FROM customers;

INSERT INTO products (product_name, sku, price, stock_qty)
VALUES
('Mustard Oil', 'OIL-001', 650.00, 20),
('Sunflower Oil', 'OIL-002', 720.00, 15),
('Basmati Rice', 'RICE-001', 180.00, 50),
('Wheat Flour', 'FLOUR-001', 140.00, 30);

SELECT * FROM products;

SELECT full_name, email FROM customers;

SELECT * FROM products
WHERE stock_qty BETWEEN 10 AND 50;

SELECT * FROM customers
WHERE full_name LIKE 'A%';

SELECT * FROM customers
WHERE full_name LIKE '%sh%';

SELECT * FROM products
WHERE price > 500 AND stock_qty >= 5;

SELECT * FROM products
WHERE product_name LIKE '%Oil%' OR price < 200;
INSERT INTO customers (full_name, email, phone, is_active)
VALUES
('Anita Koirala', 'anita.koirala@gmail.com', '9800000003', TRUE),
('Binod Gurung', 'binod.gurung@gmail.com', '9800000004', TRUE),
('Chitra Rai', 'chitra.rai@gmail.com', '9800000005', TRUE);
SELECT * FROM products
ORDER BY price DESC
LIMIT 3;

SELECT * FROM customers
ORDER BY created_at DESC
LIMIT 5;

SELECT * FROM customers
ORDER BY full_name ASC
LIMIT 2;

RENAME TABLE customers TO client_accounts;

SHOW TABLES;

ALTER TABLE client_accounts
ADD address VARCHAR(255) NOT NULL DEFAULT 'Not Provided';

DESCRIBE client_accounts;

ALTER TABLE products
ADD category VARCHAR(50) DEFAULT 'General';

DESCRIBE products;

ALTER TABLE products
MODIFY sku VARCHAR(50) NOT NULL UNIQUE FIRST;

DESCRIBE products;

INSERT INTO products (product_name, sku, price, stock_qty)
VALUES ('Olive Oil', 'OIL-001', 800.00, 10);

INSERT INTO client_accounts (full_name, email, phone, is_active)
VALUES ('Rajesh Khatri', 'amit.sharma@gmail.com', '9800000006', TRUE);

DROP DATABASE butwal_quickmart;

SHOW databases;