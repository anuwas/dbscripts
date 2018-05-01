-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: hep4all
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
-- Table structure for table `template_email_history`
--

DROP TABLE IF EXISTS `template_email_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_email_history` (
  `tehid` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `print_master_id` int(10) NOT NULL DEFAULT '0',
  `print_master_code_id` int(10) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `to_email` varchar(155) DEFAULT NULL,
  `show_other_wall` int(1) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tehid`),
  KEY `FK_ETH_PRINT_MASTER` (`print_master_id`),
  KEY `FK_ETH_PRINT_CODE` (`print_master_code_id`),
  KEY `FK_ETH_USER` (`user_id`),
  CONSTRAINT `FK_ETH_PRINT_CODE` FOREIGN KEY (`print_master_code_id`) REFERENCES `print_master_code` (`print_master_code_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ETH_PRINT_MASTER` FOREIGN KEY (`print_master_id`) REFERENCES `print_master` (`print_master_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ETH_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_email_history`
--

LOCK TABLES `template_email_history` WRITE;
/*!40000 ALTER TABLE `template_email_history` DISABLE KEYS */;
INSERT INTO `template_email_history` VALUES (9,1,35,53,'UsRVvNgJz3','vermatech2010@gmail.com',0,'2015-06-11 16:42:46'),(13,1,143,91,'kR1EeSQLWc','vermatech2010@gmail.com',0,'2015-06-13 08:13:35'),(18,36,166,116,'ClpmuJzNg1','carlos@scfpt.com',1,'2015-06-16 19:09:39'),(31,1,35,176,'xbIzjeghLH','vermatech2010@gmail.com',0,'2015-06-29 02:14:55'),(35,1,35,180,'kV16mZcoGZ','vermatech2010@gmail.com',0,'2015-06-30 06:18:57'),(36,1,216,181,'fR8yKyjXSA','vermatech2010@gmail.com',0,'2015-06-30 06:52:21'),(38,1,35,183,'NSOviKBffV','vermatech2010@gmail.com',0,'2015-07-01 02:31:00'),(39,1,216,184,'5Fx7nIiEsC','vermatech2010@gmail.com',0,'2015-07-01 02:32:21'),(41,1,35,187,'AyO77hvCi2','vermatech2010@gmail.com',0,'2015-07-01 09:17:04'),(45,50,224,193,'BxUnNYfM6p','maryjoyce@scfpt.com',1,'2015-07-16 18:50:52'),(54,21,339,281,'w45LaEZvwO','todd@me.com',1,'2015-10-14 22:01:31'),(55,21,343,282,'nsRxYSZA50','todd@scfpt.com',1,'2015-11-02 16:27:43'),(56,21,344,283,'tmRAkJuXOu','todd@emr4all.com',1,'2015-11-02 16:28:08'),(57,21,345,284,'B9WPWptszJ','toddj@me.com',1,'2015-11-02 17:15:30'),(58,21,346,285,'Jx0wCje3F6','todd@emr4all.com',1,'2015-11-02 17:26:20'),(59,21,348,287,'sEcaGRatMF','toddj@me.com',1,'2015-11-20 16:42:51'),(60,21,349,288,'6Bmscj0w8v','todd@scfpt.com',1,'2015-11-20 16:44:46'),(63,70,351,293,'1qUqLlDWjd','brentonhanes@me.com',1,'2015-11-20 18:39:33'),(64,70,359,294,'TaQb4Zfc7I','brentonhanes@me.com',1,'2015-11-20 18:41:26'),(67,21,371,299,'qRuSLlARlr','toddj@me.com',1,'2015-11-28 15:34:57'),(70,21,384,310,'VJ4ulv7o8q','toddj@me.com',1,'2015-12-01 16:25:41'),(72,21,387,314,'4u8Z2BopGx','phillip@scfpt.com',1,'2015-12-03 19:45:46'),(73,21,389,315,'GmrjCRBcNq','toddj@me.com',1,'2015-12-09 16:11:36'),(79,82,410,328,'lUwrElu6M5','im24carat@msn.com',1,'2015-12-11 16:36:46'),(83,21,422,340,'1E59gDMETe','gil.courtney@dynatronics.com',1,'2015-12-12 22:38:18'),(84,21,435,351,'9s9hKfQlE1','toddj@me.com',1,'2015-12-13 12:19:49'),(86,21,445,356,'dsXQIo5QEU','toddj@me.com',1,'2015-12-14 06:15:17'),(87,21,454,362,'RCmqCBO7Hg','toddj@me.com',1,'2015-12-14 07:04:26'),(88,21,469,374,'qMFU7hqW6V','toddj@me.com',1,'2015-12-15 05:43:00'),(90,21,481,383,'lHKGDkDtbx','toddj@me.com',1,'2015-12-16 05:09:39'),(91,21,481,384,'7BmykK2TP5','toddj@me.com',1,'2015-12-16 05:09:39'),(94,21,497,400,'fBxIZGsMSm','toddj@me.com',1,'2015-12-17 16:45:40'),(95,21,504,405,'7GjFjoDkpm','toddj@me.com',1,'2015-12-22 05:26:11'),(96,33,511,411,'QAKf4YO9LY','sudhu.void@gmail.com',0,'2015-12-22 18:24:23'),(97,33,512,412,'mF8utWWymF','sudhu.void@gmail.com',1,'2015-12-22 18:41:18'),(102,121,523,421,'4C6Bn8CiH9','sudhu.void@gmail.com',1,'2015-12-24 19:38:42'),(103,121,524,422,'i3G77q0tir','sudhu.void@gmail.com',1,'2015-12-24 19:39:39'),(106,1,547,437,'FGfn00KjiQ','toddj@me.com',1,'2015-12-29 12:50:25'),(108,121,549,439,'5dbPJdq9gN','sudhu.void@gmail.com',1,'2015-12-30 14:23:05'),(109,121,549,440,'kvN6HKbm4v','sudhu.void@gmail.com',1,'2015-12-30 14:24:55'),(110,121,550,441,'yDaOkc7n2j','sudhu.void@gmail.com',1,'2015-12-30 14:27:22'),(113,121,553,444,'WDFLSfxopY','sudhu.void@gmail.com',1,'2016-01-04 15:50:37'),(114,121,554,445,'fnG5UGjhhD','sudhu.void@gmail.com',1,'2016-01-04 15:52:00'),(115,139,555,446,'njhajHyThP','shelle@scfpt.com',1,'2016-01-08 05:01:02'),(116,21,556,447,'uPPGnGO9cF','toddj@me.com',1,'2016-01-10 01:07:15'),(117,44,561,451,'j5x1gCPL1k','nissan.amir@gmail.com',1,'2016-01-11 19:46:53'),(119,21,579,466,'fF17ztPCb0','toddj@me.com',1,'2016-01-13 06:54:38'),(120,21,580,467,'dtwQjifsWU','toddj@me.com',1,'2016-01-13 13:42:13'),(121,143,582,469,'6TigeJaSQg','vermatech2010@gmail.com',1,'2016-01-13 13:59:59'),(122,143,583,470,'whRZO3cEIH','vermatech2010@gmail.com',1,'2016-01-18 13:33:02'),(124,121,618,495,'G5M2GhqRNo','sudhu.void@gmail.com',1,'2016-01-24 17:24:15'),(125,121,619,496,'MBaQZJHlRb','sudhu.void@gmail.com',1,'2016-01-24 17:32:53'),(126,121,620,497,'7PASjhXtBz','sudhu.void@gmail.com',1,'2016-01-24 17:37:26'),(127,121,621,498,'yUPcujXDJh','sudhu.void@gmail.com',1,'2016-01-24 17:52:16'),(128,121,622,499,'AskUR6qKtL','sudhu.void@gmail.com',1,'2016-01-24 17:54:25'),(129,121,623,500,'DrON7giEOt','sudhu.void@gmail.com',1,'2016-01-24 18:02:53'),(130,143,672,540,'XSlnkc5okd','vermatech2010@gmail.com',1,'2016-02-01 17:29:58'),(131,143,673,541,'7VzJi1TeSt','vermatech2010@gmail.com',1,'2016-02-01 18:26:51'),(132,139,674,542,'ZEvhBwyn70','marc@agilept.com',1,'2016-02-01 20:46:58'),(133,70,677,543,'6mWI626rzz','juliecraner@gmail.com',1,'2016-02-01 22:39:06'),(134,154,680,552,'qO9mbbfNtB','anthonypdinh@gmail.com',1,'2016-02-02 00:00:08'),(135,155,681,553,'9DaZ14cO36','khoitran84@yahoo.com',1,'2016-02-02 00:00:13'),(137,143,695,559,'Muof73yvwe','vermatech2010@gmail.com',1,'2016-02-02 02:02:40'),(138,70,703,563,'ZHOwKOE9ZV','caligirl63719@yahoo.com',1,'2016-02-02 17:54:49'),(139,160,706,564,'vGFT59eHUf','janlackey1@gmail.com',1,'2016-02-02 20:53:47'),(140,156,701,565,'ztfS6Nc9Zw','vina@3-walkwater.com',1,'2016-02-02 23:44:53'),(141,156,701,566,'0mfcIP0Ceq','vina@e-walkwater.com',1,'2016-02-02 23:46:10'),(142,21,708,568,'fBE9Kuo6cz','toddj@me.com',1,'2016-02-03 17:07:15'),(143,156,713,575,'usCeMSVjkc','shiking@yahoo.com',1,'2016-02-03 17:34:23'),(144,21,751,604,'IFqqAvSFf4','chingkay.chow@gvconcepts.com',1,'2016-02-09 17:49:57'),(145,139,758,610,'1uC1BSFwYR','joelmassuda@gmail.com',1,'2016-02-10 23:29:11'),(146,156,762,614,'pDQ6pxz269','vina@e-walkwater.com ',1,'2016-02-18 17:30:51'),(147,156,763,615,'NC04IHhQ0S','vina@e-walkwater.com ',1,'2016-02-18 17:49:00'),(148,21,784,630,'sTRpMLdvnQ','jennish@visolve.com',1,'2016-03-03 13:09:50'),(149,21,785,631,'KPcwHb1p45','Toddj@me.com',1,'2016-03-04 07:57:22'),(150,156,787,632,'M28xElP8wf','kelleyj66982@sbcglobal.net',1,'2016-03-08 16:41:53'),(151,156,831,670,'Ta5Wb9W1Lj','ptvddang@yahoo.com',1,'2016-03-16 02:51:36'),(152,1,832,671,'cDzSPDMfOe','toddj@me.com',1,'2016-03-16 20:34:02'),(153,1,834,673,'lCIncdUa94','annarooneypt@yahoo.com',1,'2016-03-19 17:23:45'),(154,182,844,679,'BI2PJCBhBB','juli@leonardopt.com',1,'2016-03-28 02:48:50'),(155,21,847,681,'tAia6n1za5','ken.bush@nolimitsphysicaltherapy.com',0,'2016-03-28 15:34:08'),(156,156,850,684,'wlS2BB63JH','prakyasvirgo@gmail.com',1,'2016-03-28 22:35:14'),(157,156,851,685,'982Peuzl7C','mei@scfpt.com',1,'2016-03-28 23:41:16'),(158,203,856,689,'UJPMghMdLR','h4a@audreyv.eml.cc',1,'2016-04-22 16:51:39'),(159,203,856,690,'plf1yPCbKI','h4a@audreyv.eml.cc',1,'2016-04-22 16:51:39'),(160,203,856,691,'63NliAFwiA','h4a@audreyv.eml.cc',1,'2016-04-22 16:51:44'),(161,204,872,706,'xqMpFOgB7C','ykim7210@gmail.com',1,'2016-05-10 17:33:44'),(162,204,873,707,'03saiW3UDm','ykim7210@gmail.com',1,'2016-05-10 17:34:36'),(163,204,882,716,'Ugvx79zKfC','ykim7210@gmail.com',1,'2016-05-13 19:56:47'),(164,204,887,721,'BB7HN0rpvZ','ray@scfpt.com',1,'2016-05-20 21:14:55'),(165,48,892,726,'pKp3TLd3QF','gvirk@comcast.net',1,'2016-06-02 20:11:29'),(166,48,893,727,'n0n4dosflg','gvirk@comcast.net',1,'2016-06-02 20:12:36'),(167,82,894,728,'eEcUPcT9Rr','judy@nextsteprehabilitation.com',1,'2016-06-16 20:33:29'),(168,160,896,730,'10n9ova4Uq','juliecraner@gmail.com',1,'2016-07-07 19:55:10'),(169,82,904,736,'E9toF4yNQt','joytris@yahoo.com',1,'2016-07-25 00:14:29'),(170,48,913,743,'lAJZmXrbA5','yang.juilong@gmail.com',1,'2016-08-11 18:53:34');
/*!40000 ALTER TABLE `template_email_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:26
