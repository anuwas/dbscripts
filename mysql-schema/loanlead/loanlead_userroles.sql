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
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `User_Role_Code` int NOT NULL AUTO_INCREMENT,
  `User_Role_Name` varchar(100) DEFAULT 'Mugabi',
  `User_Role_Cat` varchar(100) DEFAULT 'xxxx',
  `User_Code` int DEFAULT '6000',
  `Job_Code` int DEFAULT '5000',
  `Unit_Code` int DEFAULT '4000',
  `Department_Code` int DEFAULT '3000',
  `Branch_Code` int DEFAULT '2000',
  `Entity_Code` int DEFAULT '1000',
  `Created_By` varchar(100) DEFAULT 'googo',
  `Approved_By` varchar(100) DEFAULT 'googo',
  `Creation_Date` date DEFAULT '1970-01-01',
  PRIMARY KEY (`User_Role_Code`),
  KEY `EntiCodeb1x` (`Entity_Code`),
  KEY `BranchCode1x` (`Branch_Code`),
  KEY `DepartmentCode1x` (`Department_Code`),
  KEY `UnitCode1x` (`Unit_Code`),
  KEY `JobCode1x` (`Job_Code`),
  KEY `UserCode1` (`User_Code`),
  CONSTRAINT `BranchCode1x` FOREIGN KEY (`Branch_Code`) REFERENCES `branches` (`Branch_Code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `DepartmentCode1x` FOREIGN KEY (`Department_Code`) REFERENCES `departments` (`Department_Code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `EntiCodeb1x` FOREIGN KEY (`Entity_Code`) REFERENCES `entity` (`Entity_Code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `JobCode1x` FOREIGN KEY (`Job_Code`) REFERENCES `jobs` (`Job_Code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `UnitCode1x` FOREIGN KEY (`Unit_Code`) REFERENCES `units` (`Unit_Code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `UserCode1` FOREIGN KEY (`User_Code`) REFERENCES `users` (`User_Code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-15 16:56:45
