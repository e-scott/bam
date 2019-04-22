DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INTEGER AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(50),
    price DECIMAL(10,2) DEFAULT 0.0,
    stock_quantity INTEGER(50),
    PRIMARY KEY (item_id)
);

CREATE TABLE departments (
	department_id INTEGER AUTO_INCREMENT NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    over_head_cost DECIMAL(10,2) DEFAULT 0.0,
    product_sales DECIMAL(10,2) DEFAULT 0.0,
    PRIMARY KEY (depatment_id)
);

USE bamazon;

INSERT IGNORE INTO depatments(department_name, over_head_cost) 
VALUES('electronics', 1000.0),
('clothing', 500.0),
('food', 400.0);

SELECT * FROM departments;

USE bamazon;

INSERT IGNORE INTO products(product_name, department_name, price, stock_quantity, product_sales)
VALUES('iPhone X', 'electronics', 899.99, 20, 1600.0),
('Final Fantasy VIII', 'electronics', 49.99, 10, 130.0),
('Mass Effect 3', 'electronics', 49.99, 25, 120.0),
('Galaxy S10', 'electronics', 799.99, 20, 1600.0),
('Levi Jeans', 'clothing', 20.99, 40, 60.0),
('Avengers T-shirt', 'clothing', 19.99, 30, 80.0),
('Underware', 'clothing', 10.99, 35, 77.0),
('Pizza', 'food', 15.99, 15, 45.0),
('Turkey', 'food', 19.99, 18, 40.0),
('Spam', 'food', 5.99, 10, 11.0);

SELECT * FROM products;