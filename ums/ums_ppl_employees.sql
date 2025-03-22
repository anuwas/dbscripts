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
-- Table structure for table `ppl_employees`
--

DROP TABLE IF EXISTS `ppl_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ppl_employees` (
  `sys_employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_company_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `employee_name` varchar(250) NOT NULL,
  `employee_doj` date NOT NULL,
  `employee_dob` date NOT NULL,
  `employee_photo_img` varchar(250) DEFAULT NULL,
  `Address` text,
  `Gender` int(11) NOT NULL,
  PRIMARY KEY (`sys_employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ppl_employees`
--

LOCK TABLES `ppl_employees` WRITE;
/*!40000 ALTER TABLE `ppl_employees` DISABLE KEYS */;
INSERT INTO `ppl_employees` VALUES (1,1,1,'PPL Admin','2017-01-01','2017-01-01','aa','aa',1),(2,1,2,'PPL User 2','2017-01-01','2017-01-01','1','a',1),(3,1,3,'PPL User 3','2017-01-01','2017-01-01','2','2',1),(4,2,4,'RK_admin','2017-01-01','2017-01-01','1','a',1),(5,3,5,'RK_AP','2017-01-01','2017-01-01','','',1),(6,4,6,'RK_india','2017-01-01','2017-01-01','','',1),(7,5,7,'RK_ER','2017-01-01','2017-01-01','','',1),(8,6,8,'RK_kol','2017-01-01','2017-01-01','','',1),(9,7,9,'RK_bhub','2017-01-01','2017-01-01','','',1),(10,6,10,'Kol Emp 1','2017-01-01','2017-01-01','','',1),(16,6,16,'Anupam Biswas','2017-01-01','2017-01-01','','',1),(17,6,17,'Biswas Anupam','2017-01-01','2017-01-01','','',1);
/*!40000 ALTER TABLE `ppl_employees` ENABLE KEYS */;
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
