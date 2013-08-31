-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 28 Sie 2013, 04:49
-- Wersja serwera: 5.5.24-log
-- Wersja PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `rod`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_dzialka`
--

CREATE TABLE IF NOT EXISTS `pjrod_dzialka` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- Zrzut danych tabeli `pjrod_dzialka`
--

INSERT INTO `pjrod_dzialka` (`id_dzialka`, `id_sektor`, `numer`, `metraz`, `zabudowania`, `problemy`, `wymogi`, `aktywna`, `opis`, `poprzedniwlasciciel`, `created`, `last_mod`, `who_mod`) VALUES
(1, 1, '1', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(2, 1, '2', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(3, 1, '3', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(4, 1, '4', 280, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(5, 1, '5', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(6, 1, '6', 390, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(7, 1, '7', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(8, 1, '8', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(9, 1, '9', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(10, 1, '10', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(11, 1, '11', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(12, 1, '12', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(13, 1, '13', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(14, 1, '14', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(15, 1, '15', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(16, 1, '16', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(17, 1, '17', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(18, 1, '18', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(19, 1, '19', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(20, 1, '20', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(21, 1, '21', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(22, 1, '22', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(23, 1, '23', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(24, 1, '24', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(25, 1, '25', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(26, 1, '26', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(27, 1, '27', 449, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(28, 1, '28', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(29, 2, '29', 215, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(30, 2, '30', 255, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(31, 2, '31', 400, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(32, 2, '32', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(33, 2, '33', 441, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(34, 2, '34', 420, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(35, 2, '35', 430, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(36, 2, '36', 289, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(37, 2, '37', 450, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(38, 2, '38', 335, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(39, 2, '38a', 220, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(40, 2, '39', 440, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(41, 2, '40', 430, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(42, 2, '41', 485, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(43, 2, '42', 443, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(44, 2, '43', 490, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(45, 2, '44', 434, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(46, 2, '45', 498, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(47, 2, '46', 445, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(48, 2, '47', 470, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(49, 2, '48', 425, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(50, 2, '49', 455, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(51, 2, '50', 422, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(52, 2, '51', 530, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(53, 2, '52', 475, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(54, 2, '53', 515, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(55, 2, '54a', 220, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(56, 2, '54', 225, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(57, 2, '55', 543, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(58, 3, '56', 283, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(59, 3, '57', 283, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(60, 3, '58', 300, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(61, 3, '59', 293, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(62, 3, '60', 462, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(63, 3, '61', 473, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(64, 3, '62', 272, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(65, 3, '63', 300, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(66, 3, '64', 440, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(67, 3, '65', 389, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(68, 3, '66', 311, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(69, 3, '67', 460, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(70, 3, '68', 169, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(71, 3, '68a', 281, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(72, 3, '69', 240, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(73, 3, '70', 240, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(74, 3, '71', 240, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(75, 3, '72', 440, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(76, 3, '73', 440, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(77, 3, '74', 210, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(78, 3, '75', 435, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(79, 3, '76', 400, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(80, 3, '77', 400, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.'),
(81, 3, '78', 400, '', '', 15, 1, 'brak opisu', 'brak danych', 0, 0, 'Paweł J.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_dzialkowiec`
--

CREATE TABLE IF NOT EXISTS `pjrod_dzialkowiec` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

--
-- Zrzut danych tabeli `pjrod_dzialkowiec`
--

