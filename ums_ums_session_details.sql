-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: ums
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
-- Table structure for table `ums_session_details`
--

DROP TABLE IF EXISTS `ums_session_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_session_details` (
  `user_id` int(11) NOT NULL,
  `system_session_id` varchar(50) NOT NULL,
  `session_status` int(2) NOT NULL,
  `native_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`system_session_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ums_session_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ums_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_session_details`
--

LOCK TABLES `ums_session_details` WRITE;
/*!40000 ALTER TABLE `ums_session_details` DISABLE KEYS */;
INSERT INTO `ums_session_details` VALUES (1,'08l57a0bisfkr86ki0p0urctnjoebom7',1,'ti9amoqzwwrf90bgxrjqwheyla1bk2oyuv0m1xxxb0v8q60xos'),(6,'9njckfgfe2mqkhl8c5d3084rt57nm50i',1,'nk57et2cyht8orr3vwshe74x3g1fpbwofpabkwspxev5zxyef6'),(1,'b8hp99it3u554v5kik43jd9kt49nb82j',1,'tb2fvepb2i3c9lbnc1y78b0k388yefw3gbhqlin4qnf7dkw8z3'),(1,'er8jjhkgjuihgh5gcei1ctqs9blcnju3',1,'qv9z8za4mhw60uh622l222cyl325go3vf9163cysw2byq2t9rh'),(1,'g365kfr5qsf7io16ihbcactngt3e1i7t',1,'frecwlvszz8cj40r860zwfiw9hwcdb0pqnbp9yb54k2nylveb7'),(1,'gap7qkeulds909mptp667gt75co0ek5f',1,'y291nzs58s8m5al3cejaeimoedtfr9o9ai3y7d3xdqn9aqgt7r'),(1,'m31st0pqr53jpefj5temu2s1199coqks',1,'rmkzwgg1tcwhqdva4qiwmldxs1zd1vr2xadppjxm139nmdkscm'),(1,'ogsggcnekcoin01tt9vvtk52u51msnv1',1,'cq37n8e9aa4z76vebyjpmcwean5vcqiyvvf3s7gtdfa8hoj39z'),(1,'s87elfclufuphbe50dptmtsviv3mj62i',1,'iwem3pu3cci03hbnl82hskwngwncggl9pd0dwqa8cc141ba9e9');
/*!40000 ALTER TABLE `ums_session_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:22
