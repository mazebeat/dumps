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
  `logo_header` longtext NOT NULL,
  `logo_incentivo` longtext,
  `color_header` varchar(20) NOT NULL,
  `color_body` varchar(20) NOT NULL,
  `color_footer` varchar(20) DEFAULT NULL,
  `color_boton` varchar(20) DEFAULT NULL,
  `color_opciones` varchar(20) NOT NULL,
  `color_text_header` varchar(20) NOT NULL,
  `color_text_body` varchar(20) NOT NULL,
  `color_text_footer` varchar(20) DEFAULT NULL,
  `color_instrucciones` varchar(20) DEFAULT NULL,
  `desea_captura_datos` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_apariencia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='apariencia';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apariencia`
--

LOCK TABLES `apariencia` WRITE;
/*!40000 ALTER TABLE `apariencia` DISABLE KEYS */;
INSERT INTO `apariencia` VALUES (1,'http://localhost:8000/image/customertrigger/customertrigger.png','http://localhost:8000/image/customertrigger/incentivo.png','#ffffff','#209FFE','#209FFE','#FBA202','red','#FBA202','#333','#ffffff','#ffffff',0,'2015-07-02 21:50:08','2015-07-02 21:50:08'),(2,'http://localhost:8000/image/trial/trial.png',NULL,'#ffffff','#221656','#221656','#1da5df','blue','#1da5df','#333','#ffffff','#ffffff',1,'2015-06-28 01:51:45','2015-06-28 01:51:45'),(3,'http://localhost:8000/image/siamo/siamo.png',NULL,'#ffffff','#BD1622','#BD1622','#006633','green','#BD1622','#333','#ffffff','#ffffff',1,'2015-07-27 04:59:36','2015-07-27 04:59:36');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='canal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canal`
--

LOCK TABLES `canal` WRITE;
/*!40000 ALTER TABLE `canal` DISABLE KEYS */;
INSERT INTO `canal` VALUES (1,'wb','Web Page','2015-06-28 01:46:47','2015-06-28 01:46:47');
/*!40000 ALTER TABLE `canal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_categoria` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Efectivo','2015-07-21 22:53:22','2015-07-21 22:53:22'),(2,'Fácil','2015-07-21 22:53:22','2015-07-21 22:53:22'),(3,'Agradable','2015-07-21 22:53:22','2015-07-21 22:53:22'),(4,'NPS','2015-07-21 22:53:22','2015-07-21 22:53:22');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
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
INSERT INTO `ciudad` VALUES (1,1,'East Brainmouth','2015-06-28 02:07:58','2015-06-28 02:07:58'),(2,1,'Port Wellington','2015-06-28 02:07:58','2015-06-28 02:07:58'),(3,1,'Mauricefort','2015-06-28 02:07:58','2015-06-28 02:07:58'),(4,1,'Cortneyton','2015-06-28 02:07:58','2015-06-28 02:07:58'),(5,1,'East Otilia','2015-06-28 02:07:58','2015-06-28 02:07:58');
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
  `id_ciudad` int(10) NOT NULL,
  `id_sector` int(10) NOT NULL,
  `id_plan` int(10) NOT NULL,
  `id_encuesta` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_estado` int(10) unsigned NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_cliente_ciudad_idx` (`id_ciudad`),
  KEY `fk_cliente_sector_idx` (`id_sector`),
  KEY `fk_plan_cliente_idx` (`id_plan`),
  KEY `fk_cliente_encuesta_idx` (`id_encuesta`),
  KEY `fk_cliente_estado1_idx` (`id_estado`),
  CONSTRAINT `fk_cliente_estado1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_id_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  CONSTRAINT `fk_cliente_id_sector` FOREIGN KEY (`id_sector`) REFERENCES `sector` (`id_sector`),
  CONSTRAINT `fk_plan_id_cliente` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id_plan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'111111111','CustomerTrigger','(080)080-2291x743','contacto@customertrigger.cl','Fanor Velasco 85, Piso 9',1,1,1,1,'2015-07-02 21:44:11',1,'2015-07-02 21:44:11'),(2,'222222222','Trial','(080)080-2291x743','contacto@trial.cl','Mi direccion 1',1,1,2,2,'2015-07-15 05:06:01',1,'2015-07-15 05:06:01'),(3,'333333333','Siamo','(080)080-2291x743','contacto@siamo.cl','Mi direccion 3',1,1,2,3,'2015-07-15 05:06:01',1,'2015-07-15 05:06:01');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_apariencia`
--

DROP TABLE IF EXISTS `cliente_apariencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_apariencia` (
  `id_cliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_apariencia` int(10) NOT NULL,
  `id_cliente_apariencia` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`,`id_cliente_apariencia`),
  KEY `fk_cliente_has_apariencia_apariencia1_idx` (`id_apariencia`),
  KEY `fk_cliente_has_apariencia_cliente1_idx` (`id_cliente`),
  CONSTRAINT `fk_cliente_has_apariencia_apariencia1` FOREIGN KEY (`id_apariencia`) REFERENCES `apariencia` (`id_apariencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_apariencia`
--

LOCK TABLES `cliente_apariencia` WRITE;
/*!40000 ALTER TABLE `cliente_apariencia` DISABLE KEYS */;
INSERT INTO `cliente_apariencia` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `cliente_apariencia` ENABLE KEYS */;
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
  `id_estado` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente_respuesta`,`id_respuesta`),
  KEY `fk_cliente_respuesta_respuesta_idx` (`id_respuesta`),
  KEY `fk_cliente_respuesta_cliente1_idx` (`id_cliente`),
  KEY `fk_cliente_respuesta_estado1_idx` (`id_estado`),
  CONSTRAINT `fk_cliente_respuesta_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_respuesta_estado1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_respuesta_respuesta` FOREIGN KEY (`id_respuesta`) REFERENCES `respuesta` (`id_respuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='cliente_respuesta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_respuesta`
--