INSERT INTO `pjrod_dzialkowiec` (`id_dzialkowiec`, `id_dzialka`, `imie`, `nazwisko`, `adr_miejscowosc`, `adr_ulica`, `adr_nrbudynku`, `adr_nrlokalu`, `telefon1`, `telefon2`, `email`, `info`, `aktywny`, `aktywny_od`, `aktywny_do`, `created`, `last_mod`, `who_mod`) VALUES
(1, 1, 'Izabela', 'Gorzelańska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(2, 1, 'Robert', 'Gorzelański', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(3, 2, 'Krystyna', 'Konarska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(4, 3, 'Jan', 'Dobroś', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(5, 3, 'Janina', 'Dobroś', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(6, 4, 'Józef', 'Gołębiewski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(7, 5, 'Jadwiga', 'Oborowska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(8, 5, 'Mieczysław', 'Oborowski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(9, 6, 'Maria', 'Gajda', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(10, 6, 'Kazimierz', 'Gajda', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(11, 7, 'Jadwiga', 'Biesiada', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(12, 8, 'Marianna', 'Gajewska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(13, 9, 'Dorota', 'Goszczyńska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(14, 10, 'Katarzyna', 'Niedzielska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(15, 10, 'Zbigniew', 'Niedzielski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(16, 11, 'Dorota', 'Sobala', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(17, 11, 'Edmund', 'Sobala', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(18, 12, 'Mariola (po Ratajczyku)', 'Dolewka', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(19, 13, '', 'Tarun ( po Pacześ )', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(20, 14, 'Marianna', 'Kuna', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(21, 15, 'Michał', 'Malinowski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(22, 15, 'Henryka', 'Malinowska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(23, 16, 'Sabina', 'Oleszczak', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(24, 16, 'Czesław', 'Oleszczak', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(25, 17, 'Janina', 'Łukasińska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(26, 18, 'Danuta', 'Dychto', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(27, 18, 'Stanisław', 'Dychto', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(28, 19, 'Halina', 'Jon', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(29, 20, 'Barbara', 'Kredens', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(30, 20, 'Tadeusz', 'Kredens', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(31, 21, 'Zofia', 'Gęsior', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(32, 21, 'Kazimierz', 'Gęsior', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(33, 22, 'Józef', 'Dana', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(34, 23, 'Janina', 'Ciesielska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(35, 24, 'Anna', 'Bartosik', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(36, 25, 'Grażyna', 'Kaczmarek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(37, 25, 'Eugeniusz', 'Kaczmarek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(38, 26, 'Roman', 'Głasz', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(39, 27, 'Wiesława', 'Bartnicka', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(40, 27, 'Jan', 'Bartnicki', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(41, 28, 'Genowefa', 'Minias', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(42, 29, 'Emilia', 'Fałek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(43, 29, 'Marcin', 'Fałek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(44, 30, 'Jan', 'Bartoszek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(45, 31, 'Ewa', 'Jędrychowicz', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(46, 32, 'Bogdan', 'Chmielecki', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(47, 33, 'Czesława', 'Rybowska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(48, 34, 'Sabina', 'Ciąpała', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(49, 34, 'Stefan', 'Ciąpała', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(50, 35, 'Krystyna', 'Bednarek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(51, 36, 'Marek', 'Cholewiński', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(52, 37, 'Magdalena', 'Olejniczak', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(53, 37, 'Michał', 'Olejniczak', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(54, 38, 'Maria', 'Matyszewski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(55, 38, 'Bogdan', 'Matyszewski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(56, 39, 'Barbara', 'Sikorska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(57, 39, 'Grzegorz', 'Sikorska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(58, 40, 'Bogdan', 'Jarzębowski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(59, 41, 'Wanda', 'Owczarek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(60, 42, 'Lucyna', 'Okruszek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(61, 43, 'Zofia', 'Felcenloben', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(62, 43, 'Ignacy', 'Felcenloben', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(63, 44, 'Krystyna', 'Śmida', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(64, 44, 'Zbigniew', 'Śmida', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(65, 45, 'Maria', 'Listwoń', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(66, 46, 'Antonina', 'Nowak', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(67, 46, 'Edward', 'Nowak', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(68, 47, 'Bogusława', 'Kołodziej', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(69, 48, 'Anna', 'Malinowska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(70, 48, 'Jan', 'Malinowska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(71, 49, 'Maria', 'Sobala', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(72, 49, 'Eugieniusz', 'Sobala', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(73, 50, 'Elżbieta', 'Cicha', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(74, 51, 'Krystyna', 'Poczta', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(75, 51, 'Sławomir', 'Poczta', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(76, 52, 'Halina', 'Mrugała', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(77, 53, 'Zygmunt', 'Książek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(78, 53, 'Anna', 'Książek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(79, 54, 'Wisława', 'Biskupska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(80, 54, 'Grzegorz', 'Biskupski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(81, 56, 'Janina', 'Bukowska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(82, 56, 'Zbigniew', 'Bukowski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(83, 55, 'Danuta', 'Marszał', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(84, 57, 'Halina', 'Gozdecka', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(85, 57, 'Tadeusz', 'Gozdecki', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(86, 58, 'Hanina', 'Sójka', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(87, 58, 'Grzegorz', 'Sójka', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(88, 59, 'Genowefa', 'Kus', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(89, 60, 'Janina', 'Szem', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(90, 61, 'Andrzej', 'Szkodziński', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(91, 61, 'Brak danych', 'Szkodzińska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(92, 62, 'Teresa', 'Firaś', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(93, 62, 'Grzegorz', 'Firaś', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(94, 63, 'Grażyna', 'Janicka', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(95, 63, 'Jerzy', 'Janicki', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(96, 64, 'Marianna', 'Praszkowska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(97, 64, 'Zdzisław', 'Praszkowski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(98, 65, 'Krystyna', 'Kilańska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(99, 65, 'Piotr', 'Kilański', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(100, 66, 'Anna', 'Kabza', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(101, 67, 'Beata', 'Nowak', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(102, 67, 'Andrzej', 'Nowak', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(103, 68, 'Urszula', 'Rolnik', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(104, 68, 'Zbigniew', 'Rolnik', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(105, 69, 'Janina', 'Skowronek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(106, 70, 'Ewa', 'Jacoń', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(107, 70, 'Paweł', 'Jacoń', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(108, 71, 'Magdalena', 'Raźny', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(109, 71, 'Tomasz', 'Raźny', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(110, 72, 'Danuta', 'Czaplińska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(111, 73, 'Lidia', 'Baranowska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(112, 73, 'Zbigniew', 'Baranowski', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(113, 74, 'Teresa', 'Lefik', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(114, 74, 'Jan', 'Lefik', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(115, 75, 'Władysława', 'Witusik', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(116, 76, 'Halina', 'Cieśla', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(117, 76, 'Kazimierz', 'Cieśla', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(118, 77, 'Irena', 'Mielczarek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(119, 77, 'Waldemar', 'Mielczarek', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(120, 78, 'Stanisława', 'Młudzik', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(121, 78, 'Zdzisław', 'Młudzik', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(122, 79, 'Marianna', 'Leszczyńska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(123, 79, 'Zdzisław', 'Leszczyński', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(124, 80, 'Janina', 'Więckowska', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.'),
(125, 81, 'Bożena', 'Skubik', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 'Paweł J.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_faktura`
--

CREATE TABLE IF NOT EXISTS `pjrod_faktura` (
  `id_faktura` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nr_fak` varchar(64) NOT NULL DEFAULT 'nowa',
  `nr_licznika` int(10) unsigned NOT NULL DEFAULT '0',
  `ops_przejsciowa` int(10) unsigned NOT NULL DEFAULT '0',
  `ops_przesyl` int(10) unsigned NOT NULL DEFAULT '0',
  `ops_dystrybucja` int(10) unsigned NOT NULL DEFAULT '0',
  `opz_energia` int(10) unsigned NOT NULL DEFAULT '0',
  `opz_skljak` int(10) unsigned NOT NULL DEFAULT '0',
  `opz_sieciowa` int(10) unsigned NOT NULL DEFAULT '0',
  `data_od` int(11) NOT NULL DEFAULT '0',
  `data_do` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_faktura`),
  KEY `nr_fak` (`nr_fak`),
  KEY `nr_licznika` (`nr_licznika`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_fundusz`
--

CREATE TABLE IF NOT EXISTS `pjrod_fundusz` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_licznik`
--

CREATE TABLE IF NOT EXISTS `pjrod_licznik` (
  `id_licznik` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numer` varchar(64) DEFAULT NULL,
  `opis` varchar(128) DEFAULT NULL,
  `stan_poczatkowy` int(10) unsigned NOT NULL DEFAULT '0',
  `data_stanpocz` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_licznik`),
  KEY `numer` (`numer`),
  KEY `last_mod` (`last_mod`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_rezerwacja`
--

CREATE TABLE IF NOT EXISTS `pjrod_rezerwacja` (
  `id_rezerwacja` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_sala` int(11) NOT NULL,
  `opis` varchar(256) DEFAULT NULL,
  `kto` varchar(128) NOT NULL,
  `haslo` varchar(128) NOT NULL,
  `kontakt` varchar(128) NOT NULL,
  `data_rezerwacji` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_rezerwacja`),
  KEY `kto` (`kto`),
  KEY `data_rezerwacji` (`data_rezerwacji`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_sala`
--

CREATE TABLE IF NOT EXISTS `pjrod_sala` (
  `id_sala` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(128) NOT NULL,
  `adres` varchar(128) DEFAULT NULL,
  `opis` varchar(256) DEFAULT NULL,
  `atrybuty` varchar(256) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_sala`),
  KEY `nazwa` (`nazwa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_sektor`
--

CREATE TABLE IF NOT EXISTS `pjrod_sektor` (
  `id_sektor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_licznikp` int(10) unsigned NOT NULL DEFAULT '0',
  `id_licznikw` int(10) unsigned NOT NULL DEFAULT '0',
  `metraz` int(10) unsigned NOT NULL DEFAULT '0',
  `zabudowy` varchar(256) DEFAULT NULL,
  `problemy` varchar(256) DEFAULT NULL,
  `adres` varchar(256) DEFAULT NULL,
  `gospodarz` varchar(256) DEFAULT NULL,
  `dozrobienia` text,
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_sektor`),
  KEY `numer` (`numer`),
  KEY `metraz` (`metraz`),
  KEY `last_mod` (`last_mod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `pjrod_sektor`
--

INSERT INTO `pjrod_sektor` (`id_sektor`, `numer`, `id_licznikp`, `id_licznikw`, `metraz`, `zabudowy`, `problemy`, `adres`, `gospodarz`, `dozrobienia`, `created`, `last_mod`, `who_mod`) VALUES
(1, 1, 1, 1, 999999, 'plac zabaw dla dzieci', 'wodociąg do naprawy', 'Moniuszki 68', 'Sobala', NULL, 0, 0, NULL),
(2, 2, 2, 2, 999999, 'brak', 'sieć energetyczna', 'Orla', 'Bogdan Chmielewski', NULL, 0, 0, NULL),
(3, 3, 3, 3, 4294967295, NULL, NULL, 'Próżna', 'Zdzisław Młudzik', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_taryfa`
--

CREATE TABLE IF NOT EXISTS `pjrod_taryfa` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_ulga`
--

CREATE TABLE IF NOT EXISTS `pjrod_ulga` (
  `id_ulga` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(128) NOT NULL,
  `opis` varchar(256) DEFAULT NULL,
  `typ_ulgi` int(10) unsigned NOT NULL DEFAULT '0',
  `wartosc` int(10) unsigned NOT NULL DEFAULT '0',
  `data_od` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_ulga`),
  KEY `nazwa` (`nazwa`),
  KEY `typ_ulgi` (`typ_ulgi`),
  KEY `data_od` (`data_od`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pjrod_wplata`
--

CREATE TABLE IF NOT EXISTS `pjrod_wplata` (
  `id_wplata` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_dzialka` int(10) unsigned NOT NULL DEFAULT '0',
  `id_fundusz` int(10) unsigned NOT NULL DEFAULT '0',
  `wplacajacy` varchar(256) DEFAULT NULL,
  `operacja` varchar(256) DEFAULT NULL,
  `data` int(11) NOT NULL DEFAULT '0',
  `kwota` int(10) unsigned NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `last_mod` int(11) NOT NULL DEFAULT '0',
  `who_mod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_wplata`),
  KEY `id_dzialka` (`id_dzialka`),
  KEY `id_fundusz` (`id_fundusz`),
  KEY `wplacajacy` (`wplacajacy`),
  KEY `operacja` (`operacja`),
  KEY `last_mod` (`last_mod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
