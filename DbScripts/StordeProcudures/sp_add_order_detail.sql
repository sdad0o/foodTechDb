DELIMITER $$

CREATE PROCEDURE sp_add_order_detail (
    IN p_order_id INT,
    IN p_item_id INT,
    IN p_quantity INT,
    IN p_unit_price DECIMAL(10,2)
)
BEGIN
    DECLARE v_subtotal DECIMAL(10,2);
    SET v_subtotal = p_quantity * p_unit_price;

    INSERT INTO order_details (order_id, item_id, quantity, unit_price, subtotal_price)
    VALUES (p_order_id, p_item_id, p_quantity, p_unit_price, v_subtotal);
END$$

DELIMITER ;
