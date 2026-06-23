CREATE DATABASE sales_analysis;
USE sales_analysis;

CREATE TABLE order_items (
    order_item_id INT,
    order_id INT,
    product_id INT,
    quantity INT,
    discount_pct DECIMAL(5,2),
    item_price DECIMAL(10,2),
    order_date DATE
);

SELECT COUNT(*) FROM order_items

SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    ROUND(SUM(quantity * item_price * (1 - discount_pct)), 2) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM order_items
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year,
    order_month;

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,

    ROUND(
        SUM(quantity * item_price * (1 - discount_pct)),
        2
    ) AS total_revenue,

    COUNT(DISTINCT order_id) AS order_volume

FROM order_items
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31'

GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)

ORDER BY
    order_year,
    order_month;