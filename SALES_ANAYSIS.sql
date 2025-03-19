CREATE  DATABASE sales_analysis;
USE sales_analysis;

CREATE TABLE sales ( 
sales_id INT PRIMARY KEY,
date DATE,
product_id INT,
quantity INT,
revenue FLOAT,
customer_id INT,
region VARCHAR(50)
);

CREATE TABLE products (
product_id INT PRIMARY KEY,
category VARCHAR(50),
price FLOAT,
cost FLOAT
);

CREATE TABLE customer (
customer_id INT PRIMARY KEY,
name VARCHAR(100),
segment VARCHAR(50),
location VARCHAR(50)
);

INSERT INTO sales VALUES 
(1, '2024-01-01', 101, 5, 500, 1001, 'Accra'),
(2, '2024-01-02', 102, 3, 300, 1002, 'Kumasi'),
(3, '2024-01-03', 103, 2, 200, 1003, 'Takoradi'),
(4, '2024-01-04', 104, 4, 150, 1004, 'Cape_Coast'),
(5, '2024-01-05', 104, 4, 150, 1005, 'Sunyani');

INSERT INTO products VALUES
(101, 'Electronics', 100, 70),
(102, 'Clothing', 150, 90),
(103, 'Furniture', 200, 120),
(104, 'Appliances', 250, 130),
(105, 'Utensils', 300, 150);

INSERT INTO customers VALUES 
(1001, 'John Doe', 'Retail', 'Accra'),
(1002, 'Jane Smith', 'Wholesale', 'Kumasi'),
(1003, 'Kwame Appiah', 'Retail',  'Takoradi'),
(1004, 'Kwadwo Nkansah', 'Wholesale', 'Cape Coast'),
(1005, 'Yaa Ampong', 'Retail', 'Sunyani');
(1005, 'Yaa Ampong', 'Retail', 'Sunyani');
(1005, 'Yaa Ampong', 'Retail', 'Sunyani');

