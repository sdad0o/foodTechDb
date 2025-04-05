CREATE VIEW view_user_addresses AS
SELECT 
    a.id AS address_id,
    CONCAT(u.first_name, ' ', u.last_name) AS user_name,
    a.title,
    a.province,
    a.region,
    a.detailed_address
FROM addresses a
JOIN users u ON a.user_id = u.id;
