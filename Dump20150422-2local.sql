-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: amicarcotizante
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
  `nombreCliente` varchar(45) DEFAULT NULL,
  `fonoCelular` varchar(15) DEFAULT NULL,
  `fonoComercial` varchar(15) DEFAULT NULL,
  `fonoParticular` varchar(15) DEFAULT NULL,
  `marcaAuto` varchar(45) DEFAULT NULL,
  `modeloAuto` varchar(45) DEFAULT NULL,
  `valorAuto` varchar(45) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  `idBody` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nombreJrn` varchar(100) DEFAULT NULL,
  `desinscrito` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'1','pamela.donoso@customertrigger.com','Pamela Donoso','84904982','84904983','84904983','KIA','RIO 09','7000001',1,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV',0),(2,'2','francisca.avila@customertrigger.com','Francisca Avila','84904982','84904983','84904983','KIA','RIO 09','7000001',2,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV',0),(3,'3','pamela.donoso@customertrigger.com','Pamela Donoso','84904982','84904983','84904983','KIA','RIO 09','7000001',3,2,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV',0),(4,'4','pamela.donoso@customertrigger.com','Pamela Donoso','84904982','84904983','84904983','KIA','RIO 09','7000001',4,3,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV',0),(5,'5','dpinto@intelidata.cl','Diego Feliu','84904982','84904983','84904983','KIA','RIO 09','7000001',1,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV',0),(6,'6','dpinto@intelidata.cl','Diego Feliu','84904982','84904983','84904983','KIA','RIO 09','7000001',2,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV',0),(7,'7','francisca.avila@customertrigger.com','Francisca Avila','84904982','84904983','84904983','KIA','RIO 09','7000001',3,2,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV',0),(8,'8','francisca.avila@customertrigger.com','Francisca Avila','84904982','84904983','84904983','KIA','RIO 09','7000001',4,3,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV',0);
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
  `nombreCliente` varchar(45) DEFAULT NULL,
  `fonoCelular` varchar(15) DEFAULT NULL,
  `fonoComercial` varchar(15) DEFAULT NULL,
  `fonoParticular` varchar(15) DEFAULT NULL,
  `marcaAuto` varchar(45) DEFAULT NULL,
  `modeloAuto` varchar(45) DEFAULT NULL,
  `valorAuto` varchar(45) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  `idBody` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nombreJrn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientesdiario`
--

