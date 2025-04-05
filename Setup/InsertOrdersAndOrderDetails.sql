INSERT INTO orders (client_id, order_status, total_price, delivery_charge, discount_id, delivery_address_id)
VALUES
(2, 'Pending', 18.99, 2.00, 1, 1),
(2, 'Delivered', 6.50, 2.00, NULL, 2);

INSERT INTO order_details (order_id, item_id, quantity, unit_price, subtotal_price)
VALUES
(1, 1, 1, 8.99, 8.99),
(1, 4, 2, 1.50, 3.00),
(2, 3, 1, 6.50, 6.50);
