SELECT o.id, o.total_price, o.discount_id, d.title_en, o.order_date
FROM orders o
JOIN discounts d ON o.discount_id = d.id
WHERE o.discount_id IS NOT NULL;
