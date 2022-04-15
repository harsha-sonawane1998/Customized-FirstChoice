-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: finalproject;
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: finalproject
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `a_id` int NOT NULL,
  `a_email` varchar(255) DEFAULT NULL,
  `a_password` varchar(255) DEFAULT NULL,
  `a_phone` varchar(255) DEFAULT NULL,
  `a_wallet` float NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin@gmail.com','admin','1223456789',2280.5);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `c_id` int NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'Cotton Material','RAW'),(3,'Velvet Method','RAW'),(4,'Silk Material','RAW'),(5,'Rayon Material','RAW'),(6,'Satin Material','RAW'),(7,'Pillow Covers','STITCHED'),(8,'Doormats','STITCHED'),(9,'Curtains','STITCHED'),(10,'Bedsheets','STITCHED'),(11,'Table Clothes','STITCHED'),(13,'',''),(14,'mates','STITCHED'),(15,'','');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (20);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_order_product_mapping`
--

DROP TABLE IF EXISTS `my_order_product_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_order_product_mapping` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `FKaff6p3tyfx6qqh41dvyw5gs53` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_order_product_mapping`
--

LOCK TABLES `my_order_product_mapping` WRITE;
/*!40000 ALTER TABLE `my_order_product_mapping` DISABLE KEYS */;
INSERT INTO `my_order_product_mapping` VALUES (1,2,4),(1,3,6),(2,6,5),(3,2,1);
/*!40000 ALTER TABLE `my_order_product_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myorder`
--

DROP TABLE IF EXISTS `myorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myorder` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `ostatus` varchar(255) DEFAULT NULL,
  `totalprice` float NOT NULL,
  `u_id` int DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `FKs90vuwjgea2dv4b4r4i43nlt8` (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myorder`
--

LOCK TABLES `myorder` WRITE;
/*!40000 ALTER TABLE `myorder` DISABLE KEYS */;
INSERT INTO `myorder` VALUES (1,'Pune','1223456788','Placed',1980,18),(2,'Pune','1223456788','Placed',660,18),(3,'Pune','1223456788','Placed',165,18);
/*!40000 ALTER TABLE `myorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `pbrand` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pprice` float NOT NULL,
  `pqty` int NOT NULL,
  `prating` int NOT NULL,
  `psize` varchar(255) DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  `v_id` int DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `FKp999tsu8jkot8t7jqtsin7d7k` (`c_id`),
  KEY `FK2yn9o54578wd50axe6s6yespr` (`v_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'http://localhost:8080/files/Cottonmateria.jpg','Taavi','Raw Cotton Material','Raw Material',110,300,3,'',2,1),(2,'http://localhost:8080/files/velvetmateria.jpg','Taavi','Velvet Material','Raw Material',165,194,3,'',3,1),(3,'http://localhost:8080/files/silkmaterial.jpg','Taavi','Raw Silk Material','Raw Material',220,142,3,'',4,1),(4,'http://localhost:8080/files/raylonmaterial.jpg','Taavi','Raw Rayon Material','Raw Material',170.5,129,3,'',5,1),(5,'http://localhost:8080/files/Satinmaterial.jpg','Taavi','Raw Satin Material','Raw Material',275,120,3,'',6,1),(6,'http://localhost:8080/files/pillow.jpg','Taavi','Cotton Pillow Covers','Pillow Cover',132,0,3,'20*26\'\'',7,1),(11,'http://localhost:8080/files/Doormat.jpg','Taavi','Brown Doormate','Doormates',385,7,3,'24*36\"',8,1),(8,'http://localhost:8080/files/curtain.jpg','Taavi','Pink Linen Door Curtains','Linen Curtains',990,8,3,'6.5*7.5 feet',9,1),(9,'http://localhost:8080/files/Bedsheet.jpg','Taavi','Queen Size Bedsheet','Cotton Blue Bedsheet',605,6,3,'90*108\"',10,1),(10,'http://localhost:8080/files/tablecoth.jpg','Taavi','Floral Table Cloth','Table Cloth',440,6,3,'70*90\"',11,1),(12,'http://localhost:8080/files/download.jpg','xyz','cakes','Cakes',330,3,3,'',2,1),(13,'http://localhost:8080/files/download.png','Taavi','xyz','abc',110,5,3,'20*30\"',7,19);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `u_id` int NOT NULL,
  `u_address` varchar(255) DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  `u_fname` varchar(255) DEFAULT NULL,
  `u_lname` varchar(255) DEFAULT NULL,
  `u_password` varchar(255) DEFAULT NULL,
  `u_phone` varchar(255) DEFAULT NULL,
  `wallet` float NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (12,'Nagpur','pragati@gmail.com','Pragati','Wanik','12345','1223456787',2000),(16,'','','','','12345','',2000),(17,'','','','','12345','',2000),(18,'Pune','mohnish@gmail.com','Mohnish','Pawar','12345','1223456788',395);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `v_id` int NOT NULL,
  `v_address` varchar(255) DEFAULT NULL,
  `v_email` varchar(255) DEFAULT NULL,
  `v_name` varchar(255) DEFAULT NULL,
  `v_password` varchar(255) DEFAULT NULL,
  `v_phone` bigint NOT NULL,
  `v_status` bit(1) DEFAULT NULL,
  `v_wallet` float NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Jalgaon','harsha@gmail.com','Harsha','12345',1223456789,_binary '',2524.5),(19,'Pune','vendor@gmail.com','Vendor','12345',1223456789,_binary '',0);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-14 22:39:31
