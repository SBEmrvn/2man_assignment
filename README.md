# 2man_assignment

A)TABLE CREATION SCRIPTS
![Creation of sales table](https://github.com/user-attachments/assets/0210790c-1986-4ca4-9a40-f5cf50277cec)

Technical Details
Created in Oracle Database 21c Enterprise Edition

Uses Oracle's VARCHAR2 data type for text fields

NUMBER type allows for both integers and decimals

DATE type stores date and time information




1. LAG and LEAD with Comparison
![Select query LAG AND LEAD ](https://github.com/user-attachments/assets/25795934-5c05-494f-aa21-350c92c15df3)

Explanation: This query uses:

LAG() to see the previous sale amount

LEAD() to see the next sale amount

A CASE statement to compare current sale to previous

Real-Life Application: A financial analyst could use this to track sales trends day-by-day, identifying when sales are increasing or decreasing compared to the previous transaction. This helps spot unusual patterns that might indicate problems or opportunities.

2. RANK and DENSE_RANK Comparison

![RANKING](https://github.com/user-attachments/assets/75172c4c-b0ee-409a-a9ad-8c58a8ecbe81)

Explanation: This demonstrates two ranking methods:

RANK(): Leaves gaps when there are ties

DENSE_RANK(): Does not leave gaps in ranking numbers

Real-Life Application: An e-commerce platform could use this to rank products by sales within each category. For example, showing that a laptop is #1 in electronics while a fridge is #1 in appliances helps with inventory prioritization and marketing focus.

3. DENSE_RANK Filtering
   
![DENSE RANK](https://github.com/user-attachments/assets/f7e578a1-5244-4e9f-9fb3-2c2633d57a01)

Explanation: Similar to the previous ranking query but specifically filtering to only show top 3 products per category using DENSE_RANK().

Real-Life Application: A retail chain could use this to identify their top 3 best-selling products in each category for shelf placement decisions or to determine which items to feature in promotional materials.

4. ROW_NUMBER Query for Top N per Group
   
![QUERY ROW NUMBER](https://github.com/user-attachments/assets/a5f029b4-eae4-486b-b569-9403712d48e6)

Explanation: This query:
- Assigns a row number to each sale within its region, ordered by sale date
- Then filters to only show the first 2 sales from each region

Real-Life Application: A sales director could use this to identify the earliest sales in each region for a new product launch, helping analyze which regions adopted the product fastest or which sales teams were most effective in early promotion.


5. MAX Query with Window Functions

![MAX QUERY](https://github.com/user-attachments/assets/f79ecc92-91e4-4f93-9d0d-7a07c2ed48d8)

Explanation: This query shows:
- The maximum amount per category (using PARTITION BY category)
- The overall maximum amount across all sales
- While displaying all individual sales records

Real-Life Application: A regional sales manager could use this to compare each product's performance against the best-selling item in its category and against the highest sale overall. For example, seeing that a $900 oven sale is below the $1500 category maximum (fridge) helps identify top performers.

