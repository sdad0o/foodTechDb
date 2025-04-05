CREATE VIEW view_user_orders AS
SELECT 
    o.id AS order_id,
    u.id AS user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS client_name,
    u.email,
    o.order_status,
    o.total_price,
    o.delivery_charge,
    o.order_date
FROM orders o
JOIN users u ON o.client_id = u.id;
