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
-- Table structure for table `fee_boarder_class`
--

DROP TABLE IF EXISTS `fee_boarder_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_boarder_class` (
  `fee_boarder_class_id` int(10) NOT NULL AUTO_INCREMENT,
  `class` varchar(10) DEFAULT NULL,
  `border` enum('yes','no') DEFAULT 'yes',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fee_boarder_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_boarder_class`
--

LOCK TABLES `fee_boarder_class` WRITE;
/*!40000 ALTER TABLE `fee_boarder_class` DISABLE KEYS */;
INSERT INTO `fee_boarder_class` VALUES (1,'01','yes',0.00,'2015-03-22 20:00:52'),(2,'01','no',0.00,'2015-03-22 20:01:01'),(3,'02','yes',0.00,'2015-03-22 20:02:31'),(4,'02','no',0.00,'2015-03-22 20:02:39'),(5,'03','yes',0.00,'2015-04-15 22:10:18'),(6,'03','no',0.00,'2015-04-15 22:10:26'),(7,'04','yes',0.00,'2015-04-15 22:10:29'),(8,'04','no',0.00,'2015-04-15 22:10:35'),(9,'05','yes',0.00,'2015-04-15 22:10:40'),(10,'05','no',0.00,'2015-04-15 22:10:46'),(11,'06','yes',0.00,'2015-04-15 22:10:50'),(12,'06','no',0.00,'2015-04-15 22:10:58'),(13,'07','yes',0.00,'2015-04-15 22:11:02'),(14,'07','no',0.00,'2015-04-15 22:11:08'),(15,'08','yes',0.00,'2015-04-15 22:11:11'),(16,'08','no',0.00,'2015-04-15 22:11:17'),(17,'09','yes',0.00,'2015-04-15 22:11:20'),(18,'09','no',0.00,'2015-04-15 22:11:27'),(19,'10','yes',0.00,'2015-04-15 22:11:31'),(20,'10','no',0.00,'2015-04-15 22:11:40'),(21,'11','yes',0.00,'2015-04-15 22:11:43'),(22,'11','no',0.00,'2015-04-15 22:11:47'),(23,'12','yes',0.00,'2015-04-15 22:11:49'),(24,'12','no',0.00,'2015-04-15 22:11:54');
/*!40000 ALTER TABLE `fee_boarder_class` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:28
