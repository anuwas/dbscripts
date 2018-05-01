-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: onengage
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
-- Table structure for table `subscription_package_detail`
--

DROP TABLE IF EXISTS `subscription_package_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_package_detail` (
  `subscription_package_detail_id` int(10) NOT NULL AUTO_INCREMENT,
  `subscription_package_id` int(10) NOT NULL,
  `subscription_component_id` int(10) NOT NULL,
  `quantity` int(20) NOT NULL DEFAULT '0',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `validto` date DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` varchar(45) NOT NULL DEFAULT '1',
  PRIMARY KEY (`subscription_package_detail_id`),
  KEY `fk_subscription_package_detail_1_idx` (`subscription_component_id`),
  KEY `fk_subscription_package_detail_2_idx` (`subscription_package_id`),
  CONSTRAINT `fk_subscription_package_detail_1` FOREIGN KEY (`subscription_component_id`) REFERENCES `subscription_component` (`subscription_component_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_subscription_package_detail_2` FOREIGN KEY (`subscription_package_id`) REFERENCES `subscription_package` (`subscription_package_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_package_detail`
--

LOCK TABLES `subscription_package_detail` WRITE;
/*!40000 ALTER TABLE `subscription_package_detail` DISABLE KEYS */;
INSERT INTO `subscription_package_detail` VALUES (1,1,1,100,100.00,'2017-10-10','2017-05-06 20:09:11','1'),(2,1,2,100,100.00,'2017-10-10','2017-05-06 20:09:43','1'),(3,1,3,100,100.00,'2017-10-10','2017-05-06 20:09:59','1'),(4,1,4,100,100.00,'2017-10-10','2017-05-06 20:10:21','1'),(5,2,1,200,200.00,'2017-10-10','2017-05-06 20:10:56','1'),(6,2,2,200,200.00,'2017-10-10','2017-05-06 20:11:13','1'),(7,2,3,200,200.00,'2017-10-10','2017-05-06 20:11:28','1'),(8,2,4,200,200.00,'2017-10-10','2017-05-06 20:11:40','1'),(9,3,1,100,100.00,'2017-10-10','2017-05-14 11:52:38','1'),(10,3,2,100,100.00,'2017-10-10','2017-05-14 11:53:04','1'),(11,3,3,100,100.00,'2017-10-10','2017-05-14 11:53:27','1'),(12,3,4,100,0.00,'2017-10-10','2017-05-14 11:54:09','1');
/*!40000 ALTER TABLE `subscription_package_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:10
