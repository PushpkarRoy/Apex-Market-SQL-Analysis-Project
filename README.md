# 🛒 Apex Market SQL Analysis Project

This project is a SQL-based analysis of a fictional e-commerce business called **Apex Market**. It simulates real-world business scenarios and answers analytical questions using SQL queries. The project is designed to demonstrate essential SQL skills including filtering, joins, aggregation, grouping, and business insights extraction.

---

## 📦 Dataset Overview

The project uses three relational tables:

### 1. `customers`
Contains customer details such as:
- `Customer_ID`
- `Name`
- `City`
- `Gender`
- `Email`, `Contact_Number`
- `Address`

### 2. `product`
Holds product information:
- `Product_ID`
- `Product_Name`
- `Category`
- `Price_INR`
- `Occasion`
- `Description`

### 3. `orders`
Captures order records:
- `Order_ID`
- `Customer_ID`, `Product_ID`
- `Quantity`
- `Order_Date`, `Order_Time`
- `Delivery_Date`, `Delivery_Time`
- `Location`, `Occasion`

---

## 🧠 SQL Concepts Practiced

- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- `GROUP BY`, `HAVING`
- Aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- `INNER JOIN` for combining data across tables
- Business logic in SQL queries

---

## 🔍 Business Questions Answered

Here are the key questions answered using SQL:

1. Retrieve all products with a price greater than ₹500.
2. Find all orders placed on or after ‘2023-01-01’.
3. List all customers who are from ‘Kolkata’.
4. Show the `order_id`, `customer_name`, and `order_date` for all orders.
5. List all `product_name` and the `customer_name` who ordered them.
6. Display `customer_name`, `product_name`, quantity ordered, and item price.
7. Show orders where quantity ordered is more than 5.
8. Calculate the total number of orders placed.
9. Find the average price of all products.
10. Calculate total revenue from all orders.
11. Determine the minimum and maximum product prices.
12. Count orders placed by each customer.
13. Total quantity sold per product category.
14. Average order quantity per category.
15. Customers who placed more than 7 orders.
16. Categories with revenue > ₹400,000.
17. Top 5 most expensive products.
18. Customers ordered from most to fewest.
19. Customers who spent more than ₹5,000.

---

## ⚙️ Tools Used

- **SQL** (Standard syntax; compatible with PostgreSQL, SQLite)

---

## 📌 How to Use

1. Clone this repository or download the `.sql` file.
2. Import the script into your SQL environment.
3. Run and test each query step-by-step to understand the logic and results.
4. Modify or expand the dataset to explore further insights.

---

## 📈 Author

**Pushpkar Roy**  
📧 *[puhspkarroy880@gmail.com]*  
🔗 | [GitHub]([https://github.com/yourusername](https://github.com/PushpkarRoy))

---

## 📝 License

This project is open-source and free to use under the MIT License.
