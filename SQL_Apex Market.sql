CREATE TABLE customers (
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    Contact_Number BIGINT,
    Email VARCHAR(100),
    Gender VARCHAR(10),
    Address TEXT
);

DROP TABLE customer

CREATE TABLE product (
    Product_ID INT,
    Product_Name VARCHAR(50),
    Category VARCHAR(50),
    Price_INR INT,  -- Fixed column name
    Occasion VARCHAR(50),
    Description VARCHAR(200)
);


CREATE TABLE orders(
Order_ID INT,
Customer_ID VARCHAR(10),
Product_ID INT,
Quantity INT,
Order_Date DATE,
Order_Time TIME,
Delivery_Date DATE,
Delivery_Time TIME,
Location VARCHAR(50),
Occasion VARCHAR(50)
)

SELECT * FROM orders
SELECT * FROM product
SELECT * FROM customers

-- Q1 1.	Retrieve all products with a price greater than 500 INR.

SELECT * 
FROM 
    product
WHERE 
    price_inr >= 500

-- Q2 Find all orders placed on or after '2023-01-01'.

SELECT * 
FROM 
    orders
WHERE 
    order_date >= '2023-01-01'

--Q3 List all customers who are from 'Kolkata'.

SELECT *
FROM 
    customers
WHERE
	city = 'Kolkata'

--Q4 Show the order_id, customer_name, and order_date for all orders.

SELECT 
    C.customer_id, c.name AS customer_name, o.order_date
FROM 
    customers AS c
INNER JOIN 
    orders AS o
ON 
    c.customer_id = o.customer_id 

-- Q5 List all product_name and the customer_name who ordered them.

SELECT 
    c.customer_id, c.name AS customer_name, p.product_name
FROM 
    customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id
JOIN product AS p
ON P.product_id = o.product_id

--Q6 Display the customer_name, product_name, quantity ordered, and item_price for each item in every order.
SELECT * FROM customers 
SELECT * FROM orders 
SELECT * FROM Product

SELECT C.name AS customer_name, P.product_name, p.price_inr, o.quantity
FROM customers AS c
JOIN orderS AS o
ON c.customer_id = o.customer_id
JOIN product AS p
ON p.product_id = o.product_id

-- Q7 Get the order_id, product_name, and quantity for orders where the quantity ordered for a single product 
--    in that order is more than 5.

SELECT o.order_id, p.product_name, o.quantity
FROM orders AS o
JOIN product AS p
ON o.product_id = p.product_id
WHERE o.quantity >= 5

-- Q8 Calculate the total number of orders placed.

SELECT * FROM customers
SELECT * FROM orders 
SELECT * FROM product 


SELECT COUNT(order_id) AS total_order
FROM orders

-- Q9 Find the average price of all products.

SELECT ROUND(AVG(price_inr),2)
FROM product


-- Q10 Determine the total revenue generated from all orders.

SELECT p.product_name, ( o.quantity * p.price_inr ) AS Total_revenue, COUNT(o.product_id) AS Total_customer_order
FROM orders AS o
JOIN product AS p
ON o.product_id = p.product_id
GROUP BY p.product_name, total_revenue 
ORDER by Total_revenue  DESC
 

--Q11  What is the MIN and MAX price among all products?

SELECT * FROM product

SELECT MAX(price_inr) AS MAX_product_price,
       MIN(price_inr) AS MIN_product_price
FROM   product

-- Q12 Count the number of orders placed by each customer.

SELECT COUNT(o.customer_id), C.name AS customer_name, SUM(quantity) AS Total_quantity_order 
FROM orders AS o
JOIN customers AS c
ON o.customer_id = c.customer_id
GROUP BY c.name 
ORDER BY Total_quantity_order DESC

-- Q13 Calculate the total quantity sold for each product category.

SELECT p.category, SUM(O.Quantity) AS total_quantity, p.price_inr,  ( o.quantity * p.price_inr ) AS Total_revenue 
FROM product AS p
JOIN orders AS o
ON p.product_id = o.product_id 
GROUP BY category, Total_revenue, p.price_inr

-- Q14 Find the average order_quantity for products in each category.

SELECT p.category, ROUND(AVG(o.quantity), 2) AS Avg_order_quantity
FROM product AS p
JOIN orders AS o
ON p.product_id = o.product_id
GROUP BY p.category 

-- Q15 List customer_name who have placed more than 7 orders.

SELECT COUNT(o.customer_id) AS Total_Order_place, c.name AS customer_name 
FROM orders AS o
JOIN customers AS c
ON o.customer_id = c.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.customer_id) >= 7;


-- Q16 Show product category that have a total revenue greater than 400000.

SELECT p.category, SUM(o.quantity * p.price_inr ) AS Total_revenue
FROM product AS p
JOIN orders AS o
ON p.product_id = o.product_id
GROUP BY p.category 
HAVING SUM(o.quantity * p.price_inr ) > 400000


-- Q17 Retrieve the top 5 most expensive products.

SELECT * 
FROM product 
ORDER BY price_inr DESC
LIMIT 5 

-- Q18 List the customers and their total number of orders, ordered from most to fewest orders.

SELECT c.name AS customer_name, COUNT(o.customer_id) AS No_of_order_place 
FROM customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.name 
ORDER BY No_of_order_place  ASC
LIMIT 5 

-- Q19 Find the customer_name and their total amount spent for customers who have spent more than 5000,
--     ordered by the total amount spent in descending order.
SELECT * FROM customers
SELECT * FROM product 
SELECT * FROM orders 


SELECT o.customer_id, c.name AS customer_name, (p.price_inr * o.quantity) AS total_revenue 
FROM orders AS O
JOIN customers AS c
ON o.customer_id = c.customer_id 
JOIN product AS p
ON o.product_id = p.product_id 
WHERE (p.price_inr * o.quantity) > 5000
ORDER BY total_revenue ASC 







	

