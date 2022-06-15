-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: db_pizza_joao
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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
-- Table structure for table `auth_group`
--

use heroku_53bdaeb385f7387

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add auth group',13,'add_authgroup'),(26,'Can change auth group',13,'change_authgroup'),(27,'Can delete auth group',13,'delete_authgroup'),(28,'Can view auth group',13,'view_authgroup'),(29,'Can add auth group permissions',14,'add_authgrouppermissions'),(30,'Can change auth group permissions',14,'change_authgrouppermissions'),(31,'Can delete auth group permissions',14,'delete_authgrouppermissions'),(32,'Can view auth group permissions',14,'view_authgrouppermissions'),(33,'Can add auth permission',15,'add_authpermission'),(34,'Can change auth permission',15,'change_authpermission'),(35,'Can delete auth permission',15,'delete_authpermission'),(36,'Can view auth permission',15,'view_authpermission'),(37,'Can add auth user',16,'add_authuser'),(38,'Can change auth user',16,'change_authuser'),(39,'Can delete auth user',16,'delete_authuser'),(40,'Can view auth user',16,'view_authuser'),(41,'Can add auth user groups',17,'add_authusergroups'),(42,'Can change auth user groups',17,'change_authusergroups'),(43,'Can delete auth user groups',17,'delete_authusergroups'),(44,'Can view auth user groups',17,'view_authusergroups'),(45,'Can add auth user user permissions',18,'add_authuseruserpermissions'),(46,'Can change auth user user permissions',18,'change_authuseruserpermissions'),(47,'Can delete auth user user permissions',18,'delete_authuseruserpermissions'),(48,'Can view auth user user permissions',18,'view_authuseruserpermissions'),(49,'Can add bordas',7,'add_bordas'),(50,'Can change bordas',7,'change_bordas'),(51,'Can delete bordas',7,'delete_bordas'),(52,'Can view bordas',7,'view_bordas'),(53,'Can add django admin log',19,'add_djangoadminlog'),(54,'Can change django admin log',19,'change_djangoadminlog'),(55,'Can delete django admin log',19,'delete_djangoadminlog'),(56,'Can view django admin log',19,'view_djangoadminlog'),(57,'Can add django content type',20,'add_djangocontenttype'),(58,'Can change django content type',20,'change_djangocontenttype'),(59,'Can delete django content type',20,'delete_djangocontenttype'),(60,'Can view django content type',20,'view_djangocontenttype'),(61,'Can add django migrations',21,'add_djangomigrations'),(62,'Can change django migrations',21,'change_djangomigrations'),(63,'Can delete django migrations',21,'delete_djangomigrations'),(64,'Can view django migrations',21,'view_djangomigrations'),(65,'Can add django session',22,'add_djangosession'),(66,'Can change django session',22,'change_djangosession'),(67,'Can delete django session',22,'delete_djangosession'),(68,'Can view django session',22,'view_djangosession'),(69,'Can add massas',8,'add_massas'),(70,'Can change massas',8,'change_massas'),(71,'Can delete massas',8,'delete_massas'),(72,'Can view massas',8,'view_massas'),(73,'Can add pedidos',11,'add_pedidos'),(74,'Can change pedidos',11,'change_pedidos'),(75,'Can delete pedidos',11,'delete_pedidos'),(76,'Can view pedidos',11,'view_pedidos'),(77,'Can add pizzas',12,'add_pizzas'),(78,'Can change pizzas',12,'change_pizzas'),(79,'Can delete pizzas',12,'delete_pizzas'),(80,'Can view pizzas',12,'view_pizzas'),(81,'Can add pizza sabor',23,'add_pizzasabor'),(82,'Can change pizza sabor',23,'change_pizzasabor'),(83,'Can delete pizza sabor',23,'delete_pizzasabor'),(84,'Can view pizza sabor',23,'view_pizzasabor'),(85,'Can add sabores',10,'add_sabores'),(86,'Can change sabores',10,'change_sabores'),(87,'Can delete sabores',10,'delete_sabores'),(88,'Can view sabores',10,'view_sabores'),(89,'Can add status',9,'add_status'),(90,'Can change status',9,'change_status'),(91,'Can delete status',9,'delete_status'),(92,'Can view status',9,'view_status');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$MT79EQ6I32qzTKzFevUdIM$pNCOqTojeaektxebN+behKNssiIg6LNG3B4tu5NlRUs=','2022-05-09 21:26:28.246942',1,'admin','','','isaias@admin.com',1,1,'2022-05-07 20:44:31.800917'),(2,'pbkdf2_sha256$320000$2vazKEKx85crA1zHSlOe42$oVNRxKQJNfVP5DiwZx6fE7YUXHQhX8SxxggjS6C97Go=','2022-05-21 20:23:59.708538',1,'isaias','','','isaias@isaias.com',1,1,'2022-05-21 20:23:35.358646');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bordas`
--

DROP TABLE IF EXISTS `bordas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `bordas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bordas`
--

