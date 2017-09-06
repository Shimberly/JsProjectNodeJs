-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: JSPROJECT
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `pagina`
--

DROP TABLE IF EXISTS `pagina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagina` (
  `idpagina` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `audio` varchar(255) NOT NULL,
  `idcuento` int(11) NOT NULL,
  PRIMARY KEY (`idpagina`),
  KEY `idcuento_idx` (`idcuento`),
  CONSTRAINT `idcuento` FOREIGN KEY (`idcuento`) REFERENCES `cuento` (`idcuento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina`
--

LOCK TABLES `pagina` WRITE;
/*!40000 ALTER TABLE `pagina` DISABLE KEYS */;
INSERT INTO `pagina` VALUES (1,'images/cerditos1.jpg','audios/cerditos1.mp3',1),(2,'images/cerditos2.jpg','audios/cerditos2.mp3',1),(3,'images/cerditos3.jpg','audios/cerditos3.mp3',1),(4,'images/cerditos4.jpg','audios/cerditos4.mp3',1),(5,'images/cerditos5.jpg','audios/cerditos5.mp3',1),(6,'images/cerditos6.jpg','audios/cerditos6.mp3',1),(7,'images/cerditos7.jpg','audios/cerditos7.mp3',1),(8,'images/cerditos8.jpg','audios/cerditos8.mp3',1),(9,'images/cerditos9.jpg','audios/cerditos9.mp3',1),(10,'images/cerditos10.jpg','audios/cerditos10.mp3',1),(11,'images/cerditos11.jpg','audios/cerditos11.mp3',1),(12,'images/cerditos12.jpg','audios/cerditos12.mp3',1),(13,'images/cerditos13.jpg','audios/cerditos13.mp3',1),(14,'images/cerditos14.jpg','audios/cerditos14.mp3',1),(15,'images/cerditos15.jpg','audios/cerditos15.mp3',1),(16,'images/cerditos16.jpg','audios/cerditos16.mp3',1),(17,'images/cerditos17.jpg','audios/cerditos17.mp3',1),(18,'images/cerditos18.jpg','audios/cerditos18.mp3',1),(19,'images/cuentos\\/blancanieves1.jpg','images/cuentos/blancanieves1.mp3',2),(20,'images/cuentos\\/blancanieves2.jpg','images/cuentos/blancanieves2.mp3',2),(21,'images/cuentos\\/blancanieves3.jpg','images/cuentos/blancanieves3.mp3',2),(22,'images/cuentos\\/blancanieves4.jpg','images/cuentos/blancanieves4.mp3',2),(23,'images/cuentos\\/blancanieves5.jpg','images/cuentos/blancanieves5.mp3',2),(24,'images/cuentos\\/blancanieves6.jpg','images/cuentos/blancanieves6.mp3',2),(25,'images/cuentos\\/blancanieves7.jpg','images/cuentos/blancanieves7.mp3',2),(26,'images/cuentos\\/blancanieves8.jpg','images/cuentos/blancanieves8.mp3',2),(27,'images/cuentos\\/blancanieves9.jpg','images/cuentos/blancanieves9.mp3',2),(28,'images/cuentos\\/blancanieves10.jpg','images/cuentos/blancanieves10.mp3',2),(29,'images/cuentos\\/blancanieves11.jpg','images/cuentos/blancanieves11.mp3',2),(30,'images/cuentos\\/blancanieves12.jpg','images/cuentos/blancanieves12.mp3',2),(31,'images/cuentos\\/blancanieves13.jpg','images/cuentos/blancanieves13.mp3',2),(32,'images/cuentos\\/blancanieves14.jpg','images/cuentos/blancanieves14.mp3',2),(33,'images/cuentos\\/blancanieves15.jpg','images/cuentos/blancanieves15.mp3',2),(34,'images/cuentos\\/blancanieves16.jpg','images/cuentos/blancanieves16.mp3',2),(35,'images/cuentos\\/blancanieves17.jpg','images/cuentos/blancanieves17.mp3',2),(36,'images/cuentos\\/blancanieves18.jpg','images/cuentos/blancanieves18.mp3',2),(37,'images/cuentos\\/pinocho1.jpg','images/cuentos/pinocho1.mp3',3),(38,'images/cuentos\\/pinocho2.jpg','images/cuentos/pinocho2.mp3',3),(39,'images/cuentos\\/pinocho3.jpg','images/cuentos/pinocho3.mp3',3),(40,'images/cuentos\\/pinocho4.jpg','images/cuentos/pinocho4.mp3',3),(41,'images/cuentos\\/pinocho5.jpg','images/cuentos/pinocho5.mp3',3),(42,'images/cuentos\\/pinocho6.jpg','images/cuentos/pinocho6.mp3',3),(43,'images/cuentos\\/pinocho7.jpg','images/cuentos/pinocho7.mp3',3),(44,'images/cuentos\\/pinocho8.jpg','images/cuentos/pinocho8.mp3',3),(45,'images/cuentos\\/pinocho9.jpg','images/cuentos/pinocho9.mp3',3),(46,'images/cuentos\\/pinocho10.jpg','images/cuentos/pinocho10.mp3',3),(47,'images/cuentos\\/pinocho11.jpg','images/cuentos/pinocho11.mp3',3),(48,'images/cuentos\\/pinocho12.jpg','images/cuentos/pinocho12.mp3',3),(49,'images/cuentos\\/pinocho13.jpg','images/cuentos/pinocho13.mp3',3),(50,'images/cuentos\\/pinocho14.jpg','images/cuentos/pinocho14.mp3',3),(51,'images/cuentos\\/pinocho15.jpg','images/cuentos/pinocho15.mp3',3),(52,'images/cuentos\\/pinocho16.jpg','images/cuentos/pinocho16.mp3',3),(53,'images/cuentos\\/pinocho17.jpg','images/cuentos/pinocho17.mp3',3),(54,'images/cuentos\\/pinocho18.jpg','images/cuentos/pinocho18.mp3',3),(55,'images/cuentos\\/pinocho1.jpg','images/cuentos/pinocho1.mp3',4),(56,'images/cuentos\\/pinocho2.jpg','images/cuentos/pinocho2.mp3',4),(57,'images/cuentos\\/pinocho3.jpg','images/cuentos/pinocho3.mp3',4),(58,'images/cuentos\\/pinocho4.jpg','images/cuentos/pinocho4.mp3',4),(59,'images/cuentos\\/pinocho5.jpg','images/cuentos/pinocho5.mp3',4),(60,'images/cuentos\\/pinocho6.jpg','images/cuentos/pinocho6.mp3',4),(61,'images/cuentos\\/pinocho7.jpg','images/cuentos/pinocho7.mp3',4),(62,'images/cuentos\\/pinocho8.jpg','images/cuentos/pinocho8.mp3',4),(63,'images/cuentos\\/pinocho9.jpg','images/cuentos/pinocho9.mp3',4),(64,'images/cuentos\\/pinocho10.jpg','images/cuentos/pinocho10.mp3',4),(65,'images/cuentos\\/pinocho11.jpg','images/cuentos/pinocho11.mp3',4),(66,'images/cuentos\\/pinocho12.jpg','images/cuentos/pinocho12.mp3',4),(67,'images/cuentos\\/pinocho13.jpg','images/cuentos/pinocho13.mp3',4),(68,'images/cuentos\\/pinocho14.jpg','images/cuentos/pinocho14.mp3',4),(69,'images/cuentos\\/pinocho15.jpg','images/cuentos/pinocho15.mp3',4),(70,'images/cuentos\\/pinocho16.jpg','images/cuentos/pinocho16.mp3',4),(71,'images/cuentos\\/pinocho17.jpg','images/cuentos/pinocho17.mp3',4),(72,'images/cuentos\\/pinocho18.jpg','images/cuentos/pinocho18.mp3',4),(73,'images/cuentos\\/blancanieves1.jpg','images/cuentos/blancanieves1.mp3',5),(74,'images/cuentos\\/blancanieves2.jpg','images/cuentos/blancanieves2.mp3',5),(75,'images/cuentos\\/blancanieves3.jpg','images/cuentos/blancanieves3.mp3',5),(76,'images/cuentos\\/blancanieves4.jpg','images/cuentos/blancanieves4.mp3',5),(77,'images/cuentos\\/blancanieves5.jpg','images/cuentos/blancanieves5.mp3',5),(78,'images/cuentos\\/blancanieves6.jpg','images/cuentos/blancanieves6.mp3',5),(79,'images/cuentos\\/blancanieves7.jpg','images/cuentos/blancanieves7.mp3',5),(80,'images/cuentos\\/blancanieves8.jpg','images/cuentos/blancanieves8.mp3',5),(81,'images/cuentos\\/blancanieves9.jpg','images/cuentos/blancanieves9.mp3',5),(82,'images/cuentos\\/blancanieves10.jpg','images/cuentos/blancanieves10.mp3',5),(83,'images/cuentos\\/blancanieves11.jpg','images/cuentos/blancanieves11.mp3',5),(84,'images/cuentos\\/blancanieves12.jpg','images/cuentos/blancanieves12.mp3',5),(85,'images/cuentos\\/blancanieves13.jpg','images/cuentos/blancanieves13.mp3',5),(86,'images/cuentos\\/blancanieves14.jpg','images/cuentos/blancanieves14.mp3',5),(87,'images/cuentos\\/blancanieves15.jpg','images/cuentos/blancanieves15.mp3',5),(88,'images/cuentos\\/blancanieves16.jpg','images/cuentos/blancanieves16.mp3',5),(89,'images/cuentos\\/blancanieves17.jpg','images/cuentos/blancanieves17.mp3',5),(90,'images/cuentos\\/blancanieves18.jpg','images/cuentos/blancanieves18.mp3',5);
/*!40000 ALTER TABLE `pagina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-06 16:55:49
