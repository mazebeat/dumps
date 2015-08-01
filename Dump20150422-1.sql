CREATE DATABASE  IF NOT EXISTS `amicarcotizante` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `amicarcotizante`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: amicarcotizante
-- ------------------------------------------------------
-- Server version	5.1.73-community

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
-- Table structure for table `body`
--

DROP TABLE IF EXISTS `body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `body` (
  `idBody` int(11) NOT NULL,
  `bodyNombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBody`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `body`
--

LOCK TABLES `body` WRITE;
/*!40000 ALTER TABLE `body` DISABLE KEYS */;
/*!40000 ALTER TABLE `body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientealgoritmo`
--

DROP TABLE IF EXISTS `clientealgoritmo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientealgoritmo` (
  `idClienteAlgoritmo` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idBody` int(11) DEFAULT NULL,
  PRIMARY KEY (`idClienteAlgoritmo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientealgoritmo`
--

LOCK TABLES `clientealgoritmo` WRITE;
/*!40000 ALTER TABLE `clientealgoritmo` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientealgoritmo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `rutCliente` varchar(12) DEFAULT NULL,
  `emailCliente` varchar(45) DEFAULT NULL,
  `nombreLocal` varchar(45) DEFAULT NULL,
  `nombreVendedor` varchar(45) DEFAULT NULL,
  `rutVendedor` varchar(12) DEFAULT NULL,
  `rutEjecutivoAdjudica` varchar(12) DEFAULT NULL,
  `nombreEjecutivoAdjudica` varchar(45) DEFAULT NULL,
  `nombreCliente` varchar(45) DEFAULT NULL,
  `fonoCelular` varchar(15) DEFAULT NULL,
  `fonoComercial` varchar(15) DEFAULT NULL,
  `fonoParticular` varchar(15) DEFAULT NULL,
  `marcaVehiculo` varchar(45) DEFAULT NULL,
  `modeloVehiculo` varchar(45) DEFAULT NULL,
  `valorVehiculo` varchar(45) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  `idBody` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nombreJrn` varchar(100) DEFAULT NULL,
  `desinscrito` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientesdiario`
--

DROP TABLE IF EXISTS `clientesdiario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientesdiario` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `rutCliente` varchar(12) DEFAULT NULL,
  `emailCliente` varchar(45) DEFAULT NULL,
  `nombreLocal` varchar(45) DEFAULT NULL,
  `nombreVendedor` varchar(45) DEFAULT NULL,
  `rutVendedor` varchar(12) DEFAULT NULL,
  `rutEjecutivoAdjudica` varchar(12) DEFAULT NULL,
  `nombreEjecutivoAdjudica` varchar(45) DEFAULT NULL,
  `nombreCliente` varchar(45) DEFAULT NULL,
  `fonoCelular` varchar(15) DEFAULT NULL,
  `fonoComercial` varchar(15) DEFAULT NULL,
  `fonoParticular` varchar(15) DEFAULT NULL,
  `marcaVehiculo` varchar(45) DEFAULT NULL,
  `modeloVehiculo` varchar(45) DEFAULT NULL,
  `valorVehiculo` varchar(45) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  `idBody` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nombreJrn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientesdiario`
--

LOCK TABLES `clientesdiario` WRITE;
/*!40000 ALTER TABLE `clientesdiario` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientesdiario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientessemanal`
--

DROP TABLE IF EXISTS `clientessemanal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientessemanal` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `rutCliente` varchar(12) DEFAULT NULL,
  `emailCliente` varchar(45) DEFAULT NULL,
  `nombreLocal` varchar(45) DEFAULT NULL,
  `nombreVendedor` varchar(45) DEFAULT NULL,
  `rutVendedor` varchar(12) DEFAULT NULL,
  `rutEjecutivoAdjudica` varchar(12) DEFAULT NULL,
  `nombreEjecutivoAdjudica` varchar(45) DEFAULT NULL,
  `nombreCliente` varchar(45) DEFAULT NULL,
  `fonoCelular` varchar(15) DEFAULT NULL,
  `fonoComercial` varchar(15) DEFAULT NULL,
  `fonoParticular` varchar(15) DEFAULT NULL,
  `marcaVehiculo` varchar(45) DEFAULT NULL,
  `modeloVehiculo` varchar(45) DEFAULT NULL,
  `valorVehiculo` varchar(45) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  `idBody` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nombreJrn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientessemanal`
--

LOCK TABLES `clientessemanal` WRITE;
/*!40000 ALTER TABLE `clientessemanal` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientessemanal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correoserrorformato`
--

DROP TABLE IF EXISTS `correoserrorformato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correoserrorformato` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `rutCliente` varchar(12) DEFAULT NULL,
  `emailCliente` varchar(45) DEFAULT NULL,
  `nombreLocal` varchar(45) DEFAULT NULL,
  `nombreVendedor` varchar(45) DEFAULT NULL,
  `rutVendedor` varchar(12) DEFAULT NULL,
  `rutEjecutivoAdjudica` varchar(12) DEFAULT NULL,
  `nombreEjecutivoAdjudica` varchar(45) DEFAULT NULL,
  `nombreCliente` varchar(45) DEFAULT NULL,
  `fonoCelular` varchar(15) DEFAULT NULL,
  `fonoComercial` varchar(15) DEFAULT NULL,
  `fonoParticular` varchar(15) DEFAULT NULL,
  `marcaVehiculo` varchar(45) DEFAULT NULL,
  `modeloVehiculo` varchar(45) DEFAULT NULL,
  `valorVehiculo` varchar(45) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  `idBody` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nombreJrn` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correoserrorformato`
--

LOCK TABLES `correoserrorformato` WRITE;
/*!40000 ALTER TABLE `correoserrorformato` DISABLE KEYS */;
/*!40000 ALTER TABLE `correoserrorformato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejecutivos`
--

DROP TABLE IF EXISTS `ejecutivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejecutivos` (
  `idEjecutivo` int(11) NOT NULL AUTO_INCREMENT,
  `rutEjecutivo` varchar(12) DEFAULT NULL,
  `nombreEjecutivo` varchar(100) DEFAULT NULL,
  `correoEjecutivo` varchar(45) DEFAULT NULL,
  `locales_idLocal1` int(11) NOT NULL,
  `fechaIngreso` timestamp NULL DEFAULT NULL,
  `fechaModificacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEjecutivo`),
  KEY `fk_ejecutivos_locales1_idx` (`locales_idLocal1`),
  CONSTRAINT `fk_ejecutivos_locales1` FOREIGN KEY (`locales_idLocal1`) REFERENCES `locales` (`idLocal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1438 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejecutivos`
--

LOCK TABLES `ejecutivos` WRITE;
/*!40000 ALTER TABLE `ejecutivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ejecutivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales` (
  `idLocal` int(11) NOT NULL AUTO_INCREMENT,
  `nombreLocal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idLocal`)
) ENGINE=InnoDB AUTO_INCREMENT=1846 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales`
--

LOCK TABLES `locales` WRITE;
/*!40000 ALTER TABLE `locales` DISABLE KEYS */;
INSERT INTO `locales` VALUES (1845,'30 SERGIO ESCOBAR MALL');
/*!40000 ALTER TABLE `locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `idlog` int(11) NOT NULL,
  `idVendedor` int(11) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idEjecutivo` int(11) DEFAULT NULL,
  `fechaLog` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proceso`
--

DROP TABLE IF EXISTS `proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proceso` (
  `idProceso` int(11) NOT NULL AUTO_INCREMENT,
  `fechaEnvio` timestamp NULL DEFAULT NULL,
  `fechaAperturaMail` timestamp NULL DEFAULT NULL,
  `fechaClickLink` timestamp NULL DEFAULT NULL,
  `clientes_idCliente` int(11) NOT NULL,
  `ejecutivos_idEjecutivo` int(11) NOT NULL,
  `vendedores_idVendedor` int(11) NOT NULL,
  PRIMARY KEY (`idProceso`),
  KEY `fk_proceso_clientes1_idx` (`clientes_idCliente`),
  KEY `fk_proceso_ejecutivos1_idx` (`ejecutivos_idEjecutivo`),
  KEY `fk_proceso_vendedores1_idx` (`vendedores_idVendedor`),
  CONSTRAINT `fk_proceso_clientes1` FOREIGN KEY (`clientes_idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_proceso_ejecutivos1` FOREIGN KEY (`ejecutivos_idEjecutivo`) REFERENCES `ejecutivos` (`idEjecutivo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_proceso_vendedores1` FOREIGN KEY (`vendedores_idVendedor`) REFERENCES `vendedores` (`idVendedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso`
--

LOCK TABLES `proceso` WRITE;
/*!40000 ALTER TABLE `proceso` DISABLE KEYS */;
/*!40000 ALTER TABLE `proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedores` (
  `idVendedor` int(11) NOT NULL AUTO_INCREMENT,
  `rutVendedor` varchar(12) DEFAULT NULL,
  `nombreVendedor` varchar(100) DEFAULT NULL,
  `locales_idLocal` int(11) NOT NULL,
  PRIMARY KEY (`idVendedor`),
  KEY `fk_vendedores_locales1_idx` (`locales_idLocal`),
  CONSTRAINT `fk_vendedores_locales1` FOREIGN KEY (`locales_idLocal`) REFERENCES `locales` (`idLocal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5779 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (5778,'16108672K\\','CRISTIAN MAURICIO VIGOR ACUA',1845);
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'amicarcotizante'
--
/*!50003 DROP PROCEDURE IF EXISTS `ADD_BODY_MAIL_AMICAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ADD_BODY_MAIL_AMICAR`()
BEGIN

DECLARE GRUPO INT DEFAULT 1;
DECLARE DIASEMANA VARCHAR(10);
DECLARE VB_TERMINA VARCHAR(10);
DECLARE UNICO INT DEFAULT 0;

DECLARE ADD_ID CURSOR FOR SELECT IDCLIENTE FROM CLIENTESDIARIO;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET VB_TERMINA = TRUE;

SET SQL_SAFE_UPDATES = 0;        
SET @DIASEMANA = (SELECT DAYNAME(NOW()));

INSERT INTO CORREOSERRORFORMATO (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN,ESTADO)    
SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN,'Error Formato Correo'
	FROM CLIENTESDIARIO 
	WHERE    EMAILCLIENTE REGEXP 'ñ(.*)@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)ñ(.*)@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)ñ@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@ñ(.*)\.(.*)'          
		  OR EMAILCLIENTE REGEXP '(.*)@(.*)ñ(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@(.*)ñ\.(.*)'
		  OR EMAILCLIENTE REGEXP 'xxx(.*)@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)xxx(.*)@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)xxx@(.*)\.(.*)'		  
          OR EMAILCLIENTE REGEXP '(.*)@xxx(.*)\.(.*)'          
		  OR EMAILCLIENTE REGEXP '(.*)@(.*)xxx(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@(.*)xxx\.(.*)'
		  OR EMAILCLIENTE REGEXP 'notiene@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@notiene\.(.*)'
		  OR EMAILCLIENTE REGEXP 'notienecorreo@(.*)\.(.*)'	  
          OR EMAILCLIENTE REGEXP '(.*)@notienecorreo\.(.*)'
		  OR EMAILCLIENTE REGEXP 'nousa@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@nousa\.(.*)'
		  OR EMAILCLIENTE REGEXP 'nousacorreo@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@nousacorreo\.(.*)'
		  OR EMAILCLIENTE REGEXP 'ntiene@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@ntiene\.(.*)'
		  OR EMAILCLIENTE REGEXP 'sincorreo@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@sincorreo\.(.*)'
		  OR EMAILCLIENTE REGEXP 'sininfo@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@sininfo\.(.*)'
		  OR EMAILCLIENTE REGEXP 'sinmail@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@sinmail\.(.*)'
		  OR EMAILCLIENTE REGEXP '^[0-9]+$'
		  OR EMAILCLIENTE REGEXP '^[0-9]+$@(.*)\.(.*)'
		  OR EMAILCLIENTE REGEXP '(.*)@^[0-9]+$\.(.*)'   
		  OR EMAILCLIENTE REGEXP '(.*)@(.*)\.^[0-9]+$'
		  OR EMAILCLIENTE NOT REGEXP '(.*)@(.*).(.*)'
          OR EMAILCLIENTE = ""
          OR EMAILCLIENTE IS NULL;
          
DELETE FROM CLIENTESDIARIO 
	WHERE
		EMAILCLIENTE REGEXP 'ñ(.*)@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)ñ(.*)@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)ñ@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@ñ(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@(.*)ñ(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@(.*)ñ.(.*)'
		OR EMAILCLIENTE REGEXP 'xxx(.*)@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)xxx(.*)@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)xxx@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@xxx(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@(.*)xxx(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@(.*)xxx.(.*)'
		OR EMAILCLIENTE REGEXP 'notiene@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@notiene.(.*)'
		OR EMAILCLIENTE REGEXP 'notienecorreo@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@notienecorreo.(.*)'
		OR EMAILCLIENTE REGEXP 'nousa@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@nousa.(.*)'
		OR EMAILCLIENTE REGEXP 'nousacorreo@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@nousacorreo.(.*)'
		OR EMAILCLIENTE REGEXP 'ntiene@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@ntiene.(.*)'
		OR EMAILCLIENTE REGEXP 'sincorreo@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@sincorreo.(.*)'
		OR EMAILCLIENTE REGEXP 'sininfo@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@sininfo.(.*)'
		OR EMAILCLIENTE REGEXP 'sinmail@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@sinmail.(.*)'
		OR EMAILCLIENTE REGEXP '^[0-9]+$'
		OR EMAILCLIENTE REGEXP '^[0-9]+$@(.*).(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@^[0-9]+$.(.*)'
		OR EMAILCLIENTE REGEXP '(.*)@(.*).^[0-9]+$'
		OR EMAILCLIENTE NOT REGEXP '(.*)@(.*).(.*)'
		OR EMAILCLIENTE = ""
		OR EMAILCLIENTE IS NULL;
    
INSERT INTO CORREOSERRORFORMATO (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN,ESTADO)    
SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN,'Error Rut Vendedor'
	FROM CLIENTESDIARIO 
	WHERE  	RUTVENDEDOR = ""
			OR RUTVENDEDOR IS NULL;
            
DELETE FROM CLIENTESDIARIO 
	WHERE  	RUTVENDEDOR = ""
			OR RUTVENDEDOR IS NULL;
            
INSERT INTO CORREOSERRORFORMATO (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN,ESTADO)    
SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN,'Error Rut Ejecutivo'
	FROM CLIENTESDIARIO 
	WHERE  	RUTEJECUTIVOADJUDICA = ""
			OR RUTEJECUTIVOADJUDICA IS NULL;
            
DELETE FROM CLIENTESDIARIO 
	WHERE  	RUTEJECUTIVOADJUDICA = ""
			OR RUTEJECUTIVOADJUDICA IS NULL;
       
	DELETE Cd FROM CLIENTESDIARIO AS CD
        INNER JOIN
    CLIENTES AS C ON C.RUTCLIENTE = CD.RUTCLIENTE 
WHERE
    C.DESINSCRITO = 1;

	IF (@DIASEMANA = 'MONDAY') THEN	
		TRUNCATE CLIENTESSEMANAL;
        OPEN ADD_ID;
        RECORRE_CURSOR: LOOP
                FETCH ADD_ID INTO UNICO;
					IF VB_TERMINA THEN
						LEAVE RECORRE_CURSOR;
					END IF;
                    IF GRUPO <= 4 THEN
						UPDATE CLIENTESDIARIO
							SET IDGRUPO = GRUPO
						WHERE IDCLIENTE = UNICO;     
                        
                        SET GRUPO = GRUPO + 1;
                        
					ELSE
							
						UPDATE CLIENTESDIARIO C
						SET C.IDGRUPO = 1
						WHERE C.IDCLIENTE = UNICO 
                        AND C.IDGRUPO IS NULL;  
                    
						SET GRUPO = 2;
                        
					END IF;
				END LOOP;
			CLOSE ADD_ID;
            
		UPDATE CLIENTESDIARIO 
		SET 
		IDBODY = 1
		WHERE
		IDGRUPO IN (1 , 2) AND IDBODY IS NULL;

		UPDATE CLIENTESDIARIO 
		SET 
		IDBODY = 2
		WHERE
		IDGRUPO IN (3) AND IDBODY IS NULL;

		UPDATE CLIENTESDIARIO 
		SET 
		IDBODY = 3
		WHERE
		IDGRUPO IN (4) AND IDBODY IS NULL;

		DELETE FROM CLIENTESSEMANAL;
            
		INSERT INTO CLIENTESSEMANAL (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN)
		SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN
		FROM CLIENTESDIARIO;
        
	ELSE
    
		UPDATE CLIENTESDIARIO AS C
		INNER JOIN CLIENTESSEMANAL AS S  
		ON S.EMAILCLIENTE = C.EMAILCLIENTE
		SET C.IDGRUPO = S.IDGRUPO, C.IDBODY = S.IDBODY;
        
        OPEN ADD_ID;

			RECORRE_CURSOR2: LOOP
				FETCH ADD_ID INTO UNICO;
					IF VB_TERMINA THEN
						LEAVE RECORRE_CURSOR2;
					END IF;

                    IF GRUPO <= 4 THEN
                    
						UPDATE CLIENTESDIARIO C
						SET C.IDGRUPO = GRUPO
						WHERE C.IDCLIENTE = UNICO 
                        AND C.IDGRUPO IS NULL;  
                        
						SET GRUPO = GRUPO + 1;
					ELSE
                    
						UPDATE CLIENTESDIARIO C
						SET C.IDGRUPO = 1
						WHERE C.IDCLIENTE = UNICO 
                        AND C.IDGRUPO IS NULL;  
                    
						SET GRUPO = 2;
                    END IF;
				END LOOP;
			CLOSE ADD_ID;
        
		UPDATE CLIENTESDIARIO 
		SET 
		IDBODY = 1
		WHERE
		IDGRUPO IN (1 , 2) AND IDBODY IS NULL;

		UPDATE CLIENTESDIARIO 
		SET 
		IDBODY = 2
		WHERE
		IDGRUPO IN (3) AND IDBODY IS NULL;

		UPDATE CLIENTESDIARIO 
		SET 
		IDBODY = 3
		WHERE
		IDGRUPO IN (4) AND IDBODY IS NULL;

        INSERT INTO CLIENTESSEMANAL (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN)
		SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN
		FROM CLIENTESDIARIO CS WHERE DATE(CS.FECHA) NOT IN (SELECT DATE(FECHA) FROM CLIENTESSEMANAL);

	END IF;
    
	INSERT INTO CLIENTES (IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN)
	SELECT IDCLIENTE,RUTCLIENTE,EMAILCLIENTE,NOMBRELOCAL,NOMBREVENDEDOR,RUTVENDEDOR,
								  RUTEJECUTIVOADJUDICA,NOMBREEJECUTIVOADJUDICA,NOMBRECLIENTE,FONOCELULAR,
								  FONOCOMERCIAL,FONOPARTICULAR,MARCAVEHICULO,MODELOVEHICULO,VALORVEHICULO,
                                  IDGRUPO,IDBODY,FECHA,NOMBREJRN
	FROM CLIENTESSEMANAL CS WHERE DATE(CS.FECHA) NOT IN (SELECT DATE(FECHA) FROM CLIENTES);

	SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-22 18:08:21