LOCK TABLES `bordas` WRITE;
/*!40000 ALTER TABLE `bordas` DISABLE KEYS */;
INSERT INTO `bordas` VALUES (1,'Cheddar'),(2,'Catupiry');
/*!40000 ALTER TABLE `bordas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-05-07 21:42:10.250312','8','Calabresa',1,'[{\"added\": {}}]',10,1),(2,'2022-05-08 12:50:15.220810','1','Pizzas object (1)',1,'[{\"added\": {}}]',12,1),(3,'2022-05-08 12:50:19.582701','1','Pedidos object (1)',1,'[{\"added\": {}}]',11,1),(4,'2022-05-08 12:52:53.148462','2','Pizzas object (2)',1,'[{\"added\": {}}]',12,1),(5,'2022-05-08 12:53:14.571632','4','Pedidos object (4)',1,'[{\"added\": {}}]',11,1),(6,'2022-05-08 12:53:31.789141','3','Pizzas object (3)',1,'[{\"added\": {}}]',12,1),(7,'2022-05-08 12:53:35.459502','5','Pedidos object (5)',1,'[{\"added\": {}}]',11,1),(8,'2022-05-08 12:53:48.576557','5','Pedidos object (5)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',11,1),(9,'2022-05-08 12:53:57.534772','6','Pedidos object (6)',1,'[{\"added\": {}}]',11,1),(10,'2022-05-08 13:01:21.654458','6','Pedidos object (6)',3,'',11,1),(11,'2022-05-08 13:01:30.469831','5','Pedidos object (5)',3,'',11,1),(12,'2022-05-08 13:01:30.475943','4','Pedidos object (4)',3,'',11,1),(13,'2022-05-08 13:01:30.482392','1','Pedidos object (1)',3,'',11,1),(14,'2022-05-08 13:09:59.766076','4','Pizzas object (4)',1,'[{\"added\": {}}]',12,1),(15,'2022-05-08 13:19:21.961134','1','Pizzas object (1)',3,'',12,1),(16,'2022-05-08 13:19:26.411642','2','Pizzas object (2)',3,'',12,1),(17,'2022-05-08 13:30:58.312146','5','Pizzas object (5)',1,'[{\"added\": {}}]',12,1),(18,'2022-05-08 13:31:02.555477','7','Pedidos object (7)',1,'[{\"added\": {}}]',11,1),(19,'2022-05-08 21:26:33.848087','6','Pizzas object (6)',1,'[{\"added\": {}}]',12,1),(20,'2022-05-08 21:26:38.812898','8','Pedidos object (8)',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(13,'pedidos','authgroup'),(14,'pedidos','authgrouppermissions'),(15,'pedidos','authpermission'),(16,'pedidos','authuser'),(17,'pedidos','authusergroups'),(18,'pedidos','authuseruserpermissions'),(7,'pedidos','bordas'),(19,'pedidos','djangoadminlog'),(20,'pedidos','djangocontenttype'),(21,'pedidos','djangomigrations'),(22,'pedidos','djangosession'),(8,'pedidos','massas'),(11,'pedidos','pedidos'),(12,'pedidos','pizzas'),(23,'pedidos','pizzasabor'),(10,'pedidos','sabores'),(9,'pedidos','status'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-05-07 19:35:51.247802'),(2,'auth','0001_initial','2022-05-07 19:35:52.680116'),(3,'admin','0001_initial','2022-05-07 19:35:52.942063'),(4,'admin','0002_logentry_remove_auto_add','2022-05-07 19:35:52.960706'),(5,'admin','0003_logentry_add_action_flag_choices','2022-05-07 19:35:52.980435'),(6,'contenttypes','0002_remove_content_type_name','2022-05-07 19:35:53.130479'),(7,'auth','0002_alter_permission_name_max_length','2022-05-07 19:35:53.250646'),(8,'auth','0003_alter_user_email_max_length','2022-05-07 19:35:53.302927'),(9,'auth','0004_alter_user_username_opts','2022-05-07 19:35:53.323260'),(10,'auth','0005_alter_user_last_login_null','2022-05-07 19:35:53.418588'),(11,'auth','0006_require_contenttypes_0002','2022-05-07 19:35:53.427275'),(12,'auth','0007_alter_validators_add_error_messages','2022-05-07 19:35:53.447856'),(13,'auth','0008_alter_user_username_max_length','2022-05-07 19:35:53.577333'),(14,'auth','0009_alter_user_last_name_max_length','2022-05-07 19:35:53.693735'),(15,'auth','0010_alter_group_name_max_length','2022-05-07 19:35:53.738829'),(16,'auth','0011_update_proxy_permissions','2022-05-07 19:35:53.757755'),(17,'auth','0012_alter_user_first_name_max_length','2022-05-07 19:35:53.873606'),(18,'sessions','0001_initial','2022-05-07 19:35:53.950275'),(19,'pedidos','0001_initial','2022-05-09 20:39:58.996947');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('fzg45euim2vl7sh9n5ysl9wji1d1xbzg','.eJxVjDEOwjAMRe-SGUVpnSYxIztniBzbIgXUSk07Ie4OlTrA-t97_2UybWvNW9Mlj2LOpjen360QP3Tagdxpus2W52ldxmJ3xR602ess-rwc7t9BpVa_tUd0DFI4YRRw2EPQgOyTQmLyQLHvHEtXSJBcUJcweUjKfoAwxGjeH9IGNyg:1nsVdn:QjinwCMwRPfjBlBlsadY5gA7Vxq3JfiOlbbEz3XHhTk','2022-06-04 20:23:59.717484');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `massas`
--

DROP TABLE IF EXISTS `massas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `massas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `massas`
--

LOCK TABLES `massas` WRITE;
/*!40000 ALTER TABLE `massas` DISABLE KEYS */;
INSERT INTO `massas` VALUES (1,'Temperada'),(2,'Integral'),(3,'Comun'),(4,'Doce');
/*!40000 ALTER TABLE `massas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pizzas_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzas_id` (`pizzas_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`pizzas_id`) REFERENCES `pizzas` (`id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (7,5,1),(8,6,1);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza_sabor`
--

DROP TABLE IF EXISTS `pizza_sabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `pizza_sabor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pizza_id` int DEFAULT NULL,
  `sabor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sabor_id` (`sabor_id`),
  KEY `pizza_id` (`pizza_id`),
  CONSTRAINT `pizza_sabor_ibfk_1` FOREIGN KEY (`sabor_id`) REFERENCES `sabores` (`id`),
  CONSTRAINT `pizza_sabor_ibfk_2` FOREIGN KEY (`pizza_id`) REFERENCES `pizzas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza_sabor`
--

LOCK TABLES `pizza_sabor` WRITE;
/*!40000 ALTER TABLE `pizza_sabor` DISABLE KEYS */;
INSERT INTO `pizza_sabor` VALUES (7,4,2),(8,40,2),(9,41,2),(10,42,2),(11,43,8),(12,44,6),(13,45,5),(14,46,2),(15,47,2),(16,48,2),(17,49,2),(18,50,2),(19,51,4);
/*!40000 ALTER TABLE `pizza_sabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizzas`
--

DROP TABLE IF EXISTS `pizzas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `pizzas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `borda_id` int DEFAULT NULL,
  `massa_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `borda_id` (`borda_id`),
  KEY `massa_id` (`massa_id`),
  CONSTRAINT `borda_id` FOREIGN KEY (`borda_id`) REFERENCES `bordas` (`id`),
  CONSTRAINT `massa_id` FOREIGN KEY (`massa_id`) REFERENCES `massas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzas`
--

LOCK TABLES `pizzas` WRITE;
/*!40000 ALTER TABLE `pizzas` DISABLE KEYS */;
INSERT INTO `pizzas` VALUES (4,2,1),(5,1,1),(6,1,1),(7,NULL,NULL),(8,NULL,NULL),(9,1,1),(10,NULL,NULL),(11,NULL,NULL),(12,NULL,NULL),(13,NULL,NULL),(14,NULL,NULL),(15,1,1),(16,1,1),(17,1,1),(18,1,1),(19,1,1),(20,1,1),(21,1,1),(22,2,4),(23,1,1),(24,1,1),(25,1,1),(26,1,1),(27,1,1),(28,1,1),(29,1,1),(30,1,1),(31,1,1),(32,1,1),(33,1,1),(34,1,1),(35,1,1),(36,1,1),(37,1,1),(38,1,1),(39,1,1),(40,1,1),(41,1,1),(42,1,1),(43,2,2),(44,2,2),(45,2,4),(46,1,1),(47,1,1),(48,1,1),(49,1,1),(50,1,1),(51,1,1);
/*!40000 ALTER TABLE `pizzas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sabores`
--

DROP TABLE IF EXISTS `sabores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `sabores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sabores`
--

LOCK TABLES `sabores` WRITE;
/*!40000 ALTER TABLE `sabores` DISABLE KEYS */;
INSERT INTO `sabores` VALUES (2,'Frango com Catupiry'),(3,'Nordestina'),(4,'Lombinho'),(5,'Filé com Cheddar'),(6,'Portuguesa'),(7,'Margherita'),(8,'Calabresa');
/*!40000 ALTER TABLE `sabores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Em produção'),(2,'Em entrega'),(3,'Concluído');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teste`
--

DROP TABLE IF EXISTS `teste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `teste` (
  `teste` varchar(100) DEFAULT NULL,
  `dois` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teste`
--

LOCK TABLES `teste` WRITE;
/*!40000 ALTER TABLE `teste` DISABLE KEYS */;
INSERT INTO `teste` VALUES ('1',NULL),('1','2'),('1','2');
/*!40000 ALTER TABLE `teste` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-24 15:53:45
