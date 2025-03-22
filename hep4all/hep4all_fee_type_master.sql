-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: hep4all
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
-- Table structure for table `fee_type_master`
--

DROP TABLE IF EXISTS `fee_type_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_type_master` (
  `fee_type_master_id` int(10) NOT NULL AUTO_INCREMENT,
  `fee_type_name` varchar(155) NOT NULL,
  `boarder` enum('yes','no') NOT NULL DEFAULT 'yes',
  `fee_type_desc` varchar(255) DEFAULT NULL,
  `all` int(1) NOT NULL DEFAULT '0' COMMENT '0->all,1->JAN,2->FEB ..12->DEC',
  `jan` int(1) NOT NULL DEFAULT '0',
  `feb` int(1) NOT NULL DEFAULT '0',
  `mar` int(1) NOT NULL DEFAULT '0',
  `apr` int(1) NOT NULL DEFAULT '0',
  `may` int(1) NOT NULL DEFAULT '0',
  `jun` int(1) NOT NULL DEFAULT '0',
  `jul` int(1) NOT NULL DEFAULT '0',
  `aug` int(1) NOT NULL DEFAULT '0',
  `sep` int(1) NOT NULL DEFAULT '0',
  `oct` int(1) NOT NULL DEFAULT '0',
  `nov` int(1) NOT NULL DEFAULT '0',
  `dec` int(1) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `fee_type_master` (`fee_type_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_type_master`
--

LOCK TABLES `fee_type_master` WRITE;
/*!40000 ALTER TABLE `fee_type_master` DISABLE KEYS */;
INSERT INTO `fee_type_master` VALUES (1,'Tuition Fee','yes',NULL,1,1,0,0,0,1,0,0,0,0,1,0,0,'2015-04-18 22:21:27'),(2,'Tuition Fee','no',NULL,1,1,0,0,1,0,0,1,0,0,1,0,0,'2015-04-18 22:21:30'),(3,'Session Fee','yes',NULL,1,0,0,0,1,0,0,0,0,0,0,0,0,'2015-04-18 22:21:32'),(4,'Admission Fee','no',NULL,1,1,1,1,1,1,1,1,1,1,1,1,1,'2015-04-18 22:21:34'),(5,'Admission Fee','yes',NULL,1,1,1,1,1,1,1,1,1,1,1,1,1,'2015-04-18 22:21:35'),(6,'Admission Fee','no',NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,'2015-04-18 22:21:37'),(7,'Lab Fee','yes',NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,'2015-04-18 22:21:40'),(8,'Lab Fee','no',NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,'2015-04-18 22:21:42'),(9,'Computer Fee','yes',NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,'2015-04-18 22:21:44'),(10,'Computer Fee','no',NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,'2015-04-18 22:21:47');
/*!40000 ALTER TABLE `fee_type_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:25
