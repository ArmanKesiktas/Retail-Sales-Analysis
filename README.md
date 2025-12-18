#  Retail Sales SQL Data Analysis Project

## Project Overview

This project focuses on analyzing retail sales data using **SQL**.
The workflow follows a complete data analysis lifecycle where the data is first explored, then cleaned, and finally analyzed through business-oriented SQL queries.

The main goal of this project is to demonstrate an **end-to-end SQL data analysis process**:

> **Data Understanding → Data Cleaning → Data Analysis**

---

## Dataset Description

The dataset represents retail sales transactions, where each row corresponds to a single sales transaction.

**Key columns in the dataset:**

* `transaction_id` – Unique transaction identifier
* `sale_date` – Date of sale
* `sale_time` – Time of sale
* `customer_id` – Customer identifier
* `gender` – Customer gender
* `age` – Customer age
* `category` – Product category
* `quantity` – Quantity sold
* `price_per_unit` – Price per unit
* `cogs` – Cost of goods sold
* `total_sale` – Total sales amount

---

## Step 1: Data Understanding

In this step, the dataset was explored to understand its structure and content:

* Table schema and column data types were reviewed
* Missing (NULL) values were identified
* Date and time fields were examined for consistency
* Overall data quality and potential issues were assessed

The purpose of this step was to gain a clear understanding of the data before performing any analysis.

---

## Step 2: Data Cleaning

Before analysis, the data was cleaned to ensure accuracy and reliability:

* NULL values were checked and handled
* Numerical columns were validated for logical consistency
* Date and time columns were prepared for analysis
* Fields used in calculations (such as `total_sale` and `quantity`) were verified

This step ensured that the analysis results are **trustworthy and meaningful**.

---

## Step 3: Data Analysis

After cleaning the data, SQL queries were written to answer real-world business questions, including:

1. Retrieving sales made on a specific date
2. Filtering transactions by category, quantity, and time period
3. Calculating total sales by product category
4. Analyzing customer demographics for specific categories
5. Identifying high-value transactions
6. Transaction analysis by gender and category
7. Monthly average sales and best-selling months by year
8. Identifying top customers based on total sales
9. Counting unique customers per category
10. Analyzing order distribution by time-of-day shifts

All analyses were performed using **PostgreSQL**.

---

## Tools & Technologies

* **PostgreSQL**
* **SQL**
* **DBeaver / pgAdmin**
* **Git & GitHub**

---

## Key Learnings

Through this project, I gained hands-on experience with:

* Exploring and cleaning real-world datasets
* Writing analytical SQL queries to solve business problems
* Using `GROUP BY`, `HAVING`, subqueries, and date/time functions
* Applying analytical thinking to derive insights from data

---

## Future Improvements

* Data visualization using Power BI or Tableau
* More advanced time-series analysis
* Using Views and Stored Procedures for optimization

---

*This project is part of my data analytics learning journey and is created for portfolio purposes.
