-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: benfed
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
-- Table structure for table `district_email`
--

DROP TABLE IF EXISTS `district_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district_email` (
  `districtemail_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_name` varchar(255) NOT NULL,
  `district_email` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`districtemail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_email`
--

LOCK TABLES `district_email` WRITE;
/*!40000 ALTER TABLE `district_email` DISABLE KEYS */;
INSERT INTO `district_email` VALUES (1,'ho','ho@mail.com',1,'2017-03-27 01:00:04'),(2,'coochbehar','coochbehar@mail.com',1,'2017-03-27 01:00:04'),(3,'malda','malda@mail.com',1,'2017-03-27 01:02:13'),(4,'uttar-dinajpur','uttar-dinajpur@mail.com',1,'2017-03-27 01:02:13'),(5,'burdwan','burdwan@mail.com',1,'2017-03-27 01:02:13'),(6,'hooghly','hooghly@mail.com',1,'2017-03-27 01:02:13'),(7,'dakhin-dinajpur','dakhin-dinajpurmail.com',1,'2017-03-27 01:02:13'),(8,'e-midnapore','e-midnapore@mail.com',1,'2017-03-27 01:03:55'),(9,'n-24-Parganas','n-24-Parganas@mail.com',1,'2017-03-27 01:03:55'),(10,'s-24-Parganas','s-24-Parganas@mail.com',1,'2017-03-27 01:03:55'),(11,'howrah','howrah@mail.com',1,'2017-03-27 01:03:55'),(12,'birbhum','birbhum@mail.com',1,'2017-03-27 01:03:55'),(13,'w-midnapore','w-midnapore@mail.com',1,'2017-03-27 01:05:09'),(14,'jalpaiguri','jalpaiguri@mail.com',1,'2017-03-27 01:05:09'),(15,'siliguri','siliguri@mail.com',1,'2017-03-27 01:05:09'),(16,'bankura','bankura@mail.com',1,'2017-03-27 01:05:09'),(17,'murshidabad','murshidabad@mail.com',1,'2017-03-27 01:05:09'),(18,'nadia','nadia@mail.com',1,'2017-03-27 01:05:57'),(19,'purulia','purulia@mail.com',1,'2017-03-27 01:05:57');
/*!40000 ALTER TABLE `district_email` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:31
