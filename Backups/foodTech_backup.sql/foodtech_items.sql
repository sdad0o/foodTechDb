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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `description_ar` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,1,'Margherita Pizza','بيتزا مارجريتا','Classic pizza with tomato and cheese','بيتزا تقليدية بالطماطم والجبنة',8.99,'margherita.jpg',1,'2025-04-05 17:04:56'),(2,1,'Pepperoni Pizza','بيتزا ببروني','Spicy pepperoni with mozzarella','ببروني حار مع جبنة موزاريلا',10.99,'pepperoni.jpg',1,'2025-04-05 17:04:56'),(3,1,'BBQ Chicken Pizza','بيتزا دجاج باربيكيو','Grilled chicken with BBQ sauce','دجاج مشوي مع صلصة الباربيكيو',11.50,'bbq_chicken.jpg',1,'2025-04-05 17:04:56'),(4,1,'Veggie Pizza','بيتزا خضار','Loaded with fresh vegetables','مليئة بالخضار الطازجة',9.50,'veggie.jpg',1,'2025-04-05 17:04:56'),(5,1,'Four Cheese Pizza','بيتزا أربعة أنواع جبنة','Mozzarella, cheddar, feta, and blue cheese','جبنة موزاريلا، شيدر، فيتا، وبلو تشيز',11.99,'four_cheese.jpg',1,'2025-04-05 17:04:56'),(6,1,'Hawaiian Pizza','بيتزا هاواي','Ham and pineapple combo','لحم وخوخ أناناس',10.75,'hawaiian.jpg',1,'2025-04-05 17:04:56'),(7,1,'Meat Lovers Pizza','بيتزا اللحوم','Beef, sausage, and pepperoni','لحم بقري، سجق، وببروني',12.50,'meat_lovers.jpg',1,'2025-04-05 17:04:56'),(8,1,'Buffalo Chicken Pizza','بيتزا دجاج بوفالو','Spicy buffalo chicken topping','دجاج حار بصوص البوفالو',11.25,'buffalo_chicken.jpg',1,'2025-04-05 17:04:56'),(9,1,'Spinach Alfredo Pizza','بيتزا سبانخ ألفريدو','Creamy Alfredo sauce with spinach','صلصة ألفريدو وكريمة مع السبانخ',10.50,'spinach_alfredo.jpg',1,'2025-04-05 17:04:56'),(10,1,'Cheesy Garlic Pizza','بيتزا الجبنة والثوم','Cheesy garlic pizza bread style','بيتزا خبز بالجبنة والثوم',8.25,'cheesy_garlic.jpg',1,'2025-04-05 17:04:56'),(11,2,'Classic Cheeseburger','تشيز برجر كلاسيكي','Beef patty with cheddar and tomato','برجر بلحم البقري والجبنة والطماطم',6.99,'classic_cheeseburger.jpg',1,'2025-04-05 17:04:56'),(12,2,'Double Cheeseburger','تشيز برجر مزدوج','Two beef patties with cheese','قطعتين لحم مع الجبن',8.50,'double_cheeseburger.jpg',1,'2025-04-05 17:04:56'),(13,2,'Chicken Burger','برجر دجاج','Crispy fried chicken burger','دجاج مقلي مقرمش',6.75,'chicken_burger.jpg',1,'2025-04-05 17:04:56'),(14,2,'Spicy Chicken Burger','برجر دجاج حار','Fried chicken with spicy mayo','دجاج حار بصوص مايونيز حار',7.25,'spicy_chicken.jpg',1,'2025-04-05 17:04:56'),(15,2,'Veggie Burger','برجر نباتي','Plant-based patty with fresh toppings','برجر نباتي بالخضار',6.50,'veggie_burger.jpg',1,'2025-04-05 17:04:56'),(16,2,'Mushroom Swiss Burger','برجر مشروم وجبنة سويس','Beef, mushrooms, and swiss cheese','لحم، فطر، وجبنة سويسرية',7.99,'mushroom_swiss.jpg',1,'2025-04-05 17:04:56'),(17,2,'BBQ Bacon Burger','برجر بيكون وباربيكيو','Smoked bacon with BBQ sauce','بيكون مدخن مع صوص باربيكيو',8.25,'bbq_bacon.jpg',1,'2025-04-05 17:04:56'),(18,2,'Egg Burger','برجر بالبيض','Beef patty topped with fried egg','لحم مع بيضة مقلية',7.00,'egg_burger.jpg',1,'2025-04-05 17:04:56'),(19,2,'Fish Burger','برجر سمك','Crispy fish fillet with tartar sauce','سمك مقلي مع صوص التارتار',7.50,'fish_burger.jpg',1,'2025-04-05 17:04:56'),(20,2,'Mini Sliders (3 pcs)','ميني سلايدرز (٣ قطع)','Mini beef burgers trio','برجر صغير بثلاث قطع',8.00,'sliders.jpg',1,'2025-04-05 17:04:56'),(21,3,'Coca-Cola','كوكا كولا','Chilled Coke 330ml','كوكا كولا باردة 330 مل',1.50,'coke.jpg',1,'2025-04-05 17:04:56'),(22,3,'Pepsi','بيبسي','Chilled Pepsi 330ml','بيبسي باردة 330 مل',1.50,'pepsi.jpg',1,'2025-04-05 17:04:56'),(23,3,'Sprite','سبرايت','Lemon-lime soda','مشروب غازي بالليمون',1.50,'sprite.jpg',1,'2025-04-05 17:04:56'),(24,3,'Fanta Orange','فانتا برتقال','Orange flavored soda','مشروب غازي بنكهة البرتقال',1.50,'fanta.jpg',1,'2025-04-05 17:04:56'),(25,3,'Bottled Water','مياه معدنية','500ml bottled water','مياه معدنية 500 مل',1.00,'water.jpg',1,'2025-04-05 17:04:56'),(26,3,'Iced Tea Lemon','شاي مثلج بالليمون','Refreshing lemon iced tea','شاي مثلج منعش',2.00,'iced_tea.jpg',1,'2025-04-05 17:04:56'),(27,3,'Mango Juice','عصير مانجو','Fresh mango juice','عصير مانجو طازج',2.50,'mango.jpg',1,'2025-04-05 17:04:56'),(28,3,'Strawberry Smoothie','سموذي فراولة','Cold strawberry blended drink','مشروب فراولة بارد',3.00,'strawberry.jpg',1,'2025-04-05 17:04:56'),(29,3,'Chocolate Milkshake','ميلك شيك شوكولاتة','Thick chocolate milkshake','ميلك شيك بالشوكولاتة',3.50,'chocolate_milkshake.jpg',1,'2025-04-05 17:04:56'),(30,3,'Energy Drink','مشروب طاقة','Red Bull or similar energy drink','مشروب طاقة',3.00,'energy.jpg',1,'2025-04-05 17:04:56');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-05 21:02:58
