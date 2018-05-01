-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: ums
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
-- Table structure for table `ums_role_option_map`
--

DROP TABLE IF EXISTS `ums_role_option_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_role_option_map` (
  `role_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `ums_role_option_map_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ums_role_option_map_id`),
  KEY `FK_role_option_role` (`role_id`),
  KEY `FK_role_option_option` (`option_id`),
  CONSTRAINT `FK_role_option_option` FOREIGN KEY (`option_id`) REFERENCES `ums_option` (`option_id`),
  CONSTRAINT `FK_role_option_role` FOREIGN KEY (`role_id`) REFERENCES `ums_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_role_option_map`
--

LOCK TABLES `ums_role_option_map` WRITE;
/*!40000 ALTER TABLE `ums_role_option_map` DISABLE KEYS */;
INSERT INTO `ums_role_option_map` VALUES (3,1,1,1),(3,2,1,2),(2,1,1,3),(2,2,1,4),(2,3,1,5),(2,5,1,6),(2,7,1,7),(1,1,1,8),(1,2,1,9),(1,3,1,10),(1,4,1,11),(1,5,1,12),(1,6,1,13),(1,7,1,14),(1,9,1,15),(1,10,1,16),(1,11,1,17),(1,12,1,18),(4,1,1,19),(4,2,1,20),(4,3,1,21),(4,4,1,22),(4,6,1,23),(4,9,1,24),(4,10,1,25),(4,11,1,26),(1,13,1,27),(4,13,1,28),(4,12,1,29),(4,14,1,30);
/*!40000 ALTER TABLE `ums_role_option_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:20
