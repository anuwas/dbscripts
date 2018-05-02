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
-- Table structure for table `comment_master`
--

DROP TABLE IF EXISTS `comment_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_master` (
  `c_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `website` varchar(255) NOT NULL,
  `comment` longtext NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Pending',
  `add_on` varchar(25) NOT NULL,
  `mod_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_master`
--

LOCK TABLES `comment_master` WRITE;
/*!40000 ALTER TABLE `comment_master` DISABLE KEYS */;
INSERT INTO `comment_master` VALUES (1,1,'Vishal Jaiswal','vjwebphics@gmail.com','9007097333','http://webphics.com','This is test Comment!!!!','Approved','July 20, 2016','2016-07-20 12:47:18'),(2,3,'Vishal Jaiswal','vjwebphics@gmail.com','9007097333','http://webphics.com','This is test Comment!!!!','Approved','July 20, 2016','2016-07-21 13:24:20'),(3,1,'Sam Da','samirandas2016@gmail.com','9856743270','www.sdj.com','This is another test Comment!!!!','Approved','Dec 07, 2016','2016-12-07 12:40:41'),(4,1,'Vishal Jaiswal','vjwebphics@gmail.com','9007097333','1991','i want Pizza','Pending','Jan 11, 2017','2017-01-11 08:01:13');
/*!40000 ALTER TABLE `comment_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 10:59:56
