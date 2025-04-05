SELECT SUM(o.total_price + o.delivery_charge) AS total_sales
FROM orders o
WHERE o.order_date BETWEEN '2025-01-01' AND '2025-04-30';
