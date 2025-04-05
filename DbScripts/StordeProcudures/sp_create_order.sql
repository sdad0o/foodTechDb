DELIMITER $$

CREATE PROCEDURE sp_create_order (
    IN p_client_id INT,
    IN p_total_price DECIMAL(10,2),
    IN p_delivery_charge DECIMAL(10,2),
    IN p_discount_id INT,
    IN p_delivery_address_id INT
)
BEGIN
    INSERT INTO orders (client_id, total_price, delivery_charge, discount_id, delivery_address_id)
    VALUES (p_client_id, p_total_price, p_delivery_charge, p_discount_id, p_delivery_address_id);
END$$

DELIMITER ;
