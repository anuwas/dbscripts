-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: loanlead
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
-- Table structure for table `loanmovement`
--

DROP TABLE IF EXISTS `loanmovement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loanmovement` (
  `Loan_Movement_Code` int NOT NULL AUTO_INCREMENT,
  `Loan_Movement_Stage` varchar(100) DEFAULT 'Application',
  `Loan_Movement_Status` varchar(100) DEFAULT 'NotDisbursed',
  `Loan_Stage_Status` varchar(100) DEFAULT 'Forwarded',
  `Loan_Stage_Action_Status` varchar(100) DEFAULT 'Approved',
  `Loan_Stage_Status_Time_Stamp` time DEFAULT '00:00:00',
  `Between_Loan_Movement_Stage_Time_Elpsed` varchar(100) DEFAULT '2Hrs',
  `Within_Loan_Movement_Stage_Time_Elpsed` varchar(100) DEFAULT '30Mins',
  `Between_Loan_Movement_Stage_Time_Variance` varchar(100) DEFAULT '3Days',
  `Within_Loan_Movement_Stage_Time_Variance` varchar(100) DEFAULT '2Weeks',
  `Total_Elapsed_Time` varchar(100) DEFAULT '3Days',
  `Total_Time_Variance` varchar(100) DEFAULT '2Weeks',
  `Loan_Code` int DEFAULT '8000',
  `Stage_Status_By` varchar(100) DEFAULT 'googo',
  `Stage_Action_Status_By` varchar(100) DEFAULT 'googo',
  `Stage_Status_Job_By` varchar(100) DEFAULT 'googo',
  `Stage_Date` varchar(100) DEFAULT '1970-01-01',
  PRIMARY KEY (`Loan_Movement_Code`),
  KEY `CustomerCodexv` (`Loan_Code`),
  CONSTRAINT `CustomerCodexv` FOREIGN KEY (`Loan_Code`) REFERENCES `loandetails` (`Loan_Code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-15 16:56:47
