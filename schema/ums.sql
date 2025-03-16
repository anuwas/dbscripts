/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.13-log : Database - ums
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ums` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `sys_company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `label_name` varchar(255) NOT NULL,
  `custom_label` varchar(255) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `company_status` int(2) NOT NULL,
  `parent_sys_company_id` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) DEFAULT NULL,
  `company_creation_time` datetime NOT NULL,
  `company_created_by` int(11) NOT NULL,
  `company_updated_time` datetime NOT NULL,
  `company_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`sys_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

/*Data for the table `company` */

insert  into `company`(`sys_company_id`,`company_name`,`label_name`,`custom_label`,`address_id`,`company_status`,`parent_sys_company_id`,`company_id`,`company_creation_time`,`company_created_by`,`company_updated_time`,`company_updated_by`) values (1,'PeoplePro','PeoplePro','',NULL,1,0,NULL,'2017-05-02 20:26:31',1,'2017-05-02 20:26:31',1),(2,'Redknee','Redknee','Redknee',NULL,1,0,NULL,'2017-05-08 23:27:21',1,'2017-05-08 23:27:32',1),(3,'Redknee Asia Pacific','Redknee Asia Pacific','Redknee Asia Pacific',NULL,1,2,NULL,'2017-05-08 23:28:36',1,'2017-05-08 23:28:41',1),(4,'Redknee India','Redknee India','Redknee India',NULL,1,3,NULL,'2017-05-08 23:29:39',1,'2017-05-08 23:29:45',1),(5,'Redknee Easter Region','Redknee Easter Region','Redknee Easter Region',NULL,1,4,NULL,'2017-05-08 23:30:39',1,'2017-05-08 23:30:47',1),(6,'Redknee Kolkata','Redknee Kolkata','Redknee Kolkata',NULL,1,5,NULL,'2017-05-08 23:31:20',1,'2017-05-08 23:31:27',1),(7,'Redknee Bhuvneshwar','Redknee Bhuvneshwar','Redknee Bhuvneshwar',NULL,1,5,NULL,'2017-05-08 23:32:17',1,'2017-05-10 21:11:05',1);

/*Table structure for table `ums_login_details` */

DROP TABLE IF EXISTS `ums_login_details`;

