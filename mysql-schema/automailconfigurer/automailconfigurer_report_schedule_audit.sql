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
-- Table structure for table `report_schedule_audit`
--

DROP TABLE IF EXISTS `report_schedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_schedule_audit` (
  `report_schedule_audit_id` int NOT NULL AUTO_INCREMENT,
  `report_query_id` int NOT NULL,
  `report_schedule_id` int DEFAULT NULL,
  `report_name` varchar(145) DEFAULT NULL,
  `generated_filename` varchar(145) DEFAULT NULL,
  `report_generation_status` varchar(145) DEFAULT NULL,
  `report_generation_time` datetime DEFAULT NULL,
  `report_mail_send_status` varchar(145) DEFAULT NULL,
  `report_mail_send_time` datetime DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_schedule_audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_schedule_audit`
--

LOCK TABLES `report_schedule_audit` WRITE;
/*!40000 ALTER TABLE `report_schedule_audit` DISABLE KEYS */;
INSERT INTO `report_schedule_audit` VALUES (1,1,2,NULL,'report_file_1_v1.xlsx','generated','2020-12-24 02:06:01',NULL,'2020-12-24 02:06:01','2020-12-23 20:36:00'),(2,1,3,NULL,'report_file_1_v2.xlsx','generated','2020-12-24 02:08:00',NULL,'2020-12-24 02:08:00','2020-12-23 20:38:00'),(3,1,4,NULL,'report_file_1_v3.xlsx','generated','2020-12-24 02:10:00',NULL,'2020-12-24 02:10:00','2020-12-23 20:40:00'),(4,1,2,NULL,NULL,'FileNotFoundException','2021-01-06 01:30:02',NULL,NULL,'2021-01-05 20:00:02'),(5,1,3,NULL,NULL,'FileNotFoundException','2021-01-06 01:32:00',NULL,NULL,'2021-01-05 20:02:00'),(6,1,4,NULL,NULL,'FileNotFoundException','2021-01-06 01:34:01',NULL,NULL,'2021-01-05 20:04:00'),(7,1,3,NULL,'report_file_1_v1.xlsx','generated','2021-01-06 01:42:01',NULL,'2021-01-06 01:42:01','2021-01-05 20:12:00'),(8,1,5,NULL,'report_file_1_v2.xlsx','generated','2021-01-06 01:46:01',NULL,'2021-01-06 01:46:01','2021-01-05 20:16:00'),(9,1,2,NULL,'report_file_1_v3.xlsx','generated','2021-01-06 01:55:01',NULL,'2021-01-06 01:55:01','2021-01-05 20:25:01'),(10,1,3,NULL,'report_file_1_v4.xlsx','generated','2021-01-06 01:57:00',NULL,'2021-01-06 01:57:00','2021-01-05 20:27:00'),(11,1,4,NULL,'report_file_1_v5.xlsx','generated','2021-01-06 01:59:00',NULL,'2021-01-06 01:59:00','2021-01-05 20:29:00'),(12,1,5,NULL,'report_file_1_v6.xlsx','generated','2021-01-06 02:01:00',NULL,'2021-01-06 02:01:00','2021-01-05 20:31:00');
/*!40000 ALTER TABLE `report_schedule_audit` ENABLE KEYS */;
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
