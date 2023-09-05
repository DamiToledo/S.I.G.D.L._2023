-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: proyecto_libreria
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `autor_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(35) DEFAULT NULL,
  `apellido` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`autor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Daniel','Lopez Rosetti'),(2,'Asano','Inio'),(3,'Henry','james'),(4,'Carlos','Ferreira'),(5,'Garth','Enis'),(6,'Jhon','Boyne'),(7,'Amor','Towles'),(8,'Mary','Shelley'),(9,'Charles','Dickens'),(10,'Eugenio Raul','Zaffaroni'),(11,'Flavia','Costa'),(12,'Michelle','Perrot'),(13,'Georges','Duby'),(14,'Wolfram','Eilenberger'),(15,'Sara','Aldabe'),(16,'Nakai','Shinshi'),(17,'Mamita',NULL),(18,'Nagisa','Furuya'),(19,'Uguisu','Sachiko'),(20,'Oda','Eiichiro'),(21,'Lucy','Adlington'),(22,'Kawaguchi','Toshikazu'),(23,'Andy','Lanning'),(24,'Ron','Marz'),(25,'Howard','Porter'),(26,'Marco','Santucci'),(27,'Brian','Azzarello'),(28,'Lee','Bermejo');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor_has_libros`
--

DROP TABLE IF EXISTS `autor_has_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor_has_libros` (
  `autor_id` int(11) NOT NULL,
  `libros_id` int(11) NOT NULL,
  PRIMARY KEY (`autor_id`,`libros_id`),
  KEY `libros_id` (`libros_id`),
  CONSTRAINT `autor_has_libros_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`autor_id`),
  CONSTRAINT `autor_has_libros_ibfk_2` FOREIGN KEY (`libros_id`) REFERENCES `titulo` (`libros_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor_has_libros`
--

LOCK TABLES `autor_has_libros` WRITE;
/*!40000 ALTER TABLE `autor_has_libros` DISABLE KEYS */;
INSERT INTO `autor_has_libros` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(6,7),(7,8),(8,9),(9,10),(10,11),(11,12),(12,13),(13,13),(14,14),(15,15),(15,16),(16,17),(17,18),(18,19),(18,20),(19,21),(20,22),(21,23),(22,24),(23,25),(24,25),(25,25),(26,25),(27,26),(28,26);
/*!40000 ALTER TABLE `autor_has_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edicion`
--

DROP TABLE IF EXISTS `edicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edicion` (
  `edicion_id` int(11) NOT NULL AUTO_INCREMENT,
  `anio` int(4) NOT NULL,
  PRIMARY KEY (`edicion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edicion`
--

LOCK TABLES `edicion` WRITE;
/*!40000 ALTER TABLE `edicion` DISABLE KEYS */;
INSERT INTO `edicion` VALUES (1,1999),(2,2004),(3,2007),(4,2013),(5,2015),(6,2016),(7,2018),(8,2019),(9,2021),(10,2022),(11,2023);
/*!40000 ALTER TABLE `edicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edicion_has_libros`
--

DROP TABLE IF EXISTS `edicion_has_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edicion_has_libros` (
  `edicion_id` int(11) NOT NULL,
  `libros_id` int(11) NOT NULL,
  PRIMARY KEY (`edicion_id`,`libros_id`),
  KEY `libros_id` (`libros_id`),
  CONSTRAINT `edicion_has_libros_ibfk_1` FOREIGN KEY (`edicion_id`) REFERENCES `edicion` (`edicion_id`),
  CONSTRAINT `edicion_has_libros_ibfk_2` FOREIGN KEY (`libros_id`) REFERENCES `titulo` (`libros_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edicion_has_libros`
--

LOCK TABLES `edicion_has_libros` WRITE;
/*!40000 ALTER TABLE `edicion_has_libros` DISABLE KEYS */;
INSERT INTO `edicion_has_libros` VALUES (1,15),(2,16),(3,5),(3,7),(3,14),(4,4),(5,9),(7,3),(8,12),(9,6),(9,12),(10,8),(10,10),(10,11),(10,23),(10,24),(11,1),(11,2),(11,17),(11,18),(11,19),(11,20),(11,21),(11,22),(11,25),(11,26);
/*!40000 ALTER TABLE `edicion_has_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editorial` (
  `editorial_id` int(11) NOT NULL AUTO_INCREMENT,
  `editorial` varchar(40) NOT NULL,
  PRIMARY KEY (`editorial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'Colihue'),(2,'Ivrea'),(3,'Penguin'),(4,'Planeta'),(5,'Taurus'),(6,'Planeta de Livros Portugal'),(7,'Salamandra'),(8,'Ovni Press'),(9,'PLAZA & JANES EDITORES'),(10,'Dynamite');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial_has_libros`
--

DROP TABLE IF EXISTS `editorial_has_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editorial_has_libros` (
  `editorial_id` int(11) NOT NULL,
  `libros_id` int(11) NOT NULL,
  PRIMARY KEY (`editorial_id`,`libros_id`),
  KEY `libros_id` (`libros_id`),
  CONSTRAINT `editorial_has_libros_ibfk_1` FOREIGN KEY (`editorial_id`) REFERENCES `editorial` (`editorial_id`),
  CONSTRAINT `editorial_has_libros_ibfk_2` FOREIGN KEY (`libros_id`) REFERENCES `titulo` (`libros_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial_has_libros`
--

LOCK TABLES `editorial_has_libros` WRITE;
/*!40000 ALTER TABLE `editorial_has_libros` DISABLE KEYS */;
INSERT INTO `editorial_has_libros` VALUES (1,4),(1,15),(1,16),(2,2),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(3,3),(3,9),(3,10),(4,1),(5,11),(5,12),(5,13),(5,14),(6,23),(7,6),(7,7),(7,8),(8,25),(8,26),(9,24),(10,5);
/*!40000 ALTER TABLE `editorial_has_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `genero_id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(40) NOT NULL,
  PRIMARY KEY (`genero_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Ciencia ficcion'),(2,'Drama'),(3,'Fantasia'),(4,'Terror'),(5,'Ciencia'),(6,'Ficcion'),(7,'Novela'),(8,'Historia'),(9,'Sociologia'),(10,'Biografia'),(11,'Ciencias Naturales'),(12,'Romance'),(13,'Aventura'),(14,'Thriller'),(15,'Poesia');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero_has_libros`
