CREATE DATABASE  IF NOT EXISTS `ROD` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ROD`;
-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: ROD
-- ------------------------------------------------------
-- Server version	5.5.12

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
-- Table structure for table `pjrod_dzialkowiec`
--

DROP TABLE IF EXISTS `pjrod_dzialkowiec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pjrod_dzialkowiec` (
  `id_dzialkowiec` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_dzialka` int(10) unsigned NOT NULL DEFAULT '0',
  `imie` varchar(32) DEFAULT NULL,
  `nazwisko` varchar(64) NOT NULL,
  `adr_miejscowosc` varchar(64) DEFAULT NULL,
  `adr_ulica` varchar(64) DEFAULT NULL,
  `adr_nrbudynku` varchar(10) DEFAULT NULL,
  `adr_nrlokalu` varchar(10) DEFAULT NULL,
  `telefon1` varchar(30) DEFAULT NULL,
  `telefon2` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `aktywny` int(11) NOT NULL DEFAULT '0',
  `aktywny_od` int(11) NOT NULL DEFAULT '0',
  `aktywny_do` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_dzialkowiec`),
  KEY `nazwisko` (`nazwisko`),
  KEY `last_mod` (`last_mod`),
  KEY `aktywny` (`aktywny`),
  KEY `aktywny_od` (`aktywny_od`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pjrod_dzialkowiec`
--

