CREATE VIEW view_delivery_assignments_full AS
SELECT 
    da.id AS assignment_id,
    o.id AS order_id,
    CONCAT(u.first_name, ' ', u.last_name) AS driver_name,
    da.assigned_date,
    da.status
FROM delivery_assignments da
JOIN users u ON da.driver_id = u.id
JOIN orders o ON da.order_id = o.id;
