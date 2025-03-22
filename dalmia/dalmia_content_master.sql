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
-- Table structure for table `content_master`
--

DROP TABLE IF EXISTS `content_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_master` (
  `content_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(255) NOT NULL,
  `content_phone` varchar(255) NOT NULL,
  `content_email` varchar(255) NOT NULL,
  `content_mobile` varchar(255) NOT NULL,
  `content_address` longtext NOT NULL,
  `company_name` varchar(2000) NOT NULL,
  `content_website` longtext NOT NULL,
  `status` varchar(25) NOT NULL,
  `add_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_master`
--

LOCK TABLES `content_master` WRITE;
/*!40000 ALTER TABLE `content_master` DISABLE KEYS */;
INSERT INTO `content_master` VALUES (1,'Contact Detail','033 22158247','info@masterstrokeonline.com','+91 9883818627','203, Vinayak Chambers 10/A, Hospital Street Kolkata – 700072\r\n','The Brijesh Dalmia Leadership Academy','http://masterstrokeonline.com','Yes','2017-01-12 07:22:59'),(2,'About page','','','','<p>Brijesh has been connected with financial services industry for over 20 years. He is the founder of &lsquo;Dalmia Advisory Services Pvt. Ltd&rsquo;, a leading boutique wealth management company in India. A CFPCM, LUTCF and LMF, Brijesh has authored 8 books till now on investments, business practices and personal growth, reaching over 1,00,000 readers. He is considered to be an opinion maker in the industry. His views and articles are regularly published by several leading publications and websites.</p>\r\n\r\n<p>Brijesh has conducted over 500 IFA programs in over 100 cities in India, reaching out to over 25,000 IFAs. His short motivational and strategy videos and messages under &lsquo;Masterstroke&rsquo; are having deep impact on IFAs across the country.</p>\r\n\r\n<p>Brijesh is also the founder of &lsquo;The Brijesh Dalmia Leadership Company&rsquo;. As a thinker, writer and motivational speaker in the area of life, leadership and personal development, Brijesh has transformed several lives through his coaching, workshops and keynote speaking. Till now, over 60,000 participants have benefitted from his powerful speaking, workshops and seminars.</p>\r\n\r\n<p>Brijesh&rsquo;s mission in life is to spread happiness in world, infuse positivity among people and motivate one and all to find the purpose of life and achieve it. He enjoys reading, writing, swimming and listening to music.</p>\r\n','brijesh.jpg','<p>This website is the brain child of Brijesh Dalmia. The purpose of this website is to motivate investment advisors to grow in their profession.</p>\r\n\r\n<p>The website also aims at providing value based information and services to investment advisors which can be useful in their profession.</p>\r\n','Yes','2017-01-12 07:12:01'),(3,'Payment Detail','26541789321055','Newtown','NEW447715','','Vishal Jaiswal','CITI Bank','Yes','2017-01-12 07:12:18');
/*!40000 ALTER TABLE `content_master` ENABLE KEYS */;
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
