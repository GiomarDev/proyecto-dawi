CREATE DATABASE  IF NOT EXISTS `bd_copia_seguridad` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_copia_seguridad`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_copia_seguridad
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_enlace`
--

DROP TABLE IF EXISTS `tb_enlace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_enlace` (
  `cod_enlace` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `ruta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_enlace`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_enlace`
--

LOCK TABLES `tb_enlace` WRITE;
/*!40000 ALTER TABLE `tb_enlace` DISABLE KEYS */;
INSERT INTO `tb_enlace` VALUES (1,'InformeMultiple','informemultiple.jsp'),(2,'PlanTrabajo','plantrabajo.jsp'),(3,'UnidadOrganica','unidadorganica.jsp');
/*!40000 ALTER TABLE `tb_enlace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_informemultiple`
--

DROP TABLE IF EXISTS `tb_informemultiple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_informemultiple` (
  `cod_infm` int(11) NOT NULL AUTO_INCREMENT,
  `de_infm` varchar(45) DEFAULT NULL,
  `pa_infm` varchar(45) DEFAULT NULL,
  `fec_cre` date DEFAULT NULL,
  `fec_mod` date DEFAULT NULL,
  `asunto` varchar(45) DEFAULT NULL,
  `motivo` varchar(45) DEFAULT NULL,
  `cod_uniO` int(11) DEFAULT NULL,
  `cod_usr` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_infm`),
  KEY `cod_uniO` (`cod_uniO`),
  KEY `cod_usr` (`cod_usr`),
  CONSTRAINT `tb_informemultiple_ibfk_1` FOREIGN KEY (`cod_uniO`) REFERENCES `tb_unidadorganica` (`cod_uniO`),
  CONSTRAINT `tb_informemultiple_ibfk_2` FOREIGN KEY (`cod_usr`) REFERENCES `tb_usuario` (`cod_usr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_informemultiple`
--

LOCK TABLES `tb_informemultiple` WRITE;
/*!40000 ALTER TABLE `tb_informemultiple` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_informemultiple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_informerai`
--

DROP TABLE IF EXISTS `tb_informerai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_informerai` (
  `cod_infor` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `fuentes` varchar(45) DEFAULT NULL,
  `contenido` varchar(45) DEFAULT NULL,
  `foto` blob,
  `cod_planT` int(11) DEFAULT NULL,
  `cod_usr` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_infor`),
  KEY `cod_planT` (`cod_planT`),
  KEY `cod_usr` (`cod_usr`),
  CONSTRAINT `tb_informerai_ibfk_1` FOREIGN KEY (`cod_planT`) REFERENCES `tb_plantrabajo` (`cod_planT`),
  CONSTRAINT `tb_informerai_ibfk_2` FOREIGN KEY (`cod_usr`) REFERENCES `tb_usuario` (`cod_usr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_informerai`
--

LOCK TABLES `tb_informerai` WRITE;
/*!40000 ALTER TABLE `tb_informerai` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_informerai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_plantrabajo`
--

DROP TABLE IF EXISTS `tb_plantrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_plantrabajo` (
  `cod_planT` int(11) NOT NULL AUTO_INCREMENT,
  `area_planT` varchar(45) DEFAULT NULL,
  `resp_planT` varchar(45) DEFAULT NULL,
  `fec_ini` date DEFAULT NULL,
  `fec_fin` date DEFAULT NULL,
  `rec_planT` varchar(45) DEFAULT NULL,
  `incidencias` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_planT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_plantrabajo`
--

LOCK TABLES `tb_plantrabajo` WRITE;
/*!40000 ALTER TABLE `tb_plantrabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_plantrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_rol`
--

DROP TABLE IF EXISTS `tb_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_rol` (
  `cod_TipUsr` int(11) NOT NULL AUTO_INCREMENT,
  `nom_TipUsr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_TipUsr`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_rol`
--

LOCK TABLES `tb_rol` WRITE;
/*!40000 ALTER TABLE `tb_rol` DISABLE KEYS */;
INSERT INTO `tb_rol` VALUES (1,'ADMINISTRADOR');
/*!40000 ALTER TABLE `tb_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_rol_enlace`
--

DROP TABLE IF EXISTS `tb_rol_enlace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_rol_enlace` (
  `cod_enlace` int(11) NOT NULL,
  `cod_TipUsr` int(11) NOT NULL,
  PRIMARY KEY (`cod_enlace`,`cod_TipUsr`),
  KEY `cod_TipUsr` (`cod_TipUsr`),
  KEY `cod_enlace` (`cod_enlace`),
  CONSTRAINT `tb_rol_enlace_ibfk_2` FOREIGN KEY (`cod_enlace`) REFERENCES `tb_enlace` (`cod_enlace`),
  CONSTRAINT `tb_rol_rol_ibfk_1` FOREIGN KEY (`cod_TipUsr`) REFERENCES `tb_rol` (`cod_TipUsr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_rol_enlace`
--

LOCK TABLES `tb_rol_enlace` WRITE;
/*!40000 ALTER TABLE `tb_rol_enlace` DISABLE KEYS */;
INSERT INTO `tb_rol_enlace` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `tb_rol_enlace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_unidadorganica`
--

DROP TABLE IF EXISTS `tb_unidadorganica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_unidadorganica` (
  `cod_uniO` int(11) NOT NULL AUTO_INCREMENT,
  `nom_uniO` varchar(45) DEFAULT NULL,
  `ape_uniO` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `asunto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_uniO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_unidadorganica`
--

LOCK TABLES `tb_unidadorganica` WRITE;
/*!40000 ALTER TABLE `tb_unidadorganica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_unidadorganica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `cod_usr` int(11) NOT NULL AUTO_INCREMENT,
  `nom_usr` varchar(45) DEFAULT NULL,
  `ape_usr` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `tel_usr` char(9) DEFAULT NULL,
  `gen_usr` char(9) DEFAULT NULL,
  `dir_usr` varchar(45) DEFAULT NULL,
  `ema_usr` varchar(45) DEFAULT NULL,
  `dni_usr` char(8) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_usr`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'Giomar','Limo','Tecnologia','923325849','Masculino','MzE1 Lote6','Tech@gmail.com','77436619','giomar','giomar');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario_rol`
--

DROP TABLE IF EXISTS `tb_usuario_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario_rol` (
  `cod_usr` int(11) NOT NULL,
  `cod_TipUsr` int(11) NOT NULL,
  PRIMARY KEY (`cod_usr`,`cod_TipUsr`),
  KEY `cod_TipUsr` (`cod_TipUsr`),
  KEY `fk_usuario_has_rol_usuario_idx` (`cod_usr`),
  CONSTRAINT `tb_usuario_rol_ibfk_1` FOREIGN KEY (`cod_usr`) REFERENCES `tb_usuario` (`cod_usr`),
  CONSTRAINT `tb_usuario_rol_ibfk_2` FOREIGN KEY (`cod_TipUsr`) REFERENCES `tb_rol` (`cod_TipUsr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario_rol`
--

LOCK TABLES `tb_usuario_rol` WRITE;
/*!40000 ALTER TABLE `tb_usuario_rol` DISABLE KEYS */;
INSERT INTO `tb_usuario_rol` VALUES (1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `tb_usuario_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bd_copia_seguridad'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_iniciarSesion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_iniciarSesion`(vLogin varchar(25),vClave varchar(25))
BEGIN

	select cod_usr,nom_usr,ape_usr from 
    tb_usuario where login=vLogin and 
    pass=vClave;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_traerEnlacesDelUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_traerEnlacesDelUsuario`(codUsu int)
BEGIN



	SELECT 
					r.descripcion,
					r.ruta
			FROM
					tb_enlace r,
					tb_rol_enlace p,
					tb_rol t,
					tb_usuario_rol q
			WHERE
					r.cod_enlace = p.cod_enlace AND
					p.cod_TipUsr = t.cod_TipUsr AND
					t.cod_TipUsr = q.cod_TipUsr AND
					q.cod_usr = codUsu;



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

-- Dump completed on 2020-12-06 13:40:06
