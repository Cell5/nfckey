-- MySQL dump 10.13  Distrib 5.7.24, for Win32 (AMD64)
--
-- Host: localhost    Database: nfckey
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Current Database: `nfckey`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nfckey` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nfckey`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add location',7,'add_location'),(26,'Can change location',7,'change_location'),(27,'Can delete location',7,'delete_location'),(28,'Can view location',7,'view_location'),(29,'Can add receiver',8,'add_receiver'),(30,'Can change receiver',8,'change_receiver'),(31,'Can delete receiver',8,'delete_receiver'),(32,'Can view receiver',8,'view_receiver'),(33,'Can add security group',9,'add_securitygroup'),(34,'Can change security group',9,'change_securitygroup'),(35,'Can delete security group',9,'delete_securitygroup'),(36,'Can view security group',9,'view_securitygroup'),(37,'Can add employee',10,'add_employee'),(38,'Can change employee',10,'change_employee'),(39,'Can delete employee',10,'delete_employee'),(40,'Can view employee',10,'view_employee'),(41,'Can add publication',11,'add_publication'),(42,'Can change publication',11,'change_publication'),(43,'Can delete publication',11,'delete_publication'),(44,'Can view publication',11,'view_publication'),(45,'Can add article',12,'add_article'),(46,'Can change article',12,'change_article'),(47,'Can delete article',12,'delete_article'),(48,'Can view article',12,'view_article');
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
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$hfcMcQWLHz76$ViPFlJXv0Vfbo21uEjPw1T5ZpbVcZzLQ5Rk0xQGnOQE=','2018-11-12 10:11:15.724546',1,'admin','admin','Last Name','admin@temp.com',1,1,'2018-11-06 13:28:40.000000'),(2,'pbkdf2_sha256$120000$z6MA5TzpKCwj$Sf+fIAmrVlVfHbdrT90KR6JRZLT/boXdRiUMCTt2AWk=','2018-11-08 07:49:34.636986',0,'John','','','',0,1,'2018-11-06 13:29:45.831588');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_employee`
--

