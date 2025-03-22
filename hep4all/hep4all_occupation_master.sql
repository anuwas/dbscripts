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
-- Table structure for table `occupation_master`
--

DROP TABLE IF EXISTS `occupation_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupation_master` (
  `occupation_id` int(10) NOT NULL AUTO_INCREMENT,
  `occupation_name` varchar(155) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`occupation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation_master`
--

LOCK TABLES `occupation_master` WRITE;
/*!40000 ALTER TABLE `occupation_master` DISABLE KEYS */;
INSERT INTO `occupation_master` VALUES (0,'--- Current Occupation ---','2015-02-02 02:22:56'),(1,'Athletic Trainer','2015-01-31 02:49:05'),(2,'Athletic Trainer Student','2015-01-31 02:49:21'),(3,'Chiropractor','2015-01-31 02:49:28'),(4,'Chiro Tech','2015-01-31 02:49:34'),(5,'Chiro Student','2015-01-31 02:49:41'),(6,'Clinic Owner','2015-01-31 02:49:47'),(7,'Clinical Instructor','2015-01-31 02:49:55'),(8,'COTA','2015-01-31 02:50:01'),(9,'Director of Rehab','2015-01-31 02:50:08'),(10,'Occupational Therapist','2015-01-31 02:50:20'),(11,'OT Student','2015-01-31 02:50:27'),(12,'OTA Student','2015-01-31 02:50:32'),(13,'OT Tech','2015-01-31 02:50:38'),(14,'Orthopedic Docotor','2015-01-31 02:50:44'),(15,'Osteopathic Doctor','2015-01-31 02:50:49'),(16,'Other MD','2015-01-31 02:50:55'),(17,'Office Administrator','2015-01-31 02:51:01'),(18,'Physical Therapist','2015-01-31 02:51:06'),(19,'PTA','2015-01-31 02:51:12'),(20,'PT Tech','2015-01-31 02:51:17'),(21,'PT Student','2015-01-31 02:51:23'),(22,'PTA Student','2015-01-31 02:51:29'),(23,'Rehab Manager','2015-01-31 02:51:34'),(24,'Speech Therapist','2015-01-31 02:51:42'),(25,'University Professor','2015-01-31 02:51:48');
/*!40000 ALTER TABLE `occupation_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:26
