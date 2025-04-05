DELIMITER $$

CREATE PROCEDURE sp_update_order_status (
    IN p_order_id INT,
    IN p_new_status VARCHAR(100)
)
BEGIN
    UPDATE orders
    SET order_status = p_new_status
    WHERE id = p_order_id;
END$$

DELIMITER ;
