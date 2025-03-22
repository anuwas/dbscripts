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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `sys_company_id` bigint(20) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `label_name` varchar(255) NOT NULL,
  `custom_label` varchar(255) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `company_status` int(2) NOT NULL,
  `parent_sys_company_id` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) DEFAULT NULL,
  `company_creation_time` datetime NOT NULL,
  `company_created_by` int(11) NOT NULL,
  `company_updated_time` datetime NOT NULL,
  `company_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`sys_company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'PeoplePro','PeoplePro','',NULL,1,0,NULL,'2017-05-02 20:26:31',1,'2017-05-02 20:26:31',1),(2,'Redknee','Redknee','Redknee',NULL,1,0,NULL,'2017-05-08 23:27:21',1,'2017-05-08 23:27:32',1),(3,'Redknee Asia Pacific','Redknee Asia Pacific','Redknee Asia Pacific',NULL,1,2,NULL,'2017-05-08 23:28:36',1,'2017-05-08 23:28:41',1),(4,'Redknee India','Redknee India','Redknee India',NULL,1,3,NULL,'2017-05-08 23:29:39',1,'2017-05-08 23:29:45',1),(5,'Redknee Easter Region','Redknee Easter Region','Redknee Easter Region',NULL,1,4,NULL,'2017-05-08 23:30:39',1,'2017-05-08 23:30:47',1),(6,'Redknee Kolkata','Redknee Kolkata','Redknee Kolkata',NULL,1,5,NULL,'2017-05-08 23:31:20',1,'2017-05-08 23:31:27',1),(7,'Redknee Bhuvneshwar','Redknee Bhuvneshwar','Redknee Bhuvneshwar',NULL,1,5,NULL,'2017-05-08 23:32:17',1,'2017-05-10 21:11:05',1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:21
