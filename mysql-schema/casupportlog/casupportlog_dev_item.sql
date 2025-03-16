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
-- Table structure for table `dev_item`
--

DROP TABLE IF EXISTS `dev_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dev_item` (
  `dev_item_id` int NOT NULL AUTO_INCREMENT,
  `item_parent_id` int NOT NULL DEFAULT '0',
  `item_number` varchar(45) DEFAULT NULL,
  `parent_item` varchar(45) DEFAULT NULL,
  `item_group` varchar(45) DEFAULT NULL,
  `item_type` varchar(45) DEFAULT NULL,
  `item_sub_type` varchar(45) DEFAULT NULL,
  `item_story_point` int NOT NULL DEFAULT '0',
  `item_status` varchar(45) DEFAULT NULL,
  `item_sprint_id` int NOT NULL DEFAULT '0',
  `item_sprint_name` varchar(45) DEFAULT NULL,
  `item_sprint_status` varchar(45) DEFAULT NULL,
  `item_sprint_status_comment` text,
  `item_subject` varchar(145) DEFAULT NULL,
  `item_description` text,
  `item_acceptance_ctriteria` text,
  `item_epic_name` varchar(45) DEFAULT NULL,
  `item_current_board` varchar(45) DEFAULT NULL,
  `application_name` varchar(45) DEFAULT NULL,
  `item_priority` varchar(45) DEFAULT NULL,
  `is_refined` varchar(45) DEFAULT NULL,
  `refine_date` varchar(45) DEFAULT NULL,
  `refine_comment` text,
  `link_item` varchar(45) DEFAULT NULL,
  `link_comment` text,
  `developer_name` varchar(45) DEFAULT NULL,
  `tester_name` varchar(45) DEFAULT NULL,
  `onboared_sprint` varchar(45) DEFAULT NULL,
  `delivered_sprint` varchar(45) DEFAULT NULL,
  `delivery_status` varchar(45) DEFAULT NULL,
  `item_sys_release_date` date DEFAULT NULL,
  `item_qa_release_date` date DEFAULT NULL,
  `item_uat_release_date` date DEFAULT NULL,
  `item_uat_rfc` varchar(45) DEFAULT NULL,
  `item_prd_release_date` date DEFAULT NULL,
  `item_prd_rfc` varchar(45) DEFAULT NULL,
  `item_uat_bug_count` int DEFAULT '0',
  `item_prd_bug_count` int DEFAULT '0',
  `project_name` varchar(45) DEFAULT NULL,
  `item_created_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dev_item_id`),
  UNIQUE KEY `item_uat_bug_number_UNIQUE` (`item_uat_bug_count`),
  UNIQUE KEY `item_prd_bug_number_UNIQUE` (`item_prd_bug_count`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-15 16:52:01
