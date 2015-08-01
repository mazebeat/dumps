CREATE DATABASE  IF NOT EXISTS `panel_exscore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `panel_exscore`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: panel_exscore
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `apariencia`
--

DROP TABLE IF EXISTS `apariencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apariencia` (
  `id_apariencia` int(10) NOT NULL AUTO_INCREMENT,
  `logo_cliente_header` longtext NOT NULL,
  `logo_cliente_footer` longtext,
  `color_header` varchar(20) NOT NULL,
  `color_body` varchar(20) NOT NULL,
  `color_footer` varchar(20) NOT NULL,
  `color_text_header` varchar(20) DEFAULT NULL,
  `color_text_body` varchar(20) DEFAULT NULL,
  `color_text_footer` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_apariencia`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='apariencia';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apariencia`
--

LOCK TABLES `apariencia` WRITE;
/*!40000 ALTER TABLE `apariencia` DISABLE KEYS */;
INSERT INTO `apariencia` VALUES (4,'http://lorempixel.com/350/150/?70268','http://lorempixel.com/400/200/?70268','#bd282e','#d835da','#e0d708','#ffffff','#333','#ffffff','2015-06-28 01:51:45','2015-06-28 01:51:45'),(5,'http://lorempixel.com/350/150/?42526','http://lorempixel.com/400/200/?42526','#93271f','#1da5df','#6425ee','#ffffff','#333','#ffffff','2015-06-28 01:51:45','2015-06-28 01:51:45'),(6,'http://lorempixel.com/350/150/?21428','http://lorempixel.com/400/200/?21428','#f1ae34','#174d94','#df874a','#ffffff','#333','#ffffff','2015-06-28 01:51:45','2015-06-28 01:51:45');
/*!40000 ALTER TABLE `apariencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canal`
--

DROP TABLE IF EXISTS `canal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canal` (
  `id_canal` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo_canal` char(2) DEFAULT NULL,
  `descripcion_canal` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_canal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='canal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canal`
--

