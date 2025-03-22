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
-- Table structure for table `gallery_master`
--

DROP TABLE IF EXISTS `gallery_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_master` (
  `gallery_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `gal_topic_id` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gal_image` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Active',
  `add_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_master`
--

LOCK TABLES `gallery_master` WRITE;
/*!40000 ALTER TABLE `gallery_master` DISABLE KEYS */;
INSERT INTO `gallery_master` VALUES (1,2,'masterstroke1','masterstroke1.jpg','Active','2016-07-29 05:21:21'),(2,2,'masterstroke24','masterstroke24.jpg','Active','2016-07-29 05:21:25'),(3,2,'masterstroke26','masterstroke26.jpg','Active','2016-07-29 05:21:27'),(4,2,'masterstroke27','masterstroke27.jpg','Active','2016-07-29 05:21:30'),(5,1,'whatappbanner1','whatappbanner1.jpg','Active','2016-07-05 05:23:41'),(6,1,'whatappbanner21','whatappbanner21.jpg','Active','2016-07-05 05:23:57'),(7,1,'whatappbanner22','whatappbanner22.jpg','Active','2016-07-05 05:24:18'),(8,1,'whatappbanner23','whatappbanner23.jpg','Active','2016-07-05 05:24:34'),(9,1,'whatappbannr19','whatappbannr19.jpg','Active','2016-07-05 05:24:51'),(10,3,'Flyer 1','5.jpg','Active','2016-12-07 09:34:19');
/*!40000 ALTER TABLE `gallery_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 10:59:55
