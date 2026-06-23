Monthly Revenue and Order Volume Analysis Using MySQL

Project Overview
This project analyzes monthly revenue and order volume using sales transaction data stored in a MySQL database. The objective is to identify revenue trends and order activity over time by grouping sales data by year and month.

Objectives
Calculate monthly revenue from sales transactions.
Determine monthly order volume.
Group results by year and month.
Sort results chronologically.
Filter results for specific time periods when required.

Data Import
The CSV file was imported into MySQL Workbench after ensuring that the date format was compatible with MySQL's DATE data type (YYYY-MM-DD).

Revenue Calculation
Revenue was calculated using the formula:
Revenue = Quantity × Item Price × (1 − Discount Percentage)

Monthly Aggregation
The EXTRACT() function was used to obtain the year and month from the order date. Data was then grouped using GROUP BY to calculate monthly totals.

Order Volume Calculation
Order volume was determined using:
COUNT(DISTINCT order_id)
This ensures that each order is counted only once.

Conclusion
This project successfully analyzed monthly revenue and order volume using MySQL. SQL aggregation functions such as SUM(), COUNT(), EXTRACT(), GROUP BY, and ORDER BY were used to summarize sales performance over time. The analysis provides valuable insights into sales trends and customer ordering patterns and can be extended to support more advanced business intelligence reporting.
