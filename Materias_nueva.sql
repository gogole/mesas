-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: Mesas_Examenes
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `Carrera`
--

DROP TABLE IF EXISTS `Carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Carrera` (
  `carrera_cod` int(11) NOT NULL,
  `carrera_descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`carrera_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Carrera`
--

LOCK TABLES `Carrera` WRITE;
/*!40000 ALTER TABLE `Carrera` DISABLE KEYS */;
INSERT INTO `Carrera` VALUES (1,'Licenciatura en Sistemas de Información');
/*!40000 ALTER TABLE `Carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CorrCur`
--

DROP TABLE IF EXISTS `CorrCur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CorrCur` (
  `cod_cur` int(11) NOT NULL AUTO_INCREMENT,
  `condicion_cur` varchar(20) NOT NULL,
  `nombre_cursar` varchar(50) NOT NULL,
  `nro_detalle` int(11) NOT NULL,
  PRIMARY KEY (`cod_cur`),
  KEY `nro_detalle` (`nro_detalle`),
  CONSTRAINT `CorrCur_ibfk_1` FOREIGN KEY (`nro_detalle`) REFERENCES `Mesas` (`nro_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CorrCur`
--

LOCK TABLES `CorrCur` WRITE;
/*!40000 ALTER TABLE `CorrCur` DISABLE KEYS */;
INSERT INTO `CorrCur` VALUES (1,'Regular','Algoritmos y Estructuras de Datos I',3),(2,'Regular','Algoritmos y Estructuras de Datos II',6),(3,'Aprobada','Algoritmos y Estructuras de Datos I',6),(4,'Regular','Lógica y Matemática Computacional',7),(5,'Aprobada','Algoritmos y Estructuras de Datos I',7),(6,'Regular','Lógica y Matemática Computacional',8),(7,'Aprobada','Algebra',8),(8,'Regular','Paradigmas y Lenguajes',9),(9,'Aprobada','Algoritmos y Estructuras de Datos II',9),(10,'Regular','Arquitectura y Organización de Computadoras',10),(11,'Aprobada','Algoritmos y Estructuras de Datos II',10),(12,'Regular','Sistemas y Organizaciones',11),(13,'Regular','Programación Orientada a Objeto',12),(14,'Aprobada','Paradigmas y Lenguajes',12),(15,'Regular','Sistemas Operativos',13),(16,'Aprobada','Arquitectura y Organización de Computadoras',13),(17,'Regular','Programación Orientada a Objetos',14),(18,'Regular','Administración y Gestión',14),(19,'Aprobada','Sistemas y Organizaciones',14),(20,'Regular','Taller de Programación I',15),(21,'Regular','Ingeniería de Software I',15),(22,'Aprobada','Sistemas Operativos',15),(23,'Aprobada','Programación Orientada a Objetos',15),(24,'Regular','Cálculo Diferencial e Integral',16),(25,'Regular','Programación Orientada a Objetos',17),(26,'Aprobada','Arquitectura y Organización de Computadoras',17),(27,'No tiene Correlativa','No tiene Correlativa para Cursar',1),(28,'No tiene Correlativa','No tiene Correlativa para Cursar',2),(29,'No tiene Correlativa','No tiene Correlativa para Cursar',4),(30,'No tiene Correlativa','No tiene Correlativa para Cursar',5),(31,'No tiene Correlativa','No tiene Correlativa para Cursar',18),(32,'Regular','Ingeniería de Software I',19),(33,'Aprobada','Administración y Gestión de Organizaciones',19),(34,'Regular','Ingeniería de Software I',20),(35,'Aprobada','Administración y Gestión de Organizaciones',20),(36,'Regular','Probabilidad y Estadísticas',21),(37,'Aprobada','Arquitectura y Organización de Computadoras',21),(38,'Aprobada','Comunicación de Datos',22),(39,'Regular','Bases de Datos I',23),(40,'Aprobada','Ingeniería de Software I',23),(41,'Regular','Probabilidad y Estadísticas',24),(42,'Aprobada','Cálculo Diferencial e Integral',24);
/*!40000 ALTER TABLE `CorrCur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CorrRend`
--

DROP TABLE IF EXISTS `CorrRend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CorrRend` (
  `cod_rend` int(11) NOT NULL AUTO_INCREMENT,
  `condicion_rendir` varchar(20) NOT NULL,
  `nombre_aprobada` varchar(50) NOT NULL,
  `nro_detalle` int(11) NOT NULL,
  PRIMARY KEY (`cod_rend`),
  KEY `nro_detalle` (`nro_detalle`),
  CONSTRAINT `CorrRend_ibfk_1` FOREIGN KEY (`nro_detalle`) REFERENCES `Mesas` (`nro_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CorrRend`
--

LOCK TABLES `CorrRend` WRITE;
/*!40000 ALTER TABLE `CorrRend` DISABLE KEYS */;
INSERT INTO `CorrRend` VALUES (1,'Aprobada','Algoritmos y Estructuras de Datos I',3),(2,'Aprobada','Algebra',4),(3,'Aprobada','Algoritmos y Estructuras de Datos II',6),(4,'Aprobada','Lógica y Matemática Computacional',7),(5,'Aprobada','Lógica y Matemática Computacional',8),(6,'Aprobada','Algebra',8),(7,'Aprobada','Algoritmos y Estructuras de Datos II',9),(8,'Aprobada','Paradigmas y Lenguajes',9),(9,'Aprobada','Arquitectura y Organización de Computadoras',10),(10,'Aprobada','Algoritmos y Estructuras de Datos II',10),(11,'Aprobada','Sistemas y Organizaciones',11),(12,'Aprobada','Programación Orientada a Objeto',12),(13,'Aprobada','Sistemas Operativos',13),(14,'Aprobada','Programación Orientada a Objeto',14),(15,'Aprobada','Administración y Gestión de Organizaciones',14),(16,'Aprobada','Taller de Programación I',15),(17,'Aprobada','Ingeniería de Software I',15),(18,'Aprobada','Cálculo Diferencial e Integral',16),(19,'Aprobada','Ingeniería de Software I',17),(20,'No tiene correlativa','No tiene correlativas para rendir',1),(21,'No tiene correlativa','No tiene correlativas para rendir',2),(22,'No tiene correlativa','No tiene correlativas para rendir',18),(23,'Aprobada','Ingeniería de Software I',19),(24,'Aprobada','Ingeniería de Software I',20),(25,'Aprobada','Arquitectura y Organización de Computadoras',21),(26,'Aprobada','Probabilidad y Estadísticas',21),(27,'Aprobada','Comunicación de Datos',22),(28,'Aprobada','Bases de Datos I',23),(29,'Aprobada','Probabilidad y Estadísticas',24);
/*!40000 ALTER TABLE `CorrRend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Materias`
--

DROP TABLE IF EXISTS `Materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Materias` (
  `carrera_cod` int(11) NOT NULL,
  `materias_cod` int(11) NOT NULL,
  `materias_descripcion` varchar(50) NOT NULL,
  `materias_año` varchar(30) NOT NULL,
  PRIMARY KEY (`carrera_cod`,`materias_cod`),
  CONSTRAINT `Materias_ibfk_1` FOREIGN KEY (`carrera_cod`) REFERENCES `Carrera` (`carrera_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Materias`
--

LOCK TABLES `Materias` WRITE;
/*!40000 ALTER TABLE `Materias` DISABLE KEYS */;
INSERT INTO `Materias` VALUES (1,1,'Algoritmo y Estructuras de Datos I','Primer Año'),(1,2,'Algebra','Primer Año'),(1,3,'Algoritmo y Estructuras de Datos II','Primer Año'),(1,4,'Lógica y Matemática Computacional','Primer Año'),(1,5,'Sistemas y Organizaciones','Primer Año'),(1,6,'Paradigmas y Lenguajes','Segundo Año'),(1,7,'Arquitectura y Organización de Computadora','Segundo Año'),(1,8,'Cálculo Diferencial e Integral','Segundo Año'),(1,9,'Programación Orientada a Objetos','Segundo Año'),(1,10,'Sistemas Operativos','Segundo Año'),(1,11,'Administración y Gestión de Organizaciones','Segundo Año'),(1,12,'Taller de Programación I','Tercer Año'),(1,13,'Comunicaciones de Datos','Tercer Año'),(1,14,'Ingeniería de Software I','Tercer Año'),(1,15,'Taller de Programación II','Tercer Año'),(1,16,'Probabilidad y Estadísticas','Tercer Año'),(1,17,'Bases de Datos I','Tercer Año'),(1,18,'Inglés Técnico Informático','Tercer Año'),(1,19,'Ingeniería de Software II','Cuarto Año'),(1,20,'Economía Aplicada','Cuarto Año'),(1,21,'Teoría de la Computación','Cuarto Año'),(1,22,'Redes de Datos','Cuarto Año'),(1,23,'Bases de Datos II','Cuarto Año'),(1,24,'Métodos Computacionales','Cuarto Año'),(1,25,'Estadística Inferencial','Quinto Año'),(1,26,'Inteligencia Artificial','Quinto Año'),(1,27,'Modelo y Simulación','Quinto Año');
/*!40000 ALTER TABLE `Materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mesas`
--

DROP TABLE IF EXISTS `Mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mesas` (
  `nro_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `carrera_cod` int(11) NOT NULL,
  `materias_cod` int(11) NOT NULL,
  `primer_turno` varchar(15) NOT NULL,
  `segundo_turno` varchar(15) NOT NULL,
  `tercer_turno` varchar(15) NOT NULL,
  `cuarto_turno` varchar(15) NOT NULL,
  `quinto_turno` varchar(15) NOT NULL,
  `sexto_turno` varchar(15) NOT NULL,
  `septimo_turno` varchar(15) NOT NULL,
  `octavo_turno` varchar(15) NOT NULL,
  `noveno_turno` varchar(15) NOT NULL,
  `decimo_turno` varchar(15) NOT NULL,
  PRIMARY KEY (`nro_detalle`),
  KEY `carrera_cod` (`carrera_cod`,`materias_cod`),
  CONSTRAINT `Mesas_ibfk_1` FOREIGN KEY (`carrera_cod`, `materias_cod`) REFERENCES `Materias` (`carrera_cod`, `materias_cod`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mesas`
--

LOCK TABLES `Mesas` WRITE;
/*!40000 ALTER TABLE `Mesas` DISABLE KEYS */;
INSERT INTO `Mesas` VALUES (1,1,1,'11-feb','04-mar','18-mar','13-may','08-jul','29-jul','16-sep','28-oct','25-nov','16-dic'),(2,1,2,'09-feb','02-mar','16-mar','11-may','06-jul','27-jul','07-sep','19-oct','30-nov','15-dic'),(3,1,3,'12-feb','26-feb','19-mar','04-jun','06-jul','29-jul','02-sep','14-oct','25-nov','16-dic'),(4,1,4,'13-feb','27-feb','20-mar','05-jun','10-jul','30-jul','10-sep','29-oct','27-nov','17-dic'),(5,1,5,'10-feb','03-mar','17-mar','12-may','07-jul','28-jul','01-sep','13-oct','24-nov','15-dic'),(6,1,6,'13-feb','27-feb','20-mar','29-may','10-jul','31-jul','04-sep','16-oct','27-nov','18-dic'),(7,1,7,'12-feb','26-feb','19-mar','04-jun','06-jul','30-jul','10-sep','05-nov','30-nov','17-dic'),(8,1,8,'12-feb','26-feb','19-mar','14-may','06-jul','30-jul','03-sep','15-oct','30-nov','17-dic'),(9,1,9,'13-feb','27-feb','20-mar','29-may','10-jul','31-jul','11-sep','06-nov','27-nov','18-dic'),(10,1,10,'11-feb','04-mar','18-mar','20-may','08-jul','29-jul','16-sep','28-oct','25-nov','16-dic'),(11,1,11,'14-feb','28-feb','21-mar','16-may','11-jul','01-ago','14-sep','24-oct','28-nov','19-dic'),(12,1,12,'11-feb','04-mar','18-mar','13-may','08-jul','29-jul','02-sep','14-oct','25-nov','16-dic'),(13,1,13,'13-feb','27-feb','20-mar','05-jun','10-jul','31-jul','25-sep','06-nov','27-nov','18-dic'),(14,1,14,'11-feb','04-mar','18-mar','13-may','08-jul','29-jul','23-sep','14-oct','25-nov','16-dic'),(15,1,15,'09-feb','02-mar','16-mar','11-may','06-jul','27-jul','14-sep','19-oct','30-nov','19-dic'),(16,1,16,'12-feb','26-feb','19-mar','14-may','11-jul','30-jul','10-sep','22-oct','28-nov','17-dic'),(17,1,17,'09-feb','02-mar','16-mar','01-jun','06-jul','27-jul','31-ago','19-oct','30-nov','15-dic'),(18,1,18,'10-feb','03-mar','17-mar','12-may','07-jul','28-jul','01-sep','13-oct','24-nov','15-dic'),(19,1,19,'13-feb','27-feb','20-mar','15-may','10-jul','31-jul','25-sep','06-nov','27-nov','18-dic'),(20,1,20,'12-feb','26-feb','19-mar','14-may','07-jul','30-jul','10-sep','05-nov','27-nov','17-dic'),(21,1,21,'09-feb','02-mar','16-mar','11-may','06-jul','27-jul','14-sep','26-oct','30-nov','19-dic'),(22,1,22,'13-feb','27-feb','20-mar','29-may','10-jul','31-jul','25-sep','04-nov','27-nov','18-dic'),(23,1,23,'12-feb','26-feb','19-mar','04-jun','06-jul','30-jul','10-sep','29-oct','30-nov','17-dic'),(24,1,24,'12-feb','26-feb','19-mar','14-may','10-jul','30-jul','10-sep','22-oct','30-nov','17-dic'),(25,1,25,'11-feb','04-mar','18-mar','03-jun','08-jul','29-jul','23-sep','14-oct','25-nov','16-dic'),(26,1,26,'13-feb','27-feb','20-mar','15-may','10-jul','31-jul','18-sep','30-oct','27-nov','18-dic'),(27,1,27,'12-feb','26-feb','19-mar','28-may','10-jul','30-jul','10-sep','05-nov','27-nov','17-dic');
/*!40000 ALTER TABLE `Mesas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-28 11:17:20
