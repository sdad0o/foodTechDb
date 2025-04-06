SELECT i.name_en, SUM(od.quantity) AS total_quantity
FROM order_details od
JOIN items i ON od.item_id = i.id
GROUP BY i.name_en
ORDER BY total_quantity DESC
LIMIT 5;
