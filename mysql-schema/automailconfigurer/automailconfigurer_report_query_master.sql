-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: automailconfigurer
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `report_query_master`
--

DROP TABLE IF EXISTS `report_query_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_query_master` (
  `report_query_id` int NOT NULL AUTO_INCREMENT,
  `report_query` text,
  `mail_to` varchar(245) DEFAULT NULL,
  `mail_cc` varchar(245) DEFAULT NULL,
  `mail_subject` text,
  `mail_body` text,
  `report_filename` varchar(145) DEFAULT NULL,
  `report_sheet_name` varchar(145) DEFAULT NULL,
  `report_name` varchar(145) DEFAULT NULL,
  `report_description` text,
  `active_inactive` varchar(45) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_query_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_query_master`
--

LOCK TABLES `report_query_master` WRITE;
/*!40000 ALTER TABLE `report_query_master` DISABLE KEYS */;
INSERT INTO `report_query_master` VALUES (1,'SELECT * FROM automailconfigurer.test_table','a@a.com','a@a.com','Subject','<p>Hi ,</p><p><br></p><p>This is mailbody.</p><p><br></p><p><span style=\"background-color: rgb(230, 0, 0);\">Thansk,</span></p><p><span style=\"background-color: rgb(230, 0, 0);\">Anupam</span></p>','report_file_1','report_sheet','test_report_1','test_report_description','A','2020-12-01 20:44:07'),(2,'SELECT address FROM test_table','c@c.com','d@a.com','Mail Subject -2 ','<p>Hi,</p><p>This is mail body report 2</p><p>&nbsp;</p><p>Thanks,</p><p>A</p>','report_file_2','Report Sheet-2','test_report_2','Report 2 description','I','2020-12-07 20:39:53');
/*!40000 ALTER TABLE `report_query_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-15 16:46:31
