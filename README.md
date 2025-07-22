# 📚 Online Book Store - SQL Data Analysis Project

## 📌 Overview

This project focuses on analyzing an **Online Book Store** using SQL. The dataset consists of three main tables: `books`, `customers`, and `orders`. Through a series of SQL queries, we gain insights into sales performance, customer behavior, stock levels, and author contributions.

---

## 🧾 Dataset Description

### 1. `books`
Stores information about the books available.

| Column Name | Data Type | Description               |
|-------------|-----------|---------------------------|
| book_id     | INT       | Unique ID for each book   |
| title       | TEXT      | Title of the book         |
| author      | TEXT      | Author of the book        |
| genre       | TEXT      | Genre/category of the book|
| price       | DECIMAL   | Price of the book         |
| stock       | INT       | Number of copies in stock |

---

### 2. `customers`
Contains details of the store's customers.

| Column Name   | Data Type | Description                 |
|---------------|-----------|-----------------------------|
| customer_id   | INT       | Unique ID for each customer |
| name          | TEXT      | Customer's name             |
| city          | TEXT      | Customer's city             |
| country       | TEXT      | Customer's country          |

---

### 3. `orders`
Logs all purchases made by customers.

| Column Name   | Data Type | Description                          |
|---------------|-----------|--------------------------------------|
| order_id      | INT       | Unique ID for each order             |
| book_id       | INT       | Book purchased (foreign key)         |
| customer_id   | INT       | Customer who made the purchase       |
| quantity      | INT       | Number of copies ordered             |
| total_amount  | DECIMAL   | Total price for the order            |

---

## 🔍 Key SQL Analysis Tasks

Below are some example questions answered in this project:

- Which genre has the highest total sales?
- Who are the top 5 customers by total spend?
- Which authors sold the most books?
- What is the remaining stock after fulfilling all orders?
- Cities where customers who spent more than $30 are located.
- Most frequently ordered books.
- Top 3 most expensive books in the Fantasy genre.

---

## 🛠️ Tools Used

- **SQL (PostgreSQL)**


## 🧠 Learnings

- Writing complex SQL queries using `JOIN`, `GROUP BY`, `HAVING`, and subqueries.
- Analyzing customer and sales data to draw actionable insights.
- Performing aggregate operations and filtering grouped data.
- Understanding relationships in a relational database schema.

---

## 🚀 How to Use

1. Clone this repository.
2. Open the `.sql` file(s) in your SQL editor.
3. Run the schema and insert statements to create and populate the database.
4. Execute the analysis queries for insights.


