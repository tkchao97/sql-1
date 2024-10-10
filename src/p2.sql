SET PAGESIZE 100
SET LINESIZE 100

COLUMN customer_name HEADING "Customer Name"
COLUMN order_date HEADING "Order Date"
COLUMN total_amount HEADING "Total Amount" FORMAT 9,990.99
BREAK ON customer_name SKIP 2
COMPUTE AVG LABEL 'Average Total Amount' OF total_amount ON customer_name

SELECT customer_name, o.order_date, o.total_amount
FROM customers c
JOIN orders o ON (c.customer_id = o.customer_id)
WHERE c.city = 'New York'
ORDER BY c.customer_name, o.order_date;

CLEAR BREAK
CLEAR COLUMN
CLEAR COMPUTE
