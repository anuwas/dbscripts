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
-- Table structure for table `eventcommentreply`
--

DROP TABLE IF EXISTS `eventcommentreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventcommentreply` (
  `eventcommentreplyid` int(11) NOT NULL AUTO_INCREMENT,
  `eventcommentid` int(11) NOT NULL,
  `appuserid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `comment` text,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `publish` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventcommentreplyid`),
  KEY `fk_eventcommentreply_1_idx` (`eventcommentid`),
  KEY `fk_eventcommentreply_2_idx` (`eventid`),
  KEY `fk_eventcommentreply_3_idx` (`appuserid`),
  CONSTRAINT `fk_eventcommentreply_1` FOREIGN KEY (`eventcommentid`) REFERENCES `eventcomment` (`eventcommentid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_eventcommentreply_2` FOREIGN KEY (`eventid`) REFERENCES `events` (`eventid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_eventcommentreply_3` FOREIGN KEY (`appuserid`) REFERENCES `appuser` (`appuserid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventcommentreply`
--

LOCK TABLES `eventcommentreply` WRITE;
/*!40000 ALTER TABLE `eventcommentreply` DISABLE KEYS */;
INSERT INTO `eventcommentreply` VALUES (8,1,1,1,'reply test comment by 2 -1','2017-01-03 18:42:37',0),(10,3,1,2,'reply test comment by 6 -2','2016-11-23 19:04:53',0),(11,1,1,1,'reply2 test comment by 2 -1','2016-11-24 18:08:29',0),(12,5,1,1,'test reply counter','2017-01-03 18:47:22',1),(13,5,1,1,'test reply 2','2017-01-05 18:25:57',1);
/*!40000 ALTER TABLE `eventcommentreply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:15
