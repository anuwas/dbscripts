-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: dalmia
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `quote_image_master`
--

DROP TABLE IF EXISTS `quote_image_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_image_master` (
  `q_img_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `q_cat_id` varchar(25) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL,
  `ad` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`q_img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_image_master`
--

LOCK TABLES `quote_image_master` WRITE;
/*!40000 ALTER TABLE `quote_image_master` DISABLE KEYS */;
INSERT INTO `quote_image_master` VALUES (1,'1','504.jpg','Active','2016-07-13 10:36:43','2016-10-13 05:21:35'),(2,'1','575.png','Active','2016-07-13 10:37:11','2016-10-13 05:21:35'),(3,'1','Image_668.jpg','Active','2016-07-13 10:39:37','2016-10-13 05:21:35'),(4,'2','72.jpg','Active','2016-07-13 10:40:05','2016-10-13 05:21:35'),(5,'3','51.jpg','Active','2016-07-13 10:40:33','2016-10-13 05:21:35'),(6,'3','402.jpg','Active','2016-07-13 10:40:52','2016-10-13 05:21:35'),(7,'','45-510x340.jpg','Active','2016-08-12 19:10:00','2016-10-24 10:42:30'),(8,'','330-510x340.jpg','Active','2016-07-31 11:00:00','2016-10-24 10:42:56'),(9,'','photo468-510x340.jpg','Active','2016-08-31 19:20:00','2016-10-24 10:43:25'),(10,'','photo564-510x340.png','Active','2016-10-24 10:30:00','2016-10-24 10:43:55');
/*!40000 ALTER TABLE `quote_image_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 10:59:53
