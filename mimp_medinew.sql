-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: mimp
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
-- Table structure for table `medinew`
--

DROP TABLE IF EXISTS `medinew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medinew` (
  `medinew_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `date_of_birth` varchar(45) DEFAULT NULL,
  `identity_number` varchar(45) DEFAULT NULL,
  `ph_work` varchar(45) DEFAULT NULL,
  `ph_home` varchar(45) DEFAULT NULL,
  `ph_cell` varchar(45) DEFAULT NULL,
  `ph_alt` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `medical_aid` varchar(45) DEFAULT NULL,
  `plan_option` varchar(45) DEFAULT NULL,
  `medical_ad_number` varchar(45) DEFAULT NULL,
  `dependent_0` varchar(45) DEFAULT NULL,
  `dependent_1` varchar(45) DEFAULT NULL,
  `dependent_2` varchar(45) DEFAULT NULL,
  `main_number` varchar(45) DEFAULT NULL,
  `id_no_0` varchar(45) DEFAULT NULL,
  `id_no_1` varchar(45) DEFAULT NULL,
  `id_no_2` varchar(45) DEFAULT NULL,
  `first_delivery` varchar(45) DEFAULT NULL,
  `patient_status` varchar(45) CHARACTER SET big5 DEFAULT NULL,
  `physical_delivery_address` text,
  `contact_person` varchar(45) DEFAULT NULL,
  `rep` varchar(45) DEFAULT NULL,
  `nurse_doctor` varchar(45) DEFAULT NULL,
  `tel_no` varchar(45) DEFAULT NULL,
  `automatically_sent` varchar(45) DEFAULT NULL,
  `patient_to_place_order` varchar(45) DEFAULT NULL,
  `filename` text,
  `terms` varchar(45) DEFAULT NULL,
  `entery_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`medinew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medinew`
--

LOCK TABLES `medinew` WRITE;
/*!40000 ALTER TABLE `medinew` DISABLE KEYS */;
/*!40000 ALTER TABLE `medinew` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:07