CREATE TABLE `ums_login_details` (
  `user_id` int(11) NOT NULL,
  `system_session_id` varchar(50) NOT NULL,
  `native_token` varchar(100) DEFAULT NULL,
  `login_time` datetime NOT NULL,
  `access_ip` varchar(45) DEFAULT NULL,
  `access_port` varchar(5) DEFAULT NULL,
  `access_gateway` varchar(45) DEFAULT NULL,
  `actual_access_ip` varchar(45) DEFAULT NULL,
  `device_type` varchar(100) DEFAULT NULL,
  `operating_system` varchar(100) DEFAULT NULL,
  `operating_system_manufacturer` varchar(100) DEFAULT NULL,
  `browser_name` varchar(100) DEFAULT NULL,
  `browser_version` varchar(100) DEFAULT NULL,
  `browser_manufacturer` varchar(100) DEFAULT NULL,
  `browser_type` varchar(100) DEFAULT NULL,
  `browser_rendering_engine` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`system_session_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ums_login_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ums_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ums_login_details` */

insert  into `ums_login_details`(`user_id`,`system_session_id`,`native_token`,`login_time`,`access_ip`,`access_port`,`access_gateway`,`actual_access_ip`,`device_type`,`operating_system`,`operating_system_manufacturer`,`browser_name`,`browser_version`,`browser_manufacturer`,`browser_type`,`browser_rendering_engine`) values (1,'08l57a0bisfkr86ki0p0urctnjoebom7','ti9amoqzwwrf90bgxrjqwheyla1bk2oyuv0m1xxxb0v8q60xos','2017-05-02 20:17:10','103.50.80.57','64776','CGI/1.1','103.50.80.57','Desktop','Windows 7','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','53.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'14tdqt2cthdgn0mfodi428pk9vfpnjsn','ptitq2xras2exyp7ec2qjrim68v0jwvvsihx3gfcrfwyd7o70m','2017-05-01 19:08:17','103.50.80.221','56488','CGI/1.1','103.50.80.221','Desktop','Windows 7','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','53.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(3,'1js4007vp11878jn8lqftdof2s6dhaqa','bed4tzl7wglqcjcqkbd7q0slyews1z0dfs76sjv5cfurbzw0v8','2017-04-29 12:31:48','47.15.4.50','39014','CGI/1.1','47.15.4.50','Mobile','Android','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','4.0','Google Chrome','Google Chrome','Google Chrome'),(1,'25pg7ms39lcm4lddkrb7hfd6tup1dkvg','idtxysv8ahg8z64a4jrge4ywo3dad1jr6iq0n4h8skej0b5sbm','2017-04-21 17:12:37','111.93.169.246','54742','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'2sd3l7cvf8hol2hqu7hmn8i7am9hnl73','vpoqatlno6xf08y9e4do7qypqpbkkcygv5xukxyoadyt642fcv','2017-05-01 11:43:17','182.66.97.238','40687','CGI/1.1','182.66.97.238','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'3h202s3tu5kb4i5e5va6mrd5mdnrrnoi','he0m11myv4mxiveylxx49pjohkr2hzugr2zywgfft1gket7f5k','2017-04-22 13:46:56','182.66.117.10','33894','CGI/1.1','182.66.117.10','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(3,'42ae0pb73j6berldqieup1pimvdk8ke0','3ood7v89glovvy6b7gxz1vaw0ct63v96z2v0ujy03y3dqxs5zz','2017-04-24 11:50:55','111.93.169.246','50468','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'5lbfff7fvo6qhe1fmeehf2es4e152fs2','x88e31ewu8a6r6k0fvpmmfqzdoj6j72zfgq0tbwigitw4v25ze','2017-04-29 10:33:28','45.251.235.103','55556','CGI/1.1','45.251.235.103','Mobile','Android','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','4.0','Google Chrome','Google Chrome','Google Chrome'),(1,'678chl6n34e4r8uc9cv4tk07k9advgk5','wi12kn9ddqrwbqrcs0zlq4m9lvrn83rdpojyuivo1vli9znigy','2017-04-24 10:54:12','111.93.169.246','49460','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'6g4do38ge5ee1iinja95l0anhsgt0289','e477pqwmfo4siqzz4wz814yih8izqqbd3yy75i4hmy9g8tqn48','2017-04-21 13:03:05','111.93.169.246','52995','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'6p6b90v77dq9604nckh02bsb4f199mgn','c2r01c3ye9otky84xkekviv3qk4prwgvo1dz431qcmnv33ggaz','2017-04-21 13:14:27','103.50.81.120','55480','CGI/1.1','103.50.81.120','Desktop','Windows 7','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','52.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'7e6iagpj9sar269h7v75ser3brq4klsl','8gl4mjof0090xc53i3etazv1dydoo7oc9y0dxuql3svumecfp5','2017-05-02 12:18:36','111.93.169.246','50805','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','52.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(3,'7lm0ljf7i5kiskvr028d8a8hae8ubss1','ncljeb7bhg6xzpwymfmcotb5p6ft17ywhqqwb12ga2acy50abv','2017-04-21 22:32:15','47.15.8.32','52430','CGI/1.1','47.15.8.32','Desktop','Ubuntu','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','53.0.2785.143','Google Chrome','Google Chrome','Google Chrome'),(1,'8v0ktiqujhven6e9ma8102te9a9frqb2','hdkdz2vihxrn9l63l12y7xqzmarr6e5cmlat6z442cz3jxusnv','2017-05-02 15:32:45','111.93.169.246','52771','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(6,'9njckfgfe2mqkhl8c5d3084rt57nm50i','nk57et2cyht8orr3vwshe74x3g1fpbwofpabkwspxev5zxyef6','2017-04-24 12:05:33','111.93.169.246','38626','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'a0htfo75avfgvk97ruekf400k5h200e0','mqnxzxp9fsn2g4sg7vv3oif09isx0p12fk7hbvavcb2t1w5zyj','2017-04-24 11:50:06','111.93.169.246','50787','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'a67t03ssmajcbo5v02t2st30tbmtus1j','6kxgik629sxj9yk035xza3ut81ad5wtr6z053xu1f93l6ynh80','2017-04-21 23:06:31','103.50.81.120','53798','CGI/1.1','103.50.81.120','Desktop','Windows 7','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','52.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'b8hp99it3u554v5kik43jd9kt49nb82j','tb2fvepb2i3c9lbnc1y78b0k388yefw3gbhqlin4qnf7dkw8z3','2017-05-02 17:35:13','103.50.80.57','63680','CGI/1.1','103.50.80.57','Desktop','Windows 7','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','53.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'dpk2j1h5o4lgm7hlcr2d2vhimag8sh6i','c3zb2xi66e7ryvzgbj2blocv3bqv48g3e76b363lo2pw4x9vwv','2017-04-22 14:56:40','47.15.4.107','54749','CGI/1.1','47.15.4.107','Mobile','Android','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','4.0','Google Chrome','Google Chrome','Google Chrome'),(1,'er8jjhkgjuihgh5gcei1ctqs9blcnju3','qv9z8za4mhw60uh622l222cyl325go3vf9163cysw2byq2t9rh','2017-05-02 20:40:49','103.50.80.57','65194','CGI/1.1','103.50.80.57','Desktop','Windows 7','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','53.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'g365kfr5qsf7io16ihbcactngt3e1i7t','frecwlvszz8cj40r860zwfiw9hwcdb0pqnbp9yb54k2nylveb7','2017-05-02 20:34:08','202.78.232.184','49778','CGI/1.1','202.78.232.184','Desktop','Windows 10','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','53.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'gap7qkeulds909mptp667gt75co0ek5f','y291nzs58s8m5al3cejaeimoedtfr9o9ai3y7d3xdqn9aqgt7r','2017-05-02 20:26:05','182.66.115.180','48881','CGI/1.1','182.66.115.180','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','58.0.3029.81','Google Chrome','Google Chrome','Google Chrome'),(1,'grmhu8j3adtvhk0qg03684uk9fi3rsdu','q4wodvrxergbbz9qe0log2m5ow79g5n81bmw0jhrhr6m7wrfje','2017-04-29 14:11:03','47.15.6.10','39040','CGI/1.1','47.15.6.10','Mobile','Android','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','4.0','Google Chrome','Google Chrome','Google Chrome'),(1,'hg2m8srfak17qhrcnrhvbia97lb9gdkb','bjvoq456659whabxuvydnngip6h6zenzmi3jcyppy7e2jemk20','2017-04-22 05:56:04','47.15.4.91','54698','CGI/1.1','47.15.4.91','Mobile','Android','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','4.0','Google Chrome','Google Chrome','Google Chrome'),(1,'hkcgjsm3fsinne7gno14c57k6g9ijv2m','3fk20msx9i032b7zdaxjjwrqj0raszzbg7706wygg8shl2pa9j','2017-04-21 22:32:49','47.15.8.32','52450','CGI/1.1','47.15.8.32','Desktop','Ubuntu','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','53.0.2785.143','Google Chrome','Google Chrome','Google Chrome'),(3,'ht2nkd6vv7757lf4igh2qkompab2srfi','a045epxpaasjm3flszkyzprz1qgyt3h3fiapbqny6v5vknpfwk','2017-04-21 22:01:53','103.50.81.120','53024','CGI/1.1','103.50.81.120','Desktop','Windows 7','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','52.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'ienbs4kdpubodgh4t9ds1fd5hedms1b6','f45px0qqz8hpapjjn4oamz56c72dg0otgw9hqselqh1a2axjj7','2017-04-21 22:30:44','47.15.8.32','52378','CGI/1.1','47.15.8.32','Desktop','Ubuntu','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','53.0.2785.143','Google Chrome','Google Chrome','Google Chrome'),(1,'ih5kq9d35i3hog7t70k34o6ntrajubsi','a1ny8hgle2x69zf1wfa4c5t9vcoq5bdmpj8sipd9xnggkfdsdj','2017-04-28 17:12:31','111.93.169.246','56950','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'is6j5ggob9es1a4k6fal47k7qqi2291s','sl0z7kpm9djba5f5czzm9xj3hy7zfhhvo8pncjlczthhpqpc56','2017-04-20 20:26:03','47.15.12.54','38511','CGI/1.1','47.15.12.54','Mobile','Android','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','4.0','Google Chrome','Google Chrome','Google Chrome'),(1,'jad1lvpa6pq87cfblbihh1bctioab2i7','qry4pcdbde861gnpyt5iv5m7cillz6cx7dj4x0rymcn5qv7cpe','2017-04-21 21:36:40','103.51.148.48','49363','CGI/1.1','103.51.148.48','Desktop','Windows 10','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','52.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'kusnq7p9pft7q7fj4hlq1935pnjpmb9u','ok03127in9frprwpzwwowov9x81fpk8kyj9d155h2bi9dzdy17','2017-04-21 06:17:13','45.250.245.167','40687','CGI/1.1','45.250.245.167','Mobile','Android','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','4.0','Google Chrome','Google Chrome','Google Chrome'),(1,'lctrb02l6pmhh76thes77m721b41nkhq','oy5drb9ezdl3ux4nqr24zaaxji7ck3wvkzxz8zb0v8bpkc5ngi','2017-05-02 11:39:32','111.93.169.246','1783','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'m31st0pqr53jpefj5temu2s1199coqks','rmkzwgg1tcwhqdva4qiwmldxs1zd1vr2xadppjxm139nmdkscm','2017-05-02 15:33:31','111.93.169.246','52779','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'md2kktlfv60ahnmuenf43omnck5ols2t','3yom1lwcjjjnsxaddt86mbftm64x0gz7vhi16tkctqh8zqs10s','2017-04-23 07:47:45','45.251.235.13','63328','CGI/1.1','45.251.235.13','Desktop','Windows 10','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','52.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'o0rbcamm3s88bbreuf9thdqnbabvv4hi','kdfv1v1lwtcfnecavr2scl92nkk0ode2xv8w6mdgp3fiv68vtb','2017-04-25 11:19:26','111.93.169.246','52408','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(3,'o6bh725nnlacnhmiqkijm5d2ieg0bm0p','cr7vueif4jtq5t38yh9l4f7ghankrligce2gk6gabszun5a55k','2017-04-22 05:57:01','47.15.4.91','54707','CGI/1.1','47.15.4.91','Mobile','Android','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','4.0','Google Chrome','Google Chrome','Google Chrome'),(1,'ogsggcnekcoin01tt9vvtk52u51msnv1','cq37n8e9aa4z76vebyjpmcwean5vcqiyvvf3s7gtdfa8hoj39z','2017-05-02 20:38:30','103.50.80.57','65115','CGI/1.1','103.50.80.57','Desktop','Windows 7','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','53.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(3,'oko0gm1m24aefaq5ml89q9koig3mtj67','480bf2cugo3m1hm1l05eoty7gm69lb8ocktdyqqt21y7r2vcgw','2017-05-02 15:33:08','111.93.169.246','2214','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'pme830ma8thkjus916f4mln97olt7ul4','1vlwubsv4lmm0o912hq2ugq6mdesxxqyy3a44lh0i1emffk2ts','2017-04-20 18:04:59','111.93.169.246','52637','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'qns76es1us7331j0060fq8idbfp8bbtc','zmufmxwds4gidaes0zqroxi5a79mx7oi5wtovy33papeeixbae','2017-05-02 12:02:01','111.93.169.246','50662','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','52.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'s87elfclufuphbe50dptmtsviv3mj62i','iwem3pu3cci03hbnl82hskwngwncggl9pd0dwqa8cc141ba9e9','2017-05-02 17:59:40','111.93.169.246','54329','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','52.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(1,'u94enhe6eb6nid85eqoduvuc8kfci46f','b31s6slwja4sejhxa1lqfcna7wdzbf9cv15c0l9phijdqo83ms','2017-04-20 16:48:07','103.50.80.15','56342','CGI/1.1','103.50.80.15','Desktop','Windows 7','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','52.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(3,'ua75cl2736vp5hvkh5bg5vktj7df2alt','r1yofpxtbao6lyfe8shatcfa6l9n5mtyj05lk3kbh1zu2x9ith','2017-04-24 11:49:29','111.93.169.246','50458','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome'),(1,'v1gd3fgusk0itb3bhj83b5mr4jfcslt7','dc5476t1jhyjim7kwj0ojui1fxbrw2l8cky44o3x81l9bsx7wu','2017-04-21 18:48:27','103.50.81.120','50994','CGI/1.1','103.50.81.120','Desktop','Windows 7','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Mozilla Firefox','52.0','Mozilla Firefox','Mozilla Firefox','Mozilla Firefox'),(3,'vca4givu2gkk88ovoq4n2kqd8fu0m28h','pveqb80sshsnrwl4c87oedvwc75furybcsapbxq8szm1dqmujz','2017-04-29 10:35:24','45.251.235.103','55578','CGI/1.1','45.251.235.103','Mobile','Android','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','4.0','Google Chrome','Google Chrome','Google Chrome'),(1,'vnch2pl2t9kc9do5umtt883n4tibrs48','bhpjsekvl5gp8ry6rzh0mvugoryn69gea98fwr8ow0kem20uxy','2017-04-24 11:49:51','111.93.169.246','50462','CGI/1.1','111.93.169.246','Desktop','Windows 8.1','Linux localhost.localdomain 4.8.6-x86_64-linode78 #1 SMP Tue Nov 1 14:51:21 EDT 2016 x86_64','Google Chrome','57.0.2987.133','Google Chrome','Google Chrome','Google Chrome');

/*Table structure for table `ums_option` */

DROP TABLE IF EXISTS `ums_option`;

CREATE TABLE `ums_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(25) NOT NULL,
  `option_description` varchar(200) DEFAULT NULL,
  `option_type` int(2) NOT NULL,
  `option_area` int(2) NOT NULL,
  `option_status` int(2) NOT NULL,
  `option_link` varchar(200) NOT NULL DEFAULT '#',
  `option_icon` varchar(100) DEFAULT NULL,
  `option_order` int(2) NOT NULL DEFAULT '0',
  `parent_option_id` int(11) NOT NULL,
  `enable_toolbox` tinyint(1) NOT NULL DEFAULT '0',
  `object_reference_key` varchar(100) DEFAULT NULL,
  `level` int(1) NOT NULL DEFAULT '0',
  `icon_class` varchar(100) DEFAULT NULL,
  `add_data` int(1) NOT NULL DEFAULT '0',
  `edit_data` int(1) NOT NULL DEFAULT '0',
  `delete_data` int(1) NOT NULL DEFAULT '0',
  `view_data` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `ums_option` */

insert  into `ums_option`(`option_id`,`option_name`,`option_description`,`option_type`,`option_area`,`option_status`,`option_link`,`option_icon`,`option_order`,`parent_option_id`,`enable_toolbox`,`object_reference_key`,`level`,`icon_class`,`add_data`,`edit_data`,`delete_data`,`view_data`) values (1,'User','',1,1,1,'#','1492791555_option.png',1,0,0,'Object reference key1',0,'fa-image',0,0,0,0),(2,'User List','',1,1,1,'umsuser','1492791584_option.png',1,1,0,'Object reference key1',0,'fa-file-image-o',0,0,0,0),(3,'Role - option management','',1,1,1,'#','1492791743_option.png',2,0,0,'Object reference key1',0,'fa-list-alt',0,0,0,0),(4,'Role managment','',1,1,1,'umsrole','1492791777_option.png',1,3,0,'Object reference key1',0,'fa-youtube',0,0,0,0),(5,'Option managment','',1,1,1,'option','1492791820_option.png',2,3,0,'Object reference key1',0,'fa-th-large',0,0,0,0),(6,'Role - option relation','',1,1,1,'umsroleoptionmap','1492791855_option.png',3,3,0,'Object reference key1',0,'fa-comments-o',0,0,0,0),(7,'About','',1,1,1,'about','1492792081_option.png',4,0,0,'Object reference key1',0,'fa-circle-o',0,0,0,0),(8,'Help','',1,1,3,'#','1492853658_option.png',1,0,0,'NA',0,'fa-list-alt',0,0,0,0),(9,'Company Managment','',1,1,1,'#','1493727052_option.png',3,0,0,'Object reference key1',0,'fa-puzzle-piece',0,0,0,0),(10,'Company List','',1,1,1,'company','1493727131_option.png',1,9,0,'Object reference key1',0,'fa-user',0,0,0,0),(11,'Company Tree',NULL,1,1,1,'company/tree',NULL,1,9,0,NULL,0,'fa-tree',0,0,0,0);

/*Table structure for table `ums_role` */

DROP TABLE IF EXISTS `ums_role`;

CREATE TABLE `ums_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `role_description` varchar(500) DEFAULT NULL,
  `role_area` int(2) NOT NULL,
  `role_status` int(2) NOT NULL,
  `additional_id` varchar(100) DEFAULT NULL,
  `role_creation_time` datetime NOT NULL,
  `role_created_by` int(11) NOT NULL,
  `role_updated_time` datetime NOT NULL,
  `role_updated_by` int(11) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `ums_role` */

insert  into `ums_role`(`role_id`,`role_name`,`role_description`,`role_area`,`role_status`,`additional_id`,`role_creation_time`,`role_created_by`,`role_updated_time`,`role_updated_by`) values (1,'Administrators Role','This is for admin to get all permission.',1,1,'Admin','2017-04-21 21:47:28',1,'2017-04-21 21:47:28',1),(2,'sub role1','',1,1,'Additional 1','2017-04-21 21:58:45',1,'2017-04-21 21:58:45',1),(3,'U-manager','',2,1,'123','2017-04-24 12:00:19',1,'2017-04-24 12:00:19',1);

/*Table structure for table `ums_role_option_map` */

DROP TABLE IF EXISTS `ums_role_option_map`;

CREATE TABLE `ums_role_option_map` (
  `role_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `ums_role_option_map_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ums_role_option_map_id`),
  KEY `FK_role_option_role` (`role_id`),
  KEY `FK_role_option_option` (`option_id`),
  CONSTRAINT `FK_role_option_option` FOREIGN KEY (`option_id`) REFERENCES `ums_option` (`option_id`),
  CONSTRAINT `FK_role_option_role` FOREIGN KEY (`role_id`) REFERENCES `ums_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `ums_role_option_map` */

insert  into `ums_role_option_map`(`role_id`,`option_id`,`enable`,`ums_role_option_map_id`) values (3,1,1,1),(3,2,1,2),(2,1,1,3),(2,2,1,4),(2,3,1,5),(2,5,1,6),(2,7,1,7),(1,1,1,8),(1,2,1,9),(1,3,1,10),(1,4,1,11),(1,5,1,12),(1,6,1,13),(1,7,1,14),(1,9,1,15),(1,10,1,16),(1,11,1,17);

/*Table structure for table `ums_session_details` */

DROP TABLE IF EXISTS `ums_session_details`;

CREATE TABLE `ums_session_details` (
  `user_id` int(11) NOT NULL,
  `system_session_id` varchar(50) NOT NULL,
  `session_status` int(2) NOT NULL,
  `native_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`system_session_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ums_session_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ums_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ums_session_details` */

insert  into `ums_session_details`(`user_id`,`system_session_id`,`session_status`,`native_token`) values (1,'08l57a0bisfkr86ki0p0urctnjoebom7',1,'ti9amoqzwwrf90bgxrjqwheyla1bk2oyuv0m1xxxb0v8q60xos'),(6,'9njckfgfe2mqkhl8c5d3084rt57nm50i',1,'nk57et2cyht8orr3vwshe74x3g1fpbwofpabkwspxev5zxyef6'),(1,'b8hp99it3u554v5kik43jd9kt49nb82j',1,'tb2fvepb2i3c9lbnc1y78b0k388yefw3gbhqlin4qnf7dkw8z3'),(1,'er8jjhkgjuihgh5gcei1ctqs9blcnju3',1,'qv9z8za4mhw60uh622l222cyl325go3vf9163cysw2byq2t9rh'),(1,'g365kfr5qsf7io16ihbcactngt3e1i7t',1,'frecwlvszz8cj40r860zwfiw9hwcdb0pqnbp9yb54k2nylveb7'),(1,'gap7qkeulds909mptp667gt75co0ek5f',1,'y291nzs58s8m5al3cejaeimoedtfr9o9ai3y7d3xdqn9aqgt7r'),(1,'m31st0pqr53jpefj5temu2s1199coqks',1,'rmkzwgg1tcwhqdva4qiwmldxs1zd1vr2xadppjxm139nmdkscm'),(1,'ogsggcnekcoin01tt9vvtk52u51msnv1',1,'cq37n8e9aa4z76vebyjpmcwean5vcqiyvvf3s7gtdfa8hoj39z'),(1,'s87elfclufuphbe50dptmtsviv3mj62i',1,'iwem3pu3cci03hbnl82hskwngwncggl9pd0dwqa8cc141ba9e9');

/*Table structure for table `ums_user` */

DROP TABLE IF EXISTS `ums_user`;

CREATE TABLE `ums_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_access_key` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(90) NOT NULL,
  `user_type` int(10) NOT NULL,
  `user_status` int(2) NOT NULL,
  `additional_id` varchar(100) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `user_creation_stamp` datetime NOT NULL,
  `user_created_by` int(11) DEFAULT NULL,
  `user_updated_stamp` datetime NOT NULL,
  `user_updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_access_key` (`user_access_key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

/*Data for the table `ums_user` */

insert  into `ums_user`(`user_id`,`user_access_key`,`username`,`password`,`user_type`,`user_status`,`additional_id`,`first_name`,`last_name`,`email_id`,`user_creation_stamp`,`user_created_by`,`user_updated_stamp`,`user_updated_by`) values (1,'','admin','4439c90d70a03c66d5de0a73ee8c7f50',1,1,NULL,'Adminfirst','Adminlast','admin@admin.com','2017-04-11 00:00:00',NULL,'2017-04-11 00:00:00',NULL),(3,'Access 21','emp_121','21232f297a57a5a743894a0e4a801fc3',1,1,'Additional 21','First Nam21','Last Name21','aaa@aaa11.com','2017-04-19 18:18:34',1,'2017-04-21 21:59:13',1),(6,'ea','emp_admin','21232f297a57a5a743894a0e4a801fc3',1,1,'12','Emp','Admin','emp_admin@gmail.com','2017-04-24 12:02:54',1,'2017-04-24 12:02:54',1);

/*Table structure for table `ums_user_role_map` */

DROP TABLE IF EXISTS `ums_user_role_map`;

CREATE TABLE `ums_user_role_map` (
  `ums_user_role_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`ums_user_role_map_id`),
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `ums_user_role_map_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ums_user` (`user_id`),
  CONSTRAINT `ums_user_role_map_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `ums_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ums_user_role_map` */

insert  into `ums_user_role_map`(`ums_user_role_map_id`,`user_id`,`role_id`) values (1,1,1),(2,3,2),(3,6,2),(4,6,3);

/*Table structure for table `ums_user_verification` */

DROP TABLE IF EXISTS `ums_user_verification`;

CREATE TABLE `ums_user_verification` (
  `user_id` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `ums_user_verification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ums_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ums_user_verification` */

/*Table structure for table `ums_view_configuration` */

DROP TABLE IF EXISTS `ums_view_configuration`;

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
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

/*Data for the table `ums_view_configuration` */

insert  into `ums_view_configuration`(`ums_view_configuration_id`,`table_name`,`attribute_name`,`index_view`,`create_view`,`update_view`,`view_view`,`sequence_number`) values (92,'ums_user','user_id',1,1,1,1,1),(93,'ums_user','user_access_key',1,1,1,1,2),(94,'ums_user','username',1,1,1,1,3),(95,'ums_user','password',1,1,1,1,4),(96,'ums_user','user_type',1,1,1,1,5),(97,'ums_user','user_status',1,1,1,1,6),(98,'ums_user','additional_id',1,1,1,1,7),(99,'ums_user','first_name',1,1,1,1,8),(100,'ums_user','last_name',1,1,1,1,9),(101,'ums_user','email_id',1,1,1,1,10),(102,'ums_user','user_creation_stamp',1,1,1,1,11),(103,'ums_user','user_created_by',1,1,1,1,12),(104,'ums_user','user_updated_stamp',1,1,1,1,13),(105,'ums_user','user_updated_by',1,1,1,1,14),(202,'company','sys_company_id',1,1,1,1,1),(203,'company','company_name',1,1,1,1,2),(204,'company','label_name',1,1,1,1,3),(205,'company','custom_label',1,1,1,1,4),(206,'company','address_id',1,1,1,1,5),(207,'company','company_status',1,1,1,1,6),(208,'company','parent_sys_company_id',1,1,1,1,7),(209,'company','company_id',1,1,1,1,8),(210,'company','company_creation_time',1,1,1,1,9),(211,'company','company_created_by',1,1,1,1,10),(212,'company','company_updated_time',1,1,1,1,11),(213,'company','company_updated_by',1,1,1,1,12),(220,'ums_role_option_map','role_id',1,1,1,1,1),(221,'ums_role_option_map','option_id',1,1,1,1,2),(222,'ums_role_option_map','enable',1,1,1,1,3),(223,'ums_role_option_map','ums_role_option_map_id',1,1,1,1,4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
