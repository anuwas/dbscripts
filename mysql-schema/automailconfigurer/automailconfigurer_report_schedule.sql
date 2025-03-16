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
-- Table structure for table `report_schedule`
--

DROP TABLE IF EXISTS `report_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_schedule` (
  `report_schedule_id` int NOT NULL AUTO_INCREMENT,
  `report_query_id` int NOT NULL,
  `report_day` varchar(45) DEFAULT NULL,
  `report_time` varchar(45) DEFAULT NULL,
  `active_inactive` varchar(45) DEFAULT NULL,
  `generate_report` varchar(45) DEFAULT NULL,
  `send_mail` varchar(45) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_schedule`
--

LOCK TABLES `report_schedule` WRITE;
/*!40000 ALTER TABLE `report_schedule` DISABLE KEYS */;
INSERT INTO `report_schedule` VALUES (2,1,'WED','01:55 AM','A','Y','Y','2020-12-02 19:32:45'),(3,1,'WED','01:57 AM','A','Y','Y','2020-12-02 19:32:45'),(4,1,'WED','01:59 AM','A','Y','Y','2020-12-02 19:32:45'),(5,1,'WED','02:01 AM','A','Y','Y','2020-12-02 19:32:45'),(6,1,'FRI','12:20 AM','A','Y','Y','2020-12-02 19:32:45'),(7,1,'SAT','12:20 AM','A','Y','Y','2020-12-02 19:32:45'),(8,1,'SUN','12:20 AM','A','Y','Y','2020-12-02 19:32:45'),(9,1,'MON','12:20 AM','A','Y','Y','2020-12-02 20:36:42'),(10,1,'TUE','12:20 AM','A','Y','Y','2020-12-02 20:36:42'),(11,1,'WED','12:20 AM','A','Y','Y','2020-12-02 20:36:42'),(12,2,'THU','12:20 AM','A','Y','Y','2020-12-02 20:36:42'),(13,1,'FRI','12:20 AM','A','Y','Y','2020-12-02 20:36:42'),(14,1,'SAT','12:20 AM','A','Y','Y','2020-12-02 20:36:42'),(15,1,'SUN','12:20 AM','A','Y','Y','2020-12-02 20:36:42');
/*!40000 ALTER TABLE `report_schedule` ENABLE KEYS */;
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
