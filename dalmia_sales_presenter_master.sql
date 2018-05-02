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
-- Table structure for table `sales_presenter_master`
--

DROP TABLE IF EXISTS `sales_presenter_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_presenter_master` (
  `sp_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sp_title` varchar(255) NOT NULL,
  `sp_image` varchar(255) NOT NULL,
  `sp_content` longtext NOT NULL,
  `sp_status` varchar(255) NOT NULL,
  `sp_add_on` datetime NOT NULL,
  `sp_mod_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_presenter_master`
--

LOCK TABLES `sales_presenter_master` WRITE;
/*!40000 ALTER TABLE `sales_presenter_master` DISABLE KEYS */;
INSERT INTO `sales_presenter_master` VALUES (1,'SIP Sales Preseneter','Masterstroke_Sales_Presenter_2.jpg','<p>This is test dummy Content for SIP Sales Presenter for testing.</p>\r\n','Active','2017-01-09 00:00:00','2017-01-10 12:52:00'),(2,'STP Sales Pressenter','Masterstroke_Sales_Presenter_2.jpg','<p>This is test dummy Content for SIP Sales Presenter for testing.</p>\r\n','Active','2017-01-08 11:30:00','2017-01-10 12:52:04'),(4,'SWP Sales Presenter','Masterstroke_Sales_Presenter_2.jpg','<p>This is test dummy Content for SWP Sales Presenterfor testing.</p>\n','Active','2017-01-09 00:00:00','2017-01-11 06:09:21'),(5,'Mutual Fund Beginners Module','Masterstroke_Sales_Presenter_2.jpg','<p>This is test dummy Content for Mutual Fund Beginners Module for testing.</p>\n','Active','2017-01-08 11:30:00','2017-01-11 06:09:42');
/*!40000 ALTER TABLE `sales_presenter_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 10:59:56
