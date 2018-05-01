-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: benfed
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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(255) NOT NULL,
  `notice_content` text,
  `last_date` datetime DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `archive` int(1) NOT NULL DEFAULT '0',
  `access` int(1) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'Guidelines For Making Payment To Farmers For Paddy Procured','&lt;p&gt;The procurement operation is in full swing in all nineteen district with more then 440 cooperative society procuring paddy on behalf of BENFED.&lt;/p&gt;\r\n',NULL,1,0,1,'2017-03-27 19:15:47'),(2,'Quotation For Photocopier Machine On Monthly Rental Basis','&lt;p&gt;The West Bengal State Co-operative Marketing Federation Ltd.(BENFED) invites quotation from reputed service providers in kolkata for providing photocopier machine on monthly rental basis.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Last Date :&lt;/strong&gt;7/02/2017&lt;/p&gt;\r\n',NULL,1,1,0,'2017-03-26 06:59:33'),(3,'Shifting Of BENFED Howrah Branch Office','&lt;p&gt;In terms of No. SCMF/Pers/643 Dated 10.02.2017. of General Manager (Administration) the office of BENFED Howrah is going to be shifted on 18.02.2017. from Present Premise.&lt;/p&gt;',NULL,1,0,0,'2017-03-26 06:28:56'),(4,'EOI for Operation & Maintenance Contract of Memari Himghar, Burdwan (Fresh Call)','&lt;p&gt;Expression of Interest is invited from the Resourceful Bidder for &amp;#39;Operation and Maintenance&amp;#39; contract of BENFED HIMGHAR at Memari, Modern Rice Mill complex, Memari, Burdwan Cold Storage of BENFED on &amp;#39;as is where is basis&amp;#39;.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Last Date :&lt;/strong&gt;10/02/2017&lt;/p&gt;\r\n',NULL,1,1,0,'2017-03-26 07:00:00');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:29
