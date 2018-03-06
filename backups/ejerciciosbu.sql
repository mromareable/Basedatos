-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicios
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno` (
  `alumno_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_alumno` varchar(50) DEFAULT NULL,
  `apellido_pat_alumno` varchar(50) DEFAULT NULL,
  `apellido_mat_alumno` varchar(20) NOT NULL,
  `no_control_alumno` varchar(50) NOT NULL,
  PRIMARY KEY (`alumno_id`),
  UNIQUE KEY `no_control_alumno` (`no_control_alumno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'Omar','Gayt n','Holgu¡n','15551392'),(2,'German','Vega','Melendez','15551932'),(3,'Angel','Lara','Guzman','15551329'),(4,'Yadir','Flores','Borjas','15553291'),(5,'Alan','Herrera','Mata','15552931');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera` (
  `carrera_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_carrera` varchar(50) NOT NULL,
  `creditos_carrera` int(11) NOT NULL,
  PRIMARY KEY (`carrera_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copia_alumno`
--

DROP TABLE IF EXISTS `copia_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copia_alumno` (
  `alumno_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_alumno` varchar(20) NOT NULL,
  `apellido_pat_alumno` varchar(20) NOT NULL,
  `apellido_mat_alumno` varchar(20) NOT NULL,
  `no_control_alumno` int(11) NOT NULL,
  PRIMARY KEY (`alumno_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copia_alumno`
--

LOCK TABLES `copia_alumno` WRITE;
/*!40000 ALTER TABLE `copia_alumno` DISABLE KEYS */;
INSERT INTO `copia_alumno` VALUES (1,'Omar','Gayt n','Holgu¡n',15551392),(2,'German','Vega','Melendez',15551932),(3,'Angel','Lara','Guzman',15551329),(4,'Yadir','Flores','Borjas',15553291),(5,'Alan','Herrera','Mata',15552931);
/*!40000 ALTER TABLE `copia_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docentes` (
  `docente_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_docente` varchar(25) NOT NULL,
  `apellido_pat_docente` varchar(25) NOT NULL,
  `apellido_mat_docente` varchar(25) NOT NULL,
  `horas_plaza` int(11) NOT NULL DEFAULT '8',
  `departamento_docente` enum('Sistemas y computaci¢n','Ingenier¡a Industrial','Ciencias de la Tierra','Ciencias Econ¢mico Administrativas','Ciencias B sicas') NOT NULL,
  PRIMARY KEY (`docente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dup_alumno`
--

DROP TABLE IF EXISTS `dup_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dup_alumno` (
  `alumno_id` int(11) NOT NULL,
  `nombre_alumno` varchar(20) NOT NULL,
  `apellido_pat_alumno` varchar(20) NOT NULL,
  `apellido_mat_alumno` varchar(20) NOT NULL,
  `no_control_alumno` int(11) NOT NULL,
  PRIMARY KEY (`alumno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dup_alumno`
--

LOCK TABLES `dup_alumno` WRITE;
/*!40000 ALTER TABLE `dup_alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `dup_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutos`
--

DROP TABLE IF EXISTS `institutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutos` (
  `instituto_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_instituto` varchar(50) DEFAULT NULL,
  `estado_instituto` enum('Aguascalientes','Baja California','Baja California Sur','Campeche','Coahuila','Colima','Chiapas','Chihuahua','DF','Durango','Guanajuato','Guerrero','Hidalgo','Guadalajra','M‚xico','Michoacan','Morales','Nayarit','Nuevo Le¢n','Oaxaca','Puebla','Queretaro','Quintana Roo','San Luis Potos¡','Sinaloa','Tabasco','Tamaulipas','Tlaxcala','Veracruz','Zacatecas') DEFAULT NULL,
  PRIMARY KEY (`instituto_id`),
  UNIQUE KEY `nombre_instituto` (`nombre_instituto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutos`
--

LOCK TABLES `institutos` WRITE;
/*!40000 ALTER TABLE `institutos` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05 19:42:19
