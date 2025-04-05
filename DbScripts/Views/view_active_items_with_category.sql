CREATE VIEW view_active_items_with_category AS
SELECT 
    i.id,
    i.name_en,
    i.price,
    c.name_en AS category_name,
    i.created_date
FROM items i
JOIN categories c ON i.category_id = c.id
WHERE i.is_active = TRUE;
