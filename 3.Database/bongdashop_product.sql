-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bongdashop
-- ------------------------------------------------------
-- Server version	5.5.60

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci,
  `product_role` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Blue Arsenal',1,90000,'images/ars2.jpg','Arsenal xanh biển',0),(2,'Red Arsenal',1,90000,'images/ars2.jpg','Arsenal đỏ',1),(3,'Black Arsenal',1,90000,'images/ars3.jpg','Arsenal đen',1),(4,'Red Arsenal',1,90000,'images/ars4.jpg','Arsenal đỏ tay dài',0),(11,'Orange FCB',2,90000,'images/FCB2.jpg','Barcelona da cam',1),(12,'Blue FCB',2,90000,'images/FCB1.jpg','Barcelona sọc',0),(13,'Pink FCB',2,90000,'images/FCB3.jpg','Barcelona hồng',2),(14,'Blue FCB',2,90000,'images/FCB4.jpg','Barcelona sọc',1),(21,'Red MU',3,90000,'images/MU1.jpg','Manchester đỏ',2),(22,'Grey MU',3,90000,'images/MU2.jpg','cvd',2),(23,'Red MU',3,90000,'images/MU3.jpg','abc',2),(24,'Grey MU',3,90000,'images/MU4.jpg','abc',2),(31,'Orange Real',4,90000,'images/Real1.jpg','ac',2),(32,'Green Real',4,90000,'images/Real3.jpg','cc',2),(33,'White Real',4,90000,'images/Real2.jpg','cc',2),(34,'Black Real',4,90000,'images/Real4.jpg','abc',0),(35,'Black Real',4,90000,'images/Real5.jpg','abc',2),(36,'White Real',4,90000,'images/Real6.jpg','abc',2),(37,'Black Real',4,90000,'images/Real7.jpg','abc',2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-07 17:01:15