LOCK TABLES `canal` WRITE;
/*!40000 ALTER TABLE `canal` DISABLE KEYS */;
INSERT INTO `canal` VALUES (1,'em','Emails','2015-06-28 01:46:47','2015-06-28 01:46:47'),(2,'fa','Facebook','2015-06-28 01:46:47','2015-06-28 01:46:47'),(3,'ba','Banner portal estudiantil','2015-06-28 01:46:47','2015-06-28 01:46:47'),(4,'ap','APP InfoUMayor','2015-06-28 01:46:47','2015-06-28 01:46:47'),(5,'ca','Call center','2015-06-28 01:46:47','2015-06-28 01:46:47'),(6,'ce','Centros de atención presencial','2015-06-28 01:46:48','2015-06-28 01:46:48');
/*!40000 ALTER TABLE `canal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `id_ciudad` int(10) NOT NULL AUTO_INCREMENT,
  `id_region` int(10) NOT NULL,
  `descripcion_ciudad` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ciudad`),
  KEY `fk_ciudad_region_idx` (`id_region`),
  CONSTRAINT `fk_ciudad_id_region` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='ciudad';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,1,'East Brainmouth','2015-06-28 02:07:58','2015-06-28 02:07:58'),(2,2,'Port Wellington','2015-06-28 02:07:58','2015-06-28 02:07:58'),(3,3,'Mauricefort','2015-06-28 02:07:58','2015-06-28 02:07:58'),(4,4,'Cortneyton','2015-06-28 02:07:58','2015-06-28 02:07:58'),(5,5,'East Otilia','2015-06-28 02:07:58','2015-06-28 02:07:58');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rut_cliente` varchar(13) DEFAULT NULL,
  `nombre_cliente` varchar(255) DEFAULT NULL,
  `fono_cliente` varchar(20) DEFAULT NULL,
  `correo_cliente` varchar(100) DEFAULT NULL,
  `direccion_cliente` varchar(255) DEFAULT NULL,
  `informacion_cliente` tinyint(1) NOT NULL DEFAULT '0',
  `desea_correo_cliente` char(2) DEFAULT 'NR',
  `id_estado` int(10) unsigned NOT NULL,
  `id_ciudad` int(10) NOT NULL,
  `id_tipo_cliente` int(10) NOT NULL,
  `id_sector` int(10) NOT NULL,
  `id_apariencia` int(10) NOT NULL,
  `id_plan` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_apariencia_cliente_idx` (`id_apariencia`),
  KEY `fk_cliente_ciudad_idx` (`id_ciudad`),
  KEY `fk_cliente_estado_idx` (`id_estado`),
  KEY `fk_cliente_sector_idx` (`id_sector`),
  KEY `fk_cliente_tipo_cliente_idx` (`id_tipo_cliente`),
  KEY `fk_plan_cliente_idx` (`id_plan`),
  CONSTRAINT `fk_apariencia_id_cliente` FOREIGN KEY (`id_apariencia`) REFERENCES `apariencia` (`id_apariencia`),
  CONSTRAINT `fk_cliente_id_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  CONSTRAINT `fk_cliente_id_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `fk_cliente_id_sector` FOREIGN KEY (`id_sector`) REFERENCES `sector` (`id_sector`),
  CONSTRAINT `fk_cliente_id_tipo_cliente` FOREIGN KEY (`id_tipo_cliente`) REFERENCES `tipo_cliente` (`id_tipo_cliente`),
  CONSTRAINT `fk_plan_id_cliente` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id_plan`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'82646','Amani','(080)080-2291x743','Baylee.Miller@Prohaska.com','632 Micaela Ranch Suite 328\nNolanland, MD 67852-3086',0,'N',1,5,2,1,4,1,'2015-06-28 02:12:38','2015-06-28 02:12:38'),(2,'09031','Jarrell','1-000-026-8295','jFay@hotmail.com','451 Nolan Common\nSouth Marcos, NE 22782',0,'N',2,1,1,1,4,1,'2015-06-28 02:12:06','2015-06-28 02:12:06'),(3,'15405-2556','Monserrat','1-908-968-9888','Glenda.Osinski@Rau.com','055 Murphy Stream\nSimborough, WI 44799-4431',0,'N',2,2,2,1,4,1,'2015-06-28 02:12:06','2015-06-28 02:12:06'),(4,'82646','Amani','(080)080-2291x743','Baylee.Miller@Prohaska.com','632 Micaela Ranch Suite 328\nNolanland, MD 67852-3086',0,'N',1,5,2,1,4,1,'2015-06-28 02:12:38','2015-06-28 02:12:38'),(5,'88729','Erin','552-403-5858x458','Will.Terry@Kunde.com','82495 Schmeler Squares Apt. 759\nNew Abdul, OH 83995',1,'N',1,1,2,1,4,1,'2015-06-28 02:12:38','2015-06-28 02:12:38'),(6,'89885','Oliver','+53(9)9880195860','gGreenholt@gmail.com','749 Cummerata Forges Apt. 865\nBodestad, DC 72594-0373',1,'N',2,2,2,1,4,1,'2015-06-28 02:12:38','2015-06-28 02:12:38'),(7,'49717-1088','Boris','(901)749-7601x24319','mPurdy@Muller.com','60991 Gutkowski Springs Apt. 304\nNorth Maddison, CA 99047',0,'N',1,3,2,1,4,1,'2015-06-28 02:12:38','2015-06-28 02:12:38'),(8,'36050','Finn','(219)424-8974x26899','vHammes@yahoo.com','490 Erich Street\nVladimirview, FL 23126',0,'N',1,4,2,1,4,1,'2015-06-28 02:12:38','2015-06-28 02:12:38'),(9,'82646','Amani','(080)080-2291x743','Baylee.Miller@Prohaska.com','632 Micaela Ranch Suite 328\nNolanland, MD 67852-3086',0,'N',1,5,2,1,4,1,'2015-06-28 02:12:38','2015-06-28 02:12:38');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_respuesta`
--

DROP TABLE IF EXISTS `cliente_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_respuesta` (
  `id_cliente_respuesta` int(10) NOT NULL AUTO_INCREMENT,
  `ultima_respuesta` datetime DEFAULT NULL,
  `id_cliente` int(10) unsigned NOT NULL,
  `id_respuesta` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente_respuesta`,`id_cliente`,`id_respuesta`),
  KEY `fk_cliente_respuesta_cliente_idx` (`id_cliente`),
  KEY `fk_cliente_respuesta_respuesta_idx` (`id_respuesta`),
  CONSTRAINT `fk_cliente_respuesta_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_respuesta_respuesta` FOREIGN KEY (`id_respuesta`) REFERENCES `respuesta` (`id_respuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='cliente_respuesta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_respuesta`
--

LOCK TABLES `cliente_respuesta` WRITE;
/*!40000 ALTER TABLE `cliente_respuesta` DISABLE KEYS */;
INSERT INTO `cliente_respuesta` VALUES (3,'1971-10-24 17:13:25',2,2,'2015-06-28 02:44:34','2015-06-28 02:44:34'),(4,'1972-07-18 12:23:33',3,3,'2015-06-28 02:44:34','2015-06-28 02:44:34'),(7,'1979-06-05 09:09:26',5,5,'2015-06-28 02:45:28','2015-06-28 02:45:28'),(8,'1988-02-19 21:40:01',6,6,'2015-06-28 02:45:28','2015-06-28 02:45:28');
/*!40000 ALTER TABLE `cliente_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta`
--

DROP TABLE IF EXISTS `encuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta` (
  `id_encuesta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `fecha_modificacion` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `id_estado` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_encuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='encuesta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta`
--

LOCK TABLES `encuesta` WRITE;
/*!40000 ALTER TABLE `encuesta` DISABLE KEYS */;
INSERT INTO `encuesta` VALUES (1,'Encuesta 1','2015-06-27 22:56:18','2015-06-27 22:56:18',1,'2015-06-28 01:56:18','2015-06-28 01:56:18'),(2,'Encuesta 2','2015-06-27 22:56:19','2015-06-27 22:56:19',1,'2015-06-28 01:56:19','2015-06-28 01:56:19'),(3,'Encuesta 3','2015-06-27 22:56:19','2015-06-27 22:56:19',1,'2015-06-28 01:56:19','2015-06-28 01:56:19');
/*!40000 ALTER TABLE `encuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_sector`
--

DROP TABLE IF EXISTS `encuesta_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_sector` (
  `id_encuesta_sector` int(10) NOT NULL AUTO_INCREMENT,
  `id_encuesta` int(10) unsigned NOT NULL,
  `id_sector` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_encuesta_sector`),
  KEY `fk_encuesta_momento_sector_idx` (`id_sector`),
  KEY `fk_encuesta_sector_encuesta_idx` (`id_encuesta`),
  CONSTRAINT `fk_encuesta_momento_id_sector` FOREIGN KEY (`id_sector`) REFERENCES `sector` (`id_sector`),
  CONSTRAINT `fk_encuesta_sector_encuesta1` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='encuesta_momento';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_sector`
--

LOCK TABLES `encuesta_sector` WRITE;
/*!40000 ALTER TABLE `encuesta_sector` DISABLE KEYS */;
INSERT INTO `encuesta_sector` VALUES (1,1,1,'2015-06-28 02:54:50','2015-06-28 02:54:50'),(2,1,2,'2015-06-28 02:54:50','2015-06-28 02:54:50'),(3,1,3,'2015-06-28 02:54:50','2015-06-28 02:54:50'),(4,1,4,'2015-06-28 02:54:50','2015-06-28 02:54:50');
/*!40000 ALTER TABLE `encuesta_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id_estado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_estado` varchar(255) DEFAULT NULL,
  `descripcion_estado` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='estado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'estado','activo','2015-06-28 01:46:48','2015-06-28 01:46:48'),(2,'estado','inactivo','2015-06-28 01:46:48','2015-06-28 01:46:48');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excepcion`
--

DROP TABLE IF EXISTS `excepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `excepcion` (
  `id_excepcion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion_excepcion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_excepcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='excepcione';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excepcion`
--

LOCK TABLES `excepcion` WRITE;
/*!40000 ALTER TABLE `excepcion` DISABLE KEYS */;
INSERT INTO `excepcion` VALUES (1,'Usuario no desea responder encuesta','2015-06-28 02:13:41','2015-06-28 02:13:41'),(2,'Usuario no desea responder encuesta','2015-06-28 02:14:37','2015-06-28 02:14:37');
/*!40000 ALTER TABLE `excepcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excepcion_cliente`
--

DROP TABLE IF EXISTS `excepcion_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `excepcion_cliente` (
  `id_excepcion_cliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_excepcion` int(10) unsigned NOT NULL,
  `id_cliente` int(10) unsigned NOT NULL,
  `fecha` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_excepcion_cliente`),
  KEY `fk_excepcion_cliente_excepcion_idx` (`id_excepcion`),
  KEY `fk_excepcion_cliente_cliente_idx` (`id_cliente`),
  CONSTRAINT `fk_excepcion_cliente_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_excepcion_cliente_excepcion` FOREIGN KEY (`id_excepcion`) REFERENCES `excepcion` (`id_excepcion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='excepcion_cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excepcion_cliente`
--

LOCK TABLES `excepcion_cliente` WRITE;
/*!40000 ALTER TABLE `excepcion_cliente` DISABLE KEYS */;
INSERT INTO `excepcion_cliente` VALUES (1,1,5,'2015-02-27 04:04:32','2015-06-28 02:14:37','2015-06-28 02:14:37');
/*!40000 ALTER TABLE `excepcion_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `id_link` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion_link` varchar(255) NOT NULL,
  `url_link` varchar(400) NOT NULL,
  `url_corta` varchar(255) NOT NULL,
  `id_sector` int(10) unsigned NOT NULL,
  `id_canal` int(10) unsigned NOT NULL,
  `id_cliente` int(10) unsigned NOT NULL,
  `id_estado` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_link`),
  KEY `fk_link_sector_idx` (`id_sector`),
  KEY `fk_link_canal_idx` (`id_canal`),
  KEY `fk_link_cliente_idx` (`id_cliente`),
  KEY `fk_link_estado_idx` (`id_estado`),
  CONSTRAINT `fk_link_canal` FOREIGN KEY (`id_canal`) REFERENCES `canal` (`id_canal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_link_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_link_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='link';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (2,'Five, \'and I\'ll tell you my adventures--beginning from this side of WHAT?\' thought Alice to.','http://www.Bailey.info/expedita-deleniti-asperiores-eius-quasi-ut','http://www.Dietrich.biz/',1,1,1,1,'2015-06-28 02:49:49','2015-06-28 02:49:49'),(3,'King said to herself how this same little sister of hers that you couldn\'t cut off a bit hurt, and.','http://www.Weissnat.org/','https://www.Moore.net/quia-delectus-et-fuga-odio-nesciunt-earum-provident-quia',1,2,2,1,'2015-06-28 02:49:49','2015-06-28 02:49:49'),(4,'YOUR shoes done with?\' said the Mock Turtle. Alice was soon left alone. \'I wish I could shut up.','http://www.Kovacek.com/','http://www.Brown.com/ab-hic-et-libero-modi',1,3,3,1,'2015-06-28 02:49:49','2015-06-28 02:49:49'),(5,'WOULD not remember ever having seen such a pleasant temper, and thought to herself \'This is Bill,\'.','https://www.Frami.com/ratione-iure-qui-est-mollitia','https://www.McCullough.com/asperiores-maxime-maxime-maxime-ut-sunt-corrupti-libero-veritatis',1,4,4,1,'2015-06-28 02:49:49','2015-06-28 02:49:49'),(6,'March Hare went on. \'Or would you like the look of the e--e--evening, Beautiful, beautiful Soup!\'.','http://www.OHara.net/consequatur-est-eius-debitis-saepe-ut.html','https://www.Walker.com/architecto-qui-iste-rem-dolores',1,5,5,1,'2015-06-28 02:49:49','2015-06-28 02:49:49');
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `momento`
--

DROP TABLE IF EXISTS `momento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `momento` (
  `id_momento` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion_momento` varchar(255) NOT NULL,
  `medicion` varchar(100) DEFAULT NULL,
  `id_estado` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_momento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='momento';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `momento`
--

LOCK TABLES `momento` WRITE;
/*!40000 ALTER TABLE `momento` DISABLE KEYS */;
INSERT INTO `momento` VALUES (1,'Veniam delectus qui quod voluptas. Est molestias animi similique ullam.','Natus et at corporis sed.',1,'2015-06-28 01:56:19','2015-06-28 01:56:19'),(2,'Ab nesciunt enim dolorum. Non quia ea quam minima amet temporibus. Esse autem sit quia.','Aliquid iusto sed molestiae aliquam.',1,'2015-06-28 01:56:19','2015-06-28 01:56:19'),(3,'Architecto atque est at nesciunt. Sint ab perferendis adipisci est.','Consequatur enim minima tempora aspernatur in.',1,'2015-06-28 01:56:19','2015-06-28 01:56:19'),(4,'Ad quisquam exercitationem rerum. Minima provident temporibus velit deleniti.','Porro vel voluptatem sequi ab.',1,'2015-06-28 01:56:20','2015-06-28 01:56:20');
/*!40000 ALTER TABLE `momento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `momento_sector`
--

DROP TABLE IF EXISTS `momento_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `momento_sector` (
  `id_momento_sector` int(10) NOT NULL AUTO_INCREMENT,
  `id_sector` int(10) NOT NULL,
  `id_momento` int(10) NOT NULL,
  `descripcion_momento_sector` varchar(255) NOT NULL,
  `id_estado` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_momento_sector`,`id_sector`,`id_momento`),
  KEY `fk_momento_momento_sector_idx` (`id_momento`),
  KEY `fk_momento_sector_sector_idx` (`id_sector`),
  KEY `fk_momento_sector_estado_idx` (`id_estado`),
  CONSTRAINT `fk_momento_id_momento_sector` FOREIGN KEY (`id_momento`) REFERENCES `momento` (`id_momento`),
  CONSTRAINT `fk_momento_sector_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_momento_sector_id_sector` FOREIGN KEY (`id_sector`) REFERENCES `sector` (`id_sector`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='momento_sector';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `momento_sector`
--

LOCK TABLES `momento_sector` WRITE;
/*!40000 ALTER TABLE `momento_sector` DISABLE KEYS */;
INSERT INTO `momento_sector` VALUES (1,1,1,'Enim temporibus officiis vitae sequi animi.',1,'2015-06-28 01:56:20','2015-06-28 01:56:20'),(2,1,2,'Magnam perspiciatis quia nemo est delectus.',1,'2015-06-28 01:56:20','2015-06-28 01:56:20'),(3,1,3,'Sit autem numquam omnis.',1,'2015-06-28 01:56:20','2015-06-28 01:56:20'),(4,1,4,'Qui beatae earum beatae distinctio nulla quas.',1,'2015-06-28 01:56:20','2015-06-28 01:56:20');
/*!40000 ALTER TABLE `momento_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negocio`
--

DROP TABLE IF EXISTS `negocio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negocio` (
  `id_negocio` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion_negocio` varchar(255) DEFAULT NULL,
  `id_estado` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_negocio`),
  KEY `fk_negocios_estado_idx` (`id_estado`),
  CONSTRAINT `fk_negocios_id_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='negocio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negocio`
--

LOCK TABLES `negocio` WRITE;
/*!40000 ALTER TABLE `negocio` DISABLE KEYS */;
INSERT INTO `negocio` VALUES (1,'Watsica, Kunde and Vandervort',1,'2015-06-28 01:57:00','2015-06-28 01:57:00'),(2,'Wolf, Schinner and Wiegand',1,'2015-06-28 01:57:01','2015-06-28 01:57:01'),(3,'Hettinger-Trantow',1,'2015-06-28 01:57:01','2015-06-28 01:57:01'),(4,'Bashirian, Padberg and Mueller',1,'2015-06-28 01:57:01','2015-06-28 01:57:01');
/*!40000 ALTER TABLE `negocio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id_pais` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion_pais` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='pais';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Guam','2015-06-28 01:51:45','2015-06-28 01:51:45'),(2,'Mexico','2015-06-28 01:51:45','2015-06-28 01:51:45'),(3,'United States of America','2015-06-28 01:51:45','2015-06-28 01:51:45'),(4,'Mauritania','2015-06-28 01:51:45','2015-06-28 01:51:45'),(5,'Haiti','2015-06-28 01:51:46','2015-06-28 01:51:46'),(6,'Benin','2015-06-28 01:51:46','2015-06-28 01:51:46'),(7,'Turkey','2015-06-28 01:51:46','2015-06-28 01:51:46'),(8,'Jordan','2015-06-28 01:51:46','2015-06-28 01:51:46'),(9,'Ukraine','2015-06-28 01:51:46','2015-06-28 01:51:46'),(10,'Rwanda','2015-06-28 01:51:46','2015-06-28 01:51:46');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `id_plan` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion_plan` varchar(255) NOT NULL,
  `id_estado` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_plan`),
  KEY `fk_plan_estado_idx` (`id_estado`),
  CONSTRAINT `fk_plan_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='plan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'free',1,'2015-06-28 01:59:09','2015-06-28 01:59:09'),(2,'profesional',1,'2015-06-28 01:59:09','2015-06-28 01:59:09'),(3,'premium',1,'2015-06-28 01:59:10','2015-06-28 01:59:10');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta_cabecera`
--

DROP TABLE IF EXISTS `pregunta_cabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta_cabecera` (
  `id_pregunta_cabecera` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion_1` varchar(255) DEFAULT NULL,
  `descripcion_2` varchar(255) DEFAULT NULL,
  `descripcion_3` varchar(255) DEFAULT NULL,
  `numero_pregunta` varchar(255) DEFAULT NULL,
  `id_pregunta_padre` int(10) DEFAULT NULL,
  `id_estado` int(10) unsigned NOT NULL,
  `id_encuesta` int(10) unsigned NOT NULL,
  `id_tipo_respuesta` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pregunta_cabecera`),
  KEY `fk_preguntas_encuesta_idx` (`id_encuesta`),
  KEY `fk_preguntas_estado_idx` (`id_estado`),
  KEY `fk_pregunta_cabecera_tipo_respuesta1_idx` (`id_tipo_respuesta`),
  CONSTRAINT `fk_pregunta_cabecera_tipo_respuesta` FOREIGN KEY (`id_tipo_respuesta`) REFERENCES `tipo_respuesta` (`id_tipo_respuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_preguntas_id_encuesta` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuesta`),
  CONSTRAINT `fk_preguntas_id_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `fk_preguntas_id_tipo_respuesta` FOREIGN KEY (`id_tipo_respuesta`) REFERENCES `tipo_respuesta` (`id_tipo_respuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='pregunta_cabecera';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta_cabecera`
--

LOCK TABLES `pregunta_cabecera` WRITE;
/*!40000 ALTER TABLE `pregunta_cabecera` DISABLE KEYS */;
INSERT INTO `pregunta_cabecera` VALUES (1,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno, ¿Hasta qué punto la marca Universidad Mayor ha logrado satisfacer sus necesidades en forma efectiva?','','','1',0,1,1,2,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(2,'¿Por qué evalúa con esa nota?','','','',1,1,1,3,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(3,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno, ¿Qué tan simple y fácil le ha sido interactuar con Universidad Mayor?','','','2',0,1,1,2,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(4,'¿Por qué evalúa con esa nota?','','','',3,1,1,4,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(5,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno, ¿Qué tan agradable ha sido su permanencia en la Universidad Mayor?','','','3',0,2,1,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(6,'¿Por qué evalúa con esa nota?','','','',6,1,1,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(7,'¿Recomendaría Universidad Mayor a sus conocidos o amigos?','','','4',0,1,1,2,'2015-06-28 02:25:45','2015-06-28 02:25:45');
/*!40000 ALTER TABLE `pregunta_cabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta_detalle`
--

DROP TABLE IF EXISTS `pregunta_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta_detalle` (
  `id_pregunta_detalle` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion_pregunta_detalle` varchar(255) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `fecha_modificacion` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `id_estado` int(10) unsigned NOT NULL,
  `id_encuesta` int(10) unsigned NOT NULL,
  `id_pregunta_cabecera` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pregunta_detalle`),
  KEY `fk_pregunta_detalles_encuesta_idx` (`id_encuesta`),
  KEY `fk_pregunta_detalles_estado_idx` (`id_estado`),
  KEY `fk_pregunta_detalles_pregunta_idx` (`id_pregunta_cabecera`),
  CONSTRAINT `fk_pregunta_detalles_id_encuesta` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuesta`),
  CONSTRAINT `fk_pregunta_detalles_id_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `fk_pregunta_detalles_id_pregunta` FOREIGN KEY (`id_pregunta_cabecera`) REFERENCES `pregunta_cabecera` (`id_pregunta_cabecera`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='pregunta_detalle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta_detalle`
--

LOCK TABLES `pregunta_detalle` WRITE;
/*!40000 ALTER TABLE `pregunta_detalle` DISABLE KEYS */;
INSERT INTO `pregunta_detalle` VALUES (1,'{\"descripcion_1\":\"Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno, \\u00bfHasta qu\\u00e9 punto la marca Universidad Mayor ha logrado satisfacer sus necesidades en forma efectiva?\"}','1900-01-01 00:00:00','1900-01-01 00:00:00',1,1,1,'2015-06-28 02:26:35','2015-06-28 02:26:35'),(2,'{\"descripcion_1\":\"\\u00bfPor qu\\u00e9 eval\\u00faa con esa nota?\"}','1900-01-01 00:00:00','1900-01-01 00:00:00',1,1,2,'2015-06-28 02:26:35','2015-06-28 02:26:35'),(3,'{\"descripcion_1\":\"Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno, \\u00bfQu\\u00e9 tan simple y f\\u00e1cil le ha sido interactuar con Universidad Mayor?\"}','1900-01-01 00:00:00','1900-01-01 00:00:00',1,1,3,'2015-06-28 02:26:35','2015-06-28 02:26:35'),(4,'{\"descripcion_1\":\"\\u00bfPor qu\\u00e9 eval\\u00faa con esa nota?\"}','1900-01-01 00:00:00','1900-01-01 00:00:00',1,1,4,'2015-06-28 02:26:35','2015-06-28 02:26:35'),(5,'{\"descripcion_1\":\"Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno, \\u00bfQu\\u00e9 tan agradable ha sido su permanencia en la Universidad Mayor?\"}','1900-01-01 00:00:00','1900-01-01 00:00:00',1,1,5,'2015-06-28 02:26:36','2015-06-28 02:26:36'),(6,'{\"descripcion_1\":\"\\u00bfPor qu\\u00e9 eval\\u00faa con esa nota?\"}','1900-01-01 00:00:00','1900-01-01 00:00:00',1,1,6,'2015-06-28 02:26:36','2015-06-28 02:26:36'),(7,'{\"descripcion_1\":\"\\u00bfRecomendar\\u00eda Universidad Mayor a sus conocidos o amigos?\"}','1900-01-01 00:00:00','1900-01-01 00:00:00',1,1,7,'2015-06-28 02:26:36','2015-06-28 02:26:36');
/*!40000 ALTER TABLE `pregunta_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id_region` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion_region` varchar(255) NOT NULL,
  `id_pais` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_region`),
  KEY `fk_region_pais_idx` (`id_pais`),
  CONSTRAINT `fk_region_id_pais` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='region';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Florida',1,'2015-06-28 02:07:40','2015-06-28 02:07:40'),(2,'New Hampshire',2,'2015-06-28 02:07:41','2015-06-28 02:07:41'),(3,'Virginia',3,'2015-06-28 02:07:41','2015-06-28 02:07:41'),(4,'North Carolina',4,'2015-06-28 02:07:41','2015-06-28 02:07:41'),(5,'Indiana',5,'2015-06-28 02:07:41','2015-06-28 02:07:41'),(6,'Kansas',6,'2015-06-28 02:07:41','2015-06-28 02:07:41'),(7,'Connecticut',7,'2015-06-28 02:07:41','2015-06-28 02:07:41'),(8,'Idaho',8,'2015-06-28 02:07:41','2015-06-28 02:07:41'),(9,'Wyoming',9,'2015-06-28 02:07:41','2015-06-28 02:07:41'),(10,'Virginia',10,'2015-06-28 02:07:41','2015-06-28 02:07:41');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta`
--

DROP TABLE IF EXISTS `respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuesta` (
  `id_respuesta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `id_estado` int(10) unsigned NOT NULL,
  `id_canal` int(10) unsigned NOT NULL,
  `id_encuesta` int(10) unsigned NOT NULL,
  `id_pregunta_cabecera` int(10) unsigned NOT NULL,
  `id_pregunta_detalle` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_respuesta`),
  KEY `fk_respuestas_canal_idx` (`id_canal`),
  KEY `fk_respuestas_encuesta_idx` (`id_encuesta`),
  KEY `fk_respuestas_estado_idx` (`id_estado`),
  KEY `fk_respuestas_pregunta_cabecera_idx` (`id_pregunta_cabecera`),
  KEY `fk_respuestas_pregunta_detalle_idx` (`id_pregunta_detalle`),
  CONSTRAINT `fk_respuestas_id_canal` FOREIGN KEY (`id_canal`) REFERENCES `canal` (`id_canal`),
  CONSTRAINT `fk_respuestas_id_encuesta` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuesta`),
  CONSTRAINT `fk_respuestas_id_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `fk_respuestas_id_pregunta_cabecera` FOREIGN KEY (`id_pregunta_cabecera`) REFERENCES `pregunta_cabecera` (`id_pregunta_cabecera`),
  CONSTRAINT `fk_respuestas_id_pregunta_detalle` FOREIGN KEY (`id_pregunta_detalle`) REFERENCES `pregunta_detalle` (`id_pregunta_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='respuesta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta`
--

LOCK TABLES `respuesta` WRITE;
/*!40000 ALTER TABLE `respuesta` DISABLE KEYS */;
INSERT INTO `respuesta` VALUES (1,'1900-01-01 00:00:00',1,1,1,1,1,'2015-06-28 02:43:36','2015-06-28 02:43:36'),(2,'1900-01-01 00:00:00',1,1,1,2,2,'2015-06-28 02:43:36','2015-06-28 02:43:36'),(3,'1900-01-01 00:00:00',1,1,1,3,3,'2015-06-28 02:43:36','2015-06-28 02:43:36'),(4,'1900-01-01 00:00:00',1,1,1,4,4,'2015-06-28 02:43:36','2015-06-28 02:43:36'),(5,'1900-01-01 00:00:00',1,3,1,1,1,'2015-06-28 02:43:36','2015-06-28 02:43:36'),(6,'1900-01-01 00:00:00',1,3,1,2,2,'2015-06-28 02:43:36','2015-06-28 02:43:36'),(7,'1900-01-01 00:00:00',1,3,1,3,3,'2015-06-28 02:43:36','2015-06-28 02:43:36'),(8,'1900-01-01 00:00:00',1,3,1,4,4,'2015-06-28 02:43:36','2015-06-28 02:43:36');
/*!40000 ALTER TABLE `respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta_detalle`
--

DROP TABLE IF EXISTS `respuesta_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuesta_detalle` (
  `id_respuesta_detalle` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `valor1` int(10) DEFAULT NULL,
  `valor2` varchar(255) DEFAULT NULL,
  `id_respuesta` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_respuesta_detalle`),
  KEY `fk_respuestas_detalle_respuesta_idx` (`id_respuesta`),
  CONSTRAINT `fk_respuestas_detalle_id_respuesta` FOREIGN KEY (`id_respuesta`) REFERENCES `respuesta` (`id_respuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='respuesta_detalle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta_detalle`
--

LOCK TABLES `respuesta_detalle` WRITE;
/*!40000 ALTER TABLE `respuesta_detalle` DISABLE KEYS */;
INSERT INTO `respuesta_detalle` VALUES (1,5,'',1,'2015-06-28 02:43:36','2015-06-28 02:43:36'),(2,0,'Porque....',2,'2015-06-28 02:43:36','2015-06-28 02:43:36'),(3,5,'',3,'2015-06-28 02:43:37','2015-06-28 02:43:37'),(4,0,'Porque....',4,'2015-06-28 02:43:37','2015-06-28 02:43:37'),(5,5,'',5,'2015-06-28 02:43:37','2015-06-28 02:43:37'),(6,0,'Porque....',6,'2015-06-28 02:43:37','2015-06-28 02:43:37');
/*!40000 ALTER TABLE `respuesta_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sector` (
  `id_sector` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion_sector` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sector`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='sector';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Laudantium nulla dolores ut.','2015-06-28 01:56:19','2015-06-28 01:56:19'),(2,'Eligendi aperiam velit voluptatem necessitatibus.','2015-06-28 01:56:19','2015-06-28 01:56:19'),(3,'Cupiditate aut maxime magnam natus.','2015-06-28 01:56:19','2015-06-28 01:56:19'),(4,'Quis nobis suscipit et.','2015-06-28 01:56:19','2015-06-28 01:56:19'),(5,'Optio soluta distinctio vel totam.','2015-06-28 01:56:19','2015-06-28 01:56:19'),(6,'Voluptate dolorum ut incidunt laboriosam hic.','2015-06-28 01:56:19','2015-06-28 01:56:19'),(7,'Nisi eos omnis expedita vero aut aut.','2015-06-28 01:56:19','2015-06-28 01:56:19'),(8,'Magnam voluptates natus velit nesciunt.','2015-06-28 01:56:19','2015-06-28 01:56:19'),(9,'Voluptatem qui qui sapiente et et architecto.','2015-06-28 01:56:19','2015-06-28 01:56:19'),(10,'Eaque quo maiores beatae ab.','2015-06-28 01:56:19','2015-06-28 01:56:19');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cliente`
--

DROP TABLE IF EXISTS `tipo_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_cliente` (
  `id_tipo_cliente` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion_tipo_cliente` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tipo_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='tipo_cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cliente`
--

LOCK TABLES `tipo_cliente` WRITE;
/*!40000 ALTER TABLE `tipo_cliente` DISABLE KEYS */;
INSERT INTO `tipo_cliente` VALUES (1,'administrador','2015-06-28 01:59:10','2015-06-28 01:59:10'),(2,'comun','2015-06-28 01:59:10','2015-06-28 01:59:10');
/*!40000 ALTER TABLE `tipo_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_respuesta`
--

DROP TABLE IF EXISTS `tipo_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_respuesta` (
  `id_tipo_respuesta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `opciones` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tipo_respuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='tipo_respuesta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_respuesta`
--

LOCK TABLES `tipo_respuesta` WRITE;
/*!40000 ALTER TABLE `tipo_respuesta` DISABLE KEYS */;
INSERT INTO `tipo_respuesta` VALUES (1,'Opcion única',NULL,'2015-06-28 02:19:22','2015-06-28 02:19:22'),(2,'Opcion únicacon respuesta texto (Linea simple)','{\"chart_max\"}','2015-06-28 02:19:22','2015-06-28 02:19:22'),(3,'Multiopcion',NULL,'2015-06-28 02:19:22','2015-06-28 02:19:22'),(4,'Multiopcion con respuesta texto (Linea simple)','{\"chart_max\"}','2015-06-28 02:19:22','2015-06-28 02:19:22'),(5,'Por rango de valor','{\"min\",\"max\"}','2015-06-28 02:19:22','2015-06-28 02:19:22'),(6,'Respuesta texto (Linea simple)','{\"chart_max\"}','2015-06-28 02:19:22','2015-06-28 02:19:22'),(7,'Respuesta texto (Multilinea)','{\"chart_max\",\"row\"}','2015-06-28 02:19:22','2015-06-28 02:19:22');
/*!40000 ALTER TABLE `tipo_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'panel_exscore'
--

--
-- Dumping routines for database 'panel_exscore'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-30 11:02:42
