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
-- Table structure for table `pjrod_dzialka`
--

DROP TABLE IF EXISTS `pjrod_dzialka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pjrod_dzialka` (
  `id_dzialka` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_sektor` int(10) unsigned NOT NULL DEFAULT '0',
  `numer` varchar(8) NOT NULL,
  `metraz` int(10) unsigned NOT NULL DEFAULT '0',
  `zabudowania` varchar(256) DEFAULT NULL,
  `problemy` varchar(256) DEFAULT NULL,
  `wymogi` int(10) unsigned NOT NULL DEFAULT '15',
  `aktywna` int(11) NOT NULL DEFAULT '0',
  `opis` text,
  `poprzedniwlasciciel` varchar(64) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_dzialka`),
  KEY `numer` (`numer`),
  KEY `id_sektor` (`id_sektor`),
  KEY `metraz` (`metraz`),
  KEY `last_mod` (`last_mod`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pjrod_dzialka`
--

LOCK TABLES `pjrod_dzialka` WRITE;
/*!40000 ALTER TABLE `pjrod_dzialka` DISABLE KEYS */;
INSERT INTO `pjrod_dzialka` VALUES (1,1,'1',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(2,1,'2',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(3,1,'3',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(4,1,'4',280,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(5,1,'5',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(6,1,'6',390,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(7,1,'7',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(8,1,'8',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(9,1,'9',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(10,1,'10',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(11,1,'11',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(12,1,'12',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(13,1,'13',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(14,1,'14',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(15,1,'15',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(16,1,'16',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(17,1,'17',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(18,1,'18',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(19,1,'19',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(20,1,'20',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(21,1,'21',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(22,1,'22',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(23,1,'23',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(24,1,'24',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(25,1,'25',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(26,1,'26',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(27,1,'27',449,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(28,1,'28',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(29,2,'29',215,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(30,2,'30',255,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(31,2,'31',400,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(32,2,'32',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(33,2,'33',441,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(34,2,'34',420,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(35,2,'35',430,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(36,2,'36',289,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(37,2,'37',450,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(38,2,'38',335,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(39,2,'38a',220,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(40,2,'39',440,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(41,2,'40',430,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(42,2,'41',485,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(43,2,'42',443,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(44,2,'43',490,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(45,2,'44',434,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(46,2,'45',498,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(47,2,'46',445,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(48,2,'47',470,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(49,2,'48',425,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(50,2,'49',455,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(51,2,'50',422,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(52,2,'51',530,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(53,2,'52',475,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(54,2,'53',515,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(55,2,'54a',220,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(56,2,'54',225,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(57,2,'55',543,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(58,3,'56',283,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(59,3,'57',283,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(60,3,'58',300,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(61,3,'59',293,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(62,3,'60',462,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(63,3,'61',473,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(64,3,'62',272,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(65,3,'63',300,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(66,3,'64',440,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(67,3,'65',389,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(68,3,'66',311,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(69,3,'67',460,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(70,3,'68',169,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(71,3,'68a',281,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(72,3,'69',240,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(73,3,'70',240,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(74,3,'71',240,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(75,3,'72',440,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(76,3,'73',440,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(77,3,'74',210,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(78,3,'75',435,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(79,3,'76',400,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(80,3,'77',400,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.'),(81,3,'78',400,'','',15,1,'brak opisu','brak danych',0,0,'Paweł J.');
/*!40000 ALTER TABLE `pjrod_dzialka` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-30 11:39:59
