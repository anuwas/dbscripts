-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: dalmia
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
-- Table structure for table `faq_topic_master`
--

DROP TABLE IF EXISTS `faq_topic_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_topic_master` (
  `faq_topic_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `faq_type_id` bigint(11) NOT NULL,
  `faq_topic_name` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL,
  `add_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`faq_topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_topic_master`
--

LOCK TABLES `faq_topic_master` WRITE;
/*!40000 ALTER TABLE `faq_topic_master` DISABLE KEYS */;
INSERT INTO `faq_topic_master` VALUES (1,1,'Mutual Fund','Active','2016-07-11 11:55:54'),(2,1,'Public Provident Fund','Active','2016-07-11 11:55:58'),(3,1,'National Pension Scheme','Active','2016-07-11 11:56:00'),(4,1,'Deduction Under Sec. 80C','Active','2016-07-11 11:56:02'),(5,1,'Sovereign Gold Bond','Active','2016-07-11 11:56:04'),(6,1,'Health Insurance','Active','2016-07-11 11:56:06'),(7,2,'Bank Accounts','Active','2016-07-11 11:55:40'),(8,2,'Mutual Fund','Active','2016-07-11 11:55:45'),(9,2,'Share Investment','Active','2016-07-11 11:55:48'),(10,1,'IFA FAQ','Active','2016-07-11 11:55:52');
/*!40000 ALTER TABLE `faq_topic_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 10:59:54
