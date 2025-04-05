SELECT i.name_en, SUM(od.quantity) AS total_quantity, SUM(od.subtotal_price) AS total_sales
FROM order_details od
JOIN items i ON od.item_id = i.id
GROUP BY i.name_en;
