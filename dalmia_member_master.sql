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
-- Table structure for table `member_master`
--

DROP TABLE IF EXISTS `member_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_master` (
  `mem_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(255) NOT NULL,
  `member_arn_no` varchar(50) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_display` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_display` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `phone_display` varchar(255) NOT NULL,
  `intial_limit` int(25) NOT NULL,
  `download_limit` int(25) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Pending',
  `add_on` datetime NOT NULL,
  `mod_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_master`
--

LOCK TABLES `member_master` WRITE;
/*!40000 ALTER TABLE `member_master` DISABLE KEYS */;
INSERT INTO `member_master` VALUES (1,'7OZCLWB9QS','1991','','','VJ','admin2016','Vishal Jaiswal','Vishal VJ Jaiswal','vjwebphics@gmail.com','vjwebphics@gmail.com','9007097333','9038847810',100,93,'Approved','2016-07-21 15:46:38','2017-01-11 08:00:11'),(2,'WVMI02YP98','','','','SD','sd@2016','Samiran Das','Sam Da','samirandas2012@gmail.com','Rock The World','987417242','9211MCBC420',50,49,'Approved','2016-11-29 11:52:42','2016-11-29 10:59:09'),(3,'','','','','amitmahansaria','amit@1608','Amit Mahansaria','','amit.sba@gmail.com','','9230008276','',0,0,'Approved','2016-12-16 10:39:14','2016-12-16 09:40:09'),(8,'Y7TUJ0V6ZP','','','','adminqwe','987654321','Sajan Jaiswal','','vjreliabletech@gmail.com','','9856743270','',50,50,'Approved','2016-12-19 12:15:57','2016-12-19 11:16:20'),(9,'','','','','xfgjxfgj','ggg','gxjxgj','','hfg@hmail.com','','fgxjtgj','',0,0,'Pending','2017-01-02 07:51:47','2017-01-02 06:51:47'),(10,'U21QKI4WVM','','','','shwetamahan','shweta2209','Shweta Mahansaria','Shweta Mahansaria','shwetamahansaria@gmail.com','9230008276','9230008274','Dalmia Advisory Services P Ltd',50,49,'Approved','2017-01-02 11:51:59','2017-01-02 10:55:31'),(11,'','9211','FADED BLUE LOUNGE','Kolkata','andy1234','qwerty','Anand Gupta','','webandy1@gmail.com','','9856743270','',0,0,'Pending','2017-01-06 06:22:12','2017-01-06 05:22:12'),(12,'','9211','FADED BLUE LOUNGE','Kolkata','hyujkiol','tttttt','Anand Gupta','','webandy1@gmail.com','','9856743270','',0,0,'Pending','2017-01-06 06:23:09','2017-01-06 05:23:09'),(13,'','9211','FADED BLUE LOUNGE','Kolkata','qwerty','qwerty','Anand Gupta','','admin@gmail.com','','8521479630','',0,0,'Pending','2017-01-06 06:26:09','2017-01-06 05:26:09');
/*!40000 ALTER TABLE `member_master` ENABLE KEYS */;
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
