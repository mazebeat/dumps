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
  `id_plan` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_cliente_ciudad_idx` (`id_ciudad`),
  KEY `fk_cliente_estado_idx` (`id_estado`),
  KEY `fk_cliente_sector_idx` (`id_sector`),
  KEY `fk_cliente_tipo_cliente_idx` (`id_tipo_cliente`),
  KEY `fk_plan_cliente_idx` (`id_plan`),
  CONSTRAINT `fk_cliente_id_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  CONSTRAINT `fk_cliente_id_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `fk_cliente_id_sector` FOREIGN KEY (`id_sector`) REFERENCES `sector` (`id_sector`),
  CONSTRAINT `fk_cliente_id_tipo_cliente` FOREIGN KEY (`id_tipo_cliente`) REFERENCES `tipo_cliente` (`id_tipo_cliente`),
  CONSTRAINT `fk_plan_id_cliente` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id_plan`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cliente_apariencia`
--

DROP TABLE IF EXISTS `cliente_apariencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_apariencia` (
  `cliente_id_cliente` int(10) unsigned NOT NULL,
  `apariencia_id_apariencia` int(10) NOT NULL,
  PRIMARY KEY (`cliente_id_cliente`,`apariencia_id_apariencia`),
  KEY `fk_cliente_has_apariencia_apariencia1_idx` (`apariencia_id_apariencia`),
  KEY `fk_cliente_has_apariencia_cliente1_idx` (`cliente_id_cliente`),
  CONSTRAINT `fk_cliente_has_apariencia_apariencia1` FOREIGN KEY (`apariencia_id_apariencia`) REFERENCES `apariencia` (`id_apariencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_has_apariencia_cliente1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

-- Dump completed on 2015-06-30 11:57:56
