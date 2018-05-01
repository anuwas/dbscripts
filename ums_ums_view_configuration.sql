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
-- Table structure for table `ums_view_configuration`
--

DROP TABLE IF EXISTS `ums_view_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_view_configuration` (
  `ums_view_configuration_id` int(10) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(155) DEFAULT NULL,
  `attribute_name` varchar(155) DEFAULT NULL,
  `index_view` int(1) NOT NULL DEFAULT '1',
  `create_view` int(1) NOT NULL DEFAULT '1',
  `update_view` int(1) NOT NULL DEFAULT '1',
  `view_view` int(1) DEFAULT '1',
  `sequence_number` int(10) NOT NULL,
  PRIMARY KEY (`ums_view_configuration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=706 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_view_configuration`
--

LOCK TABLES `ums_view_configuration` WRITE;
/*!40000 ALTER TABLE `ums_view_configuration` DISABLE KEYS */;
INSERT INTO `ums_view_configuration` VALUES (202,'company','sys_company_id',1,1,1,1,1),(203,'company','company_name',1,1,1,1,2),(204,'company','label_name',1,1,1,1,3),(205,'company','custom_label',1,1,1,1,4),(206,'company','address_id',1,1,1,1,5),(207,'company','company_status',1,1,1,1,6),(208,'company','parent_sys_company_id',1,1,1,1,7),(209,'company','company_id',1,1,1,1,8),(210,'company','company_creation_time',1,1,1,1,9),(211,'company','company_created_by',1,1,1,1,10),(212,'company','company_updated_time',1,1,1,1,11),(213,'company','company_updated_by',1,1,1,1,12),(220,'ums_role_option_map','role_id',1,1,1,1,1),(221,'ums_role_option_map','option_id',1,1,1,1,2),(222,'ums_role_option_map','enable',1,1,1,1,3),(223,'ums_role_option_map','ums_role_option_map_id',1,1,1,1,4),(308,'ums_user','user_id',1,1,1,1,1),(309,'ums_user','user_access_key',1,1,1,1,2),(310,'ums_user','username',1,1,1,1,3),(311,'ums_user','password',1,1,1,1,4),(312,'ums_user','user_type',1,1,1,1,5),(313,'ums_user','user_status',1,1,1,1,6),(314,'ums_user','additional_id',1,1,1,1,7),(315,'ums_user','first_name',1,1,1,1,8),(316,'ums_user','last_name',1,1,1,1,9),(317,'ums_user','email_id',1,1,1,1,10),(318,'ums_user','user_creation_stamp',1,1,1,1,11),(319,'ums_user','user_created_by',1,1,1,1,12),(320,'ums_user','user_updated_stamp',1,1,1,1,13),(321,'ums_user','user_updated_by',1,1,1,1,14),(358,'ums_option','option_id',1,1,1,1,1),(359,'ums_option','option_name',1,1,1,1,2),(360,'ums_option','option_description',1,1,1,1,3),(361,'ums_option','option_type',1,1,1,1,4),(362,'ums_option','option_area',1,1,1,1,5),(363,'ums_option','option_status',1,1,1,1,6),(364,'ums_option','option_link',1,1,1,1,7),(365,'ums_option','option_icon',1,1,1,1,8),(366,'ums_option','option_order',1,1,1,1,9),(367,'ums_option','parent_option_id',1,1,1,1,10),(368,'ums_option','enable_toolbox',1,1,1,1,11),(369,'ums_option','object_reference_key',1,1,1,1,12),(370,'ums_option','level',1,1,1,1,13),(371,'ums_option','icon_class',1,1,1,1,14),(372,'ums_option','add_data',1,1,1,1,15),(373,'ums_option','edit_data',1,1,1,1,16),(374,'ums_option','delete_data',1,1,1,1,17),(375,'ums_option','view_data',1,1,1,1,18),(379,'ums_user_role_map','ums_user_role_map_id',1,1,1,1,1),(380,'ums_user_role_map','user_id',1,1,1,1,2),(381,'ums_user_role_map','role_id',1,1,1,1,3),(400,'ppl_employees','sys_employee_id',1,1,1,1,1),(401,'ppl_employees','sys_company_id',1,1,1,1,2),(402,'ppl_employees','employee_id',1,1,1,1,3),(403,'ppl_employees','employee_name',1,1,1,1,4),(404,'ppl_employees','employee_doj',1,1,1,1,5),(405,'ppl_employees','employee_dob',1,1,1,1,6),(406,'ppl_employees','employee_photo_img',1,1,1,1,7),(407,'ppl_employees','Address',1,1,1,1,8),(408,'ppl_employees','Gender',1,1,1,1,9),(673,'EMPLOYEE','EMPLOYEEID',1,1,1,1,1),(674,'EMPLOYEE','EMPLOYEENAME',1,1,1,1,2),(675,'EMPLOYEE','DATEOFJOINING',1,1,1,1,3),(676,'EMPLOYEE','DATEOFBIRTH',1,1,1,1,4),(677,'EMPLOYEE','DATEOFEXIT',1,1,1,1,5),(678,'EMPLOYEE','COMPANYID',1,1,1,1,6),(679,'EMPLOYEE','CMPEMPID',1,1,1,1,7),(680,'EMPLOYEE','GRADE',1,1,1,1,8),(681,'EMPLOYEE','DESIGNATION',1,1,1,1,9),(682,'EMPLOYEE','DEPARTMENT',1,1,1,1,10),(683,'EMPLOYEE','BANKNAME',1,1,1,1,11),(684,'EMPLOYEE','BANKBRANCH',1,1,1,1,12),(685,'EMPLOYEE','BANKACCOUNT',1,1,1,1,13),(686,'EMPLOYEE','PFNUMBER',1,1,1,1,14),(687,'EMPLOYEE','ESICNUMBER',1,1,1,1,15),(688,'EMPLOYEE','UANNUMBER',1,1,1,1,16),(689,'EMPLOYEE','COUNTRY',1,1,1,1,17),(690,'EMPLOYEE','STATE',1,1,1,1,18),(691,'EMPLOYEE','CITY',1,1,1,1,19),(692,'EMPLOYEE','ADDRESSLINE',1,1,1,1,20),(693,'EMPLOYEE','ADDRESSLINE2',1,1,1,1,21),(694,'EMPLOYEE','PINCODE',1,1,1,1,22),(695,'EMPLOYEE','LANDMARK',1,1,1,1,23),(696,'EMPLOYEE','CONTACTNO',1,1,1,1,24),(697,'EMPLOYEE','CONTACTNO2',1,1,1,1,25),(698,'EMPLOYEE','EMAILID',1,1,1,1,26),(699,'EMPLOYEE','FILENAME',1,1,1,1,27),(700,'EMPLOYEE','MIMETYPE',1,1,1,1,28),(701,'EMPLOYEE','IMAGELASTUPDATE',1,1,1,1,29),(702,'EMPLOYEE','PAYSTRUCTUREID',1,1,1,1,30),(703,'EMPLOYEE','ROOTCOMPANYID',1,1,1,1,31),(704,'EMPLOYEE','MANAGER',1,1,1,1,32),(705,'EMPLOYEE','IMAGE',1,1,1,1,33);
/*!40000 ALTER TABLE `ums_view_configuration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:23
