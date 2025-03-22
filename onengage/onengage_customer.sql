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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `customer_name` varchar(145) DEFAULT NULL,
  `emailid` varchar(145) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `aniversary_date` date DEFAULT NULL,
  `sex` varchar(10) NOT NULL DEFAULT 'Male',
  `active` int(1) NOT NULL DEFAULT '1',
  `otp_status` varchar(45) DEFAULT NULL,
  `otp` varchar(145) DEFAULT NULL,
  `opted` varchar(45) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `first_name` varchar(145) DEFAULT NULL,
  `last_name` varchar(145) DEFAULT NULL,
  `salutation` varchar(145) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `cty` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `address` varchar(145) DEFAULT NULL,
  `workplace` varchar(145) DEFAULT NULL,
  `profession` varchar(45) DEFAULT NULL,
  `marital_status` varchar(45) DEFAULT NULL,
  `father_name` varchar(145) DEFAULT NULL,
  `mother_name` varchar(145) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `land_line_number` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `fk_customer_1_idx` (`brand_id`),
  CONSTRAINT `fk_customer_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,'Biswas','anupam1@mail.com','9007711001','2010-01-01','2010-01-01','Male',1,NULL,NULL,'OptedOut','2017-05-14 11:43:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,'Anupam','anupam@mail.com','9007711004','2010-01-01','2010-01-01','Male',1,NULL,NULL,'OptedIn','2017-05-14 11:43:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,'Anupam','anupam@mail.com','9007711004','2010-01-01','2010-01-01','Male',1,NULL,'xxxx','OptedOut','2017-05-15 18:23:18','Anu','Bis','','700077','Kolkata','WB','India',NULL,'Kolkata','WEB','Sin','FN','MN','H','033999','Ben');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:12
