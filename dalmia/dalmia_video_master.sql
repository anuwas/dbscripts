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
-- Table structure for table `video_master`
--

DROP TABLE IF EXISTS `video_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_master` (
  `video_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `video_type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(2000) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `status` varchar(25) NOT NULL,
  `add_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_master`
--

LOCK TABLES `video_master` WRITE;
/*!40000 ALTER TABLE `video_master` DISABLE KEYS */;
INSERT INTO `video_master` VALUES (1,'Brijesh Dalmia Video','Getting Motivated by Brijesh Dalmia ','https://www.youtube.com/watch?v=cLCEYqnzYXY','','Active','2016-07-16 07:15:02','2016-10-13 05:19:18'),(2,'Brijesh Dalmia Video','Create Your Vision by Brijesh Dalmia ','https://www.youtube.com/watch?v=scTrBdvQt2o','','Active','2016-07-16 07:15:05','2016-10-13 05:19:18'),(3,'Brijesh Dalmia Video','I Am a Man ','https://www.youtube.com/watch?v=GEzntE4Surw','','Active','2016-07-16 07:15:08','2016-10-13 06:42:46'),(4,'Masterstroke Video','Powerful Quotes','https://www.youtube.com/watch?v=NQOWE6i7rvY','When you make a start, many will attack from the front. When you become a force, they will follow you silently from behind. ','Active','2016-07-16 06:21:47','2016-10-13 05:19:18'),(5,'Masterstroke Video',' Feelings of love captured in words ','https://www.youtube.com/watch?v=5ydC7SYPl80','When you make a start, many will attack from the front. When you become a force, they will follow you silently from behind. ','Active','2016-07-16 07:18:58','2016-10-13 05:19:18'),(6,'Masterstroke Video',' Motivational & Self Introspection Quotes ','https://www.youtube.com/watch?v=m_OkJPRjmDE','When you make a start, many will attack from the front. When you become a force, they will follow you silently from behind. ','Active','2016-07-11 07:30:00','2016-10-13 09:40:32');
/*!40000 ALTER TABLE `video_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:06
