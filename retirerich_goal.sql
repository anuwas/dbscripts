-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: retirerich
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
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `pro_cat_id` bigint(20) unsigned NOT NULL,
  `goal_type` varchar(255) DEFAULT NULL,
  `investment_amount` varchar(255) DEFAULT NULL,
  `goal_amount` varchar(255) DEFAULT NULL,
  `goal_period` varchar(255) DEFAULT NULL,
  `sip_amount` varchar(255) DEFAULT NULL,
  `lumsum_amount` varchar(255) DEFAULT NULL,
  `goal_start_date` datetime DEFAULT NULL,
  `goal_end_date` datetime DEFAULT NULL,
  `sip_date` datetime DEFAULT NULL,
  `investment_start_date` datetime DEFAULT NULL,
  `investment_end_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `goal_status` varchar(25) NOT NULL DEFAULT 'Defined' COMMENT '"Defined","Planned","Invested"',
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `pro_cat_id` (`pro_cat_id`),
  CONSTRAINT `goal_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_master` (`id`),
  CONSTRAINT `goal_ibfk_2` FOREIGN KEY (`pro_cat_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` VALUES (1,2,1,'Monthly',NULL,'120000','10 Years','1000','','2018-02-27 00:00:00','2028-02-27 00:00:00','2018-03-22 00:00:00','2018-03-22 00:00:00','2028-03-22 00:00:00','2018-02-27 00:00:00','2018-02-28 17:31:49',1,'Defined',1),(2,2,1,'monthly','1035000','26178788','34.5','2500','','2018-02-27 00:00:00','0000-00-00 00:00:00',NULL,'2018-02-27 00:00:00','0000-00-00 00:00:00','2018-02-27 00:00:00','2018-02-28 17:31:56',1,'Defined',1),(3,1,1,'Monthly','3600000','1836180694','60','5000','','2018-02-28 00:00:00','0000-00-00 00:00:00',NULL,'2018-02-28 00:00:00','0000-00-00 00:00:00','2018-02-28 00:00:00',NULL,1,'Defined',1);
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:13
