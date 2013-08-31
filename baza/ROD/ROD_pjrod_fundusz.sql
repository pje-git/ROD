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
-- Table structure for table `pjrod_fundusz`
--

DROP TABLE IF EXISTS `pjrod_fundusz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pjrod_fundusz` (
  `id_fundusz` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa_skr` varchar(32) NOT NULL,
  `nazwa` varchar(128) NOT NULL,
  `opis` varchar(256) DEFAULT NULL,
  `konto_bank` varchar(256) DEFAULT NULL,
  `konto_zpk` varchar(32) DEFAULT NULL,
  `kwota` int(10) unsigned NOT NULL DEFAULT '0',
  `domyslny` int(11) NOT NULL DEFAULT '0',
  `data_od` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_fundusz`),
  KEY `konto_zpk` (`konto_zpk`),
  KEY `nazwa` (`nazwa`),
  KEY `last_mod` (`last_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pjrod_fundusz`
--

LOCK TABLES `pjrod_fundusz` WRITE;
/*!40000 ALTER TABLE `pjrod_fundusz` DISABLE KEYS */;
/*!40000 ALTER TABLE `pjrod_fundusz` ENABLE KEYS */;
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