--

DROP TABLE IF EXISTS `genero_has_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero_has_libros` (
  `genero_id` int(11) NOT NULL,
  `libros_id` int(11) NOT NULL,
  PRIMARY KEY (`genero_id`,`libros_id`),
  KEY `libros_id` (`libros_id`),
  CONSTRAINT `genero_has_libros_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`genero_id`),
  CONSTRAINT `genero_has_libros_ibfk_2` FOREIGN KEY (`libros_id`) REFERENCES `titulo` (`libros_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero_has_libros`
--

LOCK TABLES `genero_has_libros` WRITE;
/*!40000 ALTER TABLE `genero_has_libros` DISABLE KEYS */;
INSERT INTO `genero_has_libros` VALUES (1,9),(1,14),(2,5),(2,6),(2,20),(2,25),(2,26),(3,2),(4,9),(4,21),(4,26),(5,1),(5,15),(5,16),(6,3),(6,7),(6,8),(6,9),(6,24),(7,10),(7,20),(7,22),(7,24),(8,11),(8,13),(8,23),(9,12),(12,17),(12,18),(12,19),(12,20),(12,24),(13,22),(15,4);
/*!40000 ALTER TABLE `genero_has_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma`
--

DROP TABLE IF EXISTS `idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idioma` (
  `idiomas_id` int(11) NOT NULL AUTO_INCREMENT,
  `idiomas` varchar(40) NOT NULL,
  PRIMARY KEY (`idiomas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` VALUES (1,'Español'),(2,'Frances'),(3,'Ingles'),(4,'Italiano'),(5,'Portugues');
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idiomas_has_libros`
--

DROP TABLE IF EXISTS `idiomas_has_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idiomas_has_libros` (
  `idiomas_id` int(11) NOT NULL,
  `libros_id` int(11) NOT NULL,
  PRIMARY KEY (`idiomas_id`,`libros_id`),
  KEY `libros_id` (`libros_id`),
  CONSTRAINT `idiomas_has_libros_ibfk_1` FOREIGN KEY (`idiomas_id`) REFERENCES `idioma` (`idiomas_id`),
  CONSTRAINT `idiomas_has_libros_ibfk_2` FOREIGN KEY (`libros_id`) REFERENCES `titulo` (`libros_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idiomas_has_libros`
--

LOCK TABLES `idiomas_has_libros` WRITE;
/*!40000 ALTER TABLE `idiomas_has_libros` DISABLE KEYS */;
INSERT INTO `idiomas_has_libros` VALUES (1,1),(1,2),(1,3),(1,4),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,24),(1,25),(1,26),(3,5),(5,23);
/*!40000 ALTER TABLE `idiomas_has_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punto_venta`
--

DROP TABLE IF EXISTS `punto_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `punto_venta` (
  `punto_id` int(11) NOT NULL AUTO_INCREMENT,
  `formato` varchar(30) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`punto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punto_venta`
--

LOCK TABLES `punto_venta` WRITE;
/*!40000 ALTER TABLE `punto_venta` DISABLE KEYS */;
INSERT INTO `punto_venta` VALUES (1,'Digital','www.cuspide.com',NULL,'ventas@cuspide.com'),(2,'Fisico','Av. Díaz Vélez 5125, Caballito, Argentina','4958-4442','ventas@colihue.com.ar'),(3,'Digital','www.colihue.com.ar','4958-4442','ventas@colihue.com.ar'),(4,'Digital','www.lacomiqueria.com.ar','1161825787','info@comiqueria.com.ar'),(5,'Digital','www.dynamite.com','856-312-1040','info@dynamite.com'),(6,'Fisico','113 Gaither Dr., Suite 205, Mt. Laurel, NJ 08054, USA','856-312-1040','info@dynamite.com'),(7,'Digital','www.sbs.com.ar','1126695353','sac@sbs.com.ar'),(8,'Fisico','Av. Coronel Díaz 1742','1126695353','sac@sbs.com.ar'),(9,'Digital','www.penguinlibros.com','5235-4400','recepcion@penguinrandomhouse.com'),(10,'Fisico','Humberto Primo 555, (1103) CABA','5235-4400','recepcion@penguinrandomhouse.com'),(11,'Digital','www.planetadelivros.pt','00351213408520','info@planeta.pt'),(12,'Fisico','Calçada Ribeiro Santos, nº 37 – 2º - 1200-789 Lisboa','00351213408520','info@planeta.pt'),(13,'Digital','www.amazon.com',NULL,NULL);
/*!40000 ALTER TABLE `punto_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punto_venta_has_libros`
--

DROP TABLE IF EXISTS `punto_venta_has_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `punto_venta_has_libros` (
  `punto_id` int(11) NOT NULL,
  `libros_id` int(11) NOT NULL,
  PRIMARY KEY (`punto_id`,`libros_id`),
  KEY `libros_id` (`libros_id`),
  CONSTRAINT `punto_venta_has_libros_ibfk_1` FOREIGN KEY (`punto_id`) REFERENCES `punto_venta` (`punto_id`),
  CONSTRAINT `punto_venta_has_libros_ibfk_2` FOREIGN KEY (`libros_id`) REFERENCES `titulo` (`libros_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punto_venta_has_libros`
--

LOCK TABLES `punto_venta_has_libros` WRITE;
/*!40000 ALTER TABLE `punto_venta_has_libros` DISABLE KEYS */;
INSERT INTO `punto_venta_has_libros` VALUES (1,1),(1,3),(1,6),(1,7),(1,21),(1,22),(1,25),(1,26),(2,4),(2,15),(2,16),(3,4),(3,15),(3,16),(4,2),(4,17),(4,18),(4,19),(4,20),(4,22),(5,5),(6,5),(7,6),(7,7),(7,8),(8,6),(8,7),(8,8),(9,9),(9,10),(9,11),(9,12),(9,13),(9,14),(10,9),(10,10),(10,11),(10,12),(10,13),(10,14),(11,23),(12,23),(13,24);
/*!40000 ALTER TABLE `punto_venta_has_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titulo`
--

DROP TABLE IF EXISTS `titulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titulo` (
  `libros_id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `Paginas` int(4) DEFAULT NULL,
  `Stock` int(4) DEFAULT NULL,
  `Precio` float(10,2) DEFAULT NULL,
  `autor_id` int(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `edicion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`libros_id`),
  KEY `autor_id` (`autor_id`),
  KEY `genero_id` (`genero_id`),
  KEY `edicion_id` (`edicion_id`),
  CONSTRAINT `titulo_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`autor_id`),
  CONSTRAINT `titulo_ibfk_2` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`genero_id`),
  CONSTRAINT `titulo_ibfk_3` FOREIGN KEY (`edicion_id`) REFERENCES `edicion` (`edicion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titulo`
--

LOCK TABLES `titulo` WRITE;
/*!40000 ALTER TABLE `titulo` DISABLE KEYS */;
INSERT INTO `titulo` VALUES (1,'La Gioconda y Leonardo',400,280,6000.00,1,5,11),(2,'Heroes',100,150,4300.00,2,3,11),(3,'Fantasmas',448,200,5699.00,3,6,7),(4,'A mi Juego',128,50,1550.00,4,15,4),(5,'The Boys Collection cover signed by Garth Enis',152,50,7000.00,5,2,3),(6,'El niño con el pijama de rayas',224,150,3199.00,6,2,9),(7,'Las huellas del silencio',400,280,8399.00,6,6,3),(8,'Un caballero en Moscú',512,70,5054.99,7,6,10),(9,'Frankenstein o el moderno Prometeo',320,50,3699.00,8,1,1),(10,'Oliver Twist',624,300,5699.00,9,7,10),(11,'Colonialismo y Derechos Humanos',240,45,5799.00,10,8,10),(12,'Algoritmos, biohackers y nuevas formas de vida',192,33,4399.00,11,9,9),(13,'Historia de las mujeres',3656,10,16979.00,12,8,8),(14,'Tiempo de magos',384,23,5799.00,13,1,3),(15,'Química 1. Fundamentos',488,15,7100.00,14,5,1),(16,'Química 2',408,15,8000.00,14,5,2),(17,'Perro que ladra no muerde',200,100,2300.00,15,12,11),(18,'Mi vecino metalero',400,5,2300.00,16,12,11),(19,'You are in the blue summer',200,35,2300.00,17,12,11),(20,'The blue summer and you',200,35,2600.00,17,2,1),(21,'Beyond the bad dream',200,500,2000.00,18,4,11),(22,'WANTED !',200,1000,1800.00,19,7,1),(23,'As Costureiras de Auschwitz',392,15,6500.00,20,8,10),(24,'Antes que se enfrie el cafe',272,500,6199.00,21,6,1),(25,'LIGA DE LA JUSTICIA : INVIERNO INTERMINABLE',450,17,6000.00,22,2,11),(26,'BATMAN : JOKER',350,17,2500.00,23,2,1);
/*!40000 ALTER TABLE `titulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyecto_libreria'
--

--
-- Dumping routines for database 'proyecto_libreria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-22 17:19:30
