Step 1: Dataset Design — Sales Transactions
Let’s create a table called sales:

CREATE TABLE sales (
  sale_id NUMBER,
  product_name VARCHAR2(50),
  category VARCHAR2(30),
  region VARCHAR2(30),
  amount NUMBER,
  sale_date DATE
);

Step 2: Insert Sample Data

INSERT INTO sales VALUES (1, 'Laptop', 'Electronics', 'North', 1200, DATE '2023-01-05');
INSERT INTO sales VALUES (2, 'Smartphone', 'Electronics', 'North', 800, DATE '2023-01-10');
INSERT INTO sales VALUES (3, 'Fridge', 'Appliances', 'East', 1500, DATE '2023-01-12');
INSERT INTO sales VALUES (4, 'TV', 'Electronics', 'West', 1000, DATE '2023-01-15');
INSERT INTO sales VALUES (5, 'Microwave', 'Appliances', 'East', 300, DATE '2023-01-20');
INSERT INTO sales VALUES (6, 'Oven', 'Appliances', 'East', 900, DATE '2023-01-22');
INSERT INTO sales VALUES (7, 'Tablet', 'Electronics', 'North', 600, DATE '2023-01-25');
INSERT INTO sales VALUES (8, 'Washing Machine', 'Appliances', 'West', 1300, DATE '2023-01-28');

Task 1: Compare Current Sale with Previous/Next (LAG & LEAD)

SELECT sale_id, product_name, amount,
       LAG(amount) OVER (ORDER BY sale_date) AS prev_amount,
       LEAD(amount) OVER (ORDER BY sale_date) AS next_amount,
       CASE 
         WHEN amount > LAG(amount) OVER (ORDER BY sale_date) THEN 'HIGHER'
         WHEN amount < LAG(amount) OVER (ORDER BY sale_date) THEN 'LOWER'
         ELSE 'EQUAL'
       END AS compared_to_prev
FROM sales;

Task 2: Rank Products by Category

SELECT sale_id, product_name, category, amount,
       RANK() OVER (PARTITION BY category ORDER BY amount DESC) AS rank_r,
       DENSE_RANK() OVER (PARTITION BY category ORDER BY amount DESC) AS dense_rank_r
FROM sales;

Task 3: Top 3 Products per Category

SELECT * FROM (
  SELECT sale_id, product_name, category, amount,
         DENSE_RANK() OVER (PARTITION BY category ORDER BY amount DESC) AS rnk
  FROM sales
)
WHERE rnk <= 3;

Task 4: First 2 Sales by Region (Based on Date)

SELECT * FROM (
  SELECT sale_id, product_name, region, sale_date,
         ROW_NUMBER() OVER (PARTITION BY region ORDER BY sale_date ASC) AS rn
  FROM sales
)
WHERE rn <= 2;

Task 5: Max Sale per Category vs Overall Max

SELECT sale_id, product_name, category, amount,
       MAX(amount) OVER (PARTITION BY category) AS max_in_category,
       MAX(amount) OVER () AS overall_max
FROM sales;

