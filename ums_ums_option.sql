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
-- Table structure for table `ums_option`
--

DROP TABLE IF EXISTS `ums_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(25) NOT NULL,
  `option_description` varchar(200) DEFAULT NULL,
  `option_type` int(2) NOT NULL,
  `option_area` int(2) NOT NULL,
  `option_status` int(2) NOT NULL,
  `option_link` varchar(200) NOT NULL DEFAULT '#',
  `option_icon` varchar(100) DEFAULT NULL,
  `option_order` int(2) NOT NULL DEFAULT '0',
  `parent_option_id` int(11) NOT NULL,
  `enable_toolbox` tinyint(1) NOT NULL DEFAULT '0',
  `object_reference_key` varchar(100) DEFAULT NULL,
  `level` int(1) NOT NULL DEFAULT '0',
  `icon_class` varchar(100) DEFAULT NULL,
  `add_data` int(1) NOT NULL DEFAULT '0',
  `edit_data` int(1) NOT NULL DEFAULT '0',
  `delete_data` int(1) NOT NULL DEFAULT '0',
  `view_data` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_option`
--

LOCK TABLES `ums_option` WRITE;
/*!40000 ALTER TABLE `ums_option` DISABLE KEYS */;
INSERT INTO `ums_option` VALUES (1,'User','',1,1,1,'#','1492791555_option.png',1,0,0,'Object reference key1',0,'fa-image',0,0,0,0),(2,'User List','',1,1,1,'umsuser','1492791584_option.png',1,1,0,'Object reference key1',0,'fa-file-image-o',0,0,0,0),(3,'Role -&- Option ','',1,1,1,'#','1492791743_option.png',2,0,0,'Object reference key1',0,'fa-list-alt',0,0,0,0),(4,'Role managment','',1,1,1,'umsrole','1492791777_option.png',1,3,0,'Object reference key1',0,'fa-youtube',0,0,0,0),(5,'Option managment','',1,1,1,'umsoption','1492791820_option.png',2,3,0,'Object reference key1',0,'fa-th-large',0,0,0,0),(6,'Role - option relation','',1,1,1,'umsroleoptionmap','1492791855_option.png',3,3,0,'Object reference key1',0,'fa-comments-o',0,0,0,0),(7,'About','',1,1,1,'about','1492792081_option.png',4,0,0,'Object reference key1',0,'fa-circle-o',0,0,0,0),(8,'Help','',1,1,3,'#','1492853658_option.png',1,0,0,'NA',0,'fa-list-alt',0,0,0,0),(9,'Company Managment','',1,1,1,'#','1493727052_option.png',3,0,0,'Object reference key1',0,'fa-puzzle-piece',0,0,0,0),(10,'Company List','',1,1,1,'company','1493727131_option.png',1,9,0,'Object reference key1',0,'fa-user',0,0,0,0),(11,'Company Tree',NULL,1,1,1,'company/tree',NULL,1,9,0,NULL,0,'fa-tree',0,0,0,0),(12,'Employee List',NULL,1,1,1,'pplemployees',NULL,1,1,0,NULL,0,'fa-user',0,0,0,0),(13,'User Role',NULL,1,1,1,'umsuserrolemap',NULL,1,3,0,NULL,0,'fa-user',0,0,0,0),(14,'Upload Umployee',NULL,1,1,1,'pplemployees/uploademployee',NULL,1,1,0,NULL,0,'fa-user',0,0,0,0);
/*!40000 ALTER TABLE `ums_option` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:22
