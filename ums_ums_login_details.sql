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
-- Table structure for table `ums_login_details`
--

DROP TABLE IF EXISTS `ums_login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_login_details` (
  `user_id` int(11) NOT NULL,
  `system_session_id` varchar(50) NOT NULL,
  `native_token` varchar(100) DEFAULT NULL,
  `login_time` datetime NOT NULL,
  `access_ip` varchar(45) DEFAULT NULL,
  `access_port` varchar(5) DEFAULT NULL,
  `access_gateway` varchar(45) DEFAULT NULL,
  `actual_access_ip` varchar(45) DEFAULT NULL,
  `device_type` varchar(100) DEFAULT NULL,
  `operating_system` varchar(100) DEFAULT NULL,
  `operating_system_manufacturer` varchar(100) DEFAULT NULL,
  `browser_name` varchar(100) DEFAULT NULL,
  `browser_version` varchar(100) DEFAULT NULL,
  `browser_manufacturer` varchar(100) DEFAULT NULL,
  `browser_type` varchar(100) DEFAULT NULL,
  `browser_rendering_engine` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`system_session_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ums_login_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ums_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_login_details`
--

LOCK TABLES `ums_login_details` WRITE;
/*!40000 ALTER TABLE `ums_login_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_login_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:22
