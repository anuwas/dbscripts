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
-- Table structure for table `quote_category_master`
--

DROP TABLE IF EXISTS `quote_category_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_category_master` (
  `q_cat_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `q_cat_name` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL,
  `add_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`q_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_category_master`
--

LOCK TABLES `quote_category_master` WRITE;
/*!40000 ALTER TABLE `quote_category_master` DISABLE KEYS */;
INSERT INTO `quote_category_master` VALUES (1,'Motivational','Active','2016-07-13 09:56:49','2016-10-13 05:20:36'),(2,'Wisdom','Active','2016-07-13 09:57:32','2016-10-13 05:20:36'),(3,'Love','Active','2016-07-13 09:58:36','2016-10-13 05:20:36'),(4,'Self Development','Active','2016-07-13 09:58:21','2016-10-13 05:20:36'),(5,'Leadership','Active','2016-07-13 09:58:47','2016-10-13 05:20:36'),(6,'Time','Active','2016-07-13 09:58:59','2016-10-13 05:20:36'),(7,'Life','Active','2016-07-13 09:59:11','2016-10-13 05:20:36'),(8,'Me','Active','2016-07-13 09:59:21','2016-10-13 05:20:36'),(9,'Contribution','Active','2016-07-13 09:59:58','2016-10-13 05:20:36');
/*!40000 ALTER TABLE `quote_category_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 10:59:55
