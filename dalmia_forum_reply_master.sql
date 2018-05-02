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
-- Table structure for table `forum_reply_master`
--

DROP TABLE IF EXISTS `forum_reply_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_reply_master` (
  `reply_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `f_ques_id` bigint(50) NOT NULL,
  `f_ans_writer_id` bigint(50) NOT NULL,
  `forum_answer` varchar(2000) NOT NULL,
  `f_ans_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `f_ans_add_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_reply_master`
--

LOCK TABLES `forum_reply_master` WRITE;
/*!40000 ALTER TABLE `forum_reply_master` DISABLE KEYS */;
INSERT INTO `forum_reply_master` VALUES (1,1,1,'i dont knowi dont knowi dont knowi dont know','Approved','2016-12-10 12:28:22'),(2,1,2,' why you dont know why you dont know why you dont know why you dont know','Approved','2016-12-10 12:28:25'),(3,3,2,' why you dont know why you dont know why you dont know why you dont know','Approved','2016-12-10 13:14:35'),(4,3,2,' why you dont know why you dont know why you dont know why you dont know','Approved','2016-12-10 13:14:38'),(5,5,1,'I m fine','Approved','2016-12-13 09:55:31'),(6,5,1,'what about you','Approved','2016-12-13 10:02:11'),(7,6,1,'Just Write and Write and Write ','Approved','2017-01-03 05:57:02');
/*!40000 ALTER TABLE `forum_reply_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 10:59:52
