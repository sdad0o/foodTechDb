-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: foodtech
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `view_user_addresses`
--

DROP TABLE IF EXISTS `view_user_addresses`;
/*!50001 DROP VIEW IF EXISTS `view_user_addresses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_user_addresses` AS SELECT 
 1 AS `address_id`,
 1 AS `user_name`,
 1 AS `title`,
 1 AS `province`,
 1 AS `region`,
 1 AS `detailed_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_user_orders`
--

DROP TABLE IF EXISTS `view_user_orders`;
/*!50001 DROP VIEW IF EXISTS `view_user_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_user_orders` AS SELECT 
 1 AS `order_id`,
 1 AS `user_id`,
 1 AS `client_name`,
 1 AS `email`,
 1 AS `order_status`,
 1 AS `total_price`,
 1 AS `delivery_charge`,
 1 AS `order_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_delivery_assignments_full`
--

DROP TABLE IF EXISTS `view_delivery_assignments_full`;
/*!50001 DROP VIEW IF EXISTS `view_delivery_assignments_full`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_delivery_assignments_full` AS SELECT 
 1 AS `assignment_id`,
 1 AS `order_id`,
 1 AS `driver_name`,
 1 AS `assigned_date`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_active_items_with_category`
--

DROP TABLE IF EXISTS `view_active_items_with_category`;
/*!50001 DROP VIEW IF EXISTS `view_active_items_with_category`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_active_items_with_category` AS SELECT 
 1 AS `id`,
 1 AS `name_en`,
 1 AS `price`,
 1 AS `category_name`,
 1 AS `created_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_order_details_full`
--

DROP TABLE IF EXISTS `view_order_details_full`;
/*!50001 DROP VIEW IF EXISTS `view_order_details_full`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_order_details_full` AS SELECT 
 1 AS `order_id`,
 1 AS `item_name`,
 1 AS `quantity`,
 1 AS `unit_price`,
 1 AS `subtotal_price`,
 1 AS `total_price`,
 1 AS `order_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_user_addresses`
--

/*!50001 DROP VIEW IF EXISTS `view_user_addresses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_user_addresses` AS select `a`.`id` AS `address_id`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `user_name`,`a`.`title` AS `title`,`a`.`province` AS `province`,`a`.`region` AS `region`,`a`.`detailed_address` AS `detailed_address` from (`addresses` `a` join `users` `u` on((`a`.`user_id` = `u`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_user_orders`
--

/*!50001 DROP VIEW IF EXISTS `view_user_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_user_orders` AS select `o`.`id` AS `order_id`,`u`.`id` AS `user_id`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `client_name`,`u`.`email` AS `email`,`o`.`order_status` AS `order_status`,`o`.`total_price` AS `total_price`,`o`.`delivery_charge` AS `delivery_charge`,`o`.`order_date` AS `order_date` from (`orders` `o` join `users` `u` on((`o`.`client_id` = `u`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_delivery_assignments_full`
--

/*!50001 DROP VIEW IF EXISTS `view_delivery_assignments_full`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_delivery_assignments_full` AS select `da`.`id` AS `assignment_id`,`o`.`id` AS `order_id`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `driver_name`,`da`.`assigned_date` AS `assigned_date`,`da`.`status` AS `status` from ((`delivery_assignments` `da` join `users` `u` on((`da`.`driver_id` = `u`.`id`))) join `orders` `o` on((`da`.`order_id` = `o`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_active_items_with_category`
--

/*!50001 DROP VIEW IF EXISTS `view_active_items_with_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_active_items_with_category` AS select `i`.`id` AS `id`,`i`.`name_en` AS `name_en`,`i`.`price` AS `price`,`c`.`name_en` AS `category_name`,`i`.`created_date` AS `created_date` from (`items` `i` join `categories` `c` on((`i`.`category_id` = `c`.`id`))) where (`i`.`is_active` = true) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_order_details_full`
--

/*!50001 DROP VIEW IF EXISTS `view_order_details_full`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_order_details_full` AS select `od`.`order_id` AS `order_id`,`i`.`name_en` AS `item_name`,`od`.`quantity` AS `quantity`,`od`.`unit_price` AS `unit_price`,`od`.`subtotal_price` AS `subtotal_price`,`o`.`total_price` AS `total_price`,`o`.`order_date` AS `order_date` from ((`order_details` `od` join `items` `i` on((`od`.`item_id` = `i`.`id`))) join `orders` `o` on((`od`.`order_id` = `o`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-05 21:03:00
