-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: ums
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
-- Table structure for table `ums_user`
--

DROP TABLE IF EXISTS `ums_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_access_key` varchar(50) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(90) NOT NULL,
  `user_type` int(10) NOT NULL,
  `user_status` int(2) NOT NULL,
  `additional_id` int(10) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `user_creation_stamp` datetime NOT NULL,
  `user_created_by` int(11) DEFAULT NULL,
  `user_updated_stamp` datetime NOT NULL,
  `user_updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_access_key` (`user_access_key`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_user`
--

LOCK TABLES `ums_user` WRITE;
/*!40000 ALTER TABLE `ums_user` DISABLE KEYS */;
INSERT INTO `ums_user` VALUES (1,'1','ppl_admin','4439c90d70a03c66d5de0a73ee8c7f50',1,1,1,'Adminfirst','Adminlast','admin@admin.com','2017-04-11 00:00:00',NULL,'2017-04-11 00:00:00',NULL),(3,'2','ppl_user2','21232f297a57a5a743894a0e4a801fc3',2,1,1,'First Nam21','Last Name21','aaa@aaa11.com','2017-04-19 18:18:34',1,'2017-04-21 21:59:13',1),(6,'3','ppl_user3','21232f297a57a5a743894a0e4a801fc3',2,1,1,'Emp','Admin','emp_admin@gmail.com','2017-04-24 12:02:54',1,'2017-04-24 12:02:54',1),(7,'4','rk_admin','21232f297a57a5a743894a0e4a801fc3',2,1,2,'a','a','a','2017-04-24 12:02:54',1,'2017-04-24 12:02:54',1),(11,'5','rk_asia_pacific_admin','21232f297a57a5a743894a0e4a801fc3',2,1,3,'a','a','a','2017-04-24 12:02:54',1,'2017-04-24 12:02:54',1),(12,'6','rk_india_admin','21232f297a57a5a743894a0e4a801fc3',2,1,4,'a','a','a','2017-04-24 12:02:54',1,'2017-04-24 12:02:54',1),(13,'7','rk_estern_region_admin','21232f297a57a5a743894a0e4a801fc3',2,1,5,'a','a','a','2017-04-24 12:02:54',1,'2017-04-24 12:02:54',1),(14,'8','rk_kolkata_admin','21232f297a57a5a743894a0e4a801fc3',2,1,6,'a','a','a','2017-04-24 12:02:54',1,'2017-04-24 12:02:54',1),(15,'9','rk_bhuban_admin','21232f297a57a5a743894a0e4a801fc3',2,1,7,'a','a','a','2017-04-24 12:02:54',1,'2017-04-24 12:02:54',1),(16,'10','10','21232f297a57a5a743894a0e4a801fc3',2,1,6,'fname','lname','demo@gmail.com','2017-05-21 05:51:45',1,'2017-05-21 05:51:45',1),(17,'16','Red16_Anupam','21232f297a57a5a743894a0e4a801fc3',2,1,6,'fname','lname','demo@gmail.com','2017-05-21 06:11:54',1,'2017-05-21 06:11:54',1),(18,'17','RED17_Biswas','21232f297a57a5a743894a0e4a801fc3',1,1,6,'fname','lname','demo@gmail.com','2017-05-21 06:16:42',1,'2017-05-21 06:16:42',1);
/*!40000 ALTER TABLE `ums_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:21
