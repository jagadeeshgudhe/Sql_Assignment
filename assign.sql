-- data base creation
CREATE DATABASE order_details;

USE order_details;

--consumer table 
CREATE TABLE consumer (
  consumer_id INT PRIMARY KEY,
  consumer_name VARCHAR(255),
  sales_manager_id INT,
  other_details VARCHAR(255)
);

--orders table

CREATE TABLE orders (
  order_no INT PRIMARY KEY,
  purchase_amount INT,
  order_date DATE,
  consumer_id INT,
  sales_manager_id INT
);

--sales_manager

CREATE TABLE sales_manager (
  sales_manager_id INT PRIMARY KEY,
  name VARCHAR(255),
  city VARCHAR(255)
);

--Insertion of values into consumer table

INSERT INTO consumer (consumer_id, consumer_name, sales_manager_id, other_details)
VALUES (1, 'John Smith', 1, 'Contact info: 123-456-7890'),
       (2, 'Jane Doe', 2, 'Contact info: 123-456-7890'),
       (3, 'Bob Johnson', 1, 'Contact info: 123-456-7890'),
       (4, 'Samantha Williams', 2, 'Contact info: 123-456-7890'),
       (5, 'Michael Brown', 3, 'Contact info: 123-456-7890');

--Insertion of values into orders table

INSERT INTO orders (order_no, purchase_amount, order_date, consumer_id, sales_manager_id)
VALUES (1001, 200, '2022-01-01', 1, 1),
       (1002, 300, '2022-01-02', 2, 2),
       (1003, 400, '2022-01-03', 3, 1),
       (1004, 500, '2022-01-04', 4, 2),
       (1005, 600, '2022-01-05', 5, 3);

--Insertion of values into sales_manager table
INSERT INTO sales_manager (sales_manager_id, name, city)
VALUES (1, 'Alice Smith', 'New York'),
       (2, 'Bob Johnson', 'Chicago'),
       (3, 'Charlie Williams', 'Los Angeles');

--query 1

SELECT purchase_amount
FROM orders
WHERE purchase_amount BETWEEN 100 AND 500;

--query 2

UPDATE orders
SET consumer_id = 6
WHERE order_no = 1005;

--query 3

SELECT c.consumer_name,sm.city, o.order_no, o.order_date, o.purchase_amount, sm.name FROM consumer c
JOIN orders o ON c.consumer_id = o.consumer_id
JOIN sales_manager sm ON c.sales_manager_id = sm.sales_manager_id
WHERE o.purchase_amount < 500
ORDER BY c.consumer_id ASC;

--query 4

SELECT c.consumer_name,sm.city, o.order_no, o.order_date, o.purchase_amount FROM consumer c
JOIN orders o ON c.consumer_id = o.consumer_id JOIN sales_manager sm ON c.sales_manager_id = sm.sales_manager_id
ORDER BY o.order_date ASC;

--query 5

SELECT c.consumer_name, sm.city, o.order_no, o.order_date, o.purchase_amount, sm.name FROM consumer c
LEFT JOIN orders o ON c.consumer_id = o.consumer_id
LEFT JOIN sales_manager sm ON c.sales_manager_id = sm.sales_manager_id;


