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
-- Table structure for table `blog_content_master`
--

DROP TABLE IF EXISTS `blog_content_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_content_master` (
  `b_cat_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `show_type` varchar(25) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `image` varchar(255) NOT NULL,
  `display_order` int(200) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  `add_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`b_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_content_master`
--

LOCK TABLES `blog_content_master` WRITE;
/*!40000 ALTER TABLE `blog_content_master` DISABLE KEYS */;
INSERT INTO `blog_content_master` VALUES (1,'WHAT IS NEW','WHAT IS NEW','URL','http://localhost/Dalmia/faqtopic.php?topic=Deduction%20Under%20Sec.%2080C&type=INVESTMENTS%20FAQ','<p>I examine myself. I fail every time but my grades are improving.</p>\r\n','blog2.jpg',1,'Inactive','2017-01-11 10:20:43'),(2,'Masterstroke Blogs','Masterstroke Blogs','','','<p>Blogs that give powerful message to inspire and run your business</p>\r\n','Masterstroke_Blogs_2.jpg',2,'Active','2017-01-11 10:20:36'),(3,'Sales Presenter','Sales Presenter','','','<p>Increase your sales by using Masterstroke Sales Presenter Increase your sales by using Masterstroke Sales PresenterIncrease your sales by using Masterstroke Sales PresenterIncrease your sales by using Masterstroke Sales Presenter</p>\r\n','Masterstroke_Sales_Presenter_2.jpg',5,'Active','2017-01-11 10:20:25'),(4,'SUCCESS STORY','SUCCESS STORY','','','<p>Read success stories which will motivate you</p>\r\n','Success_Stories_2.jpg',4,'Active','2017-01-11 10:20:31'),(5,'Articles','Articles','','','<p>Articles on MF Industry, Business Model and Strategies for advisors</p>\r\n','Articles_2.jpg',3,'Active','2017-01-11 10:20:21'),(6,'NRI FAQ','NRI FAQ','','','<p>I examine myself. I fail every time but my grades are improving.</p>\r\n','blog5.jpg',6,'Inactive','2017-01-11 10:20:47'),(7,'LATEST INDUSTRY NEWS','LATEST INDUSTRY NEWS','','','<p>Find out the latest industry news to keep you updated</p>\r\n','Latest_Industry_News_2.jpg',7,'Active','2017-01-11 10:20:51'),(8,'INVESTMENTS FAQ','INVESTMENTS FAQ','','','<p>Get answer to all your queries on various investment products</p>\r\n','Investment_FAQ_2.jpg',8,'Active','2017-01-11 10:20:55'),(9,'OTHERS','OTHERS','','','<p>I examine myself. I fail every time but my grades are improving.</p>\r\n','blog9.jpg',9,'Inactive','2017-01-11 10:21:00'),(10,'Discussion Forum','Discussion Forum','','','<p>Discuss various industry related issues with other advisors</p>\r\n','Discussion_Forum_2.jpg',10,'Active','2017-01-11 10:21:04'),(11,'Masterstroke Banner','Masterstroke Banner','','','<p>Download promotional images with your name and contact details</p>\r\n','Masterstroke_Banner_2.jpg',13,'Active','2017-01-11 10:21:08'),(12,'Masterstroke Quotes','Masterstroke Quotes','','','<p>Brijesh writes a powerful thought everyday to motivate advisors</p>\r\n','Masterstroke_Quotes_2.jpg',1,'Active','2017-01-11 10:21:13');
/*!40000 ALTER TABLE `blog_content_master` ENABLE KEYS */;
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
