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
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms` (
  `cms_id` int(10) NOT NULL AUTO_INCREMENT,
  `cms_type` varchar(50) NOT NULL,
  `cms_title` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `bannerimage` varchar(255) NOT NULL,
  `cms_content` longtext NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms`
--

LOCK TABLES `cms` WRITE;
/*!40000 ALTER TABLE `cms` DISABLE KEYS */;
INSERT INTO `cms` VALUES (1,'netaji','Testtuyt','4320_logo.png','','fgfdgdfgfdgfgrfgfsgsdfgfdgregsfgsfcgsfgff',1,'2017-07-06 06:46:23'),(2,'nrb','Testing','2999_museum4.png','','hirfhfnh  ihjfdfidj hfdjdjkdjfkdjfdkfdfdfefdfd',1,'2017-07-06 04:26:48'),(3,'nrb','test','5616_313.jpg','5850_12.jpg','<p>Hello</p>\r\n',1,'2017-07-08 12:17:23'),(4,'nrb','test','4612_17.jpg','3133_14.jpg','<p><em><strong>Hello</strong></em>&nbsp;</p>\r\n',1,'2017-07-08 12:40:35'),(5,'netaji','test123','2559_313.jpg','6904_18.jpg','&lt;p&gt;&lt;u&gt;&lt;em&gt;&lt;strong&gt;$imagine = Image::getImagine() -&amp;gt;open($resizeImagePath) -&amp;gt;thumbnail(new Box(120, 120)) -&amp;gt;save($thumbnailImagePath, [&amp;#39;quality&amp;#39; =&amp;gt; 90]);&lt;/strong&gt;&lt;/em&gt;&lt;/u&gt;&lt;/p&gt;\r\n',1,'2017-07-08 13:25:12');
/*!40000 ALTER TABLE `cms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:16
