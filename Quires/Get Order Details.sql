SELECT od.order_id, i.name_en, od.quantity, od.unit_price, od.subtotal_price
FROM order_details od
JOIN items i ON od.item_id = i.id
WHERE od.order_id = 1;
