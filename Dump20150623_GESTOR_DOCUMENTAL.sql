CREATE DATABASE  IF NOT EXISTS `gesdocinteli` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gesdocinteli`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: 192.168.1.30    Database: gesdocinteli
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.10.1-log

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
-- Table structure for table `gestdoc_log_procesos`
--

DROP TABLE IF EXISTS `gestdoc_log_procesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestdoc_log_procesos` (
  `Id_Log` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Proceso` int(11) DEFAULT NULL,
  `Id_User` varchar(45) DEFAULT NULL,
  `Fecha_Log` datetime DEFAULT NULL,
  `Cliente` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id_Log`),
  UNIQUE KEY `Id_Log_UNIQUE` (`Id_Log`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='log procesos sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestdoc_log_procesos`
--

LOCK TABLES `gestdoc_log_procesos` WRITE;
/*!40000 ALTER TABLE `gestdoc_log_procesos` DISABLE KEYS */;
INSERT INTO `gestdoc_log_procesos` VALUES (1,1,'1','2014-01-01 00:00:00','1615|1430','pruebaaa monooooooo'),(2,1,'1','2014-01-01 00:00:00','16151430','pruebaaa monooooooo'),(3,1,'1','2014-01-01 00:00:00','16151430','pruebaaa monooooooo');
/*!40000 ALTER TABLE `gestdoc_log_procesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestdoc_negocio`
--

DROP TABLE IF EXISTS `gestdoc_negocio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestdoc_negocio` (
  `Id_Negocio` char(2) NOT NULL,
  `Nombre_Negocio` varchar(45) DEFAULT NULL,
  `Estado_Negocio` char(2) DEFAULT NULL,
  PRIMARY KEY (`Id_Negocio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla Negocio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestdoc_negocio`
--

LOCK TABLES `gestdoc_negocio` WRITE;
/*!40000 ALTER TABLE `gestdoc_negocio` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestdoc_negocio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestdoc_perfil`
--

DROP TABLE IF EXISTS `gestdoc_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestdoc_perfil` (
  `Id_Perfil` char(2) NOT NULL COMMENT 'CAMPO ID PERFIL',
  `Nombre_Perfil` varchar(45) DEFAULT NULL COMMENT 'CAMPO NOMBRE PERFIL',
  `Estado_Perfil` char(1) DEFAULT NULL COMMENT 'CAMPO ESTADO PERFIL',
  PRIMARY KEY (`Id_Perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla Perfil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestdoc_perfil`
--

LOCK TABLES `gestdoc_perfil` WRITE;
/*!40000 ALTER TABLE `gestdoc_perfil` DISABLE KEYS */;
INSERT INTO `gestdoc_perfil` VALUES ('1','ADMINISTRADOR','A');
/*!40000 ALTER TABLE `gestdoc_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestdoc_procesos`
--

DROP TABLE IF EXISTS `gestdoc_procesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestdoc_procesos` (
  `Id_Proceso` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Proceso` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id_Proceso`),
  UNIQUE KEY `Id_Proceso_UNIQUE` (`Id_Proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='procesos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestdoc_procesos`
--

LOCK TABLES `gestdoc_procesos` WRITE;
/*!40000 ALTER TABLE `gestdoc_procesos` DISABLE KEYS */;
INSERT INTO `gestdoc_procesos` VALUES (1,'Imprimir'),(2,'Descargar');
/*!40000 ALTER TABLE `gestdoc_procesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestdoc_user`
--

DROP TABLE IF EXISTS `gestdoc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestdoc_user` (
  `Id_User` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo Id_User',
  `Nombres_User` varchar(500) NOT NULL COMMENT 'Campo Nombre ',
  `Apellidos_User` varchar(500) NOT NULL COMMENT 'Campo Apellido',
  `Id_Negocio` char(2) NOT NULL COMMENT 'Campo  ID NEGOCIO',
  `User` varchar(60) NOT NULL COMMENT 'Campo User',
  `Pass` varchar(500) DEFAULT NULL COMMENT 'Campo Pass',
  `Vigencia_Ini` datetime NOT NULL COMMENT 'Campo Vigencia Ini',
  `Vigencia_Fin` datetime NOT NULL COMMENT 'Campo Vigencia_Fin',
  `Estado` char(2) NOT NULL COMMENT 'Campo Estado',
  PRIMARY KEY (`User`),
  UNIQUE KEY `Id_User_UNIQUE` (`Id_User`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='User Sistema Gestion Documental';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestdoc_user`
--

LOCK TABLES `gestdoc_user` WRITE;
/*!40000 ALTER TABLE `gestdoc_user` DISABLE KEYS */;
INSERT INTO `gestdoc_user` VALUES (1,'Alexis','San Martin','MV','asanmartin@intelidata.cl','margarita','2014-01-01 00:00:00','2014-12-01 00:00:00','HA'),(2,'Claudia','Prieto','MV','cprieto@intelidata.cl','margarita','2014-01-01 00:00:00','2014-12-01 00:00:00','HA'),(3,'Margarita','San Martin','MV','msanmartin@intelidata.cl','margarita','2014-01-01 00:00:00','2014-12-01 00:00:00','HA');
/*!40000 ALTER TABLE `gestdoc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestdoc_userperfil`
--

DROP TABLE IF EXISTS `gestdoc_userperfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestdoc_userperfil` (
  `Id_User` int(11) NOT NULL COMMENT 'Campo Id User',
  `IdPerfil` char(2) NOT NULL COMMENT 'Campo Id Perfil',
  PRIMARY KEY (`Id_User`,`IdPerfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla User Perfil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestdoc_userperfil`
--

LOCK TABLES `gestdoc_userperfil` WRITE;
/*!40000 ALTER TABLE `gestdoc_userperfil` DISABLE KEYS */;
INSERT INTO `gestdoc_userperfil` VALUES (1,'1');
/*!40000 ALTER TABLE `gestdoc_userperfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestdoc_wsdl`
--

DROP TABLE IF EXISTS `gestdoc_wsdl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestdoc_wsdl` (
  `Id_Wsdl` char(2) NOT NULL,
  `Nombre_Wsdl` varchar(45) NOT NULL,
  `Estado_Wsdl` char(2) NOT NULL,
  PRIMARY KEY (`Id_Wsdl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla WSDL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestdoc_wsdl`
--

LOCK TABLES `gestdoc_wsdl` WRITE;
/*!40000 ALTER TABLE `gestdoc_wsdl` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestdoc_wsdl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gesdocinteli'
--

--
-- Dumping routines for database 'gesdocinteli'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-23 14:53:57
