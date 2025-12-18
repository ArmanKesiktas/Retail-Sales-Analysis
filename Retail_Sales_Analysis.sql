-- Creating table. / Tablo yaratma.
DROP TABLE IF EXISTS retail_sales; --We may have table which have same name.
CREATE TABLE retail_sales (
  transactions_id INT,
  sale_date DATE,
  sale_time TIME,
  customer_id INT,
  gender VARCHAR(15),
  age INT,
  category VARCHAR(15),
  quantiy INT,
  price_per_unit FLOAT,
  cogs FLOAT,
  total_sale FLOAT
);

-- Understanding datas. / Verileri anlayalım.
SELECT * FROM retail_sales
LIMIT 10;

-- Checking how many records we have.(2000) /  Kaç tane verimiz var?
SELECT COUNT(*)
FROM retail_sales;

-- DATA CLEANING. Deleting NULLs. / Veri Temizleme
DELETE FROM retail_sales
WHERE
	transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR gender IS NULL
    OR category IS NULL
    OR quantiy IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;

-- DATA EXPLORATION. / Verileri keşfetme.

-- How many sales we have? / Kaç tane satışımız var?
SELECT COUNT(*) AS total_sale FROM retail_sales rs ; -- Total Sale = 1997.

-- How many customers we have? / Kaç müşterimiz var?
SELECT COUNT(DISTINCT customer_id) FROM retail_sales rs ; -- Total Customers = 155.

-- How many categories we have? / Kaç kategori var?
SELECT COUNT(DISTINCT category) FROM retail_sales rs ; -- Total Categroy = 3. 
SELECT DISTINCT category FROM retail_sales rs ; -- Electronics, clothing, beauty.

-- DATA ANALYSIS / BUSINESS PROBLEMS & ANSWERS TASKS

--Q.1.Write a SQL query to retrieve all columns for sales made on '2022-11-05'. 
--05.11.2022 tarihinde yapılan satışlara ait tüm sütunları getiren SQL sorgusunu yazınız.
SELECT * FROM retail_sales
WHERE sale_date = '2022-11-05';

--Q.2.Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more/equal than 4 in the month of Nov-2022.
--Kasım 2022 ayında, kategori “Clothing” olan ve satılan miktarı 10’dan fazla olan tüm işlemleri getiren SQL sorgusunu yazınız.
SELECT * FROM retail_sales rs 
WHERE category = 'Clothing'
AND quantiy >= 4
AND to_char(sale_date, 'YYYY-MM') = '2022-11';

--Q.3.Write a SQL query to calculate the total sales (total_sale) for each category.
--Her kategori için toplam satış tutarını (total_sale) hesaplayan SQL sorgusunu yazınız.
SELECT SUM(total_sale) FROM retail_sales rs ;

--Q.4.Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
--“Beauty” kategorisinden alışveriş yapan müşterilerin ortalama yaşını bulan SQL sorgusunu yazınız.
SELECT AVG(age) AS avg_age FROM retail_sales rs 
WHERE rs.category = 'Beauty';

--Q.5.Write a SQL query to find all transactions where the total_sale is greater than 1000.
--Toplam satış tutarı (total_sale) 1000’den büyük olan tüm işlemleri getiren SQL sorgusunu yazınız.
SELECT * FROM retail_sales rs
WHERE total_sale > 1000;

--Q.6.Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
--Her kategori ve cinsiyet için yapılan toplam işlem sayısını (transaction_id) bulan SQL sorgusunu yazınız.
SELECT category, gender, COUNT(*) AS total_trans
FROM retail_sales rs
GROUP BY category, gender
ORDER BY 1;	


--Q.7.Write a SQL query to calculate the average sale for each month.
--Her ay için ortalama satış tutarını hesaplayan SQL sorgusunu yazınız.

SELECT
	EXTRACT(YEAR FROM sale_date) AS year,
	EXTRACT(MONTH FROM sale_date) AS month,
	SUM(total_sale) AS Total_Sale
FROM retail_sales
GROUP BY year, month
ORDER BY year, month;

--Q.8.Write a SQL query to find the top 5 customers based on the highest total sales.
--Toplam satış tutarına göre en çok harcama yapan ilk 5 müşteriyi bulan SQL sorgusunu yazınız.
SELECT
    customer_id,
    SUM(total_sale) AS total_sales,
    COUNT(transactions_id) AS total_transactions
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;


--Q.9.Write a SQL query to find the number of unique customers who purchased items from each category.
--Her kategori için alışveriş yapan benzersiz (unique) müşteri sayısını bulan SQL sorgusunu yazınız.
SELECT COUNT(DISTINCT(customer_id)), category FROM retail_sales rs 
GROUP BY category;

-- END OF THE PROJECT --


