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
-- Table structure for table `pjrod_taryfa`
--

DROP TABLE IF EXISTS `pjrod_taryfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pjrod_taryfa` (
  `id_taryfa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(32) NOT NULL DEFAULT 'G11',
  `ops_przejsciowa` int(10) unsigned NOT NULL DEFAULT '0',
  `ops_przesyl` int(10) unsigned NOT NULL DEFAULT '0',
  `ops_dystrybucja` int(10) unsigned NOT NULL DEFAULT '0',
  `opz_energia` int(10) unsigned NOT NULL DEFAULT '0',
  `opz_skljak` int(10) unsigned NOT NULL DEFAULT '0',
  `vat_1` int(10) unsigned NOT NULL DEFAULT '23',
  `vat_2` int(10) unsigned NOT NULL DEFAULT '8',
  `vat_maska` int(10) unsigned NOT NULL DEFAULT '63',
  `opz_sieciowa` int(10) unsigned NOT NULL DEFAULT '0',
  `data_od` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_taryfa`),
  KEY `nazwa` (`nazwa`),
  KEY `last_mod` (`last_mod`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pjrod_taryfa`
--

LOCK TABLES `pjrod_taryfa` WRITE;
/*!40000 ALTER TABLE `pjrod_taryfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `pjrod_taryfa` ENABLE KEYS */;
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
