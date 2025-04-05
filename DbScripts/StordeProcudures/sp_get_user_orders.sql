DELIMITER $$

CREATE PROCEDURE sp_get_user_orders (
    IN p_user_id INT
)
BEGIN
    SELECT o.*, a.detailed_address
    FROM orders o
    LEFT JOIN addresses a ON o.delivery_address_id = a.id
    WHERE o.client_id = p_user_id;
END$$

DELIMITER ;
