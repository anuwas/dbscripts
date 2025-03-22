-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: nrb
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
-- Table structure for table `eventcomment`
--

DROP TABLE IF EXISTS `eventcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventcomment` (
  `eventcommentid` int(20) NOT NULL AUTO_INCREMENT,
  `appuserid` int(20) NOT NULL,
  `eventid` int(20) NOT NULL,
  `comment` text,
  `commentdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `publish` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventcommentid`),
  KEY `fk_eventcomment_1_idx` (`appuserid`),
  KEY `fk_eventcomment_2_idx` (`eventid`),
  CONSTRAINT `fk_eventcomment_appuser` FOREIGN KEY (`appuserid`) REFERENCES `appuser` (`appuserid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_eventcomment_events` FOREIGN KEY (`eventid`) REFERENCES `events` (`eventid`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventcomment`
--

LOCK TABLES `eventcomment` WRITE;
/*!40000 ALTER TABLE `eventcomment` DISABLE KEYS */;
INSERT INTO `eventcomment` VALUES (1,2,1,'test comment by 2 -1','2017-01-03 18:40:52',0),(2,6,1,'test comment by 6 -1','2016-11-22 17:34:24',0),(3,6,2,'test comment by 6 -2','2017-02-07 16:44:28',1),(4,2,2,'test comment by 2 -2','2016-11-22 17:34:24',0),(5,1,1,'admin commnent','2017-02-07 16:42:53',1),(6,2,2,'publish text','2017-01-02 18:43:49',0),(7,1,1,'comment from postmen','2017-04-08 10:53:35',0),(8,2,1,'comment from postmen','2017-04-09 06:34:16',0),(9,2,1,'comment from postmen','2017-04-09 06:34:18',0),(10,2,1,'comment from postmen','2017-04-09 06:34:19',0),(11,2,1,'comment from postmen','2017-04-09 06:34:34',0),(12,2,1,'comment from postmen','2017-04-09 06:34:47',0),(13,2,1,'comment from postmen','2017-04-09 06:34:48',0),(14,2,1,'comment from postmen','2017-04-09 06:34:52',0),(15,2,1,'comment from postmen','2017-04-09 06:34:53',0),(16,2,1,'comment from postmen','2017-04-09 06:34:54',0),(17,2,1,'comment from postmen sss','2017-04-09 06:37:38',0);
/*!40000 ALTER TABLE `eventcomment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:14