LOCK TABLES `cliente_respuesta` WRITE;
/*!40000 ALTER TABLE `cliente_respuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_benchmark`
--

DROP TABLE IF EXISTS `cs_benchmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_benchmark` (
  `id_unico` int(11) NOT NULL AUTO_INCREMENT,
  `id_orden` int(11) DEFAULT NULL,
  `Anio` int(11) DEFAULT NULL,
  `Universidad` varchar(255) DEFAULT NULL,
  `Sede` varchar(255) DEFAULT NULL,
  `N_Encuestas` int(11) DEFAULT NULL,
  `Satisfaccion_Promotor` float DEFAULT NULL,
  `Satisfaccion_Detractor` float DEFAULT NULL,
  `Satisfaccion_NPS` float DEFAULT NULL,
  `Efectividad_Promotor` float DEFAULT NULL,
  `Efectividad_Detractor` float DEFAULT NULL,
  `Efectividad_NPS` float DEFAULT NULL,
  `Facil_Promotor` float DEFAULT NULL,
  `Facil_Detractor` float DEFAULT NULL,
  `Facil_NPS` float DEFAULT NULL,
  `Agradable_Promotor` float DEFAULT NULL,
  `Agradable_Detractor` float DEFAULT NULL,
  `Agradable_NPS` float DEFAULT NULL,
  `Lealtad` float DEFAULT NULL,
  PRIMARY KEY (`id_unico`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_benchmark`
--

LOCK TABLES `cs_benchmark` WRITE;
/*!40000 ALTER TABLE `cs_benchmark` DISABLE KEYS */;
INSERT INTO `cs_benchmark` VALUES (1,1,2014,'Todas','Todas',400,0.22,0.25,-0.03,0.41,0.31,0.1,0.28,0.55,-0.27,0.61,0.18,0.43,0.81),(2,1,2014,'Todas','División Santiago',300,0.21,0.29,-0.08,0.34,0.36,-0.03,0.31,0.5,-0.19,0.53,0.23,0.3,0.75),(3,1,2014,'Todas','División Temuco',100,0.22,0.12,0.1,0.61,0.15,0.46,0.19,0.69,-0.5,0.84,0,0.84,1),(4,2,2014,'UDP','División Santiago',150,0.33,0.22,0.11,0.47,0.3,0.17,0.45,0.35,0.1,0.59,0.25,0.34,0.83),(5,2,2014,'UNAB','División Santiago',150,0.09,0.36,-0.27,0.22,0.43,0.21,0.17,0.67,-0.5,0.47,0.23,0.24,0.67),(6,3,2014,'UCT','División Temuco',50,0.3,0.08,0.22,0.58,0.16,0.42,0.28,0.58,-0.3,0.42,0,0.42,1),(7,3,2014,'UFRO','División Temuco',50,0.14,0.16,-0.02,0.64,0.14,0.5,0.1,0.8,-0.7,0.42,0,0.42,1);
/*!40000 ALTER TABLE `cs_benchmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_modulos`
--

DROP TABLE IF EXISTS `cs_modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_modulos` (
  `id_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `modulo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_modulo`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_modulos`
--

LOCK TABLES `cs_modulos` WRITE;
/*!40000 ALTER TABLE `cs_modulos` DISABLE KEYS */;
INSERT INTO `cs_modulos` VALUES (1,'encuestas'),(2,'usuarios'),(3,'periodos'),(4,'perfiles'),(5,'permisos');
/*!40000 ALTER TABLE `cs_modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_perfiles`
--

DROP TABLE IF EXISTS `cs_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_perfiles` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(50) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_perfiles`
--

LOCK TABLES `cs_perfiles` WRITE;
/*!40000 ALTER TABLE `cs_perfiles` DISABLE KEYS */;
INSERT INTO `cs_perfiles` VALUES (1,'Admin - CT'),(2,'Clientes - No Exporta'),(3,'Clientes - Exporta'),(4,'Clientes - Admin');
/*!40000 ALTER TABLE `cs_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_perfiles_permisos`
--

DROP TABLE IF EXISTS `cs_perfiles_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_perfiles_permisos` (
  `id_unico` int(11) NOT NULL AUTO_INCREMENT,
  `id_perfil` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `permisos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_unico`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_perfiles_permisos`
--

LOCK TABLES `cs_perfiles_permisos` WRITE;
/*!40000 ALTER TABLE `cs_perfiles_permisos` DISABLE KEYS */;
INSERT INTO `cs_perfiles_permisos` VALUES (1,1,1,15),(2,1,2,15),(3,1,3,15),(4,1,4,15),(5,2,1,8),(6,2,2,0),(7,2,3,0),(8,2,4,0),(9,3,1,9),(10,3,2,0),(11,3,3,0),(12,3,4,0),(13,1,5,15),(14,2,5,0),(15,3,5,0),(16,4,1,15),(17,4,2,15),(18,4,3,0),(19,4,4,0),(20,4,5,0);
/*!40000 ALTER TABLE `cs_perfiles_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_periodos`
--

DROP TABLE IF EXISTS `cs_periodos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_periodos` (
  `id_periodo` bigint(20) NOT NULL AUTO_INCREMENT,
  `periodo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `meta` int(255) NOT NULL,
  `mes` int(11) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `id_cliente` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_periodo`),
  KEY `fk_cs_periodos_cliente1_idx` (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_periodos`
--

LOCK TABLES `cs_periodos` WRITE;
/*!40000 ALTER TABLE `cs_periodos` DISABLE KEYS */;
INSERT INTO `cs_periodos` VALUES (1,'2015-04',50,4,2015,2),(2,'2015-05',50,5,2015,2),(3,'2015-06',50,6,2015,2),(4,'2015-04',100,4,2015,2),(5,'2015-05',100,5,2015,3),(6,'2015-06',100,6,2015,3),(7,'2015-07',100,7,2015,3),(8,'2015-07',100,7,2015,3);
/*!40000 ALTER TABLE `cs_periodos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_usuarios`
--

DROP TABLE IF EXISTS `cs_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_perfil` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pwdusuario` varchar(50) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_cliente` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_cs_usuarios_cliente1_idx` (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_usuarios`
--

LOCK TABLES `cs_usuarios` WRITE;
/*!40000 ALTER TABLE `cs_usuarios` DISABLE KEYS */;
INSERT INTO `cs_usuarios` VALUES (10,1,'pdonoso','5a1ed03731bbdf75efe8b9e8516ad815','Pamela Donoso','pamela.donoso@customertrigger.com',1,'2014-05-13 22:54:52',3),(16,4,'cliente','4983a0ab83ed86e0e7213c8783940193','Cliente Admin','nn@nn.com',1,'2014-05-13 22:56:51',0),(17,3,'mdiaz','25d55ad283aa400af464c76d713c07ad','Macarena Daz','macarena.diaz@umayor.cl',1,'2014-11-26 14:20:01',0),(18,3,'kgarate','25d55ad283aa400af464c76d713c07ad','Karen Garate','karen.garate@umayor.cl',1,'2014-11-26 14:20:25',0),(19,3,'cmaulen','25d55ad283aa400af464c76d713c07ad','Cristian Maulen','cristian.maulen@customertrigger.com',1,'2014-11-26 14:20:53',0),(20,3,'cespinoza','25d55ad283aa400af464c76d713c07ad','Carola Espinoza','carola.espinoza@umayor.cl',1,'2014-11-26 14:23:28',0),(21,3,'Francisca Avila','e10adc3949ba59abbe56e057f20f883e','Francisca Avila','francisca.avila@customertrigger.com',1,'2014-12-10 20:03:53',0);
/*!40000 ALTER TABLE `cs_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_usuarios_log`
--

DROP TABLE IF EXISTS `cs_usuarios_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_usuarios_log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM AUTO_INCREMENT=431 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_usuarios_log`
--

LOCK TABLES `cs_usuarios_log` WRITE;
/*!40000 ALTER TABLE `cs_usuarios_log` DISABLE KEYS */;
INSERT INTO `cs_usuarios_log` VALUES (54,10,'2015-07-07 13:47:25'),(55,10,'2015-07-07 13:51:13'),(56,10,'2015-07-07 13:59:31'),(57,10,'2015-07-07 14:04:02'),(58,10,'2015-07-07 15:22:12'),(59,10,'2015-07-07 17:26:11'),(60,10,'2015-07-07 17:29:08'),(61,10,'2015-07-07 17:29:32'),(62,10,'2015-07-07 17:38:22'),(63,10,'2015-07-07 17:39:35'),(64,10,'2015-07-07 18:26:54'),(65,10,'2015-07-07 19:33:39'),(66,10,'2015-07-07 20:41:20'),(67,10,'2015-07-07 21:36:48'),(68,10,'2015-07-08 14:56:51'),(69,10,'2015-07-08 15:20:09'),(70,10,'2015-07-08 16:22:17'),(71,10,'2015-07-08 16:27:45'),(72,10,'2015-07-09 19:00:42'),(73,10,'2015-07-09 19:13:31'),(74,10,'2015-07-17 21:00:11'),(75,10,'2015-07-17 21:18:48'),(76,10,'2015-07-17 21:18:58'),(77,10,'2015-07-17 21:32:11'),(78,10,'2015-07-17 22:54:11'),(79,10,'2015-07-17 23:01:47'),(80,10,'2015-07-17 23:18:01'),(81,10,'2015-07-18 00:25:52'),(82,10,'2015-07-18 00:29:57'),(83,10,'2015-07-18 00:32:20'),(84,10,'2015-07-18 00:45:43'),(85,10,'2015-07-18 00:48:40'),(86,10,'2015-07-18 00:53:08'),(87,10,'2015-07-18 01:11:58'),(88,10,'2015-07-18 01:13:44'),(89,10,'2015-07-18 01:13:47'),(90,10,'2015-07-18 01:29:07'),(91,10,'2015-07-18 02:14:20'),(92,10,'2015-07-18 02:25:11'),(93,10,'2015-07-18 03:27:09'),(94,10,'2015-07-18 04:24:25'),(95,10,'2015-07-18 04:29:36'),(96,10,'2015-07-18 18:04:32'),(97,10,'2015-07-19 00:16:03'),(98,10,'2015-07-19 00:17:28'),(99,10,'2015-07-19 00:20:03'),(100,10,'2015-07-19 00:21:57'),(101,10,'2015-07-19 00:23:17'),(102,10,'2015-07-19 00:24:59'),(103,10,'2015-07-19 00:30:44'),(104,10,'2015-07-19 00:36:48'),(105,10,'2015-07-19 06:11:25'),(106,10,'2015-07-19 06:12:18'),(107,10,'2015-07-19 06:12:29'),(108,10,'2015-07-19 06:13:59'),(109,10,'2015-07-19 06:25:50'),(110,10,'2015-07-19 06:27:52'),(111,10,'2015-07-19 06:31:35'),(112,10,'2015-07-19 06:46:17'),(113,10,'2015-07-19 06:49:05'),(114,10,'2015-07-19 07:06:20'),(115,10,'2015-07-19 07:08:33'),(116,10,'2015-07-19 07:10:40'),(117,10,'2015-07-19 07:12:19'),(118,10,'2015-07-19 07:16:11'),(119,10,'2015-07-19 19:27:44'),(120,10,'2015-07-19 19:41:43'),(121,10,'2015-07-19 19:48:53'),(122,10,'2015-07-19 19:56:32'),(123,10,'2015-07-19 20:59:54'),(124,10,'2015-07-19 21:04:53'),(125,10,'2015-07-19 21:46:19'),(126,10,'2015-07-19 21:51:44'),(127,10,'2015-07-19 22:22:18'),(128,10,'2015-07-19 22:35:42'),(129,10,'2015-07-19 22:53:44'),(130,10,'2015-07-19 23:12:23'),(131,10,'2015-07-19 23:15:53'),(132,10,'2015-07-19 23:18:50'),(133,10,'2015-07-19 23:21:58'),(134,10,'2015-07-19 23:23:45'),(135,10,'2015-07-19 23:24:53'),(136,10,'2015-07-20 00:11:55'),(137,10,'2015-07-20 00:13:08'),(138,10,'2015-07-20 00:17:04'),(139,10,'2015-07-20 00:28:43'),(140,10,'2015-07-20 03:49:35'),(141,10,'2015-07-20 03:49:35'),(142,10,'2015-07-20 03:54:21'),(143,10,'2015-07-20 04:07:47'),(144,10,'2015-07-20 04:31:59'),(145,10,'2015-07-20 13:43:28'),(146,10,'2015-07-20 14:15:14'),(147,10,'2015-07-20 14:34:10'),(148,10,'2015-07-20 14:37:01'),(149,10,'2015-07-20 14:51:01'),(150,10,'2015-07-20 14:55:12'),(151,10,'2015-07-20 15:03:07'),(152,10,'2015-07-20 15:47:22'),(153,10,'2015-07-20 15:52:43'),(154,10,'2015-07-20 16:44:34'),(155,10,'2015-07-20 19:08:24'),(156,10,'2015-07-20 19:17:29'),(157,10,'2015-07-20 19:20:22'),(158,10,'2015-07-20 19:26:51'),(159,10,'2015-07-20 19:29:31'),(160,10,'2015-07-20 19:34:03'),(161,10,'2015-07-20 19:40:12'),(162,10,'2015-07-20 19:42:49'),(163,10,'2015-07-20 20:10:27'),(164,10,'2015-07-20 20:16:32'),(165,10,'2015-07-20 20:21:57'),(166,10,'2015-07-20 20:26:51'),(167,10,'2015-07-20 20:32:31'),(168,10,'2015-07-20 20:45:51'),(169,10,'2015-07-20 20:53:26'),(170,10,'2015-07-20 21:01:33'),(171,10,'2015-07-21 01:52:21'),(172,10,'2015-07-21 01:55:37'),(173,10,'2015-07-21 04:00:08'),(174,10,'2015-07-21 04:08:08'),(175,10,'2015-07-21 04:12:18'),(176,10,'2015-07-21 04:13:33'),(177,10,'2015-07-21 04:25:41'),(178,10,'2015-07-21 04:46:23'),(179,10,'2015-07-21 05:02:43'),(180,10,'2015-07-21 13:05:31'),(181,10,'2015-07-21 13:24:18'),(182,10,'2015-07-21 14:08:01'),(183,10,'2015-07-21 14:25:43'),(184,10,'2015-07-21 14:37:44'),(185,10,'2015-07-21 14:43:01'),(186,10,'2015-07-21 15:04:58'),(187,10,'2015-07-21 15:08:58'),(188,10,'2015-07-21 16:00:41'),(189,10,'2015-07-21 16:02:27'),(190,10,'2015-07-21 16:26:56'),(191,10,'2015-07-21 16:59:24'),(192,10,'2015-07-21 17:38:56'),(193,10,'2015-07-21 18:05:46'),(194,10,'2015-07-21 18:30:49'),(195,10,'2015-07-21 18:56:00'),(196,10,'2015-07-21 19:05:59'),(197,10,'2015-07-21 19:16:45'),(198,10,'2015-07-21 19:20:25'),(199,10,'2015-07-21 20:04:22'),(200,10,'2015-07-21 20:22:39'),(201,10,'2015-07-21 21:38:49'),(202,10,'2015-07-21 21:54:50'),(203,10,'2015-07-21 22:25:50'),(204,10,'2015-07-22 14:21:04'),(205,10,'2015-07-22 14:28:08'),(206,10,'2015-07-22 14:34:26'),(207,10,'2015-07-22 15:43:28'),(208,10,'2015-07-22 15:58:44'),(209,10,'2015-07-22 16:10:51'),(210,10,'2015-07-22 16:36:33'),(211,10,'2015-07-22 16:39:27'),(212,10,'2015-07-22 16:46:02'),(213,10,'2015-07-22 18:17:00'),(214,10,'2015-07-22 18:22:31'),(215,10,'2015-07-22 18:37:02'),(216,10,'2015-07-22 19:33:58'),(217,10,'2015-07-22 19:38:27'),(218,10,'2015-07-22 19:42:16'),(219,10,'2015-07-22 19:45:46'),(220,10,'2015-07-22 19:50:53'),(221,10,'2015-07-22 19:53:05'),(222,10,'2015-07-22 20:38:18'),(223,10,'2015-07-22 20:53:13'),(224,10,'2015-07-22 21:13:51'),(225,10,'2015-07-22 21:14:58'),(226,10,'2015-07-22 21:18:45'),(227,10,'2015-07-22 21:20:18'),(228,10,'2015-07-22 21:24:49'),(229,10,'2015-07-22 21:27:04'),(230,10,'2015-07-22 21:30:44'),(231,10,'2015-07-22 21:33:27'),(232,10,'2015-07-23 13:25:03'),(233,10,'2015-07-23 13:30:10'),(234,10,'2015-07-23 13:37:12'),(235,10,'2015-07-23 13:44:11'),(236,10,'2015-07-23 14:12:02'),(237,10,'2015-07-23 15:47:02'),(238,10,'2015-07-23 15:58:50'),(239,10,'2015-07-23 16:11:17'),(240,10,'2015-07-23 16:28:03'),(241,10,'2015-07-23 16:32:07'),(242,10,'2015-07-23 16:42:41'),(243,10,'2015-07-23 17:57:47'),(244,10,'2015-07-23 18:06:24'),(245,10,'2015-07-23 18:45:57'),(246,10,'2015-07-23 18:53:23'),(247,10,'2015-07-23 19:30:47'),(248,10,'2015-07-23 20:47:14'),(249,10,'2015-07-23 20:53:24'),(250,10,'2015-07-23 21:03:52'),(251,10,'2015-07-23 21:29:24'),(252,10,'2015-07-23 21:33:53'),(253,10,'2015-07-23 21:47:41'),(254,10,'2015-07-24 01:50:30'),(255,10,'2015-07-24 01:51:38'),(256,10,'2015-07-24 01:52:15'),(257,10,'2015-07-24 02:19:44'),(258,10,'2015-07-24 03:31:37'),(259,10,'2015-07-24 03:37:31'),(260,10,'2015-07-24 03:38:25'),(261,10,'2015-07-24 03:42:44'),(262,10,'2015-07-24 03:58:01'),(263,10,'2015-07-24 04:54:25'),(264,10,'2015-07-24 04:59:52'),(265,10,'2015-07-24 05:04:32'),(266,10,'2015-07-24 05:06:29'),(267,10,'2015-07-24 05:09:36'),(268,10,'2015-07-24 05:12:20'),(269,10,'2015-07-24 13:55:52'),(270,10,'2015-07-24 16:33:18'),(271,10,'2015-07-24 17:55:49'),(272,10,'2015-07-25 04:11:08'),(273,10,'2015-07-25 04:20:20'),(274,10,'2015-07-25 04:24:42'),(275,10,'2015-07-25 04:46:02'),(276,10,'2015-07-25 18:45:08'),(277,10,'2015-07-25 19:25:44'),(278,10,'2015-07-25 21:12:35'),(279,10,'2015-07-25 22:00:21'),(280,10,'2015-07-25 22:02:24'),(281,10,'2015-07-25 22:07:09'),(282,10,'2015-07-25 22:13:37'),(283,10,'2015-07-25 22:33:59'),(284,10,'2015-07-25 22:45:10'),(285,10,'2015-07-25 23:09:04'),(286,10,'2015-07-25 23:20:32'),(287,10,'2015-07-25 23:25:55'),(288,10,'2015-07-25 23:32:15'),(289,10,'2015-07-26 00:54:07'),(290,10,'2015-07-26 01:30:15'),(291,10,'2015-07-26 01:43:09'),(292,10,'2015-07-26 01:53:54'),(293,10,'2015-07-26 01:59:59'),(294,10,'2015-07-26 02:03:10'),(295,10,'2015-07-26 02:22:38'),(296,10,'2015-07-26 07:09:36'),(297,10,'2015-07-26 07:13:54'),(298,10,'2015-07-26 18:49:26'),(299,10,'2015-07-26 18:51:26'),(300,10,'2015-07-26 18:52:49'),(301,10,'2015-07-26 19:17:25'),(302,10,'2015-07-26 19:22:47'),(303,10,'2015-07-26 19:24:13'),(304,10,'2015-07-26 19:28:50'),(305,10,'2015-07-26 19:29:48'),(306,10,'2015-07-26 19:52:47'),(307,10,'2015-07-26 20:06:18'),(308,10,'2015-07-26 20:07:28'),(309,10,'2015-07-26 20:09:32'),(310,10,'2015-07-26 20:37:23'),(311,10,'2015-07-26 20:43:05'),(312,10,'2015-07-26 20:47:48'),(313,10,'2015-07-26 20:50:58'),(314,10,'2015-07-26 21:06:52'),(315,10,'2015-07-26 21:20:14'),(316,10,'2015-07-26 21:26:13'),(317,10,'2015-07-26 21:32:08'),(318,10,'2015-07-26 21:44:59'),(319,10,'2015-07-26 21:48:49'),(320,10,'2015-07-26 22:18:33'),(321,10,'2015-07-26 22:29:59'),(322,10,'2015-07-26 22:37:14'),(323,10,'2015-07-26 22:48:59'),(324,10,'2015-07-26 22:53:55'),(325,10,'2015-07-26 23:21:41'),(326,10,'2015-07-26 23:33:44'),(327,10,'2015-07-26 23:38:37'),(328,10,'2015-07-26 23:41:02'),(329,10,'2015-07-26 23:42:33'),(330,10,'2015-07-26 23:44:06'),(331,10,'2015-07-26 23:46:15'),(332,10,'2015-07-26 23:48:05'),(333,10,'2015-07-26 23:51:43'),(334,10,'2015-07-26 23:54:48'),(335,10,'2015-07-26 23:56:57'),(336,10,'2015-07-26 23:59:40'),(337,10,'2015-07-27 00:04:55'),(338,10,'2015-07-27 00:08:03'),(339,10,'2015-07-27 00:10:48'),(340,10,'2015-07-27 00:15:32'),(341,10,'2015-07-27 00:40:23'),(342,10,'2015-07-27 00:45:55'),(343,10,'2015-07-27 00:59:03'),(344,10,'2015-07-27 01:03:44'),(345,10,'2015-07-27 01:05:35'),(346,10,'2015-07-27 01:08:14'),(347,10,'2015-07-27 01:10:30'),(348,10,'2015-07-27 01:12:03'),(349,10,'2015-07-27 01:20:04'),(350,10,'2015-07-27 01:22:04'),(351,10,'2015-07-27 01:26:10'),(352,10,'2015-07-27 01:28:29'),(353,10,'2015-07-27 01:35:47'),(354,10,'2015-07-27 01:40:29'),(355,10,'2015-07-27 01:46:44'),(356,10,'2015-07-27 01:49:19'),(357,10,'2015-07-27 01:49:49'),(358,10,'2015-07-27 06:29:58'),(359,10,'2015-07-27 16:27:40'),(360,10,'2015-07-27 16:28:26'),(361,10,'2015-07-27 16:31:01'),(362,10,'2015-07-27 17:20:17'),(363,10,'2015-07-27 17:22:15'),(364,10,'2015-07-27 17:26:05'),(365,10,'2015-07-27 17:28:08'),(366,10,'2015-07-27 17:29:46'),(367,10,'2015-07-27 17:32:39'),(368,10,'2015-07-27 17:43:19'),(369,10,'2015-07-27 18:00:49'),(370,10,'2015-07-27 18:02:31'),(371,10,'2015-07-27 18:08:26'),(372,10,'2015-07-27 18:11:56'),(373,10,'2015-07-27 18:13:54'),(374,10,'2015-07-27 18:17:52'),(375,10,'2015-07-27 18:20:42'),(376,10,'2015-07-27 18:22:12'),(377,10,'2015-07-27 18:25:05'),(378,10,'2015-07-27 18:29:46'),(379,10,'2015-07-27 18:33:58'),(380,10,'2015-07-27 18:35:53'),(381,10,'2015-07-27 18:37:52'),(382,10,'2015-07-27 20:01:59'),(383,10,'2015-07-27 20:04:02'),(384,10,'2015-07-27 20:16:41'),(385,10,'2015-07-27 20:48:47'),(386,10,'2015-07-27 21:08:45'),(387,10,'2015-07-28 01:47:42'),(388,10,'2015-07-28 01:57:36'),(389,10,'2015-07-28 02:29:30'),(390,10,'2015-07-28 02:57:21'),(391,10,'2015-07-28 03:19:08'),(392,10,'2015-07-28 03:25:12'),(393,10,'2015-07-28 03:36:04'),(394,10,'2015-07-28 03:38:29'),(395,10,'2015-07-28 03:50:26'),(396,10,'2015-07-28 04:36:46'),(397,10,'2015-07-28 04:40:13'),(398,10,'2015-07-28 04:43:02'),(399,10,'2015-07-28 04:46:30'),(400,10,'2015-07-28 13:55:36'),(401,10,'2015-07-28 13:56:35'),(402,10,'2015-07-28 13:57:51'),(403,10,'2015-07-28 14:02:16'),(404,10,'2015-07-28 14:05:36'),(405,10,'2015-07-28 14:07:29'),(406,10,'2015-07-28 14:51:43'),(407,10,'2015-07-28 14:58:15'),(408,10,'2015-07-28 14:59:12'),(409,10,'2015-07-28 15:03:29'),(410,10,'2015-07-28 15:05:09'),(411,10,'2015-07-28 15:05:51'),(412,10,'2015-07-28 15:07:33'),(413,10,'2015-07-28 15:10:00'),(414,10,'2015-07-28 15:13:31'),(415,10,'2015-07-28 15:16:19'),(416,10,'2015-07-28 15:18:44'),(417,10,'2015-07-28 15:38:16'),(418,10,'2015-07-28 15:39:56'),(419,10,'2015-07-28 15:47:41'),(420,10,'2015-07-28 16:27:59'),(421,10,'2015-07-28 16:34:06'),(422,10,'2015-07-28 16:39:31'),(423,10,'2015-07-28 16:42:23'),(424,10,'2015-07-28 17:02:03'),(425,10,'2015-07-28 17:05:34'),(426,10,'2015-07-28 17:07:36'),(427,10,'2015-07-28 17:49:02'),(428,10,'2015-07-28 17:56:12'),(429,10,'2015-07-28 18:00:22'),(430,10,'2015-07-28 19:24:45');
/*!40000 ALTER TABLE `cs_usuarios_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta`
--

DROP TABLE IF EXISTS `encuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta` (
  `id_encuesta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `slogan` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_estado` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_encuesta`),
  KEY `fk_encuesta_estado1_idx` (`id_estado`),
  CONSTRAINT `fk_encuesta_estado1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='encuesta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta`
--

LOCK TABLES `encuesta` WRITE;
/*!40000 ALTER TABLE `encuesta` DISABLE KEYS */;
INSERT INTO `encuesta` VALUES (1,'Encuesta 1','Por defecto plan Free','En nuestro desafío de mejorar la calidad de nuestros productos y el servicio, lo invitamos a que pueda responder a las siguientes preguntas.','2015-06-28 01:56:18','2015-06-28 01:56:18',1),(2,'','','En nuestro desafío de mejorar la calidad de nuestros productos y el servicio, lo invitamos a responder las siguientes preguntas que no tomarán más de 2 minutos de su tiempo.','2015-06-28 01:56:19','2015-06-28 01:56:19',1),(3,'','','En nuestro desafío de mejorar la calidad de nuestros productos y el servicio, lo invitamos a responder las siguientes preguntas que no tomarán más de 2 minutos de su tiempo.','2015-06-28 01:56:19','2015-06-28 01:56:19',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='encuesta_momento';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_sector`
--

LOCK TABLES `encuesta_sector` WRITE;
/*!40000 ALTER TABLE `encuesta_sector` DISABLE KEYS */;
INSERT INTO `encuesta_sector` VALUES (1,1,1,'2015-06-28 02:54:50','2015-06-28 02:54:50'),(2,2,2,'2015-06-28 02:54:50','2015-06-28 02:54:50'),(3,1,3,'2015-06-28 02:54:50','2015-06-28 02:54:50');
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
-- Table structure for table `excepcion_usuario`
--

DROP TABLE IF EXISTS `excepcion_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `excepcion_usuario` (
  `id_excepcion_usuario` int(10) unsigned NOT NULL,
  `id_excepcion` int(10) unsigned NOT NULL,
  `id_usuario` int(10) unsigned NOT NULL,
  `fecha` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_excepcion_usuario`),
  KEY `fk_excepcion_usuario_excepcion_idx` (`id_excepcion`),
  KEY `fk_excepcion_usuario_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_excepcion_usuario_excepcion` FOREIGN KEY (`id_excepcion`) REFERENCES `excepcion` (`id_excepcion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_excepcion_usuario_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='excepcion_cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excepcion_usuario`
--

LOCK TABLES `excepcion_usuario` WRITE;
/*!40000 ALTER TABLE `excepcion_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `excepcion_usuario` ENABLE KEYS */;
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
INSERT INTO `momento` VALUES (1,'Momento 1',1,'2015-06-28 01:56:19','2015-06-28 01:56:19'),(2,'Momento 2',1,'2015-06-28 01:56:19','2015-06-28 01:56:19'),(3,'Momento 3',1,'2015-06-28 01:56:19','2015-06-28 01:56:19'),(4,'Momento 4',1,'2015-06-28 01:56:20','2015-06-28 01:56:20');
/*!40000 ALTER TABLE `momento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `momento_encuesta`
--

DROP TABLE IF EXISTS `momento_encuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `momento_encuesta` (
  `id_momento` int(10) NOT NULL,
  `id_encuesta` int(10) unsigned NOT NULL,
  `descripcion_momento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_momento`,`id_encuesta`),
  KEY `fk_momento_has_encuesta_encuesta1_idx` (`id_encuesta`),
  KEY `fk_momento_has_encuesta_momento1_idx` (`id_momento`),
  CONSTRAINT `fk_momento_has_encuesta_encuesta1` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_momento_has_encuesta_momento1` FOREIGN KEY (`id_momento`) REFERENCES `momento` (`id_momento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `momento_encuesta`
--

LOCK TABLES `momento_encuesta` WRITE;
/*!40000 ALTER TABLE `momento_encuesta` DISABLE KEYS */;
INSERT INTO `momento_encuesta` VALUES (1,1,'descript moment 1'),(1,2,'Tienda Alto Las Condes '),(1,3,'Golondrinas'),(2,1,'descript moment 2'),(2,2,'Tienda Plaza Egaña'),(2,3,'Cotizantes '),(3,1,'descript moment 3'),(3,2,'Tienda Costanera Center '),(3,3,'Clientes '),(4,1,'descript moment 4'),(4,2,'Tienda Florida Center ');
/*!40000 ALTER TABLE `momento_encuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `momento_sector`
--

DROP TABLE IF EXISTS `momento_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `momento_sector` (
  `id_momento_sector` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion_momento_sector` varchar(255) NOT NULL,
  `id_sector` int(10) NOT NULL,
  `id_momento` int(10) NOT NULL,
  `id_estado` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_momento_sector`,`id_sector`,`id_momento`),
  KEY `fk_momento_momento_sector_idx` (`id_momento`),
  KEY `fk_momento_sector_sector_idx` (`id_sector`),
  KEY `fk_momento_sector_estado1_idx` (`id_estado`),
  CONSTRAINT `fk_momento_id_momento_sector` FOREIGN KEY (`id_momento`) REFERENCES `momento` (`id_momento`),
  CONSTRAINT `fk_momento_sector_estado1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_momento_sector_id_sector` FOREIGN KEY (`id_sector`) REFERENCES `sector` (`id_sector`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='momento_sector';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `momento_sector`
--

LOCK TABLES `momento_sector` WRITE;
/*!40000 ALTER TABLE `momento_sector` DISABLE KEYS */;
INSERT INTO `momento_sector` VALUES (1,'Enim temporibus officiis vitae sequi animi.',1,1,1,'2015-06-28 01:56:20','2015-06-28 01:56:20'),(2,'Magnam perspiciatis quia nemo est delectus.',1,2,1,'2015-06-28 01:56:20','2015-06-28 01:56:20'),(3,'Sit autem numquam omnis.',1,3,1,'2015-06-28 01:56:20','2015-06-28 01:56:20'),(4,'Qui beatae earum beatae distinctio nulla quas.',1,4,1,'2015-06-28 01:56:20','2015-06-28 01:56:20');
/*!40000 ALTER TABLE `momento_sector` ENABLE KEYS */;
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
  `max_respuestas` int(11) DEFAULT NULL,
  `id_estado` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_plan`),
  KEY `fk_plan_estado_idx` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='plan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'free',NULL,1,'2015-06-28 01:59:09','2015-06-28 01:59:09'),(2,'profesional',NULL,1,'2015-06-28 01:59:09','2015-06-28 01:59:09'),(3,'premium',NULL,1,'2015-06-28 01:59:10','2015-06-28 01:59:10');
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
  `id_encuesta` int(10) unsigned NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_tipo_respuesta` int(10) unsigned NOT NULL,
  `id_estado` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pregunta_cabecera`),
  KEY `fk_preguntas_encuesta_idx` (`id_encuesta`),
  KEY `fk_preguntas_estado_idx` (`id_estado`),
  KEY `fk_pregunta_cabecera_tipo_respuesta1_idx` (`id_tipo_respuesta`),
  KEY `fk_pregunta_cabecera_categoria1_idx` (`id_categoria`),
  CONSTRAINT `fk_pregunta_cabecera_categoria1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pregunta_cabecera_tipo_respuesta` FOREIGN KEY (`id_tipo_respuesta`) REFERENCES `tipo_respuesta` (`id_tipo_respuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_preguntas_id_encuesta` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuesta`),
  CONSTRAINT `fk_preguntas_id_tipo_respuesta` FOREIGN KEY (`id_tipo_respuesta`) REFERENCES `tipo_respuesta` (`id_tipo_respuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='pregunta_cabecera';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta_cabecera`
--

LOCK TABLES `pregunta_cabecera` WRITE;
/*!40000 ALTER TABLE `pregunta_cabecera` DISABLE KEYS */;
INSERT INTO `pregunta_cabecera` VALUES (1,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno (default)',NULL,NULL,'1',NULL,1,1,1,1,'2015-06-28 02:25:45','2015-07-15 05:52:11'),(2,'¿Por qué evalúa con esa nota? (default)',NULL,NULL,NULL,1,1,1,5,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(3,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno (default)',NULL,NULL,'2',NULL,1,2,1,1,'2015-06-28 02:25:45','2015-07-15 05:52:11'),(4,'¿Por qué evalúa con esa nota? (default)',NULL,NULL,NULL,3,1,2,5,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(5,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno (default)',NULL,NULL,'3',NULL,1,3,1,1,'2015-06-28 02:25:45','2015-07-15 05:52:12'),(6,'¿Por qué evalúa con esa nota? (default)',NULL,NULL,NULL,5,1,3,5,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(7,'¿Recomendaría la tienda a sus amigos y conocidos? (default)',NULL,NULL,'4',NULL,1,4,6,1,'2015-06-28 02:25:45','2015-07-15 05:52:12'),(8,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno <br> ¿Cómo evalúa la relación precio – calidad de los productos en su visita a la tienda?','¿Cómo evalúa la relación precio – calidad de los productos en su visita a la tienda?',NULL,'1',NULL,2,1,1,1,'2015-06-28 02:25:45','2015-07-22 03:34:24'),(9,'¿Por qué evalúa con esa nota?',NULL,NULL,NULL,8,2,1,5,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(10,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno <br> ¿Cómo evalúa la facilidad para encontrar el producto que buscaba?',NULL,NULL,'2',NULL,2,2,1,1,'2015-06-28 02:25:45','2015-07-22 03:34:24'),(11,'¿Por qué evalúa con esa nota?',NULL,NULL,NULL,10,2,2,5,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(12,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno <br> ¿Cuán agradable fue el servicio y el ambiente de la tienda?',NULL,NULL,'3',NULL,2,3,1,1,'2015-06-28 02:25:45','2015-07-22 03:34:25'),(13,'¿Por qué evalúa con esa nota?',NULL,NULL,NULL,12,2,3,5,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(14,'¿Recomendaría la tienda a sus amigos y conocidos?',NULL,NULL,'4',NULL,2,4,6,1,'2015-06-28 02:25:45','2015-07-22 03:34:25'),(15,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno <br> ¿Cómo evalúa la relación precio – calidad de los productos en su visita a la tienda?',NULL,NULL,'1',NULL,3,1,1,1,'2015-06-28 02:25:45','2015-07-22 03:34:24'),(16,'¿Por qué evalúa con esa nota?',NULL,NULL,NULL,8,3,1,5,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(17,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno <br> ¿Cómo evalúa la facilidad para encontrar el producto que buscaba?',NULL,NULL,'2',NULL,3,2,1,1,'2015-06-28 02:25:45','2015-07-22 03:34:24'),(18,'¿Por qué evalúa con esa nota?',NULL,NULL,NULL,10,3,2,5,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(19,'Con nota de 1 a 7, donde 1 es muy malo y 7 es muy bueno <br> ¿Cuán agradable fue el servicio y el ambiente de la tienda?',NULL,NULL,'3',NULL,3,3,1,1,'2015-06-28 02:25:45','2015-07-22 03:34:25'),(20,'¿Por qué evalúa con esa nota?',NULL,NULL,NULL,12,3,3,5,1,'2015-06-28 02:25:45','2015-06-28 02:25:45'),(21,'¿Recomendaría la tienda a sus amigos y conocidos?',NULL,NULL,'4',NULL,3,4,6,1,'2015-06-28 02:25:45','2015-07-22 03:34:25');
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
  `id_pregunta_cabecera` int(10) unsigned NOT NULL,
  `id_encuesta` int(10) unsigned NOT NULL,
  `id_canal` int(10) unsigned NOT NULL,
  `id_momento` int(10) NOT NULL,
  `id_cliente` int(10) unsigned NOT NULL,
  `id_usuario` int(10) DEFAULT NULL,
  `id_estado` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_respuesta`),
  KEY `fk_respuestas_encuesta_idx` (`id_encuesta`),
  KEY `fk_respuestas_estado_idx` (`id_estado`),
  KEY `fk_respuestas_pregunta_cabecera_idx` (`id_pregunta_cabecera`),
  KEY `fk_respuesta_canal1_idx` (`id_canal`),
  KEY `fk_respuesta_cliente1_idx` (`id_cliente`),
  KEY `fk_respuesta_momento1_idx` (`id_momento`),
  CONSTRAINT `fk_respuesta_canal1` FOREIGN KEY (`id_canal`) REFERENCES `canal` (`id_canal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_respuesta_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_respuesta_momento1` FOREIGN KEY (`id_momento`) REFERENCES `momento` (`id_momento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_respuestas_id_encuesta` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuesta`),
  CONSTRAINT `fk_respuestas_id_pregunta_cabecera` FOREIGN KEY (`id_pregunta_cabecera`) REFERENCES `pregunta_cabecera` (`id_pregunta_cabecera`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='respuesta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta`
--

LOCK TABLES `respuesta` WRITE;
/*!40000 ALTER TABLE `respuesta` DISABLE KEYS */;
INSERT INTO `respuesta` VALUES (1,8,2,1,1,2,NULL,1,'2015-07-27 14:56:25','2015-07-27 14:56:25'),(2,10,2,1,1,2,NULL,1,'2015-07-27 14:56:25','2015-07-27 14:56:25'),(3,12,2,1,1,2,NULL,1,'2015-07-27 14:56:25','2015-07-27 14:56:25'),(4,14,2,1,1,2,NULL,1,'2015-07-27 14:56:25','2015-07-27 14:56:25'),(5,8,2,1,1,2,NULL,1,'2015-07-27 14:57:34','2015-07-27 14:57:34'),(6,10,2,1,1,2,NULL,1,'2015-07-27 14:57:35','2015-07-27 14:57:35'),(7,12,2,1,1,2,NULL,1,'2015-07-27 14:57:35','2015-07-27 14:57:35'),(8,14,2,1,1,2,NULL,1,'2015-07-27 14:57:35','2015-07-27 14:57:35'),(9,8,2,1,1,2,NULL,1,'2015-07-27 14:57:50','2015-07-27 14:57:50'),(10,10,2,1,1,2,NULL,1,'2015-07-27 14:57:50','2015-07-27 14:57:50'),(11,12,2,1,1,2,NULL,1,'2015-07-27 14:57:50','2015-07-27 14:57:50'),(12,14,2,1,1,2,NULL,1,'2015-07-27 14:57:50','2015-07-27 14:57:50'),(13,8,2,1,1,2,NULL,1,'2015-07-27 14:58:11','2015-07-27 14:58:11'),(14,10,2,1,1,2,NULL,1,'2015-07-27 14:58:11','2015-07-27 14:58:11'),(15,12,2,1,1,2,NULL,1,'2015-07-27 14:58:12','2015-07-27 14:58:12'),(16,14,2,1,1,2,NULL,1,'2015-07-27 14:58:12','2015-07-27 14:58:12'),(17,8,2,1,1,2,NULL,1,'2015-07-27 14:58:27','2015-07-27 14:58:27'),(18,10,2,1,1,2,NULL,1,'2015-07-27 14:58:27','2015-07-27 14:58:27'),(19,12,2,1,1,2,NULL,1,'2015-07-27 14:58:27','2015-07-27 14:58:27'),(20,14,2,1,1,2,NULL,1,'2015-07-27 14:58:27','2015-07-27 14:58:27'),(21,8,2,1,2,2,NULL,1,'2015-07-27 14:59:14','2015-07-27 14:59:14'),(22,10,2,1,2,2,NULL,1,'2015-07-27 14:59:14','2015-07-27 14:59:14'),(23,12,2,1,2,2,NULL,1,'2015-07-27 14:59:14','2015-07-27 14:59:14'),(24,14,2,1,2,2,NULL,1,'2015-07-27 14:59:14','2015-07-27 14:59:14'),(25,8,2,1,2,2,NULL,1,'2015-07-27 14:59:35','2015-07-27 14:59:35'),(26,10,2,1,2,2,NULL,1,'2015-07-27 14:59:35','2015-07-27 14:59:35'),(27,12,2,1,2,2,NULL,1,'2015-07-27 14:59:35','2015-07-27 14:59:35'),(28,14,2,1,2,2,NULL,1,'2015-07-27 14:59:35','2015-07-27 14:59:35'),(29,8,2,1,2,2,NULL,1,'2015-07-27 14:59:58','2015-07-27 14:59:58'),(30,10,2,1,2,2,NULL,1,'2015-07-27 14:59:58','2015-07-27 14:59:58'),(31,12,2,1,2,2,NULL,1,'2015-07-27 14:59:58','2015-07-27 14:59:58'),(32,14,2,1,2,2,NULL,1,'2015-07-27 14:59:59','2015-07-27 14:59:59'),(33,8,2,1,4,2,NULL,1,'2015-07-27 15:21:54','2015-07-27 15:21:54'),(34,10,2,1,4,2,NULL,1,'2015-07-27 15:21:54','2015-07-27 15:21:54'),(35,12,2,1,4,2,NULL,1,'2015-07-27 15:21:54','2015-07-27 15:21:54'),(36,14,2,1,4,2,NULL,1,'2015-07-27 15:21:54','2015-07-27 15:21:54'),(37,8,2,1,4,2,NULL,1,'2015-07-27 15:22:09','2015-07-27 15:22:09'),(38,10,2,1,4,2,NULL,1,'2015-07-27 15:22:09','2015-07-27 15:22:09'),(39,12,2,1,4,2,NULL,1,'2015-07-27 15:22:10','2015-07-27 15:22:10'),(40,14,2,1,4,2,NULL,1,'2015-07-27 15:22:10','2015-07-27 15:22:10'),(41,8,2,1,4,2,NULL,1,'2015-07-27 15:22:24','2015-07-27 15:22:24'),(42,10,2,1,4,2,NULL,1,'2015-07-27 15:22:24','2015-07-27 15:22:24'),(43,12,2,1,4,2,NULL,1,'2015-07-27 15:22:24','2015-07-27 15:22:24'),(44,14,2,1,4,2,NULL,1,'2015-07-27 15:22:24','2015-07-27 15:22:24'),(45,15,3,1,1,3,NULL,1,'2015-07-27 15:22:49','2015-07-27 15:22:49'),(46,17,3,1,1,3,NULL,1,'2015-07-27 15:22:49','2015-07-27 15:22:49'),(47,19,3,1,1,3,NULL,1,'2015-07-27 15:22:49','2015-07-27 15:22:49'),(48,21,3,1,1,3,NULL,1,'2015-07-27 15:22:49','2015-07-27 15:22:49'),(49,15,3,1,1,3,NULL,1,'2015-07-27 15:23:18','2015-07-27 15:23:18'),(50,17,3,1,1,3,NULL,1,'2015-07-27 15:23:18','2015-07-27 15:23:18'),(51,19,3,1,1,3,NULL,1,'2015-07-27 15:23:18','2015-07-27 15:23:18'),(52,21,3,1,1,3,NULL,1,'2015-07-27 15:23:19','2015-07-27 15:23:19'),(53,15,3,1,2,3,NULL,1,'2015-07-27 15:24:04','2015-07-27 15:24:04'),(54,17,3,1,2,3,NULL,1,'2015-07-27 15:24:04','2015-07-27 15:24:04'),(55,19,3,1,2,3,NULL,1,'2015-07-27 15:24:04','2015-07-27 15:24:04'),(56,21,3,1,2,3,NULL,1,'2015-07-27 15:24:04','2015-07-27 15:24:04'),(57,15,3,1,2,3,NULL,1,'2015-07-27 15:24:26','2015-07-27 15:24:26'),(58,17,3,1,2,3,NULL,1,'2015-07-27 15:24:26','2015-07-27 15:24:26'),(59,19,3,1,2,3,NULL,1,'2015-07-27 15:24:26','2015-07-27 15:24:26'),(60,21,3,1,2,3,NULL,1,'2015-07-27 15:24:26','2015-07-27 15:24:26'),(61,15,3,1,2,3,NULL,1,'2015-07-27 15:24:47','2015-07-27 15:24:47'),(62,17,3,1,2,3,NULL,1,'2015-07-27 15:24:47','2015-07-27 15:24:47'),(63,19,3,1,2,3,NULL,1,'2015-07-27 15:24:47','2015-07-27 15:24:47'),(64,21,3,1,2,3,NULL,1,'2015-07-27 15:24:47','2015-07-27 15:24:47'),(65,15,3,1,3,3,NULL,1,'2015-07-27 15:25:37','2015-07-27 15:25:37'),(66,17,3,1,3,3,NULL,1,'2015-07-27 15:25:37','2015-07-27 15:25:37'),(67,19,3,1,3,3,NULL,1,'2015-07-27 15:25:37','2015-07-27 15:25:37'),(68,21,3,1,3,3,NULL,1,'2015-07-27 15:25:38','2015-07-27 15:25:38'),(69,15,3,1,3,3,NULL,1,'2015-07-27 15:25:52','2015-07-27 15:25:52'),(70,17,3,1,3,3,NULL,1,'2015-07-27 15:25:52','2015-07-27 15:25:52'),(71,19,3,1,3,3,NULL,1,'2015-07-27 15:25:52','2015-07-27 15:25:52'),(72,21,3,1,3,3,NULL,1,'2015-07-27 15:25:52','2015-07-27 15:25:52'),(73,15,3,1,3,3,3,1,'2015-07-27 15:26:01','2015-07-27 15:26:01'),(74,17,3,1,3,3,3,1,'2015-07-27 15:26:01','2015-07-27 15:26:01'),(75,19,3,1,3,3,3,1,'2015-07-27 15:26:01','2015-07-27 15:26:01'),(76,21,3,1,3,3,3,1,'2015-07-27 15:26:01','2015-07-27 15:26:01'),(80,8,2,1,2,2,27,1,'2015-07-28 09:57:03','2015-07-28 09:57:03'),(81,8,2,1,2,2,28,1,'2015-07-28 09:57:13','2015-07-28 09:57:13'),(82,10,2,1,2,2,28,1,'2015-07-28 09:57:13','2015-07-28 09:57:13'),(83,12,2,1,2,2,28,1,'2015-07-28 09:57:13','2015-07-28 09:57:13'),(84,14,2,1,2,2,28,1,'2015-07-28 09:57:14','2015-07-28 09:57:14'),(85,8,2,1,2,2,NULL,1,'2015-07-28 10:00:12','2015-07-28 10:00:12'),(86,10,2,1,2,2,NULL,1,'2015-07-28 10:00:12','2015-07-28 10:00:12'),(87,12,2,1,2,2,NULL,1,'2015-07-28 10:00:12','2015-07-28 10:00:12'),(88,14,2,1,2,2,NULL,1,'2015-07-28 10:00:12','2015-07-28 10:00:12'),(89,8,2,1,2,2,NULL,1,'2015-07-28 10:03:38','2015-07-28 10:03:38'),(90,10,2,1,2,2,NULL,1,'2015-07-28 10:03:38','2015-07-28 10:03:38'),(91,12,2,1,2,2,NULL,1,'2015-07-28 10:03:39','2015-07-28 10:03:39'),(92,14,2,1,2,2,NULL,1,'2015-07-28 10:03:39','2015-07-28 10:03:39'),(93,8,2,1,2,2,NULL,1,'2015-07-28 10:07:02','2015-07-28 10:07:02'),(94,10,2,1,2,2,NULL,1,'2015-07-28 10:07:02','2015-07-28 10:07:02'),(95,12,2,1,2,2,NULL,1,'2015-07-28 10:07:02','2015-07-28 10:07:02'),(96,14,2,1,2,2,NULL,1,'2015-07-28 10:07:02','2015-07-28 10:07:02'),(97,8,2,1,2,2,NULL,1,'2015-07-28 10:08:59','2015-07-28 10:08:59'),(98,10,2,1,2,2,NULL,1,'2015-07-28 10:08:59','2015-07-28 10:08:59'),(99,12,2,1,2,2,NULL,1,'2015-07-28 10:08:59','2015-07-28 10:08:59'),(100,14,2,1,2,2,NULL,1,'2015-07-28 10:08:59','2015-07-28 10:08:59'),(101,8,2,1,2,2,NULL,1,'2015-07-28 10:10:22','2015-07-28 10:10:22'),(102,10,2,1,2,2,NULL,1,'2015-07-28 10:10:22','2015-07-28 10:10:22'),(103,12,2,1,2,2,NULL,1,'2015-07-28 10:10:23','2015-07-28 10:10:23'),(104,14,2,1,2,2,NULL,1,'2015-07-28 10:10:23','2015-07-28 10:10:23'),(105,8,2,1,2,2,NULL,1,'2015-07-28 10:10:56','2015-07-28 10:10:56'),(106,10,2,1,2,2,NULL,1,'2015-07-28 10:10:56','2015-07-28 10:10:56'),(107,12,2,1,2,2,NULL,1,'2015-07-28 10:10:56','2015-07-28 10:10:56'),(108,14,2,1,2,2,NULL,1,'2015-07-28 10:10:56','2015-07-28 10:10:56'),(109,8,2,1,2,2,NULL,1,'2015-07-28 10:11:29','2015-07-28 10:11:29'),(110,10,2,1,2,2,NULL,1,'2015-07-28 10:11:29','2015-07-28 10:11:29'),(111,12,2,1,2,2,NULL,1,'2015-07-28 10:11:30','2015-07-28 10:11:30'),(112,14,2,1,2,2,NULL,1,'2015-07-28 10:11:30','2015-07-28 10:11:30'),(113,8,2,1,2,2,NULL,1,'2015-07-28 10:12:02','2015-07-28 10:12:02'),(114,10,2,1,2,2,NULL,1,'2015-07-28 10:12:03','2015-07-28 10:12:03'),(115,12,2,1,2,2,NULL,1,'2015-07-28 10:12:03','2015-07-28 10:12:03'),(116,14,2,1,2,2,NULL,1,'2015-07-28 10:12:03','2015-07-28 10:12:03'),(117,8,2,1,2,2,NULL,1,'2015-07-28 10:12:55','2015-07-28 10:12:55'),(118,10,2,1,2,2,NULL,1,'2015-07-28 10:12:55','2015-07-28 10:12:55'),(119,12,2,1,2,2,NULL,1,'2015-07-28 10:12:55','2015-07-28 10:12:55'),(120,14,2,1,2,2,NULL,1,'2015-07-28 10:12:55','2015-07-28 10:12:55'),(121,8,2,1,2,2,NULL,1,'2015-07-28 10:13:25','2015-07-28 10:13:25'),(122,10,2,1,2,2,NULL,1,'2015-07-28 10:13:25','2015-07-28 10:13:25'),(123,12,2,1,2,2,NULL,1,'2015-07-28 10:13:25','2015-07-28 10:13:25'),(124,14,2,1,2,2,NULL,1,'2015-07-28 10:13:25','2015-07-28 10:13:25'),(125,8,2,1,2,2,NULL,1,'2015-07-28 10:13:28','2015-07-28 10:13:28'),(126,10,2,1,2,2,NULL,1,'2015-07-28 10:13:28','2015-07-28 10:13:28'),(127,12,2,1,2,2,NULL,1,'2015-07-28 10:13:28','2015-07-28 10:13:28'),(128,14,2,1,2,2,NULL,1,'2015-07-28 10:13:28','2015-07-28 10:13:28'),(129,8,2,1,2,2,NULL,1,'2015-07-28 10:13:56','2015-07-28 10:13:56'),(130,10,2,1,2,2,NULL,1,'2015-07-28 10:13:56','2015-07-28 10:13:56'),(131,12,2,1,2,2,NULL,1,'2015-07-28 10:13:56','2015-07-28 10:13:56'),(132,14,2,1,2,2,NULL,1,'2015-07-28 10:13:56','2015-07-28 10:13:56'),(133,8,2,1,2,2,NULL,1,'2015-07-28 10:17:49','2015-07-28 10:17:49'),(134,10,2,1,2,2,NULL,1,'2015-07-28 10:17:49','2015-07-28 10:17:49'),(135,12,2,1,2,2,NULL,1,'2015-07-28 10:17:49','2015-07-28 10:17:49'),(136,14,2,1,2,2,NULL,1,'2015-07-28 10:17:49','2015-07-28 10:17:49'),(137,8,2,1,2,2,NULL,1,'2015-07-28 10:18:01','2015-07-28 10:18:01'),(138,10,2,1,2,2,NULL,1,'2015-07-28 10:18:01','2015-07-28 10:18:01'),(139,12,2,1,2,2,NULL,1,'2015-07-28 10:18:01','2015-07-28 10:18:01'),(140,14,2,1,2,2,NULL,1,'2015-07-28 10:18:02','2015-07-28 10:18:02');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='respuesta_detalle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta_detalle`
--

LOCK TABLES `respuesta_detalle` WRITE;
/*!40000 ALTER TABLE `respuesta_detalle` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='sector';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Sector 1','2015-06-28 01:56:19','2015-06-28 01:56:19'),(2,'Sector 2','2015-06-28 01:56:19','2015-06-28 01:56:19'),(3,'Sector 3','2015-06-28 01:56:19','2015-06-28 01:56:19');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='tipo_respuesta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_respuesta`
--

LOCK TABLES `tipo_respuesta` WRITE;
/*!40000 ALTER TABLE `tipo_respuesta` DISABLE KEYS */;
INSERT INTO `tipo_respuesta` VALUES (1,'Opcion única',NULL,'2015-06-28 02:19:22','2015-06-28 02:19:22'),(2,'Multiopcion',NULL,'2015-06-28 02:19:22','2015-06-28 02:19:22'),(3,'Por rango de valor','{\"min\",\"max\"}','2015-06-28 02:19:22','2015-06-28 02:19:22'),(4,'Respuesta texto (Linea simple)','{\"chart_max\"}','2015-06-28 02:19:22','2015-06-28 02:19:22'),(5,'Respuesta texto (Multilinea)','{\"chart_max\",\"row\"}','2015-06-28 02:19:22','2015-06-28 02:19:22'),(6,'Respuesta booleana',NULL,'2015-07-01 19:38:10','2015-07-01 19:38:10');
/*!40000 ALTER TABLE `tipo_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion_tipo_cliente` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tipo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='tipo_cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'superadmin','2015-06-28 01:59:10','2015-06-28 01:59:10'),(2,'admin','2015-06-28 01:59:10','2015-06-28 01:59:10'),(3,'usuario comun','2015-07-15 05:27:16','2015-07-15 05:27:16');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urls`
--

DROP TABLE IF EXISTS `urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `given` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `params` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_canal` int(10) unsigned NOT NULL,
  `id_momento` int(10) NOT NULL,
  `id_cliente` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_urls_canal1_idx` (`id_canal`),
  KEY `fk_urls_momento1_idx` (`id_momento`),
  KEY `fk_urls_cliente1_idx` (`id_cliente`),
  CONSTRAINT `fk_urls_canal1` FOREIGN KEY (`id_canal`) REFERENCES `canal` (`id_canal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_urls_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_urls_momento1` FOREIGN KEY (`id_momento`) REFERENCES `momento` (`id_momento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urls`
--

LOCK TABLES `urls` WRITE;
/*!40000 ALTER TABLE `urls` DISABLE KEYS */;
INSERT INTO `urls` VALUES (1,'mb4','http://localhost:8000/survey/eyJpdiI6IkZTVklcLzBxelk0NWJwZXQ0VnI2VTR3PT0iLCJ2YWx1ZSI6Im5YelVVOFpRUm5JSW5PWjByUnh2b1E9PSIsIm1hYyI6IjRkZTdiYzFmODFkOTJhNGQ4M2QyMTY4Y2ExNTAyZmVkNGIzNTBlOTY1YzIyZWZiOGZmZGIzNGI5ZTU2ODdjMDIifQ%3D%3D/eyJpdiI6IktBTUd5b0pWcDc2V2RKRjhMUWJCXC9nPT0iLCJ2YWx1ZSI6Inl6QjJxT05wZ1BZbUUwcmJcL2ZYemRBPT0iLCJtYWMiOiI1Njk0M2IwMTVkZGY0N2Q3NzYwYjYzYjQyNTg1MWYxNThjYjMwNWFlMjRlNmZhNjc5MDI1YThkMjhlMTI4YzZiIn0%3D/eyJpdiI6IkpCUHVFa1dJMm4zUVI2V3JVWVY3NUE9PSIsInZhbHVlIjoiNTIzWnJ4TVBveFo3a3dMYU9pc21vUT09IiwibWFjIjoiN2YwM2Y4MjFmN2EwMmE3MTY4Yjc3Mjg1ZmYwN2QyZGQzOWRkYTQ1MzhjMmI1ODExZWI3MzVlZjllNWU5ZGUyYyJ9',NULL,'2015-07-27 07:29:31','2015-07-27 07:29:31',1,1,2),(2,'4lp9','http://localhost:8000/survey/eyJpdiI6IlpjdFl3VEFRSFN4N2ZDUlJzSzR4T3c9PSIsInZhbHVlIjoiVWZaSmFpXC93TlRTdmNkVE1mWGxyelE9PSIsIm1hYyI6ImViNmM1ZThmYjM2ZjllY2JkMTM5MWFmNGUxZWJhYWY2MjcxMGNjZjBiNWM0MGQ4M2I5ZmI5NWJjMWJiMjMzMjgifQ%3D%3D/eyJpdiI6ImRNcXFab3dTeUZlOVdCWEZZVXA1NFE9PSIsInZhbHVlIjoiXC9FU0pKbDc5VUhpRW1TTUliV0lKUUE9PSIsIm1hYyI6ImI5MTY5ZDQyN2U2YjE2NWE0NDY3MDRlMDNiMDk5ZTVlOGMwMDE0ZGMyZDk4Mzg1MzEzYWM4NTAxMWQ0NThlZDIifQ%3D%3D/eyJpdiI6IjVmVGxEZjNPTlRtSExpRkVPNXNEZEE9PSIsInZhbHVlIjoiOE9oZ1dcLzliZlFKZkxTUUFWaFdJb3c9PSIsIm1hYyI6IjRmOWY0ZmY2ZTlkNjc5ZTliZTAzNzJmZDA4YjA4OTg5MmY4MTEyMTE5OTkzNWM5NTM3MjdkYWZhZGMwODAxMjUifQ%3D%3D',NULL,'2015-07-27 07:30:19','2015-07-27 07:30:19',1,2,2),(3,'a2c7','http://localhost:8000/survey/eyJpdiI6IlBqQUVqNjVTXC95RXJWOWZTWCtoenhRPT0iLCJ2YWx1ZSI6Im41Sk53Y21heG1GcXVYRGVXYkJLVmc9PSIsIm1hYyI6ImIyOTMzNDZmZWZkM2QxY2RjMmI0YWEwOGQ2ZTAzZmJlOGI3MTc1MTg5YTdlZTk3MzNlM2IwZWQ0MjAxNzdjM2UifQ%3D%3D/eyJpdiI6ImlsdnU4elFCd1BxWkJmZnR3aTZNcXc9PSIsInZhbHVlIjoia2UyXC9QNzZKTWtyRDN2MER6RUdCZVE9PSIsIm1hYyI6Ijk1NWZmNjk3NGU3NTUwOTE5YTlhZTY0MTU0NmE3OTlhMTM1OGU4YTg2ZmQ4ZTAzZjY5NTEwM2YzZGE4MjAzY2IifQ%3D%3D/eyJpdiI6IlZJQlpGdVhkNTZYVXNxMkNxb3pxc1E9PSIsInZhbHVlIjoib2VuRkJtRHVcL1R2Q00xZk01UERFblE9PSIsIm1hYyI6ImE0MDJhODVmZjI4NDk4YTYzZTMwODgyOGEzNmNiNDllMzM3MmRiNmNiNWY2ZTlmMjcxZGM3MGZlNzQzNzk2NmYifQ%3D%3D',NULL,'2015-07-27 07:31:02','2015-07-27 07:31:02',1,3,2),(4,'kn52','http://localhost:8000/survey/eyJpdiI6IjBsYmNQRXNqTVMyZUVHbTA2TEFQN3c9PSIsInZhbHVlIjoiVWtXdFo0XC9VaktCMXoyRXU0RGJNMmc9PSIsIm1hYyI6IjVlN2U3Nzc4ZjY5YTAzMzcxYzczMGZiMDM1Zjg4YWNlN2E0Nzk3ZmQ5YTc2N2EzZmEyOTJkNTZmMzNmZDYyYmUifQ%3D%3D/eyJpdiI6IjZWeUhrYTc0aHBNd2MyOUU1NkdKZVE9PSIsInZhbHVlIjoiMFFvUUtCXC82QnJRWE1RUUI2eFhWTlE9PSIsIm1hYyI6ImY2MDI2YTUzOWZlMzdiNWI5YTg3NmNiZDljMDMzZmVhOTNiZTBlY2I1MGE5Y2E5MDkzMDNiMzU2NTllZGQ1ZjkifQ%3D%3D/eyJpdiI6IkE2RlB6akhoK3VQVzdDR24rdkdYZnc9PSIsInZhbHVlIjoiOVdNU0pnKzVqQjc0aW9lS1ZMV0hPUT09IiwibWFjIjoiZmYwMTFmMjZjYjkwNjRjZDM0OWU2YzhkY2ViYjMzMTM2ZjRjYjdiMGIzNzRjOWNhMzMzYTFkMTFjYTg4NmU1NyJ9',NULL,'2015-07-27 07:31:11','2015-07-27 07:31:11',1,4,2),(5,'4yba','http://localhost:8000/survey/eyJpdiI6IlJBdkZXNitrWXpyNVVnVmNnb0d5bHc9PSIsInZhbHVlIjoiTDNYUGxoSkZmVGRzQVlWT1BPRjczdz09IiwibWFjIjoiOGU1YmE4NTcyNzAyMWNmZThhMWQwOTU1ODMyMjg4MDIzYzE3NTdiZmExZmE3OGEyYjk1YzUwMDgwZmI2ZmY1NSJ9/eyJpdiI6IkVXN041dmN3S0hEOW1KYkR6NE0zNHc9PSIsInZhbHVlIjoialcrejNGbGJEZ0RpZkhcLzFSUXNpMXc9PSIsIm1hYyI6IjkxODg2N2E3MTg4YTI1OGE4NDA5ZmUxM2Y0YTYwMWUyOGNlYmFlZjQ0NTBkNWQzMTdlZmI3NjMxZWY2YzgwMGUifQ%3D%3D/eyJpdiI6ImdTQjlHXC9mVEtDUjhlb2JBY1RadEFRPT0iLCJ2YWx1ZSI6ImhsQlRzaWZ6cUljcmM4Slh0UllxN1E9PSIsIm1hYyI6Ijc4MGNjN2RmNzcxOGRmYzNiOGY5MzM3YjhhOTMyN2M5ZWRjNDM0OGFjOGQwYTEyZjE4ZjZkMWRmNWI4YzMxNzAifQ%3D%3D',NULL,'2015-07-27 07:31:36','2015-07-27 07:31:36',1,1,3),(6,'gv45','http://localhost:8000/survey/eyJpdiI6IjR5NytcL3hsR0pNbEFEdVhXaXlqRFp3PT0iLCJ2YWx1ZSI6ImRhcW1HZTkzalVUMEozTGQ5T0Q4TkE9PSIsIm1hYyI6IjcwZjk0MzlkOGRkZWI1MTkyNjk4Y2EwNWUzZTlkMTJiZWYwMTMzOTNmZjkyNzNmZGI3YTMwZmU4YTFiOWMyMjMifQ%3D%3D/eyJpdiI6IkczVEJUXC9CWTBiQ0JDRWcyR1VNSmNnPT0iLCJ2YWx1ZSI6ImhodmNsK1lnOHFqYmkrZms4QVQ4THc9PSIsIm1hYyI6IjIzNGJlZWUyNTMwN2VhZjM2YmJmNDNmYTMxNjllOWEwNDFkYjgwMjI1NDEzNTVhMDg0OTQ5NTRkOWMxNzUwODIifQ%3D%3D/eyJpdiI6IjdpT3JNVktBZWVxXC83K09LQUM5akFnPT0iLCJ2YWx1ZSI6Ino5Q3RKSWkwcVdCMm5LS3VmNFQxMGc9PSIsIm1hYyI6IjRmOTRjYWEzNzA3YmYzMWZmZWQ0ZmUwOWU3ZWY0ZjlhZTZkMjc5MzllNzVkZjVlMjE2ZmJlOTgyODgyMDBlNTcifQ%3D%3D',NULL,'2015-07-27 07:32:26','2015-07-27 07:32:26',1,2,3),(8,'hymn','http://localhost:8000/survey/eyJpdiI6IlV1eGpacE01aHRaRk0xelJ6UkRUUmc9PSIsInZhbHVlIjoibHdHZUtia0FhRVZCQnlwYXVLRXhIUT09IiwibWFjIjoiZTIzNGUwNGQ2YTVkMzI3ZjNiYTE1NjdjMmNiZTQ1NWI5YzNmNzA1M2E0YzQ1ZjAzMjA1NWE1YjZkMzNiMmE5NSJ9/eyJpdiI6IlZQR2dlZDFNVUlnZVFzaEhsM3hEdlE9PSIsInZhbHVlIjoiMFE2KzZiTHpuVDBQbTE0S1Q5dXZ0dz09IiwibWFjIjoiYWFmYzU1MmRiMDBkN2IwMDUyNTdjZTE1YTUyNzIwNTVjNzE5MzRkM2JjMTlkOTc2ZDJlMTRjZDBhN2Q2NmVlOCJ9/eyJpdiI6IkV2YVJ1OGhHV29NZHZvWlUrWWlEOVE9PSIsInZhbHVlIjoiTWVNM1NWMWErRlc4WHRUMFpUd0ZQUT09IiwibWFjIjoiYjQxNGJkNzI4ZWVlYWJhNDZlZjk1YzEyYjhjZjg0MGFhZjEzMGY0ZTgzYzMyNTFhYjc3MTQ2NzZiM2E0MmU4OCJ9',NULL,'2015-07-27 07:32:59','2015-07-27 07:32:59',1,3,3);
/*!40000 ALTER TABLE `urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(100) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `edad_usuario` int(11) DEFAULT NULL,
  `genero_cliente` char(1) DEFAULT NULL,
  `correo_cliente` varchar(100) DEFAULT NULL,
  `rut_usuario` varchar(15) DEFAULT NULL,
  `desea_correo_cliente` char(2) DEFAULT 'NR',
  `id_tipo_usuario` int(10) NOT NULL,
  `id_cliente` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_encuesta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_usuario_tipo_usuario1_idx` (`id_tipo_usuario`),
  KEY `fk_usuario_cliente1_idx` (`id_cliente`),
  CONSTRAINT `fk_usuario_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_tipo_usuario1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'superadmin','superadmin',35,'M','superadmin@superadmin.com',NULL,'SI',1,1,'Rqhf0WkdfYl0pjn2C436r68hkGPaSuJM5CIgQw3JWe73VpO4aQPapfTDlRAN','2015-07-12 00:51:12','2015-07-15 17:37:11',NULL),(2,'admin','admin',26,'M','admin@admin.com',NULL,'NO',2,2,'CFuCo0YEkSFoIPtyZe1bwGPo58Ki3UnMq7ft2NRsUPpYN9egfBrxZIOk9mAC','2015-07-12 01:36:06','2015-07-27 07:33:05',NULL),(3,'Diego Pinto',NULL,26,'M','dpinto@intelidata.cl',NULL,'NR',3,3,NULL,'2015-07-27 15:23:19','2015-07-27 15:23:19',NULL),(4,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:33:54','2015-07-28 09:33:54',NULL),(5,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:34:05','2015-07-28 09:34:05',NULL),(6,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:34:23','2015-07-28 09:34:23',NULL),(7,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:36:16','2015-07-28 09:36:16',NULL),(8,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:37:49','2015-07-28 09:37:49',NULL),(9,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:37:54','2015-07-28 09:37:54',NULL),(10,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:38:00','2015-07-28 09:38:00',NULL),(11,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:38:09','2015-07-28 09:38:09',NULL),(12,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:38:18','2015-07-28 09:38:18',NULL),(13,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:38:30','2015-07-28 09:38:30',NULL),(14,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:38:40','2015-07-28 09:38:40',NULL),(15,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:38:43','2015-07-28 09:38:43',NULL),(16,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:38:53','2015-07-28 09:38:53',NULL),(17,'Diego Pinto',NULL,24,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:39:00','2015-07-28 09:39:00',NULL),(18,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:45:48','2015-07-28 09:45:48',NULL),(19,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:46:05','2015-07-28 09:46:05',NULL),(20,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:46:15','2015-07-28 09:46:15',NULL),(21,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:47:32','2015-07-28 09:47:32',NULL),(22,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:48:22','2015-07-28 09:48:22',NULL),(23,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:48:34','2015-07-28 09:48:34',NULL),(24,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:53:35','2015-07-28 09:53:35',NULL),(25,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:56:41','2015-07-28 09:56:41',NULL),(26,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:56:49','2015-07-28 09:56:49',NULL),(27,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:57:03','2015-07-28 09:57:03',NULL),(28,'Diego',NULL,26,'M','diego.pintod@gmail.com',NULL,'NO',3,2,NULL,'2015-07-28 09:57:13','2015-07-28 09:57:13',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
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

-- Dump completed on 2015-07-28 16:49:24
