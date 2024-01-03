-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ecomms
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,3,2),(2,2,7,0),(3,3,5,3),(4,4,2,1),(5,5,8,2),(6,6,1,1),(7,7,6,3),(8,8,9,2),(9,9,4,1),(10,10,10,2),(11,11,10,5),(12,1,150,13),(13,1,504,13),(14,1,542,13),(15,1,530,13),(16,1,876,13),(17,1,183,13),(18,1,367,13),(19,1,237,13),(20,1,552,13),(21,1,711,13),(22,1,867,13),(23,2000,161,13),(24,2000,449,13),(25,999,193,13),(26,1,999,13),(27,1,999,13),(28,1,999,13),(29,1,226,13),(30,1,45,13),(31,1,213,13),(32,1,334,13),(33,999,1,1),(34,999,1,1),(35,999,1,1),(36,999,1,1),(37,999,1,1),(38,999,1,1),(39,1,116,13),(40,1,265,13);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `name` char(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John Doe','john.doe@example.com','password123'),(2,'Jane Smith','jane.smith@example.com','securepass'),(3,'Bob Johnson','bob.johnson@example.com','null'),(4,'Alice Brown','alice.brown@example.com','mysecretpassword'),(5,'Charlie Davis','charlie.davis@example.com','strongpass'),(6,'Eva White','eva.white@example.com','myp@ssword'),(7,'David Miller','david.miller@example.com','pass1234'),(8,'Grace Wilson','grace.wilson@example.com','password!'),(9,'Samuel Turner','samuel.turner@example.com','securepwd'),(10,'Olivia Harris','olivia.harris@example.com','oliviaspass'),(11,'Madhu Kalla','kallaMadhu@gmail.com','Madhu');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,3,2),(2,2,7,1),(3,3,5,3),(4,4,2,1),(5,5,8,2),(6,6,1,1),(7,7,6,3),(8,8,9,2),(9,9,4,1),(10,10,10,2);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `shipping_address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2023-01-01',59,'Indore'),(2,2,'2023-01-02',79,'Pune'),(3,3,'2023-01-03',119,'Mumbai'),(4,4,'2023-01-04',49,'Hyderabad'),(5,5,'2023-01-05',179,'Chennai'),(6,6,'2023-01-06',69,'Bhopal'),(7,7,'2023-01-07',239,'Jaipur'),(8,8,'2023-01-08',179,'Lucknow'),(9,9,'2023-01-09',49,'Delhi'),(10,10,'2023-01-10',219,'Jammu'),(11,2,'2023-12-31',20,'Madhya Pradesh'),(12,2,'2023-12-31',20,'Madhya Pradesh'),(13,6,'2023-12-31',20,'Madhya Pradesh'),(14,1,'2024-01-03',0,'abc'),(15,1,'2024-01-03',0,'abc'),(16,1,'2024-01-03',0,'abc'),(17,1,'2024-01-03',0,'abc'),(18,1,'2024-01-03',0,'abc'),(19,1,'2024-01-03',0,'abc'),(20,1,'2024-01-03',0,'abc');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `stockQuantity` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=877 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Product A',19,'Description for Product A',50),(2,'Product B',29,'Description for Product B',75),(3,'Product C',39,'Description for Product C',30),(4,'Product D',49,'Description for Product D',20),(5,'Product E',59,'Description for Product E',100),(6,'Product F',69,'Description for Product F',45),(7,'Product G',79,'Description for Product G',60),(8,'Product H',89,'Description for Product H',25),(9,'Product I',99,'Description for Product I',15),(10,'Product J',109,'Description for Product J',80),(51,NULL,0,NULL,0),(57,NULL,0,NULL,0),(116,'book',999,'Text book',10),(161,'Mouse',1299,'A Mouse',9),(193,'book',12,'A book',10),(194,'Laptop',50000,'Gaming PC',99),(213,'book',999,'Text book',10),(237,'Laptop',50000,'Gaming PC',99),(265,'book',999,'Text book',10),(302,'book',12,'A book',10),(334,'book',999,'Text book',10),(449,'Mouse',1299,'A Mouse',9),(456,NULL,0,NULL,0),(473,'Laptop',50000,'Gaming PC',99),(488,'Laptop',50000,'Gaming PC',99),(552,'book',12,'A book',10),(562,'book',12,'A book',10),(621,NULL,0,NULL,0),(705,NULL,0,NULL,0),(711,'book',12,'A book',10),(867,'book',12,'A book',10);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-03 18:40:45
