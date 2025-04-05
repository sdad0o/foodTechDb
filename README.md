# Restaurant Management System

## Project Description

This is a **Restaurant Management System** designed for a single restaurant. The system allows for efficient management of:

- **Users** (including Admin, Super Admin, Client, and Driver roles)
- **Menu Items** (with categories and detailed options)
- **Orders** (including order details, discounts, and status tracking)
- **Delivery** (assignments and tracking)
- **Notifications** (for updates on orders and status)

The system supports role-based access control (RBAC), where the **Super Admin** has the highest level of access and control, including managing users and configurations. Customers can place orders, track deliveries, and view order history. Drivers receive and deliver orders based on assignments.

## Features

- **User Management**: Admin, Super Admin, Clients, and Drivers with different levels of access.
- **Item & Menu Management**: Create, manage, and categorize menu items.
- **Order Management**: Track orders, update statuses, apply discounts, and calculate total prices.
- **Delivery Tracking**: Assign delivery drivers and track their deliveries.
- **Notifications**: Alert users about order status changes and delivery updates.
- **Discounts**: Apply and manage discount codes.
- **Address Management**: Add and update customer addresses for delivery.

---

## Table Structure

The database consists of the following tables:

- **users**: Stores user information such as name, email, phone, and role.
- **roles**: Defines roles like Admin, Client, and Driver.
- **categories**: Defines the categories for the restaurant menu (e.g., Pizzas, Burgers).
- **items**: Stores details about menu items, including name, description, price, and category.
- **item_options**: Stores customizable options for items (e.g., extra cheese, size).
- **orders**: Stores customer orders with order details and statuses.
- **order_details**: Stores details about items in each order (quantity, unit price).
- **discounts**: Stores discount codes, descriptions, and applicable dates.
- **addresses**: Stores customer delivery addresses.
- **notifications**: Stores notifications sent to users about order updates.
- **delivery_assignments**: Tracks delivery drivers assigned to specific orders.

---

## Usage

### Running Queries

To view your data or perform operations, you can run the following types of queries:

- **View all users**:
  ```sql
  SELECT * FROM users;
  ```

- **View all orders**:
  ```sql
  SELECT * FROM orders;
  ```

- **Get total sales for a specific date range**:
  ```sql
  SELECT SUM(total_price + delivery_charge) FROM orders WHERE order_date BETWEEN '2025-01-01' AND '2025-01-31';
  ```

- **Track all active deliveries**:
  ```sql
  SELECT * FROM delivery_assignments WHERE status = 'Assigned';
  ```

---

## Backup & Restore

You can back up and restore the database using **MySQL Workbench** or the **mysqldump** command:

### Backup
```bash
mysqldump -u username -p restaurant_db > restaurant_db_backup.sql
```

### Restore
```bash
mysql -u username -p restaurant_db < restaurant_db_backup.sql
```

---

## Technologies Used

- **MySQL**: Database management.
- **MySQL Workbench**: Database management tool.

