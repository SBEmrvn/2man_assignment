# 2man_assignment

3. LAG and LEAD with Comparison
![Select query LAG AND LEAD ](https://github.com/user-attachments/assets/25795934-5c05-494f-aa21-350c92c15df3)

Explanation: This query uses:

LAG() to see the previous sale amount

LEAD() to see the next sale amount

A CASE statement to compare current sale to previous

Real-Life Application: A financial analyst could use this to track sales trends day-by-day, identifying when sales are increasing or decreasing compared to the previous transaction. This helps spot unusual patterns that might indicate problems or opportunities.

5.RANK and DENSE_RANK Comparison

![RANKING](https://github.com/user-attachments/assets/75172c4c-b0ee-409a-a9ad-8c58a8ecbe81)

Explanation: This demonstrates two ranking methods:

RANK(): Leaves gaps when there are ties

DENSE_RANK(): Does not leave gaps in ranking numbers

Real-Life Application: An e-commerce platform could use this to rank products by sales within each category. For example, showing that a laptop is #1 in electronics while a fridge is #1 in appliances helps with inventory prioritization and marketing focus.

6. DENSE_RANK Filtering
![DENSE RANK](https://github.com/user-attachments/assets/f7e578a1-5244-4e9f-9fb3-2c2633d57a01)

Explanation: Similar to the previous ranking query but specifically filtering to only show top 3 products per category using DENSE_RANK().

Real-Life Application: A retail chain could use this to identify their top 3 best-selling products in each category for shelf placement decisions or to determine which items to feature in promotional materials.

7. MAX Query with Window Functions

![MAX QUERY](https://github.com/user-attachments/assets/f79ecc92-91e4-4f93-9d0d-7a07c2ed48d8)

Explanation: This query shows:
- The maximum amount per category (using PARTITION BY category)
- The overall maximum amount across all sales
- While displaying all individual sales records

Real-Life Application: A regional sales manager could use this to compare each product's performance against the best-selling item in its category and against the highest sale overall. For example, seeing that a $900 oven sale is below the $1500 category maximum (fridge) helps identify top performers.