LOCK TABLES `clientesdiario` WRITE;
/*!40000 ALTER TABLE `clientesdiario` DISABLE KEYS */;
INSERT INTO `clientesdiario` VALUES (1,'1','pamela.donoso@customertrigger.com','Pamela Donoso','84904982','84904983','84904983','KIA','RIO 09','7000001',1,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(2,'2','francisca.avila@customertrigger.com','Francisca Avila','84904982','84904983','84904983','KIA','RIO 09','7000001',2,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(3,'3','pamela.donoso@customertrigger.com','Pamela Donoso','84904982','84904983','84904983','KIA','RIO 09','7000001',3,2,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(4,'4','pamela.donoso@customertrigger.com','Pamela Donoso','84904982','84904983','84904983','KIA','RIO 09','7000001',4,3,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(5,'5','dpinto@intelidata.cl','Diego Feliu','84904982','84904983','84904983','KIA','RIO 09','7000001',1,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(6,'6','dpinto@intelidata.cl','Diego Feliu','84904982','84904983','84904983','KIA','RIO 09','7000001',2,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(7,'7','francisca.avila@customertrigger.com','Francisca Avila','84904982','84904983','84904983','KIA','RIO 09','7000001',3,2,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(8,'8','francisca.avila@customertrigger.com','Francisca Avila','84904982','84904983','84904983','KIA','RIO 09','7000001',4,3,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV');
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
  `nombreCliente` varchar(45) DEFAULT NULL,
  `fonoCelular` varchar(15) DEFAULT NULL,
  `fonoComercial` varchar(15) DEFAULT NULL,
  `fonoParticular` varchar(15) DEFAULT NULL,
  `marcaAuto` varchar(45) DEFAULT NULL,
  `modeloAuto` varchar(45) DEFAULT NULL,
  `valorAuto` varchar(45) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  `idBody` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nombreJrn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientessemanal`
--

LOCK TABLES `clientessemanal` WRITE;
/*!40000 ALTER TABLE `clientessemanal` DISABLE KEYS */;
INSERT INTO `clientessemanal` VALUES (1,'1','pamela.donoso@customertrigger.com','Pamela Donoso','84904982','84904983','84904983','KIA','RIO 09','7000001',1,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(2,'2','francisca.avila@customertrigger.com','Francisca Avila','84904982','84904983','84904983','KIA','RIO 09','7000001',2,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(3,'3','pamela.donoso@customertrigger.com','Pamela Donoso','84904982','84904983','84904983','KIA','RIO 09','7000001',3,2,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(4,'4','pamela.donoso@customertrigger.com','Pamela Donoso','84904982','84904983','84904983','KIA','RIO 09','7000001',4,3,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(5,'5','dpinto@intelidata.cl','Diego Feliu','84904982','84904983','84904983','KIA','RIO 09','7000001',1,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(6,'6','dpinto@intelidata.cl','Diego Feliu','84904982','84904983','84904983','KIA','RIO 09','7000001',2,1,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(7,'7','francisca.avila@customertrigger.com','Francisca Avila','84904982','84904983','84904983','KIA','RIO 09','7000001',3,2,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV'),(8,'8','francisca.avila@customertrigger.com','Francisca Avila','84904982','84904983','84904983','KIA','RIO 09','7000001',4,3,'2015-04-22 17:27:20','150218_VUELA_COTIZADOS_SIN_SOLICITUD.CSV');
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
  `nombreCliente` varchar(45) DEFAULT NULL,
  `fonoCelular` varchar(15) DEFAULT NULL,
  `fonoComercial` varchar(15) DEFAULT NULL,
  `fonoParticular` varchar(15) DEFAULT NULL,
  `marcaAuto` varchar(45) DEFAULT NULL,
  `modeloAuto` varchar(45) DEFAULT NULL,
  `valorAuto` varchar(45) DEFAULT NULL,
  `idGrupo` int(11) DEFAULT NULL,
  `idBody` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `nombreJrn` varchar(100) DEFAULT NULL,
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
INSERT INTO `ejecutivos` VALUES (1329,'Claudia Alegria','claudia.alegria@amicar.cl',1600,'2014-09-09 01:24:31',NULL),(1330,'Carolina Dominguez','carolina.dominguez@amicar.cl',1601,'2014-09-09 01:24:34',NULL),(1331,'Manuel Guzman','manuel.guzman@amicar.cl',1602,'2014-09-09 01:24:34',NULL),(1332,'Claudia Alguerno','claudia.alguerno@amicar.cl',1603,'2014-09-09 01:24:34',NULL),(1333,'Alexis Klein','alexis.klein@amicar.cl',1604,'2014-09-09 01:24:34',NULL),(1334,'Felipe Guerrero','felipe.guerrero@amicar.cl',1605,'2014-09-09 01:24:34',NULL),(1335,'Alejandra Urquejo','alejandra.urquejo@amicar.cl',1606,'2014-09-09 01:24:34',NULL),(1336,'Patricio Ramirez','patricio.ramirez@amicar.cl',1607,'2014-09-09 01:24:34',NULL),(1337,'Carla Torres','carla.torres@amicar.cl',1608,'2014-09-09 01:24:34',NULL),(1338,'Teresa Cortes','teresa.cortes@amicar.cl',1610,'2014-09-09 01:24:34',NULL),(1339,'Carla Dinamarca','carla.dinamarca@amicar.cl',1611,'2014-09-09 01:24:34',NULL),(1340,'David Schneider','david.schneider@amicar.cl',1612,'2014-09-09 01:24:35',NULL),(1341,'Natalia Marin','natalia.marin@amicar.cl',1613,'2014-09-09 01:24:35',NULL),(1342,'Daniela Flores','daniela.flores@amicar.cl',1614,'2014-09-09 01:24:35',NULL),(1343,'Karina Carreño','karina.carreno@amicar.cl',1615,'2014-09-09 01:24:35',NULL),(1344,'Taina Sanchez','taina.sanchez@amicar.cl',1616,'2014-09-09 01:24:35',NULL),(1345,'Carlos Marquez','carlos.marquez@amicar.cl',1617,'2014-09-09 01:24:35',NULL),(1346,'Victor Pantoja','victor.pantoja@amicar.cl',1618,'2014-09-09 01:24:35',NULL),(1347,'Rodrigo Laporta','rodrigo.laporta@amicar.cl',1619,'2014-09-09 01:24:35',NULL),(1348,'Paola Alvarado','paola.alvarado@amicar.cl',1620,'2014-09-09 01:24:35',NULL),(1349,'Karin Soto','karin.soto@amicar.cl',1621,'2014-09-09 01:24:35',NULL),(1350,'Ximena DIaz','ximena.diaz@amicar.cl',1622,'2014-09-09 01:24:35',NULL),(1351,'Paola Valdebenito','paola.valdebenito@amicar.cl',1623,'2014-09-09 01:24:35',NULL),(1352,'Ignacio Bondis','ignacio.bondis@amicar.cl',1624,'2014-09-09 01:24:35',NULL),(1353,'Roxana Bustos','roxana.bustos@amicar.cl',1625,'2014-09-09 01:24:35',NULL),(1354,'Liz Torreblanca','liz.torreblanca@amicar.cl',1626,'2014-09-09 01:24:35',NULL),(1355,'Pamela Campos','pamela.campos@amicar.cl',1627,'2014-09-09 01:24:35',NULL),(1356,'Elizabeth Andrade','elizabeth.andrade@amicar.cl',1628,'2014-09-09 01:24:35',NULL),(1357,'Silvia Molina','silvia.molina@amicar.cl',1629,'2014-09-09 01:24:35',NULL),(1358,'Gustavo Bravo','gustavo.bravo@amicar.cl',1630,'2014-09-09 01:24:36',NULL),(1359,'Daniela Rosales','daniela.rosales@amicar.cl',1631,'2014-09-09 01:24:36',NULL),(1360,'Monica Blamey','mithzy.morales@amicar.cl',1632,'2014-09-09 01:24:36',NULL),(1361,'Javiera Hurtado','javiera.hurtado@amicar.cl',1633,'2014-09-09 01:24:36',NULL),(1362,'Catalina Torkar','catalina.torkar@amicar.cl',1634,'2014-09-09 01:24:36',NULL),(1363,'Cristina Sierra','cristina.sierra@amicar.cl',1635,'2014-09-09 01:24:36',NULL),(1364,'Pablo Iriarte','pablo.iriarte@amicar.cl',1638,'2014-09-09 01:24:36',NULL),(1365,'Patricia Navarro','patricia.navarro@amicar.cl',1639,'2014-09-09 01:24:36',NULL),(1366,'Maria Espejo','marco.lobos@amicar.cl',1640,'2014-09-09 01:24:36',NULL),(1367,'Jonathan Concha','jonathan.concha@amicar.cl',1641,'2014-09-09 01:24:36',NULL),(1368,'Esteban Rojas','esteban.rojas@amicar.cl',1645,'2014-09-09 01:24:36',NULL),(1369,'Cristian Astorga','cristian.astorga@amicar.cl',1844,'2014-09-09 01:24:36',NULL),(1370,'Alejandra Dodds','alejandra.dodds@amicar.cl',1648,'2014-09-09 01:24:36',NULL),(1371,'Juan Lopez','juan.burgos@amicar.cl',1649,'2014-09-09 01:24:36',NULL),(1372,'Pamela Zuñiga','pamela.zuniga@amicar.cl',1650,'2014-09-09 01:24:36',NULL),(1373,'Dayse Castro','dayse.castro@amicar.cl',1651,'2014-09-09 01:24:36',NULL),(1374,'Carmen Cotroneo','carmen.cotroneo@amicar.cl',1652,'2014-09-09 01:24:36',NULL),(1375,'Patricio Urzua','patricio.urzua@amicar.cl',1653,'2014-09-09 01:24:36',NULL),(1376,'Rodrigo Venegas','rodrigo.venegas@amicar.cl',1655,'2014-09-09 01:24:36',NULL),(1377,'Jorge Herrera','jorge.herrera@amicar.cl',1657,'2014-09-09 01:24:37',NULL),(1378,'Myriam Lopez','myriam.lopez@amicar.cl',1660,'2014-09-09 01:24:37',NULL),(1379,'Elizabeth Mendoza','elizabeth.mendoza@amicar.cl',1661,'2014-09-09 01:24:37',NULL),(1380,'Joselyn Gallardo','joselyn.gallardo@amicar.cl',1662,'2014-09-09 01:24:37',NULL),(1381,'Catherine Pietrasanta','catherine.pietrasant...@amicar.cl',1663,'2014-09-09 01:24:37',NULL),(1382,'Johanna Coa','johanna.coa@amicar.cl',1664,'2014-09-09 01:24:37',NULL),(1383,'Rocio Bascur','roberto.munoz@amicar.cl',1665,'2014-09-09 01:24:37',NULL),(1384,'Betty Epulef','betty.epulef@amicar.cl',1666,'2014-09-09 01:24:37',NULL),(1385,'Maria Guerra','mangelica.guerra@amicar.cl',1668,'2014-09-09 01:24:37',NULL),(1386,'Leslie Delgado','leslie.delgado@amicar.cl',1670,'2014-09-09 01:24:37',NULL),(1387,'Valeria Silva','valeria.silva@amicar.cl',1671,'2014-09-09 01:24:37',NULL),(1388,'Garnica San','Gabriela.Aliquintui@amicar.cl',1673,'2014-09-09 01:24:37',NULL),(1389,'Francisco Ite','francisco.ite@amicar.cl',1674,'2014-09-09 01:24:37',NULL),(1390,'Monica Salas','monica.salas@amicar.cl',1675,'2014-09-09 01:24:37',NULL),(1391,'Claudia Oliva','claudia.oliva@amicar.cl',1679,'2014-09-09 01:24:37',NULL),(1392,'Pedro Pradenas','pedro.pradenas@amicar.cl',1684,'2014-09-09 01:24:38',NULL),(1393,'Gloria Fierro','gloria.fierro@amicar.cl',1686,'2014-09-09 01:24:38',NULL),(1394,'Ivor Bastias','ivor.bastias@amicar.cl',1687,'2014-09-09 01:24:38',NULL),(1395,'Cristian Cardenas','cristian.cardenas@amicar.cl',1689,'2014-09-09 01:24:38',NULL),(1396,'Carlos Hormazabal','carlos.hormazabal@amicar.cl',1691,'2014-09-09 01:24:38',NULL),(1397,'Lorena Agurto','lorena.agurto@amicar.cl',1693,'2014-09-09 01:24:38',NULL),(1398,'Esteban Mendez','esteban.mendez@amicar.cl',1694,'2014-09-09 01:24:38',NULL),(1399,'Camila Cordero','camila.cordero@amicar.cl',1695,'2014-09-09 01:24:38',NULL),(1400,'Hellen Miranda','hellen.miranda@amicar.cl',1698,'2014-09-09 01:24:38',NULL),(1401,'Jessica Vega','jessica.vega@amicar.cl',1700,'2014-09-09 01:24:38',NULL),(1402,'Vanessa Quezada','vanessa.quezada@amicar.cl',1703,'2014-09-09 01:24:38',NULL),(1403,'Osvaldo Silva','osvaldo.silva@amicar.cl',1705,'2014-09-09 01:24:38',NULL),(1404,'Gustavo Henriquez','gustavo.henriquez@amicar.cl',1707,'2014-09-09 01:24:38',NULL),(1405,'Mauricio Jeldres','mauricio.jeldres@amicar.cl',1708,'2014-09-09 01:24:38',NULL),(1406,'Hector Yañez','hector.yanez@amicar.cl',1709,'2014-09-09 01:24:38',NULL),(1407,'Gladys Abarca','gladys.abarca@amicar.cl',1710,'2014-09-09 01:24:39',NULL),(1408,'Jessica Gajardo','jessica.gajardo@amicar.cl',1712,'2014-09-09 01:24:39',NULL),(1409,'Daniela Aguirre','daniela.aguirre@amicar.cl',1713,'2014-09-09 01:24:39',NULL),(1410,'Claudia Osorio','claudia.osorio@amicar.cl',1714,'2014-09-09 01:24:39',NULL),(1411,'Macarena Muñoz','macarena.munoz@amicar.cl',1715,'2014-09-09 01:24:39',NULL),(1412,'Carlos Toledo','carlos.toledo@amicar.cl',1716,'2014-09-09 01:24:39',NULL),(1413,'Rodrigo Monsalve','rodrigo.monsalve@amicar.cl',1717,'2014-09-09 01:24:39',NULL),(1414,'Vanessa Alarcon','vanessa.alarcon@amicar.cl',1718,'2014-09-09 01:24:39',NULL),(1415,'Hugo Gatica','hugo.gatica@amicar.cl',1719,'2014-09-09 01:24:39',NULL),(1416,'Renato Cuevas','renato.cuevas@amicar.cl',1720,'2014-09-09 01:24:39',NULL),(1417,'Luis Huaiquimilla','luis.huaiquimilla@amicar.cl',1722,'2014-09-09 01:24:39',NULL),(1418,'Rodrigo Carabantes','rodrigo.carabantes@amicar.cl',1725,'2014-09-09 01:24:39',NULL),(1419,'Jessica Maluenda','jessica.maluenda@amicar.cl',1727,'2014-09-09 01:24:39',NULL),(1420,'Nicole Rios','nicole.rios@amicar.cl',1728,'2014-09-09 01:24:39',NULL),(1421,'Christian Henriquez','christian.henriquez@amicar.cl',1729,'2014-09-09 01:24:39',NULL),(1422,'Carolina Villarroel','carolina.villarroel@amicar.cl',1730,'2014-09-09 01:24:39',NULL),(1423,'Gonzalo Fernandez','gonzalo.fernandez@amicar.cl',1731,'2014-09-09 01:24:39',NULL),(1424,'Andrea Vergara','andrea.vergara@amicar.cl',1732,'2014-09-09 01:24:39',NULL),(1425,'Rodrigo Cordova','rodrigo.cordova@amicar.cl',1734,'2014-09-09 01:24:39',NULL),(1426,'Daniel Roa','daniel.roa@amicar.cl',1735,'2014-09-09 01:24:39',NULL),(1427,'Angelo Hernandez','angelo.hernandez@amicar.cl',1737,'2014-09-09 01:24:40',NULL),(1428,'Paula Inostroza','paula.inostroza@amicar.cl',1739,'2014-09-09 01:24:40',NULL),(1429,'Gonzalo Alvarez','gonzalo.alvarez@amicar.cl',1741,'2014-09-09 01:24:40',NULL),(1430,'Fernando Leiva','fernando.leiva@amicar.cl',1743,'2014-09-09 01:24:40',NULL),(1431,'Manuel Marino','manuel.marino@amicar.cl',1745,'2014-09-09 01:24:40',NULL),(1432,'Carla Bascuñan','carla.bascunan@amicar.cl',1747,'2014-09-09 01:24:40',NULL),(1433,'Eduardo Bravo','eduardo.bravo@amicar.cl',1749,'2014-09-09 01:24:40',NULL),(1434,'Edilma Acevedo','edilma.acevedo@amicar.cl',1751,'2014-09-09 01:24:40',NULL),(1435,'Luis Paz','luis.paz@amicar.cl',1752,'2014-09-09 01:24:40',NULL),(1436,'Ariel Aguila','ariel.aguila@amicar.cl',1755,'2014-09-09 01:24:40',NULL),(1437,'Claudia Elgueta','claudia.elgueta@amicar.cl',1762,'2014-09-09 01:24:40',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=1845 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales`
--

LOCK TABLES `locales` WRITE;
/*!40000 ALTER TABLE `locales` DISABLE KEYS */;
INSERT INTO `locales` VALUES (1600,'1 AG ALAMEDA'),(1601,'1 ANFRUNS RANCAGUA'),(1602,'10 AG MALL PLAZA TOBALABA'),(1603,'10 CARRERA'),(1604,'101 BRUNO FRITSCH GRAN AVENIDA'),(1605,'102 AG LA DEHESA MINI'),(1606,'103 H. MOTORES S.A. LA CALERA'),(1607,'103 PUIG LTDA.'),(1608,'104 FORTALEZA MALL DEL TREBOL'),(1609,'105 FORTALEZA ALAMEDA'),(1610,'106 FORTALEZA BILBAO 1'),(1611,'108 FORTALEZA LAS CONDES 2 (EX ALTRA)'),(1612,'108 NUEVOS S.A.'),(1613,'109 FORTALEZA CERRILLOS'),(1614,'11 AG MALL PLAZA VESPUCIO'),(1615,'11 CHAMY HNOS'),(1616,'110 FORTALEZA MALL PLAZA NORTE'),(1617,'111 FORTALEZA PUERTO MONTT'),(1618,'111 MOVICENTER (GEE-CHA-GWM)'),(1619,'112 PLAZA VESPUCIO (GWM-GEE-JAC-CHA)'),(1620,'113 FORTALEZA MALL PLAZA VESPUCIO'),(1621,'114 FORTALEZA OSORNO'),(1622,'115 FORTALEZA VALDIVIA'),(1623,'116 FORTALEZA LOS ANGELES'),(1624,'119 FORTALEZA TEMUCO SAN MARTIN'),(1625,'12 AG MOVICENTER'),(1626,'12 COMERCIAL VALENTINI - LA SERENA'),(1627,'120 FORTALEZA CITYTIME MALL IQUIQUE'),(1628,'121 FORTALEZA PLAZA LA SERENA'),(1629,'121 RECASUR COYHAIQUE'),(1630,'126 FORTALEZA VICUÑA MACKENNA'),(1631,'128 FORTALEZA MALL PLAZA ALAMEDA'),(1632,'128 PRO MOTORS'),(1633,'129 MEGACENTER (MAZDA)'),(1634,'13 AG PORTUGAL'),(1635,'13 COVALSA OVALLE'),(1636,'130 MEGACENTER (RNT-SMG)'),(1637,'131 AG VITACURA MINI'),(1638,'131 SUZUVAL BELLOTO'),(1639,'132 FORTALEZA VIÑA DEL MAR'),(1640,'132 PLAZA NORTE (GWM-MZD-RNT-SMG)'),(1641,'134 SERGIO ESCOBAR CNT'),(1642,'135 AUTOMOTORA BILBAO CHINOS IRARRAZABAL'),(1643,'136 FORTALEZA CITYTIME ARICA'),(1644,'138 MOVICENTER (JAC)'),(1645,'138 TUPPER (FORTALEZA)'),(1646,'139 AUTOMOTORA BILBAO MAZDA'),(1647,'139 CARMEISTER VIÑA DEL MAR'),(1648,'14 AG VITACURA'),(1649,'14 EXEQUIEL BERRIOS PUERTO MONTT'),(1650,'140 H MOTORES S.A PLAZA OESTE'),(1651,'141 DECAR HOSCHTETTER'),(1652,'141 H MOTORES BELLOTO'),(1653,'143 CURIFOR PLACILLA'),(1654,'144 MINI STORE PARQUE ARAUCO'),(1655,'145 AG SUCURSAL LAS CONDES 11.000'),(1656,'145 MEGACENTER (GWM - JAC - GEE - CHA)'),(1657,'148 DERCO IRARRAZAVAL'),(1658,'148 FORTALEZA VITACURA'),(1659,'149 FORTALEZA CANTAGALLO'),(1660,'149 YUSIC JUMBO'),(1661,'150  DERCO AUTOSHOPPING'),(1662,'150 MALL ZONA FRANCA HYUNDAI'),(1663,'151 DERCO LAS CONDES'),(1664,'151 FORTALEZA MALL PLAZA MIRADOR BIO BIO'),(1665,'153 MEDINA & BALLART'),(1666,'16 AG IQUIQUE'),(1667,'16 GUSTAVO SAAVEDRA'),(1668,'160 AG AUTOSHOPPING'),(1669,'161 FORTALEZA AUTOSHOPPING'),(1670,'164 CARMEISTER CONCEPCION'),(1671,'17 AG CALAMA'),(1672,'17 MEGACENTER (SUZUKI)'),(1673,'18 AG ANTOFAGASTA'),(1674,'19 AG AUTO PLAZA ANTOFAGASTA'),(1675,'19 MOVICENTER (MAZDA)'),(1676,'2 AG BILBAO 2'),(1677,'2 ANFRUNS - SANTIAGO'),(1678,'20 AG CONCEPCION'),(1679,'20 MOVICENTER (SZK)'),(1680,'21 AG AUTOPLAZA MALL DEL TREBOL'),(1681,'22 AG LOS ANGELES'),(1682,'23 PLAZA NORTE (SUZUKI)'),(1683,'24 AG VALDIVIA'),(1684,'24 PLAZA OESTE (MZD-SMG-RNT)'),(1685,'25 AG OSORNO'),(1686,'26 AG PUERTO MONTT'),(1687,'26 PLAZA TOBALABA (SMG-SZK)'),(1688,'27 CARMEISTER LAS CONDES'),(1689,'27 PLAZA VESPUCIO (SZK)'),(1690,'28 CURIFOR VICUNA MACKENNA'),(1691,'28 R Y R PINTO - SAN FELIPE'),(1692,'29 LIRA LARRAIN PROVIDENCIA'),(1693,'29 SANTA MARIA'),(1694,'3 ARAUCO - TALCA'),(1695,'30 SERGIO ESCOBAR MALL'),(1696,'32 CARMEISTER ANTOFAGASTA'),(1697,'34 COVALSA LA SERENA'),(1698,'34 SUZUVAL VALPARAISO'),(1699,'35 COVALSA OVALLE'),(1700,'35 SUZUVAL VIÑA DEL MAR'),(1701,'36 VIRTUAL'),(1702,'39 QUILICURA'),(1703,'4 ASPILLAGA Y HORNAUER - VIÑA DEL MAR'),(1704,'40 AUTOMOTORA FRANCIA'),(1705,'41 P. HIDALGO PAJARITOS'),(1706,'42 ANSA'),(1707,'43 AUTOS YUSIC CALAMA'),(1708,'44 SUZUVAL LA CALERA'),(1709,'45 CURIFOR BUIN'),(1710,'45 SUZUVAL SAN ANTONIO'),(1711,'46 AUTOSTOP'),(1712,'47 JESUS PONS - CURICO'),(1713,'48 SERGIO ESCOBAR PAICAVI'),(1714,'49 H. MOTORES S.A. VALPARAISO'),(1715,'5 AG CASA MATRIZ'),(1716,'50 CURIFOR CURICO'),(1717,'50 SERGIO ESCOBAR LOS ANGELES'),(1718,'51 CURIFOR CHILLAN'),(1719,'51 SERGIO ESCOBAR CHILLAN'),(1720,'52 BRUNO FRITSCH CONCEPCION'),(1721,'52 EXEQUIEL BERRIOS CASTRO'),(1722,'53 EXEQUIEL BERRIOS VALDIVIA'),(1723,'55 CHILOE MOTORES'),(1724,'55 RECASUR'),(1725,'56 BILBAO AUTOS (MICHEL MARTABIT)'),(1726,'56 TOVARIAS'),(1727,'58 AG PLAZA LA SERENA'),(1728,'59 CARMEISTER MALL PLAZA OESTE'),(1729,'6 AUTOCENTRO NICOLAS'),(1730,'60 CARMEISTER MOVICENTER'),(1731,'61 H. MOTORES S.A. LONQUEN'),(1732,'61 PLAZA OESTE (SZK)'),(1733,'62 CARMEISTER  BILBAO 1'),(1734,'63 PLAZA VESPUCIO (MAZDA)'),(1735,'66 DECAR S.A'),(1736,'7 AG LA DEHESA'),(1737,'7 AUTOMOTORA BILBAO'),(1738,'70 AG MALL PLAZA ALAMEDA'),(1739,'71 CIRCULO HYUNDAI TALCA'),(1740,'74 AG VICUÑA MACKENNA'),(1741,'75 PLAZA OESTE (GWM-CHA-JAC-GEE)'),(1742,'79 CARMONA'),(1743,'8 AG MAIPU'),(1744,'82 CAVAL TALCA'),(1745,'83 MOVICENTER (RNT - SMG)'),(1746,'84 AG VIÑA DEL MAR'),(1747,'86 DISTRIBUIDORA ROSSELOT LTDA.'),(1748,'87 GIDI LINARES'),(1749,'88 SIGLO XXI'),(1750,'89 CITYTIME MALL IQUIQUE'),(1751,'9 AG MALL PLAZA NORTE'),(1752,'9 AUTOS YUSIC ANTOFAGASTA'),(1753,'90 FORTALEZA CALAMA'),(1754,'90 PLAZA VESPUCIO (RNT-SMG)'),(1755,'91 FORTALEZA ANTOFAGASTA'),(1756,'91 JESUS PONS LINARES'),(1757,'92 AUTOS YUSIC COSTANERA'),(1758,'92 CIRCULO MANUEL MONTT'),(1759,'93 AG CERRILLOS'),(1760,'94 BRUNO FRITSCH'),(1761,'95 CIRCULO IRARRAZABAL'),(1762,'96 AG MALL PLAZA CALAMA'),(1763,'97 CITYTIME ARICA'),(1764,'98 FORTALEZA PLAZA CALAMA'),(1765,'99 FORTALEZA PLAZA ANTOFAGASTA'),(1766,'118 SERGIO ESCOBAR CARRERA'),(1767,'119 CARLOS DUMAY (GWM-GEE)'),(1768,'11 CHAMY HNOS.'),(1769,'35 SUZUVAL VIÑA'),(1770,'93 DUMAY VITACURA'),(1771,'142 SERGIO ESCOBAR PAICAVI CHINOS'),(1772,'94 BRUNO FRITSCH PLAZA SUR'),(1773,'154 BELLAVISTA SIGLO XXI'),(1774,'21 OVALLE HERMANOS'),(1775,'47 JESUS PONS CURICO'),(1776,'23 AG TEMUCO'),(1777,'20 AG CONCEPCION (AUTOPISTA A TALCAHUANO)'),(1778,'9 AUTOS YUSIC MALL ANTOFAGASTA'),(1779,'61 PLAZA OESTE SUZUKI'),(1780,'28 R Y R PINTO'),(1781,'66 DECAR S.A.'),(1782,'55 RECASUR PUNTA ARENAS'),(1783,'18 MOVICENTER USADOS'),(1784,'84 COVALSA COQUIMBO'),(1785,'36 H. MOTORES S.A. 15 NORTE'),(1786,'2 ANFRUNS SANTIAGO'),(1787,'27 PLAZA VESPUCIO SUZUKI'),(1788,'95 DEPARTAMENTAL USADOS'),(1789,'14 EXEQUIEL BERRIOS Y CIA. LTDA.'),(1790,'67 CUMSILLE SAN FERNADO'),(1791,'118 FORTALEZA MOVICENTER'),(1792,'28 CURIFOR - VICUNA MACKENNA LA FLORIDA'),(1793,'2 FORTALEZA CAMIONES PUDAHUEL'),(1794,'12 COMERCIAL VALENTINI E HIJOS LTDA.'),(1795,'37 MEGACENTER USADOS'),(1796,'69 GUILLLERMO MORALES VITACURA'),(1797,'144 COMERCIAL VALENTINI MALL'),(1798,'88 PLAZA TOBALABA (GWM-GEE-JAC-CHA)'),(1799,'519 DEMOTORES'),(1800,'147 SERGIO ESCOBAR PAICAVI USADOS'),(1801,'4 ASPILLAGA Y HORNAUER, VIÑA DEL MAR'),(1802,'11 VIRTUAL AMICAR'),(1803,'3 ARAUCO TALCA'),(1804,'112 FORTALEZA MALL PLAZA TOBALABA'),(1805,'20 MOVICENTER 4 (SUZUKI)'),(1806,'37 VEGA ARTUS RANCAGUA'),(1807,'90 PLAZA VESPUCIO ( RENAULT - SAMSUNG )'),(1808,'1 BUSES FORTALEZA PUDAHUEL'),(1809,'146 SERGIO ESCOBAR TUCAPEL USADOS'),(1810,'25 PLAZA OESTE USADOS'),(1811,'62 CARMEISTER BILBAO 1'),(1812,'102 AG MINI'),(1813,'15 CARLOS DUMAY'),(1814,'126 SERGIO ESCOBAR LOS ANGELES USADOS'),(1815,'71 MEDITERRANEO AUTOMOTORES CIRCULO HYUNDAI TALCA'),(1816,'57 CUMSILLE CASA MATRIZ'),(1817,'38 VEGA ARTUS SAN FERNANDO'),(1818,'165 FORTALEZA COZ STRANGE '),(1819,'515 IRARRAZAVAL VALENZUELA DELARZE'),(1820,'137 VESPUCIO MULTIMARCA'),(1821,'152 CARMEISTER MINI NEXT LA DEHESA'),(1822,'3 MAQUINARIAS GILDEMEISTER HUECHURABA'),(1823,'163 CARMEISTER LOS ANGELES'),(1824,'158 CARMONA USADOS'),(1825,'167 GUILLERMO MORALES PLAZA EGAÑA'),(1826,'518 AMICAR VIRTUAL NUEVOS'),(1827,'10 DERCOMAQ LA SERENA'),(1828,'125 DECAR MOTORS ( USADOS)'),(1829,'156 AUTOMOTRIZ DEPETRIS DEFLORIAN HNOS.LTDA'),(1830,'8 DERCOMAQ MELIPILLA'),(1831,'169 AG MALL PLAZA BIO BIO'),(1832,'527 AUTOMOTORA SANTA ISABEL'),(1833,'14 ASPILLAGA & HORNAUER'),(1834,'1 DERCOMAQ MATRIZ'),(1835,'526 LABBE - SPORT'),(1836,'11 DERCOMAQ COMERCIAL ERRAZURIZ'),(1837,'517 MOVIL GROUP'),(1838,'172 PORTILLO'),(1839,'146 AG SUCURSAL LAS CONDES 11.000 PREMIUM'),(1840,'7 DERCOMAQ INDUSTRIAL '),(1841,'528 SU AUTOMOVIL'),(1842,'529 CIRCULO CITROEN LIFAN'),(1843,'155 DERCOMAQ COMERCIAL ERRAZURIZ'),(1844,'524 TOCORNAL LOS ANDES');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso`
--

LOCK TABLES `proceso` WRITE;
/*!40000 ALTER TABLE `proceso` DISABLE KEYS */;
INSERT INTO `proceso` VALUES (1,'2015-04-22 20:27:21',NULL,NULL,1,1399,4712),(2,'2015-04-22 20:27:21',NULL,NULL,2,1399,4712),(3,'2015-04-22 20:27:21',NULL,NULL,3,1399,4712),(4,'2015-04-22 20:27:21',NULL,NULL,4,1399,4712),(5,'2015-04-22 20:27:21',NULL,NULL,5,1399,4712),(6,'2015-04-22 20:27:21',NULL,NULL,6,1399,4712),(7,'2015-04-22 20:27:21',NULL,NULL,7,1399,4712),(8,'2015-04-22 20:27:21',NULL,NULL,8,1399,4712);
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
) ENGINE=InnoDB AUTO_INCREMENT=5778 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (4503,'8695527K\\','JULIO PATRICIO  MUÑOZ  GOMEZ ',1766),(4504,'96846584\\','FRANCISCO ECHEVERRIA MONTENEGRO',1719),(4505,'57892897\\','ALBERTO ZELADA OLIVARES',1767),(4506,'62303794\\','ALBERTO  MAHANA LUES',1768),(4507,'12891739K\\','PATRICIO ANDRÉS OSORIO PALMA',1769),(4508,'122739228\\','MARIO ANDRES  ARAYA  BARRA',1661),(4509,'226287256\\','MIGUEL ANGEL LEON RAMIREZ',1687),(4510,'15828121K\\','FRANCISCO JAVIER ASTUDILLO PENA',1714),(4511,'233982253\\','ANDREA FERREIRO RODRIGUEZ',1770),(4512,'93336178\\','PATRICIO RIVAS LLANOS',1651),(4513,'159371808\\','EMILIO ANDRES  MIRANDA  JALAF',1609),(4514,'130683134\\','OSCAR EDUARDO MUJICA GAETE',1654),(4515,'124725135\\','MARIA ALEJANDRA ALCAYA LARA',1687),(4516,'87780929\\','RODRIGO FIDALGO SANCHEZ',1704),(4517,'155166886\\','CRISTIAN CRISTIAN .',1662),(4518,'130193196\\','JUAN PABLO FARIAS ZAMORA',1638),(4519,'119867606\\','ANA PAOLA RIVERA MUÑOZ',1713),(4520,'126408668\\','PABLO AGUSTIN  PEDEMONTE  VARELA',1648),(4521,'96525249\\','GLADYS LORENZA JARA LABRIN',1771),(4522,'98334459\\','JORGE GUILLERMO REBOLLEDO ARANCIBIA',1666),(4523,'159310019\\','NICOLAS MAURICIO  FERNANDEZ REQUENA ',1729),(4524,'129005475\\','SERGIO BENJAMIN  BRAVO  VALENZUELA',1772),(4525,'155038365\\','MARIA FERNANDA MORA REYES',1651),(4526,'143628485\\','ERICK MORENO  PALMA',1664),(4527,'128886141\\','CAROLINA ANDREA  ARMIJO LAGOS',1773),(4528,'132690715\\','RODRIGO RODRIGUEZ ALVAREZ',1774),(4529,'126568800\\','FREDDY CARRASCO PEREIRA',1734),(4530,'15350945K\\','LEONARDO ANDREE GONZALEZ RODRIGUEZ',1634),(4531,'112231242\\','MARCO LEIGHTON DELGADO',1769),(4532,'70156326\\','JOSE MIGUEL CASALS CIRER',1618),(4533,'165138236\\','LUIS GABRIEL ROBLES RIFO',1713),(4534,'86894955\\','INGRID REVILLOT BUSTAMANTE',1775),(4535,'16134933K\\','JUAN CARLOS BRICEÑO GODOY ',1757),(4536,'220260593\\','OTTO  PEREZ  BURGOS',1776),(4537,'143319067\\','MARIA INES MUÑOZ ORDENES',1601),(4538,'115379860\\','JEANNETTE ALEJANDRA ANACOLA ROBLES',1777),(4539,'11338980K\\','MAURICIO ESTEBAN SANTANDER MUNIZAGA',1648),(4540,'90903330\\','JORGE FLORES NUÑEZ',1614),(4541,'124906725\\','GEMA  DEMONTTIS  ALLENDE',1743),(4542,'142180626\\','GONZALO RICARDO   MUÑOZ  VÁSQUEZ',1778),(4543,'146025714\\','TERESA REYES GONZALEZ',1674),(4544,'139158229\\','RICARDO PATRICIO  MENESES  ALCAYAGA',1727),(4545,'105396759\\','SERGIO ALEJANDRO  MORALES  TORRES',1705),(4546,'140727024\\','LILIAN MONTECINOS  TOLOZA',1715),(4547,'138543013\\','NESTOR PATRICIO  VEGA  MUÑOZ ',1695),(4548,'173182201\\','CINCYA VALERIA URETA SELLA',1749),(4549,'144177002\\','MARCELINA ALCAINO PALLERO',1779),(4550,'227036516\\','FEDERICO ALBERT TEDIN .',1658),(4551,'129174935\\','MIGUEL EDUARDO  SAAVEDRA  BADILLA',1680),(4552,'107843078\\','ANDRES ALEXIS FIGUEROA RIQUELME',1713),(4553,'229986457\\','ANDREA MIRANDA BORQUEZ',1673),(4554,'91898640\\','ARCHIBALDO ANTONIO TYTHER ALLENDE',1602),(4555,'139112377\\','LUIS ALFONSO PALMA MARTINEZ',1743),(4556,'154203362\\','ALEX ENRIOQUE  TAPIA  CLAVIJO',1603),(4557,'135436712\\','KARLA GISSELA CASTRO BARRIOS',1698),(4558,'145985692\\','GUIDO  ZIETZKE  BUSTOS',1663),(4559,'136683861\\','NANCY HELEN  FREDES  LEDESMA',1740),(4560,'14503292K\\','CRISTIAN MATAMALA RIQUELME',1685),(4561,'107199713\\','JOSE LUIS  ESPINOZA  ESCOBAR',1727),(4562,'11850304K\\','FELIPE MUÑOZ GOMEZ',1684),(4563,'167351026\\','FRANCISCO ESTEBAN  LEPE  GONZALEZ',1719),(4564,'132724539\\','CAROLINA PAZ GUTIERREZ SALGADO',1773),(4565,'154191399\\','JOCELYN ABIGAIL  VALDIVIA  FLORES',1780),(4566,'132319286\\','MATIAS CARVALLO MC KENDRICK',1749),(4567,'136937359\\','PEDRO ANTONIO MERINO CARO',1600),(4568,'109936553\\','RICARDO LOPEZ PARDO',1781),(4569,'174333408\\','DANAE ALEJANDRA GONZALEZ FREDES',1765),(4570,'137331071\\','CINTHIA FUENTES SILVA',1781),(4571,'97910812\\','UBALDO CASTILLO FIGUEROA',1766),(4572,'126696841\\','CESAR ANTONIO  SEPULVEDA  SAN MARTIN ',1634),(4573,'103781434\\','CAROL ALICIA ESPINOZA ORTIZ',1717),(4574,'166691915\\','LILIAN MARGOT CARRILLO DIAZ',1777),(4575,'160350873\\','FERNANDO MANUEL NARANJO ALVAREZ',1698),(4576,'155568313\\','FRANCISCA PIA CUEVAS ALFARO',1698),(4577,'97478929\\','CLAUDIA ANDREA STREJELEVICH VECILLA',1769),(4578,'117976890\\','ALICIA ADRIANA QUENIBAN  VILLALONGA',1717),(4579,'112064508\\','MARCO ANTONIO SANDOVAL SANDOVAL',1705),(4580,'131495455\\','ELIZABETH ANGELICA  MARDONES  GONZALEZ',1726),(4581,'136430467\\','FRANCISCO JAVIER  QUINTEROS  CAMUS',1757),(4582,'122425665\\','RODRIGO ALEJANDRO CARDEMIL HORTA',1745),(4583,'153088675\\','KARINA OLIVER MUNOZ',1782),(4584,'7753766K\\',' ANDREA XIMENA HERMOSILLA CONTRERAS',1717),(4585,'138366715\\','SALVADOR RODRIGUEZ GATICA',1648),(4586,'124909090\\','RONALD VILLAROEL PARADA',1773),(4587,'9024132K\\','RICARDO MAURICIO ZUÑIGA MOLINA',1601),(4588,'130729908\\','DANIELA  VASQUEZ HEAP',1704),(4589,'65776499\\','MAURICIO EDUARDO  BARRIL  SANTANA',1729),(4590,'171755158\\','ALEXIS ARIEL URRUTIA CERDA',1668),(4591,'103295653\\','SANDRO ALER CARO DANYAN',1783),(4592,'143094324\\','LEONARDO ROJAS PAREDES',1707),(4593,'82202773\\','ANA LOPEZ  SANCHEZ',1775),(4594,'118730003\\','JUAN PABLO CERDA MONTECINO',1775),(4595,'179710676\\','GARY PATRICIO BAHAMONDES DIAZ',1780),(4596,'151800378\\','PAMELA ALEJANDRA  MORAGA  ZURITA',1781),(4597,'90293281\\','CARLOS HERNÁN  PALACIOS  BORIC',1784),(4598,'118647858\\','JAIME MANRIQUEZ GUERRERO',1632),(4599,'99835486\\','ALEJANDRO MARTINEZ BRIGNARDELLO',1785),(4600,'117412431\\','ROBERTO FABIAN GONZALEZ ALVAREZ',1759),(4601,'150676320\\','GUILLERMO ANDRES  RODRIGUEZ  AGUILERA',1618),(4602,'134985887\\','GUSTAVO RODRIGO  MORA  SANDOVAL',1786),(4603,'9960364K\\','JACQUELINE IVONNE SEPULVEDA  RETAMALES',1787),(4604,'95786790\\','INGRID MARLENE  VERGARA  VILLARROEL',1641),(4605,'59269682\\','ANTONIO SCHUADA ESCAFF',1650),(4606,'62266961\\','PEDRO ANTONIO  FLORES NÚÑEZ',1625),(4607,'171195160\\','VALENTINA   CURTI  FARACHI',1666),(4608,'134810394\\','ALEJANDRA  PLAZA MORALES',1619),(4609,'114153745\\','LUIS IVAN ARENAS LOPEZ',1676),(4610,'120852558\\','JESSICA KARIN VEGA GALLARDO',1623),(4611,'133362991\\','CRISTIAN EUGENIO  ALDEA SANCHEZ',1625),(4612,'145151813\\','ANTONIO NAVARRO CEA',1788),(4613,'142439026\\','KARINA HERNANDEZ RIOS',1746),(4614,'170350618\\','CLAUDIA ELIANA ABELLO SOTO',1789),(4615,'161401722\\','LILIAN REBOLLEDO FIGUEROA',1713),(4616,'80398034\\','OMAR ESTEBAN NORAMBUENA DEVIA',1684),(4617,'130275532\\','BLADIMIR GONZALO MENDOZA LOPEZ',1656),(4618,'134837438\\','CLAUDIO MARCELO  BALBOA GONZALES',1741),(4619,'120047698\\','ANA MARIA VILLALOBOS LAGOS',1766),(4620,'95848001\\','FREDDY SEGUNDO COVARRUBIAS URIOLA',1656),(4621,'126869770\\','MARCELO ARTURO OÑATE DE LA PAZ',1788),(4622,'143065014\\','CAMILO ENRIQUEZ CARIZ ALVAREZ',1790),(4623,'154512500\\','DANIEL ANGEL RAMOS NUÑEZ',1619),(4624,'141523759\\','MARISOL DEL CARMEN MARAMBIO RODRIGUEZ',1791),(4625,'4750970K\\','GERMAN ERNESTO URZUA DUPRE',1786),(4626,'120730967\\','CARLOS EDUARDO CONCHA PONCE',1681),(4627,'165817648\\','JESSICA CONSTANZA FERNANDEZ BARRAZA',1628),(4628,'167975038\\','PABLO CESAR  LLANTEN  SEPULVEDA',1636),(4629,'107506446\\','MARCELO AQUILES  CONTRERAS  MORALES',1717),(4630,'130203612\\','CLAUDIA ALEJANDRA  AROS ALVARADO',1686),(4631,'142859289\\','PAOLA MARCELA  SANDOVAL  PALLACAL',1687),(4632,'128964827\\','VENERANDO JIMÉNEZ JARA',1792),(4633,'117538176\\','CLAUDIO GONZALO  VIDAL  CEA',1787),(4634,'14194780K\\','PABLO CESAR SILVA BRENET',1676),(4635,'84478156\\','CRISTIAN GARCIA MALDONADO',1746),(4636,'116823470\\','CRISTIAN GREGORIO  VEGA  VERGARA ',1680),(4637,'106910952\\','FERNANDO ARIEL GUTIÉRREZ MELLA',1793),(4638,'150852994\\','OSCAR ANDRES ARRANZ CONTRERAS',1708),(4639,'122780783\\','PAMELA PATRICIA TORO ROMERO',1661),(4640,'106788790\\','JULIO CESAR VILAS PARRA',1669),(4641,'136720546\\','JAIME IGNACIO GUTIERREZ ARMIJO',1619),(4642,'74138616\\','JORGE OKINGHTON PARDO',1773),(4643,'122717186\\','JORGE ANTONIO  GODOY  .',1632),(4644,'123481739\\','EDUARDO DAVID  MIRANDA  IBARRA',1779),(4645,'103674603\\','FELIPE MARCEL SOLOVERA FUENTES',1776),(4646,'160921447\\','PATRICIO SILVA .',1687),(4647,'131072929\\','KAREN VENEGAS GERALDO',1713),(4648,'154277188\\','ALFREDO ANTONIO ZAMORANO PEREZ',1779),(4649,'143408647\\','DAVID ENRIQUE  ARAYA  GREEVEN ',1698),(4650,'160190108\\','SEBASTIAN IGNACIO	 SAEZ LEIVA',1794),(4651,'108456078\\','JOSÉ MIGUEL  PLAZA  BRAVO ',1779),(4652,'181491612\\','DAVID HUENCHUNAO OLMEDO',1778),(4653,'115053930\\','PAOLA RODRIGUEZ FERNANDEZ',1762),(4654,'157372890\\','CATHERINE GUTIERREZ REYES',1767),(4655,'222596904\\','FEDERICO  SINGH .',1757),(4656,'107286039\\','CARLOS CONTRERAS ZUÑIGA',1792),(4657,'17332488K\\','DANIEL ALFONSO LOPEZ NAVARRETE',1795),(4658,'104079350\\','DAVID ROMERO R',1640),(4659,'106678235\\','CLAUDIA VERONICA  FUENTES QUIROZ',1625),(4660,'100606518\\','DANIEL MARCOS GARRIDO VALLADARES',1741),(4661,'121752050\\','CARLOS ALBERTO JARAMILLO MONTECINOS',1631),(4662,'170778502\\','SARELLA JEREZ RUIZ',1708),(4663,'132446873\\','JULIO CORTES FERNANDEZ',1737),(4664,'68485290\\','HERNAN S. VELASQUEZ SOTO',1789),(4665,'76992053\\','DANIEL  CABRERA  VARELA',1619),(4666,'10470218K\\','JUAN CARLOS MELENDEX DUARTE',1650),(4667,'155912200\\','JORGE CORNEJO LANDERO',1720),(4668,'111254591\\','MARIA GRACIELA BUSTAMANTE CUADRA',1698),(4669,'83730897\\','PATRICIO EDGARDO  ROMAN  ORREGO ',1606),(4670,'130608167\\','CAROLA MEDINA CISTERNAS',1632),(4671,'86230895\\','MAURICIO JAVIER DE LA FUENTE SANTELICES',1674),(4672,'137970767\\','SERGIO ROBERTO     PEZOA  VALDERRAMA ',1695),(4673,'139464060\\','ROBERTO EDUARDO PEREZ ESPINOZA',1601),(4674,'143070549\\','MIRNA FUENTES SANTANDER',1636),(4675,'127480745\\','MAGDA ELENA AGUILERA VASQUEZ',1683),(4676,'160677880\\','NICOLÁS  SALINAS  BAÑARES ',1609),(4677,'13043956K\\','RODRIGO SALINAS IBACETA',1786),(4678,'106775621\\','RUBEN EDUARDO MENDEZ ESTAY',1772),(4679,'16206021K\\','CRISTINA SOLEDAD HASSE AGUILAR',1753),(4680,'80864213\\','JAVIER CRISTIAN  FIGUEROA  PALACIOS ',1639),(4681,'160187433\\','LUIS FELIPE  MUÑOZ  CROQUEVIELLE.',1796),(4682,'78711000\\','MIGUEL  VILLEGAS OLIVERA',1652),(4683,'140134708\\','ALEX  ROMAN  UGALDE',1601),(4684,'76288720\\','JUAN CARLOS  INOSTROZA  SANCHEZ ',1698),(4685,'120982621\\','ESTELA ELIZABETH CABEZAS FUENTES',1681),(4686,'142639475\\','KARINA LORETO TELLO PAEZ',1797),(4687,'136066986\\','KARINA  VIVANCO  SALGADO',1781),(4688,'59508067\\','EDUARDO ARELLANO DIAZ',1601),(4689,'243858070\\','RENE ROLANDO DE LOS RIOS SUAREZ',1616),(4690,'7812119K\\','FRANCISCO JAVIER MUÑOZ ESPINOZA',1602),(4691,'96391897\\','NATACHA ANDREA ESPINOZA MANCILLA',1629),(4692,'154562087\\','LUIS ALBERTO VILLEGAS VILLEGAS',1779),(4693,'132110662\\','MIGUEL ANGEL FALCON ANACONA',1798),(4694,'12235024K\\','PAOLA BUTTO .',1799),(4695,'9996927K\\','VICTOR MANUEL MOLINA GUZMÁN',1601),(4696,'55700184\\','JULIO FERNANDO CISTERNAS TRONCOSO',1795),(4697,'15491952K\\','CRISTHIAN FELIPE BARRIA LOYOLA',1719),(4698,'127334986\\','CRISTIAN ALBERTO TAPIA BAHAMONDES',1717),(4699,'102787536\\','LUIS RUBEN ROA ROA',1800),(4700,'110468334\\','LEANDRO OSSANDON .',1663),(4701,'104095577\\','EDUARDO  FERNANDEZ  PINTO',1789),(4702,'130821901\\','ARIEL  ORELLANA SALAZAR',1687),(4703,'105122713\\','HECTOR DELGADO ILLANES',1750),(4704,'97186804\\','PABLO ANDRES TOBAR ARAVENA',1801),(4705,'85253603\\','JUAN CARLOS  NAVARRETE  MENDEZ ',1624),(4706,'101710939\\','LUIS ALBERTO  QUEZADA LEIVA    ',1721),(4707,'151025\\','CLAUDIA CASTRO PRUEBA',1802),(4708,'12025295K\\','CHISTIAN TOLEDO LARA',1769),(4709,'162696564\\','SERGIO VIVEROS SERRAS',1803),(4710,'126888430\\','JUAN RODRIGO VIGOUROUX FLORES',1773),(4711,'133121692\\','RODRIGO ENRIQUE LOPEZ  BUSTOS',1670),(4712,'16108672K\\','CRISTIAN MAURICIO VIGOR ACUÑA',1695),(4713,'154144714\\','CARLOS PATRICIO RIQUELME IBARRA',1650),(4714,'65591413\\','VICTOR FUENTEALBA DIAZ',1688),(4715,'144542169\\','LEONARDO RODRIGO SALAS FUENTES ',1628),(4716,'13968348K\\','LUIS GABRIEL  DELGADO  MUÑOZ',1686),(4717,'155800275\\','CAROLINA ANDREA CATRIL BARRIENTOS',1782),(4718,'146976182\\','ROSALYNN TOLEDO MENDIOLA',1804),(4719,'173944799\\','JOSE GUILLERMO DIAZ CONTRERAS',1766),(4720,'12289102K\\','CAROLINA DEL CARMEN  BECAR  AGÜERO',1805),(4721,'86278065\\','ENRIQUE GUILLERMO  DIAZ  DONOSO',1785),(4722,'67148894\\','PAULINA ANGELICA FRICKE BIANCHI',1641),(4723,'79864595\\','ALEJANDRA CRISTINA  BURRELL GUZMAN',1620),(4724,'165095103\\','FRANCO STEFANO BALLARINI LEON ',1698),(4725,'101472019\\','NORMA JACQUELINE  ROA  VENEGAS',1743),(4726,'128702849\\','ROBERTO CONCHA JERIA',1650),(4727,'153682305\\','PATRICIO ALEJANDRO SANCHEZ ABARCA',1632),(4728,'87299635\\','RAMON VASQUEZ SEPULVEDA',1789),(4729,'139967070\\','RODOLFO EDUARDO AHUMADA IGLESIA',1769),(4730,'13758736K\\','ROMINA KAREN  CARRENO CONTRERAS',1715),(4731,'138383776\\','KARIN LUZ DIAZ VASQUEZ',1655),(4732,'170467000\\','CRISTOBAL ALONSO RAMIREZ ALARCON',1771),(4733,'125803563\\','XIMENA ELIANA  SAN MARTIN  AGUILERA',1603),(4734,'131449763\\','MARISEL ANDREA RAMOS  QUEZADA',1681),(4735,'84525022\\','MARCO ANTONIO ESTAY BANDA',1798),(4736,'130212638\\','DANILO ANDRES  ROSALES  ORTIZ',1714),(4737,'160930748\\','MARCELO ANTONIO ARROCHAS PEREZ',1667),(4738,'76598584\\','HERIBERTO CORNEJO DIAZ',1806),(4739,'77774904\\','LEANDRO ROBERTO OSSANDON MARTINEZ',1693),(4740,'85211501\\','PATRICIO  YAÑEZ   DINAMARCA',1613),(4741,'156291676\\','BRAULIO ANDRES  REYES  FREIRE',1681),(4742,'123003098\\','ALICIA ANDREA MAUREIRA ORTEGA',1671),(4743,'136571567\\','NELSON ANDRÉS GALLARDO BANDA',1705),(4744,'152994591\\','ALEX CONTRERAS MORALES',1686),(4745,'103574242\\','CARLOS RENE SILVA RAMOS',1638),(4746,'98649786\\','JUAN CARLOS MATAMALA QUIJON',1701),(4747,'15526229K\\','JAIME ALONSO GONZALEZ MUÑOZ',1696),(4748,'120110047\\','TOMAS MARCELO  CASTRO  CONCHA',1727),(4749,'122713539\\','MAURICIO ANDRES ALARCON DONOSO',1701),(4750,'141197975\\','SEBASTIAN ANDRES SANZ VELIZ',1663),(4751,'130351182\\','SANDRA PAMELA PEREZ HENRIQUEZ',1650),(4752,'103768489\\','MANUEL  SAEZ  ALARCON',1807),(4753,'21618310K\\','ALVARO NICOLAS VALDES PINO',1612),(4754,'130928501\\','MARCELO  VILLABLANCA .',1718),(4755,'118927338\\','JUAN MANUEL RETAMAL .',1803),(4756,'130320694\\','MAURICIO  OLIVA  POBLETE ',1612),(4757,'141757075\\','GENARO ANDRES FARIAS MUÑOZ',1765),(4758,'116160536\\','GUILLERMO NUÑEZ .',1778),(4759,'156516236\\','OTTO ULBRICH HERRERA',1781),(4760,'47707854\\','ARTURO CRUZAT GALLARDO',1737),(4761,'141618547\\','FRANCISCA  NUÑEZ  MOLINA',1787),(4762,'164897907\\','MACARENA NIETO RANDOLPH',1778),(4763,'159710564\\','JOHANS PESCHKE .',1614),(4764,'165608399\\','JOHN CACERES .',1738),(4765,'176454407\\','ORNELLA MARISOL  VILLARROEL  GONZALEZ',1780),(4766,'117964639\\','MANUEL EDUARDO MORA DELGADO',1695),(4767,'5788021K\\','SAMUEL WERNER ESCOBAR OLMOS',1705),(4768,'145847354\\','ESTEBAN FELIPE VERDEJO ZUÑIGA',1797),(4769,'12050147K\\','PAOLA ANDREA ROZAS PORRIGA',1755),(4770,'141206710\\','ANDRES FELIPE LLADSER BEAUMONT',1729),(4771,'177569321\\','JUAN PABLO DE LA FUENTE VALDERRAMA',1630),(4772,'78809191\\','JUAN ENRIQUE PENA GOYCOLEA',1601),(4773,'117368823\\','CLAUDIA ANDREA  WELCH  PETIT',1769),(4774,'131341571\\','MICHELLE  GUZMAN  MASSOGLIA',1720),(4775,'88850564\\','LEONOR DEL CARMEN  TOLOZA  MARTINEZ ',1722),(4776,'145586143\\','CARLOS PUENTE MANZANO',1785),(4777,'143946517\\','IGNACIO GALARCE JARA',1612),(4778,'132422559\\','HUGO RENAN SEPULVEDA SOTO',1624),(4779,'129620986\\','CARLOS ADRIAN  CASTILLO  SILVA',1601),(4780,'152673973\\','BRIGIDA  MELO QUEZADA',1672),(4781,'93973801\\','SERGIO THIENEL .',1766),(4782,'99943459\\','ENRIQUE  MORALES CARRERA',1737),(4783,'143636070\\','MANUEL ALEJANDRO RAMIREZ MILLACURA',1682),(4784,'136758705\\','LUIS PEÑALOZA ACEVEDO',1738),(4785,'92739503\\','RODRIGO ALFREDO CERNA LAGOS  CERNA LAGOS ',1608),(4786,'167045685\\','LAURA ECHEVERRIA DEL POZO',1778),(4787,'16208285K\\','NICOLAS BERGUECIO OESTERHOLM',1684),(4788,'91032279\\','RICARDO ENRIQUE ANDAUR DURAN',1776),(4789,'116417839\\','OMAR  ROCCO  TORO',1604),(4790,'96836309\\','GIORGIO DANIEL OBILINOVIC MARTINIC',1782),(4791,'68929016\\','JUAN CARLOS DIAZ RODRIGUEZ',1676),(4792,'101236323\\','MARLENE  CÁCERES .',1730),(4793,'153321574\\','ERASMO FORTUNATO  LOPEZ DELLACASA',1618),(4794,'130688047\\','RAUL ANDRES SEPULVEDA ALVARADO',1612),(4795,'85349236\\','SILVIA MAGDALENA  SANDOVAL  VILLARROEL',1751),(4796,'150699932\\','EDGARDO ARIEL SALINAS VEAS',1673),(4797,'12659304K\\','CARLA PEÑA MONTES',1767),(4798,'96176805\\','EDMUNDO  LECAROS TORRES',1607),(4799,'128083901\\','CLAUDIA ANDREA TORO ZUÑIGA',1701),(4800,'104674666\\','JUANA TAPIA DIAZ',1707),(4801,'80382146\\','MARISOL  CANGAS  GANDELLA',1639),(4802,'107974490\\','ALEJANDRO DANIEL RAMIREZ   OLIVA ',1600),(4803,'10512919K\\','CLAUDIO FRANCISCO BARRIA OJEDA',1782),(4804,'155746904\\','ANA KAREN JIMENEZ ACUÑA',1635),(4805,'77709665\\','PABLO MANUEL APABLAZA MILLAO',1808),(4806,'143005151\\','MARIO GONZALO LAGOS BECERRA',1674),(4807,'142951711\\','MARÍA ESTELA MUÑOZ LARA',1719),(4808,'106578745\\','JUAN LUIS PIZARRO MORENO',1729),(4809,'155185732\\','ROBERTO CARLOS SANCHEZ VALANECIA',1680),(4810,'108591471\\','DANIEL OSVALDO  PIZARRO GARATE',1750),(4811,'63872253\\','MANUEL VENEGAS RETAMALES',1644),(4812,'126362854\\','ADELQUI RODRIGO CAMPOS GARCIA',1675),(4813,'122194841\\','MARISOL PATRICIA  VALDIVIA  BASCUÑAN',1697),(4814,'132414181\\','JEAN PAUL THUILLIER ARAOS',1714),(4815,'126606230\\','AGUSTIN BARRIOS QUEZADA',1625),(4816,'138971856\\','GABRIEL ENRIQUE CHEREAU AYALA',1633),(4817,'101612996\\','JUAN ESPINOZA .',1665),(4818,'13669670K\\','LUIS  ANTONIO  OGAZ',1688),(4819,'173586302\\','DANIELA ALEJANDRA PISÓN CIFUENTES',1725),(4820,'143404633\\','ANGELA MARGARETT  BARRERA .',1791),(4821,'104459463\\','MONICA XIMENA  GUTIERREZ  RODRIGUEZ ',1612),(4822,'170859375\\','ANDRES IGNACIO  ALFARO PRADO',1737),(4823,'124857791\\','CARLOS  VALENZUELA  CARVAJAL ',1601),(4824,'155060778\\','DAISY KAREN RAMIREZ MILLACURA',1702),(4825,'118762932\\','LILIAN ARAVENA  .',1619),(4826,'156024759\\','JORGE FELIPE CABRERA CORONADO',1796),(4827,'87867277\\','JORGE TOUTIN CATALDO',1801),(4828,'109469637\\','ESTEBAN RODRIGO MARDONES DIAZ',1601),(4829,'165323718\\','MARIA FERNANDA MORA REYES',1651),(4830,'71575926\\','JUAN CARLOS MONTOYA SEGOVIA',1720),(4831,'208996622\\','GIANCARLO  FROHLICH  CERDA',1672),(4832,'137095742\\','RODRIGO ANDRES POLONI LOPEZ',1684),(4833,'114527505\\','MARCELO  SOTO  ORTIZ',1781),(4834,'81072841\\','ROBERTO AGUAYO FREIRE',1809),(4835,'11628605K\\','MAURICIO ALFONSO CARRASCO SOZA',1746),(4836,'12734275K\\','FIDEL ALEJANDRO  VALENZUELA  RIQUELME',1695),(4837,'138420493\\','JEANNETTE  CRISTINA  ALBORNOZ ',1803),(4838,'152620314\\','RODRIGO ANTONIO  HERNANDEZ BUSTOS',1781),(4839,'176454466\\','JOSE  OSORIO  CARVAJAL',1780),(4840,'198091049\\','FRANCISCO JAVIER GONZALEZ MUÑOZ',1651),(4841,'125238475\\','PAMELA SOLANGE GUTIERREZ OLIVARES',1695),(4842,'89615119\\','PATRICIO ALBERTO CARRASCO MOLINA',1796),(4843,'12394108K\\','MARCOS  YAÑEZ  LANGER',1601),(4844,'188016553\\','KARIN MARCELA RIFFO OVIEDO',1622),(4845,'75140606\\','SERGIO MARIO  GONZALEZ  NEIRA',1795),(4846,'149076484\\','ALEJANDRA LORENA HERRERA RIQUELME',1809),(4847,'165958616\\','GODOFREDO ANTONIO MONARDES CARVAJAL',1697),(4848,'18149266K\\','NATALIA ANDREA FUENZALIDA GODOY',1673),(4849,'15698003K\\','WILLIAMS ESTEBAN GALAZ DUARTE',1790),(4850,'96774990\\','CRISTIAN VEGA LEIVA',1787),(4851,'108538317\\','SANDRA LEON GONZALEZ',1642),(4852,'166570700\\','ROBERTO REYES MARCELLI',1749),(4853,'143718417\\','GERSON RODRIGO  ULLOA  SUAZO',1803),(4854,'154662278\\','LUIS ALAMOS JARA',1791),(4855,'130902022\\','RODRIGO ALBERTO GALVEZ BUSTOS',1708),(4856,'131550014\\','GUIDO EMILIO  CARTES  AQUEVEQUE',1781),(4857,'118526198\\','GIANNINA PAOLA  CHELSI  MEDINA',1715),(4858,'128547126\\','CRISTIAN  GONZALEZ CESPEDES',1675),(4859,'123730445\\','JAIME ENRIQUE  MOYA  CERDA ',1756),(4860,'132943923\\','RODRIGO ESTEBAN GALAZ BUSTOS',1642),(4861,'156219770\\','GUSTAVO EDUARDO  BECERRA  SERRANO ',1729),(4862,'97167184\\','CARLOS EXEQUIEL  SALDAÑA  LEON ',1601),(4863,'158776111\\','EDUARDO CARRASCO GONZALEZ',1719),(4864,'132660948\\','ARIEL LEANDRO LUENGO RODRIGUEZ',1810),(4865,'164585786\\','GEORGINA DEL CARMEN MORALES .',1762),(4866,'86044986\\','RAÚL ARROYO SOZA',1660),(4867,'120357956\\','JOSE LUIS VIDAL ERPEL',1672),(4868,'111859183\\','FRANCISCO ALBERTO VASQUEZ DUARTE',1644),(4869,'166399742\\','IVAN EDUARDO HORNOS VALDES',1644),(4870,'168617860\\','FELIPE ANDRES LIZAMA ESPINOZA ',1625),(4871,'168126778\\','IRIS ANGELICA  RODRIGUEZ  AGUILERA',1644),(4872,'132718911\\','MARIA SOLEDAD MORALES MOLINA',1795),(4873,'97673055\\','SERGIO  VELIZ  MUÑOZ ',1675),(4874,'150241197\\','RICARDO MANSILLA ROJAS',1765),(4875,'137224666\\','MACARENA AGUILERA REYES',1644),(4876,'9618834K\\','JOHN MARIN  DUCAUD',1788),(4877,'68465710\\','FERNANDO PATRICIO CAMPOS BRAMMBILLA',1745),(4878,'121428555\\','EMILIANO BECERRA LESSER',1807),(4879,'139437993\\','YERSON LEONARDO  REYES  SILVA',1783),(4880,'90040596\\','ARTURO ROJAS RAMIREZ',1810),(4881,'153307814\\','ANDREA CAROLINA CAMPOS SEPULVEDA',1668),(4882,'80490933\\','LUIS TAPIA FERNANDEZ',1636),(4883,'157012568\\','RODRIGO ANDRES  CORONADO  SEVERINO',1614),(4884,'134675926\\','LEONARDO ANDRES SAGAS CACERES',1791),(4885,'83870923\\','LIVIA VARGAS TAPIA',1805),(4886,'164757811\\','MANUEL ALEJANDRO MALDONADO  ARANEDA',1741),(4887,'158197944\\','MICHAEL BAYRON CORDERO FARIAS',1779),(4888,'58618349\\','HUGO GALVEZ PEÑA',1783),(4889,'15936688K\\','FRANCISCO JAVIER CANTO NAREA',1619),(4890,'162823515\\','CRISTIAN BELLO MELO',1664),(4891,'131128592\\','SERGIO ANDRES FERNANDEZ DONETCH',1628),(4892,'152516444\\','JONATTAN  TRAMALEO SOTO',1805),(4893,'141180703\\','JAVIER ALEJANDRO GAMBOA FRANCHI',1791),(4894,'14460010K\\','MAURICIO ANTONIO VALENZUELA  CALDERON',1618),(4895,'116597128\\','CESAR ANTONIO  MADRID  VARGAS',1625),(4896,'134512997\\','FRANCISCO JAVIER  GÁLVEZ  NAVARRO',1614),(4897,'126322291\\','JULISSA ROSSANNA CISTERNAS TOBAR',1772),(4898,'136625659\\','PABLO ALEJANDRO GALLARDO ARENAS',1633),(4899,'64981927\\','ALBERTO EDUARDO ARCE ARREDONDO',1650),(4900,'60173494\\','CECILIA SANINO SCHEGGIA',1675),(4901,'157699032\\','ANDRES JAVIER JOFRE  GONZALEZ',1778),(4902,'116332817\\','PAOLA SOLANGE  ORREGO  RIVANO',1687),(4903,'13663254K\\','RICARDO PAOLO OVIEDO GUTIERREZ',1618),(4904,'224215908\\','LUIS ALBERTO  URANGO  ANGULO',1741),(4905,'139105001\\','JESSICA ANTONIETA  NIETO  HERRERA ',1682),(4906,'226137521\\','HENRY PARRA MARTINEZ',1791),(4907,'141647598\\','BERNARDO ANDRES FIGUEROA ALARCON',1684),(4908,'115689266\\','MANUEL ALEJANDRO  MUÑOZ  POLANCO  ',1664),(4909,'11960558K\\','ROBERT DECAR CEA',1650),(4910,'131121865\\','NICOLAS MILLAN PEIGNAN',1675),(4911,'152931336\\','JAVIER ANTONIO MATUS JIMENEZ',1805),(4912,'126408056\\','JESSICA ALBA AREVALO SALGADO',1805),(4913,'118536037\\','VIRGILIO OSORIO MONTENEGRO',1810),(4914,'145682762\\','FERNANDO  HERRERA  PACHECO ',1798),(4915,'157062603\\','CESAR  YUPANGUI  CELEDON',1684),(4916,'96693958\\','RODOLFO DURAN SOUR',1650),(4917,'103586607\\','JORGE ANTONIO CAMPOS MEDINA',1684),(4918,'154612955\\','CESAR GONZALEZ FARIAS',1728),(4919,'172737862\\','DAVID ALBERTO  MORENO  VELASQUEZ',1652),(4920,'11864669K\\','FRANCISCO JAVIER IBARRA  MIRANDA',1783),(4921,'102759753\\','CAROLINA  FINCH ENCINA',1674),(4922,'120994255\\','FRANCISCO PARRA HIDALGO',1745),(4923,'133301569\\','ROBINSON ALBERTO RIVERA MICHEA',1727),(4924,'93333438\\','CLAUDIO GERARDO TOLEDO PINILLA',1779),(4925,'138753263\\','ANDREA  MARIN  PASTEN',1628),(4926,'123748697\\','CLAUDIO ALBERTO MUNOZ FUENTES',1612),(4927,'140056995\\','GERARDO LARA BERRIOS',1779),(4928,'134955589\\','JENNY CAROL  CORONADO  CONTRERAS',1640),(4929,'15790194K\\','JOSÉ PATRICIO  MUÑOZ  GONZALEZ',1734),(4930,'145540135\\','LUIS ADOLFO CARROZA VARGAS',1764),(4931,'158481316\\','JUAN CARLOS ROMERO ROMERO',1804),(4932,'12404684K\\','JUAN ANTONIO SALAZAR ARANCIBIA',1672),(4933,'154367764\\','ALAN MONTERO .',1804),(4934,'10165981K\\','PEDRO PABLO  VICUÑA  CALFIN ',1640),(4935,'164194760\\','PATRICIO ORLANDO FLORES LORCA',1650),(4936,'116961237\\','PAOLA ANDREA PEREZ LEON',1779),(4937,'145274761\\','HUGO ESTEBAN GUERRERO CONTRERAS',1810),(4938,'116388138\\','MARCOS  RETAMAL .',1798),(4939,'122078280\\','JOSE LUIS VALLADARES AYALA',1680),(4940,'105702485\\','MARCOS AURELIO ECHEVARRIA LAVADO',1741),(4941,'104068960\\','FELIX  ARTURO OSSES VERA',1684),(4942,'128104836\\','JORGE ALEX  SANCHEZ PIZARRO',1728),(4943,'87607380\\','MARCELO  ECHENIQUE  FERRANDO',1738),(4944,'141437321\\','JULIO IGNACIO CID LISPERGUER',1650),(4945,'136123890\\','MABEL PIZARRO CABRERA',1632),(4946,'141517775\\','HECTOR FELIPE LETELIER PINCHEIRA',1625),(4947,'141481967\\','MICHELLE SILVA SEMBLER',1661),(4948,'126679653\\','JAIME ADRIAN ITURRIAGA VALDENEGRO',1672),(4949,'153552541\\','CAROLINA HEIDI MANDUJANO UDAETA',1751),(4950,'89208114\\','NORMA PATRICIA BOLELLI QUINTEROS	',1811),(4951,'159592995\\','DOMINIQUE  DUMAY NEHGME',1812),(4952,'131848293\\','RAUL RIVERA MAUNA',1770),(4953,'157492578\\','MARCIAL CAMPOS TOSELLI',1718),(4954,'83924314\\','HECTOR DIAZ GALINDO',1789),(4955,'6982790K\\','MARIA CAROLINA MOZO VERGARA',1655),(4956,'133172939\\','JOSE PEDRO PEÑA HORMAZABAL',1601),(4957,'211847662\\','JESSICA  MINA  NAZARENO',1710),(4958,'141117688\\','ANDRES ALFARO PIÑA',1778),(4959,'86518082\\','RUTH MURTON CUEVAS',1789),(4960,'14252659K\\','YALILE OMAR PEREZ',1606),(4961,'124880181\\','BENJAMIN HOWARD SCHATZKE',1813),(4962,'97344078\\','RICARDO ALEJANDRO PIZARRO MUÑOZ',1722),(4963,'77412972\\','MARIA INES  RAMIREZ ATRIA',1607),(4964,'11590843K\\','LEONARDO ANDRÉS  GARRIDO  MEDINA',1633),(4965,'51949382\\','JULIO ENRIQUE SANHUEZA LATORRE',1675),(4966,'101769836\\','CARMEN LUISA ZAPATA GUTIERREZ',1773),(4967,'119436540\\','MARCELA DEL CARMEN  GODOY  VILLALOBOS',1747),(4968,'164909182\\','ANDREE IGNACIO VALDERRAMA JOFRE',1814),(4969,'128723358\\','ARIEL GIOVANNE FARIAS AMEBA',1702),(4970,'123706439\\','IVÁN RODRIGO  QUEZADA  ROJAS ',1756),(4971,'162709879\\','MARCOS  ROJAS  IMAZ ',1815),(4972,'157995707\\','ALFREDO BRICEÑO GÓMEZ',1751),(4973,'130088864\\','FRESIA LORNA CASTILLO ILAJA',1711),(4974,'103197953\\','MATIAS CLARK VILLEGAS',1654),(4975,'140405302\\','ESTEBAN  RIOS  STANGE',1789),(4976,'127015317\\','CRISTIAN  AROCA  SALAZAR',1771),(4977,'160550767\\','IVETTE ANDREA GONZALEZ ROCCO',1816),(4978,'150892449\\','ANGELA VICTORIA ROJAS URIBE',1710),(4979,'139011449\\','ROBERTO RUIZ PEREZ',1657),(4980,'86847337\\','IRENE DEL CARMEN  VARGAS  SALGADO ',1698),(4981,'169738246\\','RAUL ESTEBAN  VERGARA  ROSALES',1775),(4982,'150842085\\','PABLO ANDRES MONDACA CABRERAS',1794),(4983,'226424520\\','CLAUDIA ROCIO COBOS SUESCUN',1625),(4984,'136347861\\','CAROLINA ALVAREZ .',1616),(4985,'158941864\\','CRISTIAN ALBERTO VILLEGAS ESCOBAR',1783),(4986,'151132545\\','EDGARDO  ROSALES  DONOSO ',1817),(4987,'159213129\\','JULIO ANTONIO  REYES  OLAVE',1756),(4988,'70576686\\','BENJAMIN  HENRIQUEZ NEGRON',1725),(4989,'165240278\\','CLAUDIA SALINAS .',1709),(4990,'111252904\\','TOMAS MAURICIO  PARDO  VASQUEZ',1635),(4991,'104302998\\','FELIPE COZ CRUZAT',1818),(4992,'100926172\\','DARIO VICTOR FUENTES ARAYA',1642),(4993,'111153116\\','JAVIER DANIEL  SIMAO CERON ',1722),(4994,'110271921\\','JOSE ARTURO ISLA VILO',1807),(4995,'124789427\\','JIMENA MAUREIRA CORTES',1632),(4996,'244714714\\','VICTOR ALFONSO GUZMAN SANCHEZ',1729),(4997,'105566271\\','RICARDO ANDRÉS  ORTIZ  VERGARA',1803),(4998,'145644135\\','CRISTIAN RODRIGO ROJAS VILCHES',1662),(4999,'70430215\\','ROBERTO GATEÑO FUX',1644),(5000,'137035669\\','MARIELA ANGELINA BARRIENTOS PEREZ',1769),(5001,'117658090\\','JOSE MIGUEL VALDES ARELLANO',1725),(5002,'170927168\\','ANDREA FERNANDA  SALAZAR CORDOVA',1707),(5003,'87837734\\','MONICA DE LAS MERCEDES  MARDONES  MORIS',1734),(5004,'132409293\\','NICOLAS VELASCO HERMAN',1612),(5005,'124629462\\','JUAN FRANCISCO MORA RODRIGUEZ',1805),(5006,'88632478\\','CRISTIAN ANDRÉS  GUZMÁN  ORELLANA',1675),(5007,'137804697\\','JOHANA CORINA  FREDES  CANTILLANA',1682),(5008,'153043655\\','CHAIN SILVA .',1665),(5009,'51997727\\','JUAN  LARRAIN CAGNANOTTI',1813),(5010,'164758028\\','VANIA DEL PILAR  OCARANZA  CANNOBBIO',1634),(5011,'112075747\\','JUAN ENRIQUE GALVEZ OSORIO',1788),(5012,'72799526\\','ANELISE  BIESE  RODRIGUEZ',1655),(5013,'138307441\\','KRISTHOFER ORELLANA SANCHEZ',1612),(5014,'127761558\\','RICARDO LETELIER VERGARA',1633),(5015,'11847399K\\','RODRIGO EDUARDO  ENCINA  LACABARAT',1751),(5016,'216740025\\','MANUEL  CARBAJAL FAL',1745),(5017,'156720720\\','EDUARDO EUGENIO MARTINEZ RUBILAR',1713),(5018,'107542981\\','CARLOS ALBERTO SAEZ LAZO',1800),(5019,'122260682\\','OSCAR SOTO GALVEZ',1657),(5020,'135128872\\','JUAN MARCELO ULLOA SAEZ',1670),(5021,'134706317\\','BÁRBARA ELENA  ROJAS  BRAVO ',1745),(5022,'15831567K\\','FELIPE  SEPÚLVEDA  SEPÚLVEDA',1797),(5023,'122500330\\','JORGE OPAZO LEYTON',1772),(5024,'125239951\\','BARBARA PALMA MORAGA',1720),(5025,'141872656\\','VICTOR VALENTI?N MELLA GARRIDO',1620),(5026,'116427850\\','RAQUEL SOFIA  POBLETE  ÀVALOS',1650),(5027,'169243034\\','JORGE EDUARDO  ALARCON ARISMENDI',1734),(5028,'17167106K\\','HERNÁN HERNANDEZ .',1619),(5029,'137328429\\','VICTORIA GUERRA MARTÍNEZ',1750),(5030,'137115441\\','GUILLERMO ANTONIO DE LA VEGA SEPULVEDA',1805),(5031,'136788957\\','RICARDO LAZCANO ARMSTRONG',1731),(5032,'120539078\\','CRISTIAN FABIAN MENDOZA AILLON',1695),(5033,'153121796\\','ALVARO ANTONIO  ORTIZ  BUGUENO',1788),(5034,'118849744\\','FABRICIO RAMIRO  OSORIO TORO',1741),(5035,'16558516K\\','BARBARA ASTRID FULLER SANCHEZ',1620),(5036,'166566711\\','MARIA RENE RIVERA  ESCALANTE',1674),(5037,'103577381\\','MARCELA IVONNE VARGAS AREVALO',1769),(5038,'108219785\\','DAVID MARCO ANTONIO TORO PACHECO',1714),(5039,'87406172\\','MAURICIO  CHAHUAN  BACHUR',1768),(5040,'106677441\\','MAURICIO HERNAN JARA SOTO',1787),(5041,'124615607\\','PAMELA ALEJANDRA CORTES ASTUDILLO',1650),(5042,'63795712\\','FERNANDO CEBALLOS PIZARRO',1734),(5043,'120136593\\','MANUEL EDUARDO  SALCEDO  QUEZADA',1809),(5044,'106660883\\','FARID STUARDO JACOB DUBO',1635),(5045,'123416198\\','MARITZA EMILIA  HECHENLEITNEN  MARTÍNEZ',1749),(5046,'94917212\\','MARCELO ENRIQUE GANA ORROÑO',1716),(5047,'79665711\\','SERGIO RAUL PAVEZ ALCAINO',1813),(5048,'98260641\\','NELSON GERARDO SAGREDO PAEZ',1780),(5049,'137558440\\','ERNESTO ANDRES BAHAMONDES PINO',1785),(5050,'11907584K\\','ALFREDO EUGENIO COTAL CHAVEZ',1776),(5051,'131720114\\','MONICA AVILA COPA',1707),(5052,'242474449\\','MAURICIO ALOMIA ALDANA',1759),(5053,'143525368\\','ALEJANDRA CAROLINA VASQUEZ INOSTROZA',1604),(5054,'110658230\\','JESSICA  PARRA PARRA',1657),(5055,'167066046\\','SERGIO IVAN VALDIVIA MELLA',1660),(5056,'78410582\\','MANUEL ANTONIO VALLEJO MANTEROLA',1730),(5057,'9752601K\\','JOSE LUIS  LANTADILLA MALTES',1644),(5058,'170969863\\','MÓNICA ASTORGA QUIÑONES',1627),(5059,'60699089\\','DANIEL TAMIN JURI AGAR',1650),(5060,'157943731\\','MAURICIO DEMARCHI MUÑOZ',1650),(5061,'134482923\\','WALTER RIVERA CALQUIN',1650),(5062,'105488521\\','JAIME EDUARDO CESPEDES FERNANDEZ',1795),(5063,'74361242\\','MIGUEL VILLEGAS PEREZ',1783),(5064,'142463156\\','SERGIO MAURICIO  AMPUERO  PARRA ',1783),(5065,'83934204\\','MARCELO IVAN PIZARRO CAMPOS',1659),(5066,'95771327\\','ALFONSO VALPUESTA LAZCANO',1737),(5067,'72200888\\','ERIKA TRUJILLO GONZALEZ',1710),(5068,'12875220K\\','RICHARD  MARTINEZ DONOSO',1705),(5069,'90957295\\','ISIDORO GUILLERMO  RODRIGUEZ  .',1736),(5070,'85853899\\','JACQUELINE DEL CARMEN MORENO ROJAS',1792),(5071,'116862808\\','JOHN WILFREDO  NORAMBUENA  ANGULO',1607),(5072,'105350023\\','DAVID ALEJANDRO   VICENCIO  HERRERA',1650),(5073,'145244404\\','KARINA  MENDEZ CARDENAS',1738),(5074,'9177979K\\','EVELYN LEIVA PAREDES',1801),(5075,'105881363\\','CAROLINA ARNDT LEIMBACH',1812),(5076,'143259277\\','DANILO GAJARDO .',1716),(5077,'170245946\\','MILENKO CORNEJO .',1607),(5078,'151279759\\','PATRICIA REYES FARIAS',1693),(5079,'125151663\\','JORGE MARCELINO MERINO FUENTES',1806),(5080,'135757977\\','CRISTIAN MAURICIO RODRIGUEZ QUIROZ',1715),(5081,'70084260\\','PATRICIO CUMSILLE PIDDO',1816),(5082,'102655931\\','RODRIGO ALFREDO CASTAGNETO URBINA',1801),(5083,'73805503\\','ZVONIMIR TANIS KOSCINA VARGAS ',1789),(5084,'15919518K\\','EVA MANRÍQUEZ GUTIÉRREZ',1774),(5085,'85145126\\','HECTOR ESTEBAN  DURAN CORNEJO',1801),(5086,'85744267\\','CRISTIAN ANDRES RAMOS CABAGNARO',1698),(5087,'137396882\\','VICTOR HERNAN GARRIDO PACHECO',1624),(5088,'126361335\\','RODRIGO  VELASQUEZ  ORTIZ',1786),(5089,'71645797\\','MAURICIO YELPO VILLEGAS',1818),(5090,'101105687\\','EDUARDO ALFREDO BORQUEZ ESPINOZA',1780),(5091,'160544104\\','RODRIGO ANDRES RODRIGUEZ NARVAEZ',1794),(5092,'169414564\\','MARTIN ANDRES  HOCES  CELIS ',1601),(5093,'134263512\\','ALEXIS ALBERTO VILLALOBOS CISTERNA',1785),(5094,'86100177\\','RONALD PEDRO SOTO BELTRAN',1777),(5095,'140041742\\','HECTOR PATRICIO ARELLANO ROMAN',1749),(5096,'128827846\\','GONZALO ALFREDO DÍAZ SANHUEZA',1629),(5097,'100941457\\','RODOLFO ANDRES  JIMENEZ ORTIZ',1816),(5098,'130441165\\','ROBERTO ARISTIDES FUENTES TAPIA',1692),(5099,'134967544\\','ALFREDO ALEJANDRO  FLORES  SEPULVEDA',1805),(5100,'112661921\\','JAIME ALEJANDRO GAETE AGUILERA',1770),(5101,'128277625\\','PATRICIO ANTONIO CORNEJO GOMEZ',1698),(5102,'8666075K\\','EDUARDO GALVEZ  AVARIA',1807),(5103,'10236628K\\','CLAUDIA MARCELA  ZALAQUETT FUENTE-ALBA',1784),(5104,'153951578\\','CARLOS  DIAZ  MACHUCA.',1613),(5105,'65754002\\','OSCAR LAGOS SILVA',1606),(5106,'102846095\\','MARINKA XIMENA  ASTETE BECERRA',1737),(5107,'172831397\\','FABIAN CARVAJAL ZEPEDA',1737),(5108,'116546795\\','JULIETTE CAROL VALENZUELA CATRIFOL ',1616),(5109,'139170504\\','MARIO HAIDAR   HAMER  VALENZUELA',1759),(5110,'132826129\\','LEONARDO FELIPE MIRANDA BADE',1602),(5111,'121667819\\','ANGELA RIVERA GALVEZ',1666),(5112,'164702855\\','FRANCISCO SATELICES .',1798),(5113,'145836824\\','JENY MARCELA REYES OLIVARES ',1801),(5114,'142726742\\','JUAN FRANCISCO       MARTÍNEZ  HENRÍQUEZ   ',1741),(5115,'132752427\\','FERNANDO ALFREDO MARTINEZ CONTRERAS',1813),(5116,'142538792\\','PATRICIA SANTA ANA ARANCIBIA',1639),(5117,'138471969\\','EDGAR NADIR FIERRO MARDONES',1683),(5118,'77487743\\','RUBEN SALAZAR CERDA',1601),(5119,'108654732\\','ROBINSON AURELIO  BASTIAS ALVAREZ ',1721),(5120,'126705832\\','ERICK PATRICIO CASSANOVA LEIVA',1787),(5121,'73145538\\','JAIME ENRIQUE OPAZO CANTILLANA',1728),(5122,'106380716\\','IVAN JAVIER MARINOVIC ZAVAE',1782),(5123,'107349987\\','DENIS RIVERA DONOSO',1613),(5124,'115418971\\','CESAR ANDRES  HERMOSILLA BETANCOURT',1685),(5125,'119752566\\','CARLOS FABIAN SANHUEZA SANHUEZA',1644),(5126,'157612557\\','MARIA JOSE  NARANJO NAJARI',1749),(5127,'81235287\\','MANUELA EDITH GALLARDO RODAS',1705),(5128,'142596822\\','CARLOS ACEVEDO BRAVO',1600),(5129,'125281222\\','FREDERIC ANTONIO BON LEAL',1670),(5130,'90016083\\','CARLOS ALBERTO ARAVENA VEGA',1796),(5131,'151274005\\','JUAN MEJIAS .',1716),(5132,'136694189\\','FRANCO MENGARELLI .',1741),(5133,'76977240\\','FERNANDO  PONTIGO  MERELLO ',1796),(5134,'87086593\\','CLAUDIO CONTRERAS MENA',1749),(5135,'92152723\\','NICOLAS KURTE VALDIVIA ',1780),(5136,'129389354\\','DARWIN BORIS  GATICA  MONTENEGRO',1729),(5137,'145570360\\','ROSA  VARGAS HERNANDEZ',1801),(5138,'151818994\\','CLAUDIO RODRIGO  BEDDINGS  SOBINO  ',1776),(5139,'80267975\\','ESTEBAN COX FERNANDEZ',1768),(5140,'10849073K\\','JUAN SEGUNDO BASCUÑAN ROSALES',1731),(5141,'128569952\\','CLAUDIO ALEJANDRO CARDENAS GALVEZ',1610),(5142,'92843122\\','PATRICIO ALEJANDRO  SOTO  CARIAGA',1608),(5143,'139905350\\','MAXIMILIANO ALFONSO JELDRES ARANCIBIA',1617),(5144,'12052285K\\','ALVARO CAMPOS HERMOSILLA',1687),(5145,'150488184\\','PAULINA  RAMIREZ CANELO',1655),(5146,'134994614\\','ALVARO  LOBOS  GALLEGUILLOS',1715),(5147,'96563299\\','DOMINGO ANDRES PELDOZA ALAMOS',1666),(5148,'150851432\\','LUIS ANTONIO VASQUEZ VARAS',1606),(5149,'10939257K\\','CECILIA CANDIA RETAMAL',1740),(5150,'53192270\\','LUCY CHAMY ESPER',1768),(5151,'75593848\\','MARCELO BARADIT LOPEZ',1801),(5152,'115454668\\','ZULEMA ZUÑIGA SOTO',1721),(5153,'53192262\\','NANCY CHAMY ESPER',1768),(5154,'165684338\\','JORGE TORREJON MADARIAGA',1709),(5155,'139817281\\','MARCO	 RAMIREZ	 ARAYA',1698),(5156,'164714209\\','JONATAN DAVID FUENTES SILVA',1736),(5157,'760\\','JAN BARENDS SCHEU',1789),(5158,'166625300\\','ANGELA LA ROSA ARAYA ',1625),(5159,'51193407\\','HERNAN  VALENZUELA REAL',1801),(5160,'136650165\\','MANUEL JESUS SABAG ORMAZABAL',1782),(5161,'156882623\\','LUIS OSVALDO  MARTÍNEZ  MARTÍNEZ',1789),(5162,'11574593K\\','ALEJANDRA FIGUEROA GONZALEZ',1719),(5163,'130633854\\','IVAN RUDOFF SALFATE QUILAQUEO',1819),(5164,'136774905\\','HÉCTOR GABRIEL  BUGUEÑO  PACHECO',1772),(5165,'85290908\\','CARLOS MAURICIO VERA GOMEZ',1782),(5166,'108658673\\','RODRIGO SEPULVEDA .',1812),(5167,'10211065K\\','RODRIGO SILVA  CATALAN',1705),(5168,'104119255\\','MIGUEL ANGEL FABIA CARMONA',1774),(5169,'150646480\\','GUILLERMO GONZALO  SÁEZ  MOLINA',1801),(5170,'167661122\\','LORENA GONZALEZ GAJARDO',1608),(5171,'13711254K\\','MARIO JESÚS ZEVALLOS CHAVEZ',1684),(5172,'127977461\\','RENATO PIAGGIO AGUAYO',1654),(5173,'150709946\\','JULIO LOPEZ FERNANDEZ',1652),(5174,'126469985\\','ALEJANDRA MORENO MENDEZ',1682),(5175,'11663015K\\','DANIEL SALGADO PAREDES',1768),(5176,'100173077\\','CHRISTIAN CARLOS PERUCCI ALARCON',1746),(5177,'55744149\\','ALFREDO MARIO  SUAZO  BOZA',1758),(5178,'71185265\\','JOAQUIN SUAREZ CASTILLO',1646),(5179,'161716987\\','DANIEL ANTONIO CASTAÑEDA ESPINA',1810),(5180,'176243015\\','CLAUDIO ANDRÉS  PLAZA  IBACACHE',1784),(5181,'139155750\\','CLAUDIA ALEJANDRA BARRERA FUENTES',1604),(5182,'109913901\\','JUAN PABLO CUMSILLE BECERRA',1816),(5183,'156063665\\','ALEJANDRO ALFREDO  SANTORO MORA',1613),(5184,'162458531\\','MANUEL POOL NORAMBUENA',1789),(5185,'132710775\\','MARCEL ALEJANDRO ROCHET VASQUEZ',1648),(5186,'107128336\\','CAROLINA ALEJANDRA  NUÑEZ  AGUILERA',1763),(5187,'125507581\\','GABRIEL ORTIZ VALDES',1718),(5188,'165818334\\','EDUARDO SEBASTIAN FELIPE ESPINOZA GUERRA',1784),(5189,'85205579\\','HERNAN FRANCISCO  MORENO  VEGA',1813),(5190,'163073897\\','ALEXIS ADOLFO  ESPINOZA GUERRA',1697),(5191,'99839724\\','ALVARO CRISTIAN ROGEL RIQUELME ZUÑIGA',1722),(5192,'15503954K\\','FELIPE ALEXIS ELLIS MUÑOZ',1665),(5193,'124413648\\','PATRICIA ARACELY  ARAYA  VELASCO',1755),(5194,'157986651\\','DANIELA CERDA FARIAS',1633),(5195,'155162511\\','RODRIGO ANTONIO  CARCAMO CACERES',1612),(5196,'187868955\\','DANIEL ALEXIS  SANTIBAÑEZ  ALVARADO',1671),(5197,'168683928\\','YARERLA YAHIRA  ARAYA  ARAYA',1753),(5198,'56443533\\','ALLAN ROBERTSON SCHNEIDEWIND',1698),(5199,'141356852\\','RONALD IVAN  FERREIRA  FARIAS',1612),(5200,'150227178\\','CAROLINA  ALEGRÍA .',1757),(5201,'150642108\\','KAREN ANDREA RUIZ CACERES',1801),(5202,'133051066\\','MAURICIO  RIFFO MARTÍNEZ',1803),(5203,'93606833\\','ALAMIRO ENRIQUE SILVA ROJAS',1744),(5204,'151100902\\','EDUARDO ANDRES  MIRANDA  VERGARA ',1817),(5205,'113377453\\','JUAN FERNANDO  SANDOVAL  REYES',1761),(5206,'10984926K\\','HERCSON ERANTE HUBE MORALES',1647),(5207,'124648416\\','ERICK PATRICIO CASANOVA LEIVA',1820),(5208,'74602959\\','JERKO ADRIAN FRANULIC RODRIGUEZ',1709),(5209,'138644588\\','XIMENA ALEJANDRA   BASY-GALUP  PINO ',1763),(5210,'151065104\\','NICOLAS SEPULVEDA FIGUEROA',1601),(5211,'131333404\\','DANIELA ALEJANDRA  MARISIO DIPPEL',1720),(5212,'100917009\\','KARIN MARCELA RIFFO OVIEDO',1683),(5213,'109684759\\','YASNA DANAC  FONSECA  NAVARRETE',1764),(5214,'168657854\\','JONATHAN TERAN .',1627),(5215,'128528547\\','XIMENA IVONE GUITART FERNANDEZ',1777),(5216,'62239530\\','VICTOR HUGO HERNANDEZ DUCHENS',1728),(5217,'200011414\\','MANUEL ZAMBRANO .',1802),(5218,'122496090\\','CAROLINA LORENA  FUENTES ENCINA',1636),(5219,'153545871\\','MIGUEL ALEJANDRO SOLIS LARA',1684),(5220,'88724194\\','ORIETTA BUSTAMANTE PIZARRO',1701),(5221,'169735336\\','DIEGO FELIPE PEREZ ALLENDES',1803),(5222,'92055752\\','JUAN JAIME  TRONCOSO QUINTEROS',1803),(5223,'108674806\\','JULIO                   BASLY PAREDES  ',1725),(5224,'105401086\\','CARLOS RODRIG  BIJIT  SAGREDO',1801),(5225,'150359309\\','ANA KARINA VILLALOBOS DONOSO',1729),(5226,'118305884\\',' LUIS RODOLFO  VELIZ  ALCAÍNO ',1652),(5227,'131567006\\','CARLA  LARA  MELLA',1781),(5228,'115079409\\','DANILO ARMANDO  CORTES  GUTIÉRREZ',1797),(5229,'14310883K\\','KATHERINE PATRICIA  CUELLO  TRUJILLO',1794),(5230,'122188175\\','CLAUDIA ORREGO .',1789),(5231,'104498752\\','NICOLAS CRISTOBAL  VARGAS HERRERA',1633),(5232,'158209721\\','MARCOS IGNACIO  CÉSPEDES   GONZALEZ',1646),(5233,'13842572K\\','RODRIGO ANDRÉS ACUÑA PIINCHEIRA',1718),(5234,'168382324\\','ALEXIS LOBOS MORALES',1821),(5235,'99442549\\','ANTONNELLA LEIVA RABAEL',1789),(5236,'10930283K\\','ALVARO GONZALO  HERMOSILLA  KOSCHITZKY',1725),(5237,'129733837\\','LORENA MENDEZ FUENTES',1767),(5238,'114142832\\','ERCILIA DEL CARMEN ITURRIAGA SANTANA',1721),(5239,'131308957\\','PAOLA ELIZABETH GONZALEZ FUENTES',1731),(5240,'149001085\\','FRANCISCO JAVIER HERRERA BLANCO',1612),(5241,'174839220\\','CESAR OSVALDO CANO REYES',1775),(5242,'88612922\\','DANIEL HUMBERTO  LOBOS  DONOSO',1792),(5243,'104498868\\','ESTEBAN VARGAS H',1646),(5244,'152953569\\','BÁRBARA ANDREA  CASANOVA  VERA',1688),(5245,'126363435\\','FELIPE JULIAN CASTILLO VERA',1794),(5246,'167667953\\','JORGE REINALDO  REBOLLEDO  ACUÑA',1758),(5247,'155158638\\','BEATRIZ ALEJANDRA SALVO VENEGAS',1665),(5248,'139639693\\','CARLOS TRONCOSO .',1665),(5249,'14252211K\\','RODRIGO IVAN HUERTA KEITEL',1769),(5250,'122174972\\','EDUARDO GINO VELIZ MONTENEGRO',1660),(5251,'115734687\\','CARLOS SAEZ .',1766),(5252,'161117927\\','NATHALIE MIROSLAVA ETCHEVERRY JULIAN',1769),(5253,'144847857\\','RODRIGO  GARRIDO  CASTILLO',1803),(5254,'78979534\\','JORGE EDUARDO  FRIANT  GAVILAN',1741),(5255,'65235366\\','INGRID  ROHDE CALDERON',1769),(5256,'99115130\\','VICTOR MANUEL  SALINAS  BUSTAMANTE ',1709),(5257,'138935590\\','PEDRO ACUÑA .',1802),(5258,'16324134K\\','DANIEL FELIPE JOPIA SAAVEDRA',1794),(5259,'158420708\\','RAUL EDUARDO POBLETE MARTINEZ',1737),(5260,'117617041\\','GEMITA  MUÑOZ  VELIZ  ',1794),(5261,'128836039\\','PABLO OSVALDO  SÁEZ  GONZALEZ',1636),(5262,'74818676\\','INGRID  HIDALGO LOPEZ',1635),(5263,'125950132\\','ALEX MAURICIO ARENAS GOMEZ',1617),(5264,'130409385\\','ANGELINA FABIOLA SOSSA BARAHONA',1794),(5265,'131136099\\','CLAUDIA  OLIVEROS OVALLE',1651),(5266,'126076010\\','ELSON SALVADOR VEGA ESPINOZA',1627),(5267,'93189582\\','MARIA PATRICIA DEL CARMEN GOMEZ BUENO',1803),(5268,'89884470\\','ADRIANA ELBA PALACIOS GONZALEZ',1729),(5269,'11878118K\\','CARLOS ANTONIO  AHUMADA RUBIO',1723),(5270,'122259226\\','MARCELO GIOVANNI MARÍN ARAYA',1638),(5271,'157071696\\','CRISTIAN RODOLFO  GONZALEZ  MILOS',1758),(5272,'125596363\\','JUAN PABLO  JELDRES  VEGA',1758),(5273,'69899250\\','MONICA SOFIA AMALIA  ZALAVARI   DE-MATTEIS',1646),(5274,'134241381\\','SANDRA ANDREA BONILLA PERALTA',1794),(5275,'135715743\\','GONZALO RUZ QUEZADA',1740),(5276,'179396459\\','FRANCISCA DAYANNE  RODRIGUEZ IRIARTE',1757),(5277,'141100335\\','PATRICIO LEAL DEVIA',1757),(5278,'79938491\\','JORGE SELIM SAMUR TUMA',1811),(5279,'138630153\\','ALEJANDRA PEDREROS VALENZUELA',1643),(5280,'98911944\\','MILTON DAZA PACHECO',1644),(5281,'87709167\\','ROBERTO ANDRES SEPULVEDA TORRES',1791),(5282,'162190962\\','ENRIQUE  RODRIGUEZ  APARICI',1718),(5283,'10768199K\\','JOSÉ LUIS  PIZARRO SANTIBAÑEZ',1744),(5284,'158074370\\','RICARDO ELIAS  ARENAS  MUÑOZ',1673),(5285,'11792274K\\','ANDRES  FAUNDEZ FAUNDEZ',1815),(5286,'14296953K\\','WALTHER HERNAN ROJAS CORTES',1794),(5287,'92198383\\','MARIANA CAROLINA  LETERIER BESSERER',1667),(5288,'125727638\\','PATRICIA ALEJANDRA ROJAS CORTES',1697),(5289,'145349699\\','CARLOS ALBERTO ORTIZ GONZALEZ',1720),(5290,'138690091\\','RODRIGO GUSTAVO  QUIROZ  MONDACA',1783),(5291,'93715322\\','ISABELLA ALLENDE MANTILLA',1757),(5292,'152838492\\','ALEJANDRO EDUVINO VARGAS VILLARROEL',1685),(5293,'166294703\\','FRANCESCA FRIDA  MEDINA ZUÑIGA',1614),(5294,'11922053K\\','WILLIAM MARCELO ANCAR  ICARTE',1725),(5295,'107365915\\','CARLOS JOSE ANDRADES REYES',1803),(5296,'151120601\\','VICTOR ALONSO RUZ GUERRERO',1737),(5297,'138299457\\','DANIEL FERNANDO OSORIO SOZA',1630),(5298,'154584250\\','RIENZI HERNAN  MUÑOZ  MORALES',1603),(5299,'141629352\\','JONATHAN CALDERON CEREÑO',1792),(5300,'87614751\\','JOSE ARNALDO AHUMADA BUSTOS',1639),(5301,'9798090K\\','JORGE  BRAVO VERA',1737),(5302,'153404666\\','ALEXIS ANDRES  ESPINOZA CUBILLOS',1730),(5303,'87073351\\','GUILLERMO ENRIQUE ESPINOZA GALLARDO',1711),(5304,'98994572\\','CARLOS EUGENIO CUADROS SALDIAS',1667),(5305,'166959594\\','LUIS ZEVALLOS .',1801),(5306,'126269021\\','VICTOR  BRUCE  CARVAJAL ',1708),(5307,'85299697\\','ALEJANDRO  HORMAECHEA  KEIM',1769),(5308,'136761285\\','PAULA LORETO MEJIAS RAVEST',1659),(5309,'120066463\\','MARCELO ALBERTO DIAZ VASQUEZ',1782),(5310,'156923230\\','OSCAR MAURICIO  AGUAYO  MORA',1656),(5311,'151813488\\','FELIPE ALEJANDRO	 OPAZO	 TORRES',1664),(5312,'137143763\\','VERONICA  AHUMADA  MEDINA',1740),(5313,'113204648\\','INGRID  MARTINEZ BARRUETO',1815),(5314,'128666842\\','JOAQUIN OVALLE .',1808),(5315,'134689072\\','ERNESTO MERINO CONTRERAS',1774),(5316,'160326662\\','MARIO CORNEJO .',1792),(5317,'106211531\\','CRISTIAN  MARTINEZ RADISIC',1796),(5318,'88649133\\','FRANCISCO AVALOS MATUS',1813),(5319,'153813590\\','JOSE LUIS MARTINEZ MADRID',1637),(5320,'145075386\\','CARLOS RODRIGO VALENCIA INOSTROZA',1769),(5321,'155043032\\','ANDREA SOLEDAD MIRANDA  MIRANDA',1673),(5322,'133862684\\','CRISTIAN ACUÑA JARA',1815),(5323,'97882959\\','SERGIO FERNANDO PRADO GUZMAN',1812),(5324,'168015275\\','CAMILO ALBERTO ZUÑIGA FIGUEROA',1714),(5325,'117490718\\','ALFREDO SANCHEZ PACHECO',1822),(5326,'179808528\\','MARCO ANTONIO MEJIAS ACEVEDO',1775),(5327,'6554590K\\','LUIS  ORMAZABAL  BARRRIGA',1792),(5328,'158104806\\','PATRICIO ANDRES CONTRERAS BECERRA',1823),(5329,'139741854\\','GIOVANNI  PATRICIO ORDENES GALLARDO',1824),(5330,'107450742\\','ANAHI ARENAS CAMACHO',1765),(5331,'80420064\\','MARIELLA VICTORIA HERNANDEZ  ABARCA',1794),(5332,'141369407\\','OSCAR JACOB SEN',1676),(5333,'156676012\\','CRISTIAN  BARRIOS .',1684),(5334,'137048299\\','ÁLVARO  VERA  GARRIDO',1640),(5335,'79043435\\','ADRIANA  PELEN DE GREGORIO',1713),(5336,'94872995\\','MARGARITA BERNARDA CANTALLOPTS SUSARTE',1612),(5337,'107540369\\','PABLO EULOGIO ROMERO OLIVARES',1635),(5338,'158661543\\','SANDY NATALIE MALDONADO VALDES',1801),(5339,'67012011\\','RAUL GALLARDO OSORIO',1822),(5340,'134743158\\','JAVIER PALACIOS MANSILLA',1610),(5341,'141081640\\','IVAN ALEX      ABARZUA  DIVASTO',1711),(5342,'55857717\\','JULIO OSVALDO FUENTES  MAZZOLA',1744),(5343,'134569492\\','VICTRO ALBANO RIOSECO HERRERA',1612),(5344,'211982667\\','CESAR SEPULVEDA .',1802),(5345,'164835936\\','DANIEL  RUBILAR  SILVA',1746),(5346,'152987579\\','MARTA ARIELA VIDAL VARGAS',1617),(5347,'121047012\\','JUAN CARLOS  FIGUEROA  HERRERA',1610),(5348,'105928408\\','MARCO ANTONIO ZAMORANO ZAPATA',1665),(5349,'165669916\\','JAIME FELIPE LEAL PEÑA',1809),(5350,'128616381\\','CLAUDIA ALEJANDRA MEDINA ACEVEDO',1669),(5351,'158227029\\','JORGE OCARANZA CAMPUSANO',1610),(5352,'167940749\\','FELIPE LAGOS .',1665),(5353,'133203567\\','PABLO ANDRES YOBÁNOLO MARTINEZ',1607),(5354,'13377713K\\','HENRY ANDRES CAMPOS  SEPULVEDA',1686),(5355,'172831389\\','CRISTOPHER ANTONIO CARVAJAL ZEPEDA',1642),(5356,'108184256\\','FELIPE MERELLO LOZANA',1801),(5357,'11612808K\\','IVAN ALFONSO SOTO  RIQUELME',1743),(5358,'100738570\\','JORGE EDUARDO NAVARRO RODRIGUEZ',1629),(5359,'98812199\\','RENE ADOLFO RUIZ ARELLANO',1806),(5360,'10069686K\\','DANICA  TRECIC  CASTRO',1758),(5361,'161162256\\','ANNE MARIE MORALES HERRERA',1786),(5362,'96924828\\','HUGO FABIAN GALINDO GALINDO',1621),(5363,'131613989\\','MARCIA ALEJANDRA  DE LA PARRA  VARGAS  ',1825),(5364,'86975203\\','THOMAS MOLLINGER .',1655),(5365,'143687961\\','MARCELO ALEJANDRO FUENTES MELGAREJO',1602),(5366,'90651056\\','BRIAN PATRICK BIEHL  SALDIAS',1779),(5367,'118199294\\','IVAN NAVARRO MONTECINO',1801),(5368,'127718865\\','CLAUDIO MAURICIO  CORTES  ORTEGA',1792),(5369,'184639831\\','FELIPE CASTRO CARMONA',1730),(5370,'143264580\\','FERNANDO GARROZ .',1716),(5371,'102344987\\','ANA MARIA  ECHEÑIQUE  DEL REAL ',1603),(5372,'124704324\\','JUAN FRANCISCO RODRIGUEZ GUAJARDO',1731),(5373,'108285923\\','SIVER ALEX PONCE ACOSTA',1604),(5374,'113908653\\','SANDRO ANTONIO SILVA MARIQUEZ',1619),(5375,'92258521\\','PEDRO JAVIER  BARRIOS RESTOVIC',1635),(5376,'5742981K\\','SERGIO MANUEL  ANTUNEZ ACHONDO',1796),(5377,'88158644\\','GERARDO SAUL RIFFO VELOSO',1665),(5378,'137445182\\','ITALO VALENTINO BENAVIDES',1825),(5379,'134692588\\','PABLO SEBASTIAN TERMINI ARANCIBIA',1604),(5380,'115931555\\','MARCELO ZENTENO ECHEVERRIGARAY',1792),(5381,'108531940\\','WILLIAM GUAJARDO SALAZAR',1787),(5382,'98504214\\','JAVIER ALEJANDRO FIERRO ISLA',1665),(5383,'149068821\\','PEDRO ANDRES ACUÑA BARROS',1826),(5384,'198856959\\','VENDEDOR VIRTUAL .',1607),(5385,'133168133\\','SANDRA VASQUEZ .',1665),(5386,'139309901\\','JAIME EDUARDO VALDEBENITO NOVOA ',1631),(5387,'78969113\\','JAIME ANOTNIO  MOLINEIRO  BAEZA',1607),(5388,'124704219\\','JUAN IGNACIO BALLART GAJARDO',1665),(5389,'138375943\\','LUIS FABIAN BARRIOS CALDERÓN',1810),(5390,'139765230\\','TOMAS MAURICIO  PARDO  VÁSQUEZ',1699),(5391,'221687876\\','ANA CAROLINA PEREZ-CIGOY  PEREZ-CIGOY ',1713),(5392,'235921561\\','GUSTAVO ADOLFO BEYTIA CENTENO',1791),(5393,'102411633\\','MARJORIE IVONNE ACUÑA ROMERO',1792),(5394,'157798308\\','SHIRLEY ALLISON  CROCKETT DONOSO',1772),(5395,'153508038\\','VIDAL POBLETE OYARCE',1796),(5396,'9070897K\\','JULIO MENESES MARQUEZ',1720),(5397,'79136107\\','FRANCISCO  ANFRUNS BARROS',1786),(5398,'133015469\\','HILDA CERDA  RICHARDS',1806),(5399,'170005546\\','MARCIA OSSES .',1825),(5400,'126516347\\','ROBERTO CARLOS MATAMALA EPULEF',1693),(5401,'16764659K\\','VICTOR ANDRES COFRE ASCENCIO',1641),(5402,'128707557\\','FABIAN CARTER MARCHANT ',1792),(5403,'52606764\\','ALVARO   SAAVEDRA JORQUERA',1793),(5404,'63927139\\','MARIO LARA PONCE',1709),(5405,'107506535\\','MARCELO LOAIZA SALGADO',1653),(5406,'91712776\\','JORGE  MANOLI  NAZAL',1777),(5407,'231818871\\','JAIME CAZENAVE .',1827),(5408,'91799197\\','CARMEN ROSA  NUÑEZ  DROGUETT',1654),(5409,'107479341\\','CARLOS  PARRA  SANHUEZA',1781),(5410,'166388139\\','JUAN CARLOS CARO .',1825),(5411,'103379040\\','ALEJANDRO JAVIER ORTLOFF RUIZ-CLAVIJO ',1779),(5412,'156151793\\','CRISTIAN ANDRES ESCOBAR RIOS',1695),(5413,'108517107\\','CLAUDIA  OLIVEROS  OVALLE ',1828),(5414,'134514981\\','DANIELA CECILIA GUTIERREZ MORAGUES',1609),(5415,'153400466\\','NATALIA ALEJANDRA REYES ALVAREZ',1607),(5416,'67016823\\','CARLOS ORLANDO ACEITON CASTRO',1769),(5417,'12504655K\\','ALEX EDGARDO CONTRERAS .',1602),(5418,'68165970\\','JUAN ANDRES CALLEJA MACERA',1715),(5419,'117096696\\','IVONNE MARCELA GONZALEZ URIBE',1621),(5420,'138739155\\','JUAN FRANCISCO  SOTO  VILLALOBOS',1829),(5421,'136130978\\','JUAN IGNACIO  BECERRA ESCALONA',1803),(5422,'10706592K\\','PABLO ANDRES KOH LAVERGNE',1665),(5423,'139755332\\','OSCAR ANTONIO RAMOS CORTES',1635),(5424,'109800589\\','GUSTAVO ALEJANDRO  DUPRE ABURTO',1714),(5425,'137311399\\','RICARDO ANDRES ESPINOZA TORRES',1665),(5426,'166821665\\','MARIO  CORNEJO  HERREA',1611),(5427,'136619799\\','GONZALO RODRIGO CUEVAS BOWN',1830),(5428,'107125892\\','ERIC  DIAZ REYTZ',1792),(5429,'84207861\\','CHRISTIAN MORALES .',1718),(5430,'15283912K\\','KARLA MARIN LONCOMILLA',1722),(5431,'143896188\\','ALEXIS OLIVARES .',1815),(5432,'161467847\\','JASNNE CASTRO ROA',1758),(5433,'8485347K\\','MAURICIO BARROS ROJAS',1665),(5434,'138869156\\','DANIEL ALEJANDRO GONZALEZ MUÑOZ',1625),(5435,'100328828\\','CLAUDIO CELIS ORTIZ',1785),(5436,'103857910\\','CECILIA FIGUEROA ALIAGA',1829),(5437,'178589458\\','MARIA FRANCISCA  ECHAGÜE  AZOCAR',1825),(5438,'9379821K\\','LUIS HERNAN ALVAREZ  VALENZUELA',1607),(5439,'12073279K\\','PAOLA ALEJANDRA  LEIVA  LEIVA',1641),(5440,'10768509K\\','MAURICIO ANTONIO GONZALEZ RETAMAL',1727),(5441,'161989452\\','GERMAN ANTONIO CATRINAO MUÑOZ',1644),(5442,'139476522\\','VENDEDOR VIRTUAL RM',1802),(5443,'69491278\\','JORGE FERNANDEZ SEGUEL',1731),(5444,'103533309\\','ELBA BARRIA OYARZUN',1721),(5445,'154195823\\','SAMI IVAN GARDIA PRICE',1607),(5446,'101734889\\','CRISTIAN RAMIRO LANAS WLACH',1692),(5447,'157564188\\','SUSAN VERONICA	 CARRILLO	 SAEZ',1720),(5448,'157964488\\','FELIPE PEÑA CASTILLO',1793),(5449,'187424070\\','ROQUE NICOLAS CARVAJAL CARVAJAL',1696),(5450,'121936534\\','ARIEL FIGUEROA LASSALLE',1665),(5451,'131037872\\','DANIEL ADOLFO LAUCIRICA  COHN',1713),(5452,'165278313\\','FRANCO MANZO URRIOLA',1709),(5453,'9087165K\\','JOSE MIGUEL NUÑEZ ROSALES',1825),(5454,'159895343\\','FRANCISCO JAVIER GONZALEZ MUÑOZ',1828),(5455,'70531860\\','RODRIGO GUMERCINDO  MARTINEZ  .',1756),(5456,'103041783\\','ALDO JAVIER ALBORNOZ ALLENDE',1653),(5457,'131672187\\','RONNIE IVAN CAULLE KAISER',1793),(5458,'87000230\\','RODRIGO GUSTAVO CARDENAS SOTO',1782),(5459,'107154833\\','MARCELO ALEJANDRO LAVIN MANSILLA',1789),(5460,'221589122\\','GABRIEL RAMIREZ .',1802),(5461,'11123017K\\','SERGIO HERNAN GUTIERREZ NAVARRETE',1638),(5462,'116059037\\','ERIKA ALEJANDRA GUTIERREZ LARA',1784),(5463,'213865285\\','LILIANA DELIA HEIM',1789),(5464,'11815262K\\','HERNAN ENRIQUE ARAYA MEDALLA',1794),(5465,'78006595\\','KARIME  CHAMAL ESPINOZA',1779),(5466,'141121367\\','RODRIGO ANDRÉS  SAN MARTIN  BARROS ',1660),(5467,'138949508\\','LUIS ESTEBAN  MOYA  ESPINOZA',1822),(5468,'16503516K\\','JOSE MIGUEL CONSTANZO MACHUCA',1675),(5469,'55617392\\','FELIPE VALENZUELA CARVAJAL',1747),(5470,'13968172K\\','ESTEFANIA GONZALEZ REYES',1789),(5471,'130262775\\','ANDREA CAROLINA RAMBALDI ROMERO',1612),(5472,'103084490\\','PATRICIA MARGARITA  BUSTOS BUSTAMANTES',1662),(5473,'93378717\\','ALONSO PALACIOS MORAGA',1607),(5474,'166809517\\','WALDO ARIEL RAMIREZ MENDEZ',1768),(5475,'76674353\\','FERNANDA MORA .',1828),(5476,'13322775K\\','ELSE HILDEGARD GRUNEWALD AHRENS',1789),(5477,'145355788\\','MARIO JAIME ILLANES CISTERNAS',1672),(5478,'163558203\\','FRANCISCO OSHSENIUS SIEVERT',1688),(5479,'111852162\\','CRISTIAN  FAURE  GONZALEZ',1742),(5480,'54311664\\','ALBERTO TIARA ARBUCH',1725),(5481,'137874423\\','FRANCESCO ANDRES GONZALEZ ESPINOZA',1815),(5482,'124546109\\','FELIPE ANDRES AGURTO LETELIER',1693),(5483,'145771625\\','MAURICIO MUÑOZ DIAZ',1757),(5484,'128616373\\','CHRISTIAN ALEJANDRO GREGORIO DE LAS HERAS CARCAMO',1792),(5485,'128300783\\','JAVIER RODRIGO      CONCHA  VERA',1787),(5486,'82919333\\','PEDRO ANDRES ORELLANA JIMENEZ',1773),(5487,'215866629\\','EDGAR NADIR FIERRO MARDONES',1622),(5488,'19976084K\\','MAURICIO  DELGADO .',1627),(5489,'153701326\\','FERNANDO ANDRES HERRERA GONZALEZ',1758),(5490,'161606286\\','MAGDA ELENA AGUILERA VASQUEZ',1622),(5491,'159336018\\','PEDRO IGNACIO  ALBORNOZ  OLIVA',1661),(5492,'128533680\\','FERNANDO ANTONIO  CHAPA GARCIAS ',1668),(5493,'130923372\\','DANILO ITURRA ITURRA',1604),(5494,'155340975\\','JESUS GARRIDO PLAZA',1787),(5495,'154212884\\','CARLOS CAMILO MEZA ROJAS',1792),(5496,'133157956\\',' ERICH  ULRIKSEN  SCHMIDLIN',1720),(5497,'158414465\\','PATRICIO ANDRÉS RIQUELME FLORES',1642),(5498,'130887309\\','MARIO SUAREZ PALMA',1604),(5499,'88587723\\','AGUSTÍN BARRIOS .',1600),(5500,'102899911\\','GUILLERMO ANDRES ARANDA SPOERER',1698),(5501,'136744216\\','ESTEBAN LAGOS MEJIAS',1767),(5502,'15407760K\\','HECTOR  ROMO  MADIARAGA',1709),(5503,'120199870\\','CLAUDIO SALAZAR CHANG',1805),(5504,'127777276\\','MARISEL PAZ MEZA MALLEA',1830),(5505,'166243971\\','ALEJANDRA MARLENE          MAGALLANES  MANRIQUEZ   ',1759),(5506,'110245491\\','GREGUY DEL CARMEN VERGARA FELGUERAS',1714),(5507,'126902263\\','CESAR EMILIO SAEZ RAMIREZ',1772),(5508,'106067317\\','ROBERTO PABLO REYES VALENZUELA',1601),(5509,'10553549K\\','PABLO ANDRES CONCHA SALAS',1635),(5510,'176237198\\','FRANCISCA AHUMADA RUBIO',1758),(5511,'115993143\\','VERONICA DEL CARMEN ALARCON CORTES',1729),(5512,'156716863\\','LORETO DEL PILAR URIBE BRIONES',1695),(5513,'106107246\\','CRISTIAN HERNAN SALAZAR PORTRIAR',1611),(5514,'98593551\\','GERMAN LAFUENTE ROJAS',1687),(5515,'136644971\\','HANS  UGALDE  ARENAS',1607),(5516,'114368067\\','HERNAN CASELLA ALONSO',1801),(5517,'5573352K\\','BENJAMIN EUGENIO CORNEJO LANDERO',1695),(5518,'90821342\\','MIGUEL LORENZO OBRADOR ARAVENA',1779),(5519,'76909105\\','ANTONIA GALLEGUILLOS ALFARO',1773),(5520,'91934728\\','RICHARD GARCIA TRONCOSO',1800),(5521,'6083668K\\','BETSABETH HARBIN CARRASCO',1603),(5522,'156136336\\','ALDO ESTEBAN  ROCHA CUADRA ',1831),(5523,'92793524\\','EMILIO ARANEDA RUIZ',1800),(5524,'179607794\\','GONZALO ALEJANDRO  ROJAS  GALAZ',1750),(5525,'108\\','VIRTUAL AMICAR .',1802),(5526,'139737504\\','CARLOS PATRICIO SIERRA POBLETE',1727),(5527,'132754322\\','JORGE MARCELO BRAVO LUBBERT',1619),(5528,'139416252\\','ALVARO VALENZUELA VASQUEZ',1676),(5529,'158131153\\','PAULINA ANDREA HEREDIA PINO',1674),(5530,'122081583\\','JULIO CESAR CARTAGENA GONZALEZ',1680),(5531,'107547770\\','JESSICA FABIOLA MOLINA RIVERA',1641),(5532,'168015496\\','CARLOS  HERRERA  CÁCERES',1698),(5533,'177733156\\','VICTOR ALFONSO  GUZMAN  SANCHEZ',1729),(5534,'127408424\\','GUIDO CARTES AQUEVEQUE',1781),(5535,'158096056\\','ROBERTO SOTO MUÑOZ',1628),(5536,'133869549\\','RODRIGO EDGARDO MOLINA RIOSECO',1814),(5537,'14136216K\\','JAIME  SAEZ .',1751),(5538,'127205795\\','PABLO NAVARRETE GRIMINICK',1720),(5539,'92982319\\','JAIME CONTRERAS NAVIA',1818),(5540,'119345774\\','ORLANDO GUILLERMO CONTRERAS BORQUEZ',1827),(5541,'102990390\\','RENE ESTEBAN LUCERO ARANCIBIA',1741),(5542,'143623793\\','GUILLERMO ANÍBAL  URRUTIA  POBLETE',1695),(5543,'126899262\\','FABIAN ALEXIS TABACH SALINAS',1792),(5544,'13452331K\\','PABLO ANDRÉS  PINCETTI   LÜER',1768),(5545,'124\\','VIRTUAL SANTA ISABEL AUTOMOTORA',1832),(5546,'12857087K\\','RODRIGO ALEJANDRO SEPULVEDA BOBADILLA',1692),(5547,'130532543\\','GLADYS ELIZABETH BASTIAS  MARTINEZ',1632),(5548,'166515629\\','SEBASTIAN ANTONIO MORA ALVARADO',1726),(5549,'135489387\\','NELSON ANDRES GAETE  SANTANDER',1642),(5550,'159000117\\','MARIA BELEN PLAZA MARIN',1749),(5551,'10370054K\\','PAULINA ANDREA DEL REAL HERNANDEZ',1629),(5552,'117595765\\','JORGE LIRA BELL',1817),(5553,'139772261\\','MARCELA ALEJANDRA VASQUEZ VASQUEZ',1674),(5554,'22511952K\\','FABIANO MATTANA .',1808),(5555,'135445991\\','JUAN OLIVARES GONZALEZ',1698),(5556,'13271374K\\','SILVANA  ORELLANA REINOSO',1705),(5557,'235905779\\','MELISSA  MORCHIO LOBETO  ',1769),(5558,'133417389\\','DAVID  BRUNO  MARTIN',1811),(5559,'103306078\\','MARIO ANTONIO   CONTRERAS  GONZÁLEZ',1705),(5560,'133926488\\','LILIAN BUSTOS NOVOA',1625),(5561,'103073219\\','VICTOR MARCEL COLLARTE LORES',1672),(5562,'174094608\\','CAMILO MOREIRA .',1812),(5563,'167647332\\','FRANCISCO EDUARDO FUENTES ARANEDA',1800),(5564,'160817089\\','KAREN ALEJANDRA LOPEZ LISERA',1784),(5565,'66104761\\','CARLOS FERNANDO CORREA LEFORT',1833),(5566,'101284204\\','ALVARO MANRIQUEZ .',1834),(5567,'141384406\\','ROLANDO ESTEBAN  MOLINA  MANSILLA',1612),(5568,'222167612\\','DIEGO GASTON  BARBOZA  SARALEGUI',1784),(5569,'146652948\\','RODRIGO SIBILS RAMOS',1796),(5570,'139241479\\','SERGIO TOMAS  ADRIASOLA  GIBSON',1825),(5571,'11850819K\\','JUAN CARLOS FARIAS ARAYA',1790),(5572,'185517667\\','DENIS FABIAN  OJEDA  MILLAPINDA ',1726),(5573,'107688943\\','CLAUDIO ANTONIO  HERNANDEZ  ALVARADO',1731),(5574,'174397295\\','PAUL ANDRE MAILLARD BAHAMONDEZ',1650),(5575,'86641445\\','CATHERINE DALAL YANINE SELEME',1737),(5576,'92974901\\','ELIZABETH ANGELICA  GOMEZ  GOMEZ',1786),(5577,'94\\','VIRUAL LABBE-SPORT .',1835),(5578,'10940683K\\','YESICA DEL CARMEN   OSORIO TORRES',1731),(5579,'118828100\\','CHRISTIAN OHMKE MATUS',1601),(5580,'137838184\\','LUIS MARTINEZ ARRIAZA',1716),(5581,'235030160\\','ROBERTO  ARIAS  ARMAS',1747),(5582,'181435178\\','GUSTAVO ALEJANDRO  LUENGO  SCHORWER ',1641),(5583,'107332049\\','LUIS HENRY CASTRO .',1792),(5584,'139497570\\','MARCELA FRANCESCA GRANDY QUINTEROS',1650),(5585,'152433662\\','GONZALO IVAN  MUNDACA ROMERO',1665),(5586,'183\\','VIRTUAL AG ALAMEDA .',1600),(5587,'112715703\\','NAYARET ALARCON ROJAS',1701),(5588,'128814132\\','MARCELO FUENTES .',1822),(5589,'178859277\\','YARITZA ALEJANDRA CIFUENTES GONZALEZ',1778),(5590,'102092937\\','PAULA SCHELL SAELZER',1720),(5591,'114108022\\','JORGE FIGUEROA SOTO',1665),(5592,'7001971K\\','RAMON PINTO IRARRAZABAL',1780),(5593,'115354906\\','BERNARDO FERNANDO AVENDANO DIAZ',1718),(5594,'13471977K\\','DANIEL ALEJANDRO GONZALEZ OLEA',1663),(5595,'68891183\\','ARTURO  MILLANAO MORA',1718),(5596,'136353233\\','PATRICIO ALBERTO TERONGO PINOCHET',1769),(5597,'164806057\\','ROBERTO IGNACIO CEA OCARANZA',1792),(5598,'9604674K\\','JEANNETTE ANGELICA GUERRERO AMIGO',1607),(5599,'157957929\\','RODRIGO ANDRES BARRIA    CARDENAS',1789),(5600,'177394874\\','MARIA ISABEL ARAYA .',1799),(5601,'128261109\\','PEDRO GALARCE ZAMORA',1749),(5602,'67249232\\','JAIME JOSE CORTINA GARCIA',1746),(5603,'139201221\\','PATRICIO NORAMBUENA MAULEN',1792),(5604,'160713313\\','SEBASTIAN ANDRES WATT AREVALO',1836),(5605,'127194904\\','CRISTIAN RICARDO PROAÑO MEZA',1710),(5606,'132813442\\','PAMELA VARGAS .',1792),(5607,'173147139\\','ELIAS CHAMARRO CRUZ',1728),(5608,'158404281\\','FABIAN CARREÑO BONILLA',1730),(5609,'18004647K\\','GONZALO ROJAS G.',1627),(5610,'125608833\\','CESAR ALONSO ORTEGA MARTINEZ',1793),(5611,'172603483\\','CAMILO  CARRASCO  ESPINOZA',1781),(5612,'144945174\\','ALAN ROBERTO PRYCE JONES',1601),(5613,'168373937\\','JUAN ALEJANDRO CANCINO ERICE ',1815),(5614,'151175856\\','JOSE BERNARDO VIDAL PINO',1731),(5615,'140038903\\','VÍCTOR RODRIGO  GALLARDO  PINO',1762),(5616,'120684140\\','CLAUDIA MAGDALENA  MAC-FARLANE  MACERATTA',1740),(5617,'126112580\\','CRISTIAN MAURICIO JIRON ARAYA',1793),(5618,'243933099\\','LINA MARÍA GRUESO MURILLO',1711),(5619,'130475035\\','ALEJANDRO EMILIO  ARANCIBIA  VERA',1836),(5620,'91225042\\','CYNTHIA FERNANDEZ MARTINEZ',1737),(5621,'108400307\\','RODRIGO VICTOR LOPEZ ARAYA',1715),(5622,'130698360\\','RAIMUNDO TAPIA TROPA',1736),(5623,'102598792\\','BORIS MAURICIO HERMOSILLA BARRIENTOS',1665),(5624,'14300807K\\','LORETO EUGENIA  LOPEZ  MUÑOZ',1728),(5625,'9858966K\\','ISABEL LILIAN ACEVEDO DUQUE',1728),(5626,'103475813\\','ALDO IVAN  PEDREROS  MEDINA',1709),(5627,'9123940K\\','JUVENAL HECTOR  RAMIREZ  GONZALEZ ',1730),(5628,'126385684\\','ARIEL FELIPE  SEPULVEDA  MATURANA',1749),(5629,'243664764\\','EDITH JOHANNA  GARCIA BUITRAGO',1792),(5630,'162571621\\','FRANCIA  GALAZ  COTTA ',1758),(5631,'130965490\\','RICARDO ANDRES MARCHANT POZO',1806),(5632,'114357804\\','MARIA VIOLETA MENARES DIAZ',1801),(5633,'244193366\\','HUMBERTO LUIS GHISAURA .',1645),(5634,'119849853\\','JAIME MIGUEL ARIAS RAMIREZ',1801),(5635,'107137246\\','PAULINA  BOETTCHER  BRUNING',1737),(5636,'125169635\\','JOSE GUILLERMO ROCHA ARCE',1769),(5637,'8707255K\\','ISABEL XIMENA DIVASTO PRIETO',1711),(5638,'200813995\\','PATRICIO RIVAS LLANOS',1828),(5639,'104762425\\','SANDRA DEL CARMEN DROGUETT DONOSO',1701),(5640,'96472889\\','IVAN  ROJAS  TAPIA ',1837),(5641,'118903463\\','VICTOR MARCELO TOBAR GONZALEZ',1806),(5642,'144453093\\','ELIAS ESTEBAN   FLORES  ARRIAGADA',1804),(5643,'155096055\\','MAURICIO SALAZAR PEREIRA',1610),(5644,'169877858\\','DANIELA ORTIZ .',1619),(5645,'111249741\\','MANUEL JOSE IGUALT CRUZ',1715),(5646,'99804815\\','CRISTIAN  STOFFEL  HERMOSILLA',1792),(5647,'99907339\\','FERNANDO EYZAGUIRRE DEL REAL',1834),(5648,'91930366\\','EDGARDO CARTES CONCHA',1834),(5649,'89998093\\','FRANCISCO JOSÉ  ESTELA  CORDERO',1803),(5650,'61496858\\','ARTURO JOSE REYNE HITSCHFELD',1834),(5651,'157705806\\','MARCELA PAZ RAMIREZ TORRES',1738),(5652,'92477355\\','JORGE ENRIQUE  SALVADOR  BERMUDEZ',1698),(5653,'126150903\\','ALFREDO ARAYA CASTRO',1632),(5654,'143776271\\','EDUARDO PINO CASTRO',1709),(5655,'85611860\\','VENERA MAZZUCCHELLI COTO',1680),(5656,'98585443\\','LORENA PIZARRO FARIAS',1773),(5657,'121878801\\','CARLOS RIGOBERTO GONZALEZ ALDANA',1777),(5658,'106475598\\','ALVARO RODRIGO  YAÑEZ  AGUILAR',1672),(5659,'128302050\\','IVAN ARENAS .',1600),(5660,'158984873\\','MARCO ANTONIO  ACOSTA  MARINO',1838),(5661,'106824053\\','MARIA ISABEL NEIRA BRUNET',1838),(5662,'8828271K\\','MARIANA PINA LEON',1749),(5663,'153466459\\','BENJAMIN SEBASTIAN NUÑEZ LILLO',1625),(5664,'162450395\\','WILSON VEGA CHELME',1755),(5665,'16482988K\\','SEBASTIAN ALEJANDRO TORRES FERRADA',1714),(5666,'141538543\\','EVELYN HERNANDEZ VILLEGAS',1838),(5667,'167\\','VIRTUAL MAQUINARIAS AG HUECHURABA .',1822),(5668,'78008679\\','JUAN CARLOS  DÍAZ .',1600),(5669,'17821523K\\','ISAAC BENJAMIN BECERRA AMARO',1803),(5670,'157203835\\','CRISTÓBAL CELIS CASTAÑÓN',1607),(5671,'134339926\\','CAROLINA ANDREA  CUBILLOS  MIRANDA ',1734),(5672,'134654945\\','ALEX ALFONSO MENESES NAVARRETE',1612),(5673,'97492603\\','RICARDO CRESPO SAN MARTIN',1645),(5674,'124325218\\','EVELYN  CEPEDA  MARTINEZ',1722),(5675,'68516366\\','CRISTIAN CEFELINO VILLAVERDE',1747),(5676,'237257448\\','ARMANDO GIRON .',1749),(5677,'106207801\\','GUILLERMO ALEJANDRO SUAZO NUÑEZ',1641),(5678,'126425538\\','GUILLERMO  VELASCO HERMAN',1601),(5679,'212748307\\','ANA LUCIA  PERALTA  MOLINA',1796),(5680,'76657467\\','JUAN CARLOS  JARA  DONOSO',1800),(5681,'101392260\\','CLAUDIO ANDRES ROSSELOT MORA',1747),(5682,'159187616\\','LEANDRO ALBERTO LAGOS HUERTA',1836),(5683,'7699188K\\','CLAUDIO DE PABLO SANTOLAYA',1836),(5684,'151808395\\','CLAUDIA ANDREA  ZARATE GENESTIER',1641),(5685,'8369498K\\','IVETTE ANNE MARIE AUBRY MARTIN',1839),(5686,'7325289K\\','MANUEL BUSTOS .',1749),(5687,'24073804K\\','ANA ISABEL  VALENCIA  URIBE',1645),(5688,'178352466\\','JORGE ZAMORA .',1812),(5689,'12853315K\\','SEBASTIAN BALADRON DERPICH',1838),(5690,'132171246\\','ANA MARIA  VALDIVIA  GANDUR',1672),(5691,'172380506\\','RODRIGO ALEJANDRO ROMERO OYARZUN',1782),(5692,'139317610\\','RICARDO ALEXIS RAMOS MARTINEZ',1660),(5693,'161263966\\','MARIELA GONZALEZ FUENTES',1840),(5694,'74063772\\','JORGE  CUEVAS .',1610),(5695,'70498162\\','CECILIA GEMMA AVILA CALVANESE',1612),(5696,'139092139\\','PABLO CESAR FAUNES MORALES',1825),(5697,'170825764\\','MAXIMILIANO BENAVIDES SANCHEZ',1736),(5698,'67938291\\','CARLOS ALBERTO ACUÑA APARICIO',1706),(5699,'156242799\\','DANIEL ANDRES  VARAS  LIZANA',1737),(5700,'12434042K\\','HECTOR IVAN  NAIL  OJEDA',1617),(5701,'15848336K\\','PABLO  FODOR  HERTRAMPF ',1796),(5702,'125218245\\','CHRISTIAN HERRERA IBARRA',1728),(5703,'154493433\\','ANDRES PIZARRO VEGA',1798),(5704,'8208052K\\','FERNANDO JOSE INFANTE LIRA',1634),(5705,'125180906\\','VERONICA  VALDIVIA  RODRIGUEZ',1601),(5706,'145228247\\','MARÍA SOLEDAD MUÑOZ MORAN',1672),(5707,'124948673\\','CAROL GARCIA CARROZA',1796),(5708,'156345962\\','SEBASTIAN MELLADO TAPIA',1709),(5709,'156697486\\','CARLO DINO MATTEUCCI TRUJILLO',1834),(5710,'124653606\\','JAVIER IGNACIO  MORALES  MARMENTINI',1825),(5711,'139353722\\','HECTOR  ALVEAR  MUÑOZ',1825),(5712,'119382785\\','PABLO EULOGIO  ROMERO  OLIVARES',1699),(5713,'130539378\\','ROMANO BERLOT MOLINA',1834),(5714,'8838475K\\','LEANDRO MARCELO JARA JAÑA',1664),(5715,'168885032\\','CARLOS EDUARDO  FAUNDEZ  SANDOVAL',1841),(5716,'121042053\\',' CHRISTIAN PABLO STUCKRATH  VIDAL',1720),(5717,'96337817\\','PABLO ALMARZA ORTEGA',1801),(5718,'13089402K\\','JORGE  RODRIGO ESCARATE  HERNANDEZ',1606),(5719,'132275963\\','JOSE ANTONIO VASQUEZ CRUZ',1714),(5720,'182084204\\','JONATHAN EFRAÍN AGUAYO CANALES',1726),(5721,'85804871\\','JAIME OCTAVIO MELLA CARO',1667),(5722,'156977640\\','ALEJANDRO ANTONIO CASTRO CABELLO',1817),(5723,'167755542\\','JOSE IGNACIO ROJAS CANIUPAN',1769),(5724,'162373838\\','PATRICIA  SANDOVAL     .',1685),(5725,'10953546K\\','CLAUDIA  AZOCAR DE LA FUENTE',1672),(5726,'128978011\\','ANGEL ANDRES  PERONA  JULIO',1792),(5727,'122695719\\','IVAN ENRIQUE  YAÑEZ  LIZANA',1804),(5728,'85369091\\','RAUL RICARDO FONTECILLA ALVEAR',1773),(5729,'145857996\\','BARBARA MACARENA SALAZAR  PEÑA',1616),(5730,'160033843\\','DANNY MARCELO  ORÓSTICA  LISBOA ',1803),(5731,'152787642\\','MARCO  LLANQUILEF      .',1685),(5732,'115346067\\','JUAN PABLO  BLU  LAMAS ',1720),(5733,'122469026\\','HUGO GALINDO GALINDO',1685),(5734,'13422438K\\','MITCHEL RAMOS TORRES',1829),(5735,'74342221\\','ALEJANDRO  ROJAS  CATRILEO',1792),(5736,'163539527\\','PAUL CRISTIAN  GINIEIS  HAEDICKE',1769),(5737,'137106663\\','JORGE VELASQUEZ GALAFE',1842),(5738,'97948321\\','ROGELIO ECHEVERRIA LABBE',1842),(5739,'142721910\\','ANDREA RUBILAR RIVAS',1713),(5740,'13102889K\\','MANUEL ALEJANDRO  GONZALEZ  PARRA',1792),(5741,'143066711\\','RAFAEL SEGUEL TORREALBA',1842),(5742,'160528753\\','FERNANDO JAVIER ROJAS GODOY',1784),(5743,'126646496\\','MARIANELA BEATRIZ  PAZ  APARICIO',1773),(5744,'164238652\\','JORGE MUNDACA OLGUIN',1604),(5745,'237357248\\','SEBASTIAN WATTS .',1843),(5746,'97892784\\','CLAUDIA EUGENIA CARRASCO SEGUEL',1740),(5747,'102823524\\','JORGE FERNANDO DE LA CERDA ROA',1796),(5748,'137568594\\','JOCELINE BARRAZA GONZALEZ',1780),(5749,'90059556\\','GERARDO PATRICIO BASAÑEZ LLADOS',1769),(5750,'129575727\\','CRISTIAN ANTONIO  ORELLANA  MACHANT',1785),(5751,'246605432\\','DAYANA CAROLINA SUAREZ HERNANDEZ',1713),(5752,'137205084\\','ANDRES O´NELL ECHEVERRIA',1672),(5753,'85490702\\','CHRISTIAN  ARRIAGADA OYARZUN',1777),(5754,'169212724\\','MARIO  ARANGUIZ  CACERES',1815),(5755,'152189834\\','MARCOS HERNAN PEÑA VIELMA',1718),(5756,'95662609\\','MARIA BELEN PLAZA .',1844),(5757,'151816010\\','CESAR ESAU RODRIGUEZ JARA',1757),(5758,'102569830\\','CARLOS GARCIA VALDERRAMA',1683),(5759,'116812649\\','CRISTIAN ALBERTO SAN MARTIN BECKER',1777),(5760,'16471599K\\','FELIPE ANTONIO BERRIOS VEGA',1792),(5761,'107569561\\','ANGELICA MARIA  VERGARA  ARANCIBIA',1780),(5762,'158352133\\','GUSTAVO  VALDIVIA  VALENZUELA',1803),(5763,'11491858K\\','JOSE ANTONIO VARELA MORENO',1796),(5764,'71700550\\','SANDRA IRENE ZOLEZZI RIQUELME',1782),(5765,'103938619\\','CARLOS ESTEBAN FERNANDEZ DIAZ',1650),(5766,'171076951\\','RETAMAL  CARREÑO .',1709),(5767,'164665038\\','HERNAN PATRICIO ARAYA ITURRA',1768),(5768,'91341441\\','FERNANDO ENRIQUE IBAÑEZ  LOBOS',1632),(5769,'139426738\\','NORMAN MILANESI .',1793),(5770,'156257362\\','KRIKOR MANUKIAN  VON BENNEWITZ',1695),(5771,'136532294\\','JOHANA ALEJANDRA  ALVAREZ  GONZALEZ ',1698),(5772,'63436291\\','JORGE EDUARDO JORQUERA CONSTANZO',1634),(5773,'157082337\\','RODRIGO  JARA  POZAS',1730),(5774,'128108718\\','JORGE ERNESTO  HERRERA  PAVEZ',1817),(5775,'70390930\\','MARIO ANFRUNS  BARRROS ',1601),(5776,'94917115\\','AUGUSTO HERRERA MURUA',1792),(5777,'166666665\\','DIEGO IGNACIO FELIU DIAZ',1792);
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ADD_BODY_MAIL_AMICAR`()
BEGIN

DECLARE GRUPO INT DEFAULT 1;
DECLARE DIASEMANA VARCHAR(10);
DECLARE VB_TERMINA VARCHAR(10);
DECLARE UNICO INT DEFAULT 0;

DECLARE ADD_ID CURSOR FOR SELECT IDCLIENTE FROM CLIENTESDIARIO;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET VB_TERMINA = TRUE;

SET SQL_SAFE_UPDATES = 0;        
SET @DIASEMANA = (SELECT DAYNAME(NOW()));

 INSERT INTO CORREOSERRORFORMATO (RUTCLIENTE, EMAILCLIENTE, NOMBRECLIENTE, FONOCELULAR, FONOCOMERCIAL, FONOPARTICULAR, MARCAAUTO, MODELOAUTO, VALORAUTO, IDGRUPO, IDBODY, FECHA, NOMBREJRN)
    SELECT RUTCLIENTE, EMAILCLIENTE, NOMBRECLIENTE, FONOCELULAR, FONOCOMERCIAL, FONOPARTICULAR, MARCAAUTO, MODELOAUTO, VALORAUTO, IDGRUPO, IDBODY, FECHA, NOMBREJRN
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
		  OR EMAILCLIENTE NOT REGEXP '(.*)@(.*).(.*)';
          
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
    OR EMAILCLIENTE NOT REGEXP '(.*)@(.*).(.*)';
       
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
            
		INSERT INTO CLIENTESSEMANAL (RUTCLIENTE, EMAILCLIENTE, NOMBRECLIENTE, FONOCELULAR, FONOCOMERCIAL, FONOPARTICULAR, MARCAAUTO, MODELOAUTO, VALORAUTO, IDGRUPO, IDBODY, FECHA, NOMBREJRN)
		SELECT RUTCLIENTE, EMAILCLIENTE, NOMBRECLIENTE, FONOCELULAR, FONOCOMERCIAL, FONOPARTICULAR, MARCAAUTO, MODELOAUTO, VALORAUTO, IDGRUPO, IDBODY, FECHA, NOMBREJRN
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

        INSERT INTO CLIENTESSEMANAL (RUTCLIENTE, EMAILCLIENTE, NOMBRECLIENTE, FONOCELULAR, FONOCOMERCIAL, FONOPARTICULAR, MARCAAUTO, MODELOAUTO, VALORAUTO, IDGRUPO, IDBODY, FECHA, NOMBREJRN)
		SELECT RUTCLIENTE, EMAILCLIENTE, NOMBRECLIENTE, FONOCELULAR, FONOCOMERCIAL, FONOPARTICULAR, MARCAAUTO, MODELOAUTO, VALORAUTO, IDGRUPO, IDBODY, FECHA, NOMBREJRN
		FROM CLIENTESDIARIO CS WHERE DATE(CS.FECHA) NOT IN (SELECT DATE(FECHA) FROM CLIENTESSEMANAL);

	END IF;
    
	INSERT INTO CLIENTES (RUTCLIENTE, EMAILCLIENTE, NOMBRECLIENTE, FONOCELULAR, FONOCOMERCIAL, FONOPARTICULAR, MARCAAUTO, MODELOAUTO, VALORAUTO, IDGRUPO, IDBODY, FECHA, NOMBREJRN)
	SELECT RUTCLIENTE, EMAILCLIENTE, NOMBRECLIENTE, FONOCELULAR, FONOCOMERCIAL, FONOPARTICULAR, MARCAAUTO, MODELOAUTO, VALORAUTO, IDGRUPO, IDBODY, FECHA, NOMBREJRN
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

-- Dump completed on 2015-04-22 18:34:23
