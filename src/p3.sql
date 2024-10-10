SET LINESIZE 170

COLUMN product_id HEADING "ID" 
COLUMN product_name HEADING "Name"
COLUMN total_quantity_sold HEADING "Total Quantity Sold"
COLUMN average_quantity_per_order HEADING "Quantity Sold(per order)"
COLUMN total_sales_amount HEADING "Total Sales Amount" FORMAT 99990.99
COLUMN average_sales_amount_per_order HEADING "Average Sales Amount(per order)" FORMAT 9990.99

SELECT
    i.product_id,
    i.product_name,
    SUM(s.quantity) AS total_quantity_sold,
    ROUND(AVG(s.quantity), 0) AS average_quantity_per_order,
    SUM(s.quantity * i.price) AS total_sales_amount,
    ROUND(AVG(s.quantity * i.price), 2) AS average_sales_amount_per_order
FROM
    sales s
JOIN
    inventories i ON s.product_id = i.product_id
GROUP BY
    i.product_id, i.product_name
ORDER BY
    i.product_id;

CLEAR COLUMN
