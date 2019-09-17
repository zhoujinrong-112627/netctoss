-- MySQL dump 10.13  Distrib 5.7.26, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: netctoss
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recommender_id` int(11) DEFAULT NULL,
  `login_name` varchar(32) NOT NULL,
  `login_passwd` varchar(32) NOT NULL,
  `status` varchar(8) DEFAULT NULL,
  `create_date` datetime(6) NOT NULL,
  `pause_date` datetime(6),
  `close_date` datetime(6),
  `real_name` varchar(32) NOT NULL,
  `idcard_no` varchar(18) NOT NULL,
  `birthdate` varchar(32) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `telephone` varchar(15) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mailaddress` varchar(50) DEFAULT NULL,
  `zipcode` varchar(6) DEFAULT NULL,
  `qq` varchar(15) DEFAULT NULL,
  `last_login_time` datetime(6),
  `last_login_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_idcard_no_e3754649_uniq` (`idcard_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1001,1002,'黎明','11111','0','2019-07-01 00:00:00.000000','2019-08-05 15:14:02.741394','2019-08-05 15:14:02.741420','liming','532101199511271782','1990-02-11','male','1','11111','abc','abc','11','1234','2019-08-05 15:14:02.741446','111'),(1002,1003,'小米','23456','0','2019-07-02 00:00:00.000000','2019-08-05 13:52:32.849757','2019-08-05 13:52:32.849772','xiaomi','532101199511271781','1990-07-01','fmale','222','22222','def','def','22','5678','2019-08-05 13:52:32.849786','222'),(1003,1004,'卡卡','45678','1','2019-07-03 00:00:00.000000','2019-08-02 10:01:57.884291','2019-08-02 10:01:57.884299','kaka','532101199511271783','1990-02-28','male','333','33333','ghi','ghi','33','9012','2019-08-02 10:01:57.884306','333'),(1004,1005,'物资','2345','1','2019-07-02 00:00:00.000000','2019-08-05 14:46:44.129885','2019-08-05 14:46:44.129898','wuzi','532101199511271784','1990-02-11','male','444','44444','sdfg','werty','44','13244','2019-08-05 14:46:44.129910','444'),(1005,1006,'里卡','43546','1','2019-07-02 00:00:00.000000','2019-07-03 00:00:00.000000','2019-07-01 00:00:00.000000','lika','532101199511271785','1990-02-11','fmale','555','55555','tyuh','ertyu','55','123433','2019-07-29 00:00:00.000000','555'),(1006,1007,'蒋小花','532101','1','2019-06-03 00:00:00.000000','2019-05-02 00:00:00.000000','2019-08-01 00:00:00.000000','jiangxiaohua','532101199511271786','1991-02-03','male','11234','1381745','asd','dffdfg','66','45678','2019-08-02 00:00:00.000000','666'),(1007,1001,'田子格','34567','1','2019-06-03 00:00:00.000000','2019-08-05 14:42:01.991531','2019-08-05 14:42:01.991546','asdfgh','532101199511271787','2019-06-03','male','23456','1234567','asdfg','rthjsadfg','77','23456','2019-08-05 14:42:01.991560','7777'),(1008,NULL,'黎明','11111','0','2019-08-03 06:15:23.074660','2019-08-05 15:14:57.218458','2019-08-05 15:14:57.218475','里希','332101198908071234','1989/08/07','female','技术人员','13097563456','email1','suzhou','130022','4567845456','2019-08-05 15:14:57.218490',NULL),(1009,NULL,'wuli','999999','1','2019-08-03 08:45:58.887917','2019-08-05 14:46:32.729873','2019-08-05 14:46:32.729882','wuli','532101199311271683','1993/11/27','male','学生','13887057459','wwwww@ww.com','suzhou1','657000','2748258946','2019-08-05 14:46:32.729889',NULL),(1010,NULL,'huahua','000000','1','2019-08-03 08:55:20.659561','2019-08-05 14:47:37.873154','2019-08-05 14:47:37.873164','huahua','332101199408261682','1994/08/26','female','技术人员','15764331293','2748258947@qq.com','shanghai','130022','27483306','2019-08-05 14:47:37.873173',NULL),(1011,1006,'lizicheng','777777','1','2019-08-03 09:05:50.663480','2019-08-05 14:51:43.591275','2019-08-05 14:51:43.591292','lizicheng','532101199712051682','1997/12/05','male','其他','15948378899','wwwww@ww.com','abc','130022','2748258946','2019-08-05 14:51:43.591306',NULL),(1012,1011,'wuzimaka','666666','1','2019-08-03 09:11:27.600630','2019-08-05 14:53:41.848610','2019-08-05 14:53:41.848624','wuzimaka','442101198308081578','1983/08/08','male','学生','13887057453','23456789@qq.com','jiangsu','130000','34567890','2019-08-05 14:53:41.848637',NULL),(1013,1006,'wr','123456','1','2019-08-05 03:35:51.623570','2019-08-05 14:56:01.992301','2019-08-05 14:56:01.992315','wr','532101199511261789','1995/11/26','male','技术人员','15948378945','asdfg','abc','130022','4567845456','2019-08-05 14:56:01.992328',NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add cost',7,'add_cost'),(20,'Can change cost',7,'change_cost'),(21,'Can delete cost',7,'delete_cost'),(22,'Can add account',8,'add_account'),(23,'Can change account',8,'change_account'),(24,'Can delete account',8,'delete_account'),(25,'Can add service',9,'add_service'),(26,'Can change service',9,'change_service'),(27,'Can delete service',9,'delete_service'),(28,'Can add user',10,'add_user'),(29,'Can change user',10,'change_user'),(30,'Can delete user',10,'delete_user'),(31,'Can add bill',11,'add_bill'),(32,'Can change bill',11,'change_bill'),(33,'Can delete bill',11,'delete_bill');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_month` varchar(16) DEFAULT NULL,
  `cost` double NOT NULL,
  `payment_mode` varchar(32) DEFAULT NULL,
  `pay_state` varchar(16) NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_account_id_30504aac_fk_account_id` (`account_id`),
  CONSTRAINT `bill_account_id_30504aac_fk_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost`
--

DROP TABLE IF EXISTS `cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `base_duration` int(11) NOT NULL,
  `base_cost` double NOT NULL,
  `unit_cost` double NOT NULL,
  `status` varchar(8) NOT NULL,
  `descr` varchar(128) NOT NULL,
  `creatime` datetime(6) NOT NULL,
  `startime` datetime(6) NOT NULL,
  `cost_type` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost`
--

LOCK TABLES `cost` WRITE;
/*!40000 ALTER TABLE `cost` DISABLE KEYS */;
INSERT INTO `cost` VALUES (2,'包 60 小时',30,38,0.29,'1','没有启用的资费，可以修改除 ID 以外的所有信息\r\n                        没有启用的资费，可以修改除 ID 以外的所有信息\r\n                        资费2\r\n                    \r\n ','2019-07-31 11:24:28.061536','2019-07-31 12:36:54.731260','包月'),(3,'资费3',12,5,0.29,'1','没有启用的资费，可以修改除 ID 以外的所有信息\r\n                        没有启用的资费，可以修改除 ID 以外的所有信息\r\n                        资费3\r\n                    \r\n ','2019-07-31 11:25:25.806827','2019-08-01 02:03:02.906360','套餐'),(4,'资费4',24,12,0.29,'1','资费','2019-07-31 11:25:49.556491','2019-07-31 12:40:28.661185','计时'),(5,'资费5',80,58,0.7,'1','超过时长，每M收费0.29元','2019-07-31 11:28:14.107090','2019-08-01 09:08:59.929569','套餐'),(6,'资费6',30,10,0.7,'0','资费6','2019-07-31 11:28:40.138852','2019-07-31 11:28:40.140317','包月'),(7,'资费7',80,108,1.2,'0','资费7','2019-07-31 11:29:27.807953','2019-07-31 11:29:27.808673','套餐'),(8,'aaa',111,111,11,'0','aaaa','2019-08-01 09:07:45.082696','2019-08-01 09:07:45.085561','计时'),(9,'资费8',455,123,10,'0','asdffio','2019-08-02 08:07:00.000000','2019-08-03 12:12:00.000000','包月');
/*!40000 ALTER TABLE `cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'Account','account'),(1,'admin','logentry'),(7,'App','cost'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(11,'Bill','bill'),(5,'contenttypes','contenttype'),(9,'Service','service'),(6,'sessions','session'),(10,'User','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'App','0001_initial','2019-07-31 06:45:02.799384'),(2,'contenttypes','0001_initial','2019-07-31 06:45:02.841767'),(3,'auth','0001_initial','2019-07-31 06:45:03.158306'),(4,'admin','0001_initial','2019-07-31 06:45:03.232405'),(5,'admin','0002_logentry_remove_auto_add','2019-07-31 06:45:03.257526'),(6,'contenttypes','0002_remove_content_type_name','2019-07-31 06:45:03.325691'),(7,'auth','0002_alter_permission_name_max_length','2019-07-31 06:45:03.360667'),(8,'auth','0003_alter_user_email_max_length','2019-07-31 06:45:03.381779'),(9,'auth','0004_alter_user_username_opts','2019-07-31 06:45:03.397004'),(10,'auth','0005_alter_user_last_login_null','2019-07-31 06:45:03.431361'),(11,'auth','0006_require_contenttypes_0002','2019-07-31 06:45:03.435932'),(12,'auth','0007_alter_validators_add_error_messages','2019-07-31 06:45:03.456394'),(13,'auth','0008_alter_user_username_max_length','2019-07-31 06:45:03.494517'),(14,'sessions','0001_initial','2019-07-31 06:45:03.525933'),(15,'App','0002_auto_20190731_1706','2019-07-31 09:06:50.713249'),(16,'App','0003_auto_20190731_1912','2019-07-31 11:12:47.182785'),(17,'Account','0001_initial','2019-08-01 13:42:09.300343'),(18,'Account','0002_auto_20190802_0945','2019-08-02 01:45:17.048488'),(19,'Account','0003_auto_20190802_0957','2019-08-02 01:58:35.469804'),(27,'Service','0001_initial','2019-08-05 08:39:30.618862'),(28,'User','0001_initial','2019-08-06 11:08:10.635669'),(29,'Bill','0001_initial','2019-08-06 14:22:51.149659'),(30,'User','0002_user_u_token','2019-08-07 08:43:30.613879'),(31,'User','0003_auto_20190807_1718','2019-08-07 09:18:16.645165');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('82speeg6vajthz0l4i8rww6wy5qy3zde','MmMzNTUxNzI3NjJkYmFhNmYzMjg4M2Q5YjgyNWI5NDlkN2M5ZGNlMzp7ImNvZGUiOiJXSzc5In0=','2019-08-21 11:21:23.306743'),('su1fn2x6jfsj2f35mea5tnpbl65eqs23','MzllNWEwMjVjMGQ0ZDNkYTBlNjQ1MmJjMzllNDFiNTIyZDFjZTY5NDp7ImNvZGUiOiJpMkhVIiwidXNlcl9pZCI6MTIsIm5hbWUiOiJidXdhd2EifQ==','2019-08-21 11:22:04.297014'),('t3lzp9duwwe8jlo47ao84j2g16rthm4f','NjcyNmZlYWEwNmViMTQyNTNjMDcyMzBhOTNjMDg3Y2FjOWI0YTFiNDp7ImNvZGUiOiJRUEoxIn0=','2019-08-22 14:26:33.970861');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unix_host` varchar(16) NOT NULL,
  `os_username` varchar(16) NOT NULL,
  `login_passwd` varchar(8) NOT NULL,
  `status` varchar(8) DEFAULT NULL,
  `create_date` datetime(6) NOT NULL,
  `pause_date` varchar(32) DEFAULT NULL,
  `close_date` varchar(32) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `cost_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `service_account_id_49f75fe9_fk_account_id` (`account_id`),
  KEY `service_cost_id_b4821601_fk_cost_id` (`cost_id`),
  CONSTRAINT `service_account_id_49f75fe9_fk_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `service_cost_id_b4821601_fk_cost_id` FOREIGN KEY (`cost_id`) REFERENCES `cost` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2012 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (2001,'192.168.0.26','guojing','guo1234','1','2019-08-03 07:00:00.000000','2019/08/05 23:36:36',NULL,1011,2),(2002,'192.168.0.26','huangr','huang234','1','2019-08-03 07:00:00.000000','2019/08/05 23:36:38',NULL,1012,3),(2003,'192.168.0.20','huangr','huang234','2','2019-08-03 07:00:00.000000',NULL,'2019/08/05 19:35:45',1003,4),(2004,'192.168.0.23','huangr','huang234','1','2019-08-03 07:00:00.000000','2019/08/05 19:13:56',NULL,1004,5),(2005,'192.168.0.26','luwsh','luwu2345','1','2019-08-03 07:00:00.000000','2019/08/05 19:13:45',NULL,1005,6),(2006,'192.168.0.20','luwsh','luwu2345','1','2019-08-03 07:00:00.000000',NULL,NULL,1006,7),(2007,'192.168.0.20','weixb','wei12345','1','2019-08-03 07:00:00.000000',NULL,NULL,1007,8),(2008,'192.168.0.20','guojing','guo09876','0','2019-08-03 07:00:00.000000','',NULL,1008,9),(2009,'192.168.0.26','yangyang','yang1234','1','2019-08-03 07:00:00.000000','2019/08/06 15:16:18',NULL,1013,2),(2010,'192.168.0.26','zhengshuang','zheng234','0','2019-08-03 07:00:00.000000','',NULL,1008,3),(2011,'10.11.54.89','kaka','asd','1','2019-08-06 04:24:10.177611','2019/08/06 16:17:37',NULL,1003,2);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(64) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `u_token` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'wuli','123456','zjr@qq.com',0,NULL),(2,'lalala','pbkdf2_sha256$36000$qPXO6Vatx31j$2OKG3LasVZ0j3iHQD+L9DSnE3kq/w9x3e/c4DZ08KLU=','wwwww@ww.com',0,'86781b74-a68f-42df-96d7-2a07640b17e4'),(3,'lalala','pbkdf2_sha256$36000$cO9CYVP6sYsE$0RKcLT49ScwXw6dYzTdDNB6it01liqrYQloyVbU6aZI=','wwwww@ww.com',0,'643bc4c0-4240-40b6-a0c6-c9029d5d78ac'),(4,'lalala','pbkdf2_sha256$36000$OW2BG5lEa0jd$jCGFwBI/GLR1lROBr/SJGHSFq8+o/6OKz8smntH0YSU=','wwwww@ww.com',0,'7b3d8e99-f5e6-40bb-ad0c-46d7e7de7c56'),(5,'lalala','pbkdf2_sha256$36000$PGqr2RsQrvyj$MapVxbxJnCWZAyRswCnoMY4ypGbZXUqWrza6XV7uBMY=','wwwww@ww.com',1,'3f2f9beb-df8c-493a-b825-ec8763e31dc3'),(6,'linyu','pbkdf2_sha256$36000$jzmQWQKO59Ov$gxP3xDPlg9IcTPda2NvPqp2tReyJmRdCroHyUdJT6XM=','2748258947@qq.com',0,'b38ffcff-ddaf-42fe-878e-71430a0bd65f'),(7,'kaka','pbkdf2_sha256$36000$amZkgSOp2Bkz$daEeJKgQ4ZTX6Uqr+MiLuqBeSG+fsAbck1/FQErGMX8=','23456789@qq.com',0,'845d719c-fe49-4bb4-a8fd-6a0ef97624c7'),(8,'llll','pbkdf2_sha256$36000$AD42xOj9hLK4$X+pDLtRyyDB9kDteOILKmiDnxPlWrYBo2ZRcwenq6V4=','abc@123',0,'ea9d89dc-34ed-4d7b-8c73-2583206b8f58'),(9,'wwww','pbkdf2_sha256$36000$sxci945Aij5y$R+bgAmjwzdI76cRGx29hXghmcCeVdMnyIMLV81oKmfc=','abc@123',0,'033fa251-b700-499f-a277-1b7b8f296485'),(10,'qqqqq','pbkdf2_sha256$36000$GBete01QV3wq$BUGniKmvHS4bs8aCnVUTjV7xBQRJtMj8lJ/sFZTb4RI=','abc@123',0,'7257dc89-1578-4314-b4d2-c05f3e9fe4eb'),(11,'tttt','pbkdf2_sha256$36000$MqQR7otPyzP1$4aDh3/NHckI9wMu0kI3Xq+HUQX6cAg8dPOO8n0PHbXo=','asdfg@qq.com',0,'cfeffd9a-5fef-4ff2-836a-08c2f9dff4c2'),(12,'buwawa','pbkdf2_sha256$36000$uBvjhyyX67Yl$vi32LTlndWU7dDotgdIJe7TeVsrxdcV6x1XPyfHm4Mk=','23456789@qq.com',1,'ab8a9281-a0d9-4567-b98d-f9b486e74e37');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-31 13:23:59
