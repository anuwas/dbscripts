-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: casupportlog
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
-- Table structure for table `support_item`
--

DROP TABLE IF EXISTS `support_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_number` double NOT NULL,
  `item_type` varchar(45) NOT NULL,
  `item_subject` text,
  `item_owner` varchar(145) DEFAULT NULL,
  `item_status` varchar(45) DEFAULT NULL,
  `item_description` text,
  `item_assigned` varchar(145) DEFAULT NULL,
  `associated_item` varchar(145) DEFAULT NULL,
  `item_created_date` datetime DEFAULT NULL,
  `item_close_date` datetime DEFAULT NULL,
  `item_created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `application_name` varchar(45) DEFAULT NULL,
  `priority` int NOT NULL DEFAULT '0',
  `aged` varchar(2) NOT NULL DEFAULT 'N',
  `bounce` int NOT NULL DEFAULT '0',
  `primary_sla_breached` varchar(2) NOT NULL DEFAULT 'N',
  `secondary_sla_breached` varchar(2) NOT NULL DEFAULT 'N',
  `tertiry_sla_breached` varchar(2) NOT NULL DEFAULT 'N',
  `resoluation` text,
  `rfc_number` double DEFAULT NULL,
  `tower_name` varchar(45) NOT NULL DEFAULT 'Java',
  `cronical_report` varchar(45) NOT NULL DEFAULT 'N',
  `revised_tower` varchar(45) DEFAULT NULL,
  `aged_on_date` datetime DEFAULT NULL,
  `breach_justification` text,
  `aged_justification` text,
  `debt_class` varchar(45) DEFAULT NULL,
  `debt_type` varchar(45) DEFAULT NULL,
  `debt_remedial_mechanism` varchar(45) DEFAULT NULL,
  `debt_estimate` varchar(45) DEFAULT NULL,
  `debt_comment` text,
  `modified_datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rca_document` varchar(255) DEFAULT NULL,
  `document_shared_date` date DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-15 16:52:00
