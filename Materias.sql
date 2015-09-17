-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: Materias
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
-- Table structure for table `Materias`
--

DROP TABLE IF EXISTS `Materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Materias` (
  `nombre_materia` varchar(70) NOT NULL,
  `primer_turno` varchar(20) NOT NULL,
  `segundo_turno` varchar(20) NOT NULL,
  `tercer_turno` varchar(20) NOT NULL,
  `cuarto_turno` varchar(20) NOT NULL,
  `quinto_turno` varchar(20) NOT NULL,
  `sexto_turno` varchar(20) NOT NULL,
  `septimo_turno` varchar(20) NOT NULL,
  `octavo_turno` varchar(20) NOT NULL,
  `noveno_turno` varchar(20) NOT NULL,
  `decimo_turno` varchar(20) NOT NULL,
  `año_materia` varchar(20) DEFAULT NULL,
  `carrera` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`nombre_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Materias`
--

LOCK TABLES `Materias` WRITE;
/*!40000 ALTER TABLE `Materias` DISABLE KEYS */;
INSERT INTO `Materias` VALUES ('Admin. y Gestión de Organizaciones','14-feb','28-feb','21-mar','16-may','11-jul','01-ago','14-sep','24-oct','28-nov','19-dic','Segundo Año','Lic. en Sistemas de Información'),('Álgebra','09-feb','02-mar','16-mar','11-may','06-jul','27-jul','07-sep','19-oct','30-nov','15-dic','Primer Año','Lic. en Sistemas de Información'),('Algoritmo y Estructura de Datos I','11-feb','04-mar','18-mar','13-may','08-jul','29-jul','16-sep','28-oct','25-nov','16-dic','Primer Año','Lic. en Sistemas de Información'),('Algoritmo y Estructura de Datos II','12-feb','26-feb','19-mar','04-jun','06-jul','29-jul','02-sep','14-oct','25-nov','16-dic','Primer Año','Lic. en Sistemas de Información'),('Arquitectura y Org de Computadoras','12-feb','26-feb','19-mar','04-jun','06-jul','30-jul','10-sep','05-nov','30-nov','17-dic','Segundo Año','Lic. en Sistemas de Información'),('Base de Datos I','09-feb','02-mar','16-mar','01-jun','06-jul','27-jul','31-ago','19-oct','30-nov','15-dic','Tercer Año','Lic. en Sistemas de Información'),('Base de Datos II','12-feb','26-feb','19-mar','04-jun','06-jul','30-jul','10-sep','29-oct','30-nov','17-dic','Cuarto Año','Lic. en Sistemas de Información'),('Cálculo Diferencial e Integral','12-feb','26-feb','19-mar','14-may','06-jul','30-jul','03-sep','15-oct','30-nov','17-dic','Segundo Año','Lic. en Sistemas de Información'),('Comunicación de Datos','13-feb','27-feb','20-mar','05-jun','10-jul','31-jul','25-sep','06-nov','27-nov','18-dic','Tercer Año','Lic. en Sistemas de Información'),('Economía Aplicada','12-feb','26-feb','19-mar','14-may','07-jul','30-jul','10-sep','05-nov','27-nov','17-dic','Cuarto Año','Lic. en Sistemas de Información'),('Estadística Inferencial','11-feb','04-mar','18-mar','03-jun','08-jul','29-jul','23-sep','14-oct','25-nov','16-dic','Quinto Año','Lic. en Sistemas de Información'),('Ingeniería de Software I','11-feb','04-mar','18-mar','13-may','08-jul','29-jul','23-sep','14-oct','25-nov','16-dic','Tercer Año','Lic. en Sistemas de Información'),('Ingeniería de Software II','13-feb','27-feb','20-mar','15-may','10-jul','31-jul','25-sep','06-nov','27-nov','18-dic','Cuarto Año','Lic. en Sistemas de Información'),('Inglés Técnico Informático','10-feb','03-mar','17-mar','12-may','07-jul','28-jul','01-sep','13-oct','24-nov','15-dic','Extra Curricular','Lic. en Sistemas de Información'),('Inteligencia Artificial','13-feb','27-feb','20-mar','15-may','10-jul','31-jul','18-sep','30-oct','27-nov','18-dic','Quinto Año','Lic. en Sistemas de Información'),('Lógica y Matemática Computacional','13-feb','27-feb','20-mar','05-jun','10-jul','30-jul','10-sep','29-oct','27-nov','17-dic','Primer Año','Lic. en Sistemas de Información'),('Métodos Computacionales','12-feb','26-feb','19-mar','14-may','10-jul','30-jul','10-sep','22-oct','30-nov','17-dic','Cuarto Año','Lic. en Sistemas de Información'),('Modelo y Simulación','12-feb','26-feb','19-mar','28-may','10-jul','30-jul','10-sep','05-nov','27-nov','17-dic','Quinto Año','Lic. en Sistemas de Información'),('Paradigmas y Lenguajes','13-feb','27-feb','20-mar','29-may','10-jul','31-jul','04-sep','16-oct','27-nov','18-dic','Segundo Año','Lic. en Sistemas de Información'),('Probabilidad y Estadísticas','12-feb','26-feb','19-mar','14-may','11-jul','30-jul','10-sep','22-oct','28-nov','17-dic','Tercer Año','Lic. en Sistemas de Información'),('Programación Orientada a Objetos','13-feb','27-feb','20-mar','29-may','10-jul','31-jul','11-sep','06-nov','27-nov','18-dic','Segundo Año','Lic. en Sistemas de Información'),('Redes de Datos','13-feb','27-feb','20-mar','29-may','10-jul','31-jul','25-sep','04-nov','27-nov','18-dic','Cuarto Año','Lic. en Sistemas de Información'),('Sistemas Operativos(plan nuevo y viejo)','11-feb','04-mar','18-mar','20-may','08-jul','29-jul','16-sep','28-oct','25-nov','16-dic','Segundo Año','Lic. en Sistemas de Información'),('Sistemas y Organizaciones','10-feb','03-mar','17-mar','12-may','07-jul','28-jul','01-sep','13-oct','24-nov','15-dic','Primer Año','Lic. en Sistemas de Información'),('Taller de Programación I','11-feb','04-mar','18-mar','13-may','08-jul','29-jul','02-sep','14-oct','25-nov','16-dic','Tercer Año','Lic. en Sistemas de Información'),('Taller de Programación II','09-feb','02-mar','16-mar','11-may','06-jul','27-jul','14-sep','19-oct','30-nov','19-dic','Tercer Año','Lic. en Sistemas de Información'),('Teoría de la Computación','09-feb','02-mar','16-mar','11-may','06-jul','27-jul','14-sep','26-oct','30-nov','19-dic','Cuarto Año','Lic. en Sistemas de Información');
/*!40000 ALTER TABLE `Materias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-16 13:05:26
