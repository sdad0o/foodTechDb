CREATE VIEW view_order_details_full AS
SELECT 
    od.order_id,
    i.name_en AS item_name,
    od.quantity,
    od.unit_price,
    od.subtotal_price,
    o.total_price,
    o.order_date
FROM order_details od
JOIN items i ON od.item_id = i.id
JOIN orders o ON od.order_id = o.id;
