-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: amicarcotizante2
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
-- Table structure for table `clientessemanal`
--

DROP TABLE IF EXISTS `clientessemanal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientessemanal` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `rutCliente` varchar(12) DEFAULT NULL,
  `emailCliente` varchar(100) DEFAULT NULL,
  `nombreLocal` varchar(100) DEFAULT NULL,
  `nombreVendedor` varchar(100) DEFAULT NULL,
  `rutVendedor` varchar(12) DEFAULT NULL,
  `rutEjecutivoAdjudica` varchar(12) DEFAULT NULL,
  `nombreEjecutivoAdjudica` varchar(100) DEFAULT NULL,
  `nombreCliente` varchar(100) DEFAULT NULL,
  `fonoCelular` varchar(100) DEFAULT NULL,
  `fonoComercial` varchar(100) DEFAULT NULL,
  `fonoParticular` varchar(100) DEFAULT NULL,
  `marcaVehiculo` varchar(100) DEFAULT NULL,
  `modeloVehiculo` varchar(100) DEFAULT NULL,
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-20 23:54:13
