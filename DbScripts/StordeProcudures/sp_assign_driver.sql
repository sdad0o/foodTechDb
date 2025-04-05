DELIMITER $$

CREATE PROCEDURE sp_assign_driver (
    IN p_order_id INT,
    IN p_driver_id INT
)
BEGIN
    INSERT INTO delivery_assignments (order_id, driver_id, status)
    VALUES (p_order_id, p_driver_id, 'Assigned');
END$$

DELIMITER ;
