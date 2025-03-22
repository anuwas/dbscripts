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
-- Table structure for table `quote_master`
--

DROP TABLE IF EXISTS `quote_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_master` (
  `quote_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `q_cat_id` varchar(25) NOT NULL,
  `quote` varchar(2000) NOT NULL,
  `status` varchar(25) NOT NULL,
  `quote_count` int(200) NOT NULL DEFAULT '1',
  `add_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_master`
--

LOCK TABLES `quote_master` WRITE;
/*!40000 ALTER TABLE `quote_master` DISABLE KEYS */;
INSERT INTO `quote_master` VALUES (1,'1','One more try. That is all you need to achieve your dream.','Active',53,'2016-07-13 10:14:03','2017-01-04 05:01:22'),(2,'1','You can achieve no more than you think. You can achieve no less than you think. Think Big.','Active',19,'2016-07-13 10:14:16','2017-01-05 07:48:29'),(3,'1','Failures should fire you up, not fizzle you down','Active',10,'2016-07-13 10:15:55','2017-01-05 07:39:44'),(4,'1','When you make a start, many will attack from the front. When you become a force, they will follow you silently from behind. ','Active',9,'2016-07-13 10:16:08','2017-01-05 07:39:47'),(5,'2','If you know, it will show.','Active',13,'2016-07-13 10:16:34','2017-01-05 07:39:37'),(6,'3','Love can win the whole world but gets killed with the ego of self.','Active',27,'2016-06-16 10:16:48','2017-01-05 07:48:20'),(7,'','Your dream is worth a try.','Active',25,'2016-10-24 03:00:00','2017-01-05 07:33:36'),(8,'','Every sincere effort has a solid result.','Active',8,'2016-04-15 19:20:00','2017-01-05 06:45:09'),(9,'','Empowering people around us is more powerful than having power.','Active',60,'2016-06-24 22:30:00','2017-01-05 08:00:38'),(10,'','The world follows those who have the courage to lead the way.','Active',21,'2016-08-19 01:30:00','2017-01-05 07:39:35'),(11,'','What I have is more than what I don’t.','Active',21,'2016-08-31 20:40:00','2017-01-05 07:48:11');
/*!40000 ALTER TABLE `quote_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 10:59:53