LOCK TABLES `pjrod_dzialkowiec` WRITE;
/*!40000 ALTER TABLE `pjrod_dzialkowiec` DISABLE KEYS */;
INSERT INTO `pjrod_dzialkowiec` VALUES (1,1,'Izabela','Gorzelańska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(2,1,'Robert','Gorzelański','','','','','','','','',1,0,0,0,0,'Paweł J.'),(3,2,'Krystyna','Konarska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(4,3,'Jan','Dobroś','','','','','','','','',1,0,0,0,0,'Paweł J.'),(5,3,'Janina','Dobroś','','','','','','','','',1,0,0,0,0,'Paweł J.'),(6,4,'Józef','Gołębiewski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(7,5,'Jadwiga','Oborowska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(8,5,'Mieczysław','Oborowski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(9,6,'Maria','Gajda','','','','','','','','',1,0,0,0,0,'Paweł J.'),(10,6,'Kazimierz','Gajda','','','','','','','','',1,0,0,0,0,'Paweł J.'),(11,7,'Jadwiga','Biesiada','','','','','','','','',1,0,0,0,0,'Paweł J.'),(12,8,'Marianna','Gajewska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(13,9,'Dorota','Goszczyńska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(14,10,'Katarzyna','Niedzielska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(15,10,'Zbigniew','Niedzielski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(16,11,'Dorota','Sobala','','','','','','','','',1,0,0,0,0,'Paweł J.'),(17,11,'Edmund','Sobala','','','','','','','','',1,0,0,0,0,'Paweł J.'),(18,12,'Mariola (po Ratajczyku)','Dolewka','','','','','','','','',1,0,0,0,0,'Paweł J.'),(19,13,'','Tarun ( po Pacześ )','','','','','','','','',1,0,0,0,0,'Paweł J.'),(20,14,'Marianna','Kuna','','','','','','','','',1,0,0,0,0,'Paweł J.'),(21,15,'Michał','Malinowski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(22,15,'Henryka','Malinowska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(23,16,'Sabina','Oleszczak','','','','','','','','',1,0,0,0,0,'Paweł J.'),(24,16,'Czesław','Oleszczak','','','','','','','','',1,0,0,0,0,'Paweł J.'),(25,17,'Janina','Łukasińska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(26,18,'Danuta','Dychto','','','','','','','','',1,0,0,0,0,'Paweł J.'),(27,18,'Stanisław','Dychto','','','','','','','','',1,0,0,0,0,'Paweł J.'),(28,19,'Halina','Jon','','','','','','','','',1,0,0,0,0,'Paweł J.'),(29,20,'Barbara','Kredens','','','','','','','','',1,0,0,0,0,'Paweł J.'),(30,20,'Tadeusz','Kredens','','','','','','','','',1,0,0,0,0,'Paweł J.'),(31,21,'Zofia','Gęsior','','','','','','','','',1,0,0,0,0,'Paweł J.'),(32,21,'Kazimierz','Gęsior','','','','','','','','',1,0,0,0,0,'Paweł J.'),(33,22,'Józef','Dana','','','','','','','','',1,0,0,0,0,'Paweł J.'),(34,23,'Janina','Ciesielska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(35,24,'Anna','Bartosik','','','','','','','','',1,0,0,0,0,'Paweł J.'),(36,25,'Grażyna','Kaczmarek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(37,25,'Eugeniusz','Kaczmarek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(38,26,'Roman','Głasz','','','','','','','','',1,0,0,0,0,'Paweł J.'),(39,27,'Wiesława','Bartnicka','','','','','','','','',1,0,0,0,0,'Paweł J.'),(40,27,'Jan','Bartnicki','','','','','','','','',1,0,0,0,0,'Paweł J.'),(41,28,'Genowefa','Minias','','','','','','','','',1,0,0,0,0,'Paweł J.'),(42,29,'Emilia','Fałek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(43,29,'Marcin','Fałek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(44,30,'Jan','Bartoszek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(45,31,'Ewa','Jędrychowicz','','','','','','','','',1,0,0,0,0,'Paweł J.'),(46,32,'Bogdan','Chmielecki','','','','','','','','',1,0,0,0,0,'Paweł J.'),(47,33,'Czesława','Rybowska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(48,34,'Sabina','Ciąpała','','','','','','','','',1,0,0,0,0,'Paweł J.'),(49,34,'Stefan','Ciąpała','','','','','','','','',1,0,0,0,0,'Paweł J.'),(50,35,'Krystyna','Bednarek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(51,36,'Marek','Cholewiński','','','','','','','','',1,0,0,0,0,'Paweł J.'),(52,37,'Magdalena','Olejniczak','','','','','','','','',1,0,0,0,0,'Paweł J.'),(53,37,'Michał','Olejniczak','','','','','','','','',1,0,0,0,0,'Paweł J.'),(54,38,'Maria','Matyszewski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(55,38,'Bogdan','Matyszewski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(56,39,'Barbara','Sikorska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(57,39,'Grzegorz','Sikorska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(58,40,'Bogdan','Jarzębowski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(59,41,'Wanda','Owczarek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(60,42,'Lucyna','Okruszek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(61,43,'Zofia','Felcenloben','','','','','','','','',1,0,0,0,0,'Paweł J.'),(62,43,'Ignacy','Felcenloben','','','','','','','','',1,0,0,0,0,'Paweł J.'),(63,44,'Krystyna','Śmida','','','','','','','','',1,0,0,0,0,'Paweł J.'),(64,44,'Zbigniew','Śmida','','','','','','','','',1,0,0,0,0,'Paweł J.'),(65,45,'Maria','Listwoń','','','','','','','','',1,0,0,0,0,'Paweł J.'),(66,46,'Antonina','Nowak','','','','','','','','',1,0,0,0,0,'Paweł J.'),(67,46,'Edward','Nowak','','','','','','','','',1,0,0,0,0,'Paweł J.'),(68,47,'Bogusława','Kołodziej','','','','','','','','',1,0,0,0,0,'Paweł J.'),(69,48,'Anna','Malinowska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(70,48,'Jan','Malinowska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(71,49,'Maria','Sobala','','','','','','','','',1,0,0,0,0,'Paweł J.'),(72,49,'Eugieniusz','Sobala','','','','','','','','',1,0,0,0,0,'Paweł J.'),(73,50,'Elżbieta','Cicha','','','','','','','','',1,0,0,0,0,'Paweł J.'),(74,51,'Krystyna','Poczta','','','','','','','','',1,0,0,0,0,'Paweł J.'),(75,51,'Sławomir','Poczta','','','','','','','','',1,0,0,0,0,'Paweł J.'),(76,52,'Halina','Mrugała','','','','','','','','',1,0,0,0,0,'Paweł J.'),(77,53,'Zygmunt','Książek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(78,53,'Anna','Książek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(79,54,'Wisława','Biskupska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(80,54,'Grzegorz','Biskupski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(81,56,'Janina','Bukowska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(82,56,'Zbigniew','Bukowski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(83,55,'Danuta','Marszał','','','','','','','','',1,0,0,0,0,'Paweł J.'),(84,57,'Halina','Gozdecka','','','','','','','','',1,0,0,0,0,'Paweł J.'),(85,57,'Tadeusz','Gozdecki','','','','','','','','',1,0,0,0,0,'Paweł J.'),(86,58,'Hanina','Sójka','','','','','','','','',1,0,0,0,0,'Paweł J.'),(87,58,'Grzegorz','Sójka','','','','','','','','',1,0,0,0,0,'Paweł J.'),(88,59,'Genowefa','Kus','','','','','','','','',1,0,0,0,0,'Paweł J.'),(89,60,'Janina','Szem','','','','','','','','',1,0,0,0,0,'Paweł J.'),(90,61,'Andrzej','Szkodziński','','','','','','','','',1,0,0,0,0,'Paweł J.'),(91,61,'Brak danych','Szkodzińska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(92,62,'Teresa','Firaś','','','','','','','','',1,0,0,0,0,'Paweł J.'),(93,62,'Grzegorz','Firaś','','','','','','','','',1,0,0,0,0,'Paweł J.'),(94,63,'Grażyna','Janicka','','','','','','','','',1,0,0,0,0,'Paweł J.'),(95,63,'Jerzy','Janicki','','','','','','','','',1,0,0,0,0,'Paweł J.'),(96,64,'Marianna','Praszkowska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(97,64,'Zdzisław','Praszkowski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(98,65,'Krystyna','Kilańska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(99,65,'Piotr','Kilański','','','','','','','','',1,0,0,0,0,'Paweł J.'),(100,66,'Anna','Kabza','','','','','','','','',1,0,0,0,0,'Paweł J.'),(101,67,'Beata','Nowak','','','','','','','','',1,0,0,0,0,'Paweł J.'),(102,67,'Andrzej','Nowak','','','','','','','','',1,0,0,0,0,'Paweł J.'),(103,68,'Urszula','Rolnik','','','','','','','','',1,0,0,0,0,'Paweł J.'),(104,68,'Zbigniew','Rolnik','','','','','','','','',1,0,0,0,0,'Paweł J.'),(105,69,'Janina','Skowronek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(106,70,'Ewa','Jacoń','','','','','','','','',1,0,0,0,0,'Paweł J.'),(107,70,'Paweł','Jacoń','','','','','','','','',1,0,0,0,0,'Paweł J.'),(108,71,'Magdalena','Raźny','','','','','','','','',1,0,0,0,0,'Paweł J.'),(109,71,'Tomasz','Raźny','','','','','','','','',1,0,0,0,0,'Paweł J.'),(110,72,'Danuta','Czaplińska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(111,73,'Lidia','Baranowska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(112,73,'Zbigniew','Baranowski','','','','','','','','',1,0,0,0,0,'Paweł J.'),(113,74,'Teresa','Lefik','','','','','','','','',1,0,0,0,0,'Paweł J.'),(114,74,'Jan','Lefik','','','','','','','','',1,0,0,0,0,'Paweł J.'),(115,75,'Władysława','Witusik','','','','','','','','',1,0,0,0,0,'Paweł J.'),(116,76,'Halina','Cieśla','','','','','','','','',1,0,0,0,0,'Paweł J.'),(117,76,'Kazimierz','Cieśla','','','','','','','','',1,0,0,0,0,'Paweł J.'),(118,77,'Irena','Mielczarek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(119,77,'Waldemar','Mielczarek','','','','','','','','',1,0,0,0,0,'Paweł J.'),(120,78,'Stanisława','Młudzik','','','','','','','','',1,0,0,0,0,'Paweł J.'),(121,78,'Zdzisław','Młudzik','','','','','','','','',1,0,0,0,0,'Paweł J.'),(122,79,'Marianna','Leszczyńska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(123,79,'Zdzisław','Leszczyński','','','','','','','','',1,0,0,0,0,'Paweł J.'),(124,80,'Janina','Więckowska','','','','','','','','',1,0,0,0,0,'Paweł J.'),(125,81,'Bożena','Skubik','','','','','','','','',1,0,0,0,0,'Paweł J.');
/*!40000 ALTER TABLE `pjrod_dzialkowiec` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-30 11:40:00
