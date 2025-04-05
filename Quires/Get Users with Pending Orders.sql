SELECT DISTINCT u.first_name, u.last_name, u.email
FROM users u
JOIN orders o ON u.id = o.client_id
WHERE o.order_status = 'Pending';