DROP TABLE IF EXISTS `core_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_employee` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(512) NOT NULL,
  `last_name` varchar(512) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_active` varchar(8) NOT NULL,
  `date_joined` datetime(6),
  `nfc_dev_id` varchar(254) NOT NULL,
  `login_id` int(11) NOT NULL,
  `phone` varchar(15),
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `core_staff_email_5959a6dd_uniq` (`email`),
  UNIQUE KEY `user_id` (`login_id`),
  CONSTRAINT `core_employee_login_id_3df119a8_fk_auth_user_id` FOREIGN KEY (`login_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_employee`
--

LOCK TABLES `core_employee` WRITE;
/*!40000 ALTER TABLE `core_employee` DISABLE KEYS */;
INSERT INTO `core_employee` VALUES (1,'John','Simple','example@gmail.com','Yes','2018-11-06 13:31:09.897595','none yet',2,NULL),(2,'admin first name','admin last name','admin@gmail.com','No','2018-11-07 08:19:40.126797','ff ff ff ff',1,'0220304054');
/*!40000 ALTER TABLE `core_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_employee_security_group`
--

DROP TABLE IF EXISTS `core_employee_security_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_employee_security_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `securitygroup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_employee_security_g_employee_id_securitygrou_ed3d76f2_uniq` (`employee_id`,`securitygroup_id`),
  KEY `core_employee_securi_securitygroup_id_c8eff29f_fk_core_secu` (`securitygroup_id`),
  CONSTRAINT `core_employee_securi_employee_id_bbd597a8_fk_core_empl` FOREIGN KEY (`employee_id`) REFERENCES `core_employee` (`staff_id`),
  CONSTRAINT `core_employee_securi_securitygroup_id_c8eff29f_fk_core_secu` FOREIGN KEY (`securitygroup_id`) REFERENCES `core_securitygroup` (`security_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_employee_security_group`
--

LOCK TABLES `core_employee_security_group` WRITE;
/*!40000 ALTER TABLE `core_employee_security_group` DISABLE KEYS */;
INSERT INTO `core_employee_security_group` VALUES (2,1,1),(3,1,2),(1,2,4);
/*!40000 ALTER TABLE `core_employee_security_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_location`
--

DROP TABLE IF EXISTS `core_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(16) NOT NULL,
  `comment` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `core_locations_location_2a323908_uniq` (`location`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_location`
--

LOCK TABLES `core_location` WRITE;
/*!40000 ALTER TABLE `core_location` DISABLE KEYS */;
INSERT INTO `core_location` VALUES (1,'Floor 1','Floor 1 access level'),(2,'Floor 2',NULL),(3,'Floor 3',NULL);
/*!40000 ALTER TABLE `core_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_receiver`
--

DROP TABLE IF EXISTS `core_receiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_receiver` (
  `receiver_id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver_dev_id` varchar(16) NOT NULL,
  `receiver_location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`receiver_id`),
  UNIQUE KEY `receiver_dev_id` (`receiver_dev_id`),
  KEY `core_receivers_receiver_location_id_f938ee78_fk_core_loca` (`receiver_location_id`),
  CONSTRAINT `core_receivers_receiver_location_id_f938ee78_fk_core_loca` FOREIGN KEY (`receiver_location_id`) REFERENCES `core_location` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_receiver`
--

LOCK TABLES `core_receiver` WRITE;
/*!40000 ALTER TABLE `core_receiver` DISABLE KEYS */;
INSERT INTO `core_receiver` VALUES (1,'ff ff ff fa',1);
/*!40000 ALTER TABLE `core_receiver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_securitygroup`
--

DROP TABLE IF EXISTS `core_securitygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_securitygroup` (
  `security_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `security_group_name` varchar(64) NOT NULL,
  PRIMARY KEY (`security_group_id`),
  UNIQUE KEY `group_name` (`security_group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_securitygroup`
--

LOCK TABLES `core_securitygroup` WRITE;
/*!40000 ALTER TABLE `core_securitygroup` DISABLE KEYS */;
INSERT INTO `core_securitygroup` VALUES (4,'Full Access'),(1,'Staff Floor 1'),(2,'Staff Floor 2'),(3,'Staff Floor 3');
/*!40000 ALTER TABLE `core_securitygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_securitygroup_access_level`
--

DROP TABLE IF EXISTS `core_securitygroup_access_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_securitygroup_access_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `securitygroup_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_securitygroup_acces_securitygroup_id_locatio_085fffac_uniq` (`securitygroup_id`,`location_id`),
  KEY `core_securitygroup_a_location_id_143541b3_fk_core_loca` (`location_id`),
  CONSTRAINT `core_securitygroup_a_location_id_143541b3_fk_core_loca` FOREIGN KEY (`location_id`) REFERENCES `core_location` (`location_id`),
  CONSTRAINT `core_securitygroup_a_securitygroup_id_6d128b6e_fk_core_secu` FOREIGN KEY (`securitygroup_id`) REFERENCES `core_securitygroup` (`security_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_securitygroup_access_level`
--

LOCK TABLES `core_securitygroup_access_level` WRITE;
/*!40000 ALTER TABLE `core_securitygroup_access_level` DISABLE KEYS */;
INSERT INTO `core_securitygroup_access_level` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,4,2),(6,4,3);
/*!40000 ALTER TABLE `core_securitygroup_access_level` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-11-06 13:29:46.017114','2','John',1,'[{\"added\": {}}]',4,1),(2,'2018-11-06 13:30:56.240893','1','Floor 1',1,'[{\"added\": {}}]',7,1),(3,'2018-11-06 13:30:58.420970','1','Staff Floor 1',1,'[{\"added\": {}}]',9,1),(4,'2018-11-06 13:31:09.897595','1','John Simple',1,'[{\"added\": {}}]',10,1),(5,'2018-11-07 08:00:03.560312','1','12',1,'[{\"added\": {}}]',11,1),(6,'2018-11-07 08:00:08.142556','2','23',1,'[{\"added\": {}}]',11,1),(7,'2018-11-07 08:00:10.300202','3','34',1,'[{\"added\": {}}]',11,1),(8,'2018-11-07 08:00:40.811354','1','234234',1,'[{\"added\": {}}]',12,1),(9,'2018-11-07 08:06:51.867796','1','12',3,'',11,1),(10,'2018-11-07 08:07:05.888238','4','12',1,'[{\"added\": {}}]',11,1),(11,'2018-11-07 08:10:22.697662','2','Floor 2',1,'[{\"added\": {}}]',7,1),(12,'2018-11-07 08:10:29.510139','3','Floor 3',1,'[{\"added\": {}}]',7,1),(13,'2018-11-07 08:10:49.458322','1','Staff Floor 1',2,'[{\"changed\": {\"fields\": [\"access_level\"]}}]',9,1),(14,'2018-11-07 08:11:01.739426','2','Staff Floor 2',1,'[{\"added\": {}}]',9,1),(15,'2018-11-07 08:11:09.598044','3','Staff Floor 3',1,'[{\"added\": {}}]',9,1),(16,'2018-11-07 08:11:21.936845','4','Full Access',1,'[{\"added\": {}}]',9,1),(17,'2018-11-07 08:12:41.842920','1','ff ff ff fa Floor 1',1,'[{\"added\": {}}]',8,1),(18,'2018-11-07 08:17:57.469872','1','admin',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]',4,1),(19,'2018-11-07 08:19:40.126797','2','admin first name admin last name',1,'[{\"added\": {}}]',10,1),(20,'2018-11-07 08:45:55.356614','2','admin first name admin last name',2,'[{\"changed\": {\"fields\": [\"security_group\"]}}]',10,1),(21,'2018-11-07 08:46:40.197599','1','John Simple',2,'[{\"changed\": {\"fields\": [\"security_group\"]}}]',10,1),(22,'2018-11-07 08:47:11.335124','1','John Simple',2,'[{\"changed\": {\"fields\": [\"security_group\"]}}]',10,1),(23,'2018-11-07 09:23:38.545285','1','admin',2,'[{\"changed\": {\"fields\": [\"first_name\"]}}]',4,1),(24,'2018-11-08 02:59:30.421265','1','John Simple',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',10,1),(25,'2018-11-08 07:48:03.311368','2','John',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'core','article'),(10,'core','employee'),(7,'core','location'),(11,'core','publication'),(8,'core','receiver'),(9,'core','securitygroup'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-11-06 13:25:13.993721'),(2,'auth','0001_initial','2018-11-06 13:25:14.725782'),(3,'admin','0001_initial','2018-11-06 13:25:14.907859'),(4,'admin','0002_logentry_remove_auto_add','2018-11-06 13:25:14.916834'),(5,'admin','0003_logentry_add_action_flag_choices','2018-11-06 13:25:14.925803'),(6,'contenttypes','0002_remove_content_type_name','2018-11-06 13:25:15.078378'),(7,'auth','0002_alter_permission_name_max_length','2018-11-06 13:25:15.148218'),(8,'auth','0003_alter_user_email_max_length','2018-11-06 13:25:15.247925'),(9,'auth','0004_alter_user_username_opts','2018-11-06 13:25:15.259893'),(10,'auth','0005_alter_user_last_login_null','2018-11-06 13:25:15.306769'),(11,'auth','0006_require_contenttypes_0002','2018-11-06 13:25:15.309760'),(12,'auth','0007_alter_validators_add_error_messages','2018-11-06 13:25:15.318760'),(13,'auth','0008_alter_user_username_max_length','2018-11-06 13:25:15.387577'),(14,'auth','0009_alter_user_last_name_max_length','2018-11-06 13:25:15.468336'),(15,'core','0001_initial','2018-11-06 13:25:15.507234'),(16,'core','0002_auto_20181106_2135','2018-11-06 13:25:15.511224'),(17,'core','0003_auto_20181106_2136','2018-11-06 13:25:15.516210'),(18,'core','0004_auto_20181106_2137','2018-11-06 13:25:15.521201'),(19,'core','0005_auto_20181106_2137','2018-11-06 13:25:15.541177'),(20,'core','0006_receivers','2018-11-06 13:25:15.580069'),(21,'core','0007_receivers_receiver_dev_id','2018-11-06 13:25:15.677807'),(22,'core','0008_receivers_receiver_location','2018-11-06 13:25:15.779530'),(23,'core','0009_auto_20181106_2219','2018-11-06 13:25:15.879773'),(24,'core','0010_auto_20181106_2221','2018-11-06 13:25:15.898713'),(25,'core','0011_auto_20181106_2223','2018-11-06 13:25:15.903680'),(26,'core','0012_auto_20181106_2224','2018-11-06 13:25:15.918665'),(27,'core','0013_location_comment','2018-11-06 13:25:15.982504'),(28,'core','0014_auto_20181106_2233','2018-11-06 13:25:15.987508'),(29,'core','0015_securitygroup','2018-11-06 13:25:16.022415'),(30,'core','0016_securitygroup_access_level','2018-11-06 13:25:16.154066'),(31,'core','0017_staff','2018-11-06 13:25:16.194929'),(32,'core','0018_auto_20181106_2343','2018-11-06 13:25:16.476681'),(33,'core','0019_auto_20181106_2345','2018-11-06 13:25:16.599353'),(34,'core','0020_auto_20181106_2347','2018-11-06 13:25:16.605337'),(35,'core','0021_auto_20181106_2349','2018-11-06 13:25:16.622292'),(36,'core','0022_auto_20181106_2351','2018-11-06 13:25:16.646245'),(37,'core','0023_auto_20181107_0001','2018-11-06 13:25:16.652243'),(38,'core','0024_auto_20181107_0047','2018-11-06 13:25:16.673157'),(39,'core','0025_remove_employee_password','2018-11-06 13:25:16.733993'),(40,'core','0026_employee_password','2018-11-06 13:25:16.806832'),(41,'core','0027_auto_20181107_0141','2018-11-06 13:25:16.813780'),(42,'core','0028_auto_20181107_0141','2018-11-06 13:25:16.819795'),(43,'core','0029_auto_20181107_0141','2018-11-06 13:25:16.825777'),(44,'core','0030_userprofile','2018-11-06 13:25:16.949417'),(45,'core','0031_auto_20181107_0223','2018-11-06 13:25:17.205767'),(46,'sessions','0001_initial','2018-11-06 13:25:17.261608'),(47,'core','0032_auto_20181107_0225','2018-11-06 13:29:04.337277'),(48,'core','0033_employee_phone','2018-11-06 14:50:42.932900'),(49,'core','0034_auto_20181107_0345','2018-11-06 14:51:23.403576'),(50,'core','0035_auto_20181107_0348','2018-11-06 14:51:47.441727'),(51,'core','0036_remove_employee_phone','2018-11-06 14:53:19.776059'),(52,'core','0037_employee_phone','2018-11-06 14:53:35.653097'),(53,'core','0038_auto_20181107_2059','2018-11-07 07:59:36.118017'),(54,'core','0039_auto_20181107_2107','2018-11-07 08:07:50.001132'),(55,'core','0040_auto_20181107_2109','2018-11-07 08:10:00.386725'),(56,'core','0041_auto_20181107_2113','2018-11-07 08:13:15.584946'),(57,'core','0042_auto_20181107_2125','2018-11-07 08:25:24.302426'),(58,'core','0043_auto_20181107_2146','2018-11-07 08:46:33.940191');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7l6iudjpwwkrj3x9ux8r9jnd4o948q4y','OTY4NDdiZDRjNzU3OGQ5MTg3ZGM4NjM2MjkxZTg3MzI2MTM0NTE1YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNTljNDQ2MzliZjcxOTExMjEzYzcxY2FlMjcyZTljZTE4MDk3MDEyIn0=','2018-11-26 10:11:15.730531'),('ejgokou14hr627ofcsea9xu5xknxpikb','MGUxZWU1NmFlZTkwNGU5MTFmNzEyMTBjNTgxYzNhMTE1N2VjZjM2Nzp7fQ==','2018-11-22 07:45:20.776038'),('lukh60rca74rg0r26c3edkoftqi1wbh5','OTY4NDdiZDRjNzU3OGQ5MTg3ZGM4NjM2MjkxZTg3MzI2MTM0NTE1YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNTljNDQ2MzliZjcxOTExMjEzYzcxY2FlMjcyZTljZTE4MDk3MDEyIn0=','2018-11-22 08:52:47.431107'),('mlqbjknb6prx6w75t430e55w32vaf8j4','OTY4NDdiZDRjNzU3OGQ5MTg3ZGM4NjM2MjkxZTg3MzI2MTM0NTE1YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNTljNDQ2MzliZjcxOTExMjEzYzcxY2FlMjcyZTljZTE4MDk3MDEyIn0=','2018-11-20 13:28:43.527903');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-13  0:40:30
