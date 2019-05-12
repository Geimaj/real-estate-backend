-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Erstellungszeit: 12. Mai 2019 um 13:04
-- Server-Version: 5.7.24
-- PHP-Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `real_estatev3`
--
CREATE DATABASE IF NOT EXISTS `real_estatev3` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `real_estatev3`;

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `Address_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Street_Street_ID` int(11) NOT NULL,
  `Address_House_Number` int(11) NOT NULL,
  PRIMARY KEY (`Address_ID`),
  KEY `fk_Address_Street1_idx` (`Street_Street_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `address`
--

INSERT INTO `address` (`Address_ID`, `Street_Street_ID`, `Address_House_Number`) VALUES
(1, 63, 66),
(2, 68, 66),
(3, 24, 45),
(4, 29, 146),
(5, 23, 15),
(6, 34, 132),
(7, 63, 96),
(8, 8, 73),
(9, 52, 29),
(10, 68, 53),
(11, 36, 142),
(12, 60, 54),
(13, 34, 105),
(14, 8, 147),
(15, 37, 31),
(16, 10, 123),
(17, 37, 36),
(18, 33, 75),
(19, 42, 88),
(20, 32, 52),
(21, 42, 94),
(22, 65, 52),
(23, 12, 74),
(24, 14, 83),
(25, 62, 72),
(26, 54, 129),
(27, 7, 28),
(28, 10, 42),
(29, 69, 57),
(30, 19, 51),
(31, 62, 59),
(32, 59, 66),
(33, 46, 97),
(34, 9, 86),
(35, 35, 31),
(36, 65, 43),
(37, 21, 18),
(38, 27, 87),
(39, 3, 97),
(40, 68, 73),
(41, 50, 148),
(42, 39, 71),
(43, 72, 42),
(44, 49, 91),
(45, 30, 62),
(46, 30, 65),
(47, 33, 14),
(48, 11, 113),
(49, 67, 146),
(50, 9, 121),
(51, 26, 20),
(52, 11, 9),
(53, 32, 146),
(54, 23, 45),
(55, 30, 18),
(56, 44, 132),
(57, 32, 70),
(58, 14, 94),
(59, 35, 68),
(60, 69, 56),
(61, 20, 117),
(62, 25, 3),
(63, 48, 70),
(64, 50, 47),
(65, 74, 34),
(66, 68, 129),
(67, 42, 65),
(68, 68, 19),
(69, 58, 25),
(70, 24, 108),
(71, 33, 13),
(72, 2, 94),
(73, 20, 148),
(74, 5, 50),
(75, 69, 39),
(76, 48, 12),
(77, 24, 44),
(78, 24, 71),
(79, 64, 131),
(80, 46, 32),
(81, 34, 113),
(82, 51, 130),
(83, 13, 28),
(84, 64, 19),
(85, 33, 32),
(86, 40, 115),
(87, 36, 63),
(88, 4, 84),
(89, 8, 105),
(90, 50, 88),
(91, 51, 28),
(92, 35, 6),
(93, 19, 145),
(94, 36, 116),
(95, 68, 142),
(96, 22, 110),
(97, 36, 97),
(98, 12, 32),
(99, 63, 141);

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE IF NOT EXISTS `agent` (
  `Agent_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Person_Person_ID` int(11) NOT NULL,
  PRIMARY KEY (`Agent_ID`),
  KEY `fk_Agent_Person_idx` (`Person_Person_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `agent`
--

INSERT INTO `agent` (`Agent_ID`, `Person_Person_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 101);

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `available`
--

DROP TABLE IF EXISTS `available`;
CREATE TABLE IF NOT EXISTS `available` (
  `Avail_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Avail_ListingDate` date DEFAULT NULL,
  `Avail_ListingPrice` int(45) DEFAULT NULL,
  `Seller_Seller_ID` int(11) NOT NULL,
  `Agent_Agent_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL,
  PRIMARY KEY (`Avail_ID`),
  KEY `fk_Available_Seller1_idx` (`Seller_Seller_ID`),
  KEY `fk_Available_Agent1_idx` (`Agent_Agent_ID`),
  KEY `fk_Available_Property1` (`Property_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `available`
--

INSERT INTO `available` (`Avail_ID`, `Avail_ListingDate`, `Avail_ListingPrice`, `Seller_Seller_ID`, `Agent_Agent_ID`, `Property_ID`) VALUES
(1, '2017-03-12', 500000, 10, 4, 96),
(2, '2018-09-08', 1500000, 28, 6, 69),
(3, '2018-08-19', 803000, 19, 4, 74),
(4, '2017-07-07', 539000, 27, 4, 25),
(5, '2018-09-25', 858000, 22, 1, 82),
(6, '2018-09-13', 539000, 18, 7, 98),
(7, '2017-04-19', 1700000, 2, 7, 36),
(8, '2018-03-03', 550000, 2, 5, 96),
(9, '2018-01-30', 2250000, 13, 6, 65),
(10, '2018-09-04', 1089000, 5, 2, 23),
(11, '2018-08-05', 792000, 22, 10, 7),
(12, '2017-12-23', 825000, 24, 3, 14),
(13, '2017-12-20', 1089000, 1, 8, 23),
(14, '2017-05-29', 803000, 29, 3, 67),
(15, '2018-07-13', 2200000, 26, 1, 40),
(16, '2018-01-20', 7500000, 7, 4, 64),
(17, '2019-03-23', 1300000, 15, 4, 99),
(18, '2018-02-18', 1056000, 3, 4, 60),
(19, '2019-04-29', 2700000, 14, 6, 29),
(20, '2019-04-30', 770000, 7, 7, 61),
(21, '2018-03-14', 737000, 15, 8, 50),
(22, '2018-12-06', 6600000, 2, 8, 65),
(23, '2018-06-17', 748000, 20, 9, 18),
(24, '2019-02-14', 1975000, 2, 3, 17),
(25, '2018-11-09', 1001000, 5, 1, 47),
(26, '2018-02-13', 1056000, 23, 6, 60),
(27, '2019-04-15', 1001000, 8, 9, 47),
(28, '2018-11-24', 792000, 1, 1, 52),
(29, '2018-02-12', 1056000, 8, 4, 85),
(30, '2019-02-13', 4700000, 19, 8, 29),
(31, '2018-07-25', 1760000, 19, 9, 27),
(32, '2018-04-16', 1650000, 22, 1, 28),
(33, '2017-03-13', 1012000, 20, 10, 8),
(34, '2017-07-14', 869000, 2, 10, 66),
(35, '2017-11-11', 781000, 30, 8, 88),
(36, '2017-03-07', 550000, 16, 10, 96),
(37, '2018-07-24', 8800000, 6, 4, 39),
(38, '2017-01-25', 792000, 23, 9, 71),
(39, '2019-04-06', 836000, 14, 8, 13),
(40, '2017-03-21', 869000, 22, 1, 68),
(41, '2017-10-26', 946000, 7, 6, 5),
(42, '2018-10-25', 935000, 15, 8, 34),
(43, '2018-09-13', 396000, 11, 2, 94),
(44, '2017-12-21', 957000, 1, 9, 55),
(45, '2018-07-31', 385000, 12, 7, 45),
(46, '2018-07-14', 913000, 28, 4, 79),
(47, '2017-09-06', 363000, 22, 7, 86),
(48, '2017-01-25', 1089000, 23, 4, 23),
(49, '2017-04-08', 1540000, 4, 3, 76),
(50, '2017-08-13', 1850000, 15, 1, 29),
(51, '2018-02-21', 858000, 12, 10, 22),
(52, '2017-02-18', 693000, 9, 4, 21),
(53, '2018-12-08', 2310000, 29, 3, 95),
(54, '2018-09-21', 451000, 16, 7, 80),
(55, '2018-08-09', 638000, 15, 2, 32),
(56, '2018-10-05', 759000, 14, 4, 46),
(57, '2017-12-07', 1860000, 30, 5, 36),
(58, '2017-10-03', 935000, 7, 1, 33),
(59, '2019-03-30', 803000, 6, 4, 74),
(60, '2017-02-16', 737000, 10, 1, 75),
(61, '2018-08-01', 935000, 2, 8, 34),
(62, '2017-11-13', 638000, 27, 5, 32),
(63, '2017-07-20', 9900000, 29, 4, 64),
(64, '2017-04-20', 781000, 25, 10, 88),
(65, '2018-09-25', 550000, 18, 6, 96),
(66, '2019-03-31', 781000, 1, 1, 88),
(67, '2018-01-23', 1350000, 16, 9, 36),
(68, '2019-01-23', 616000, 3, 3, 58),
(69, '2018-09-15', 869000, 28, 6, 68);

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `buyer`
--

DROP TABLE IF EXISTS `buyer`;
CREATE TABLE IF NOT EXISTS `buyer` (
  `Buyer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Person_Person_ID` int(11) NOT NULL,
  PRIMARY KEY (`Buyer_ID`),
  KEY `fk_Buyer_Person1_idx` (`Person_Person_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `buyer`
--

INSERT INTO `buyer` (`Buyer_ID`, `Person_Person_ID`) VALUES
(1, 41),
(2, 42),
(3, 43),
(4, 44),
(5, 45),
(6, 46),
(7, 47),
(8, 48),
(9, 49),
(10, 50),
(11, 51),
(12, 52),
(13, 53),
(14, 54),
(15, 55),
(16, 56),
(17, 57),
(18, 58),
(19, 59),
(20, 60),
(21, 61),
(22, 62),
(23, 63),
(24, 64),
(25, 65),
(26, 66),
(27, 67),
(28, 68),
(29, 69),
(30, 70),
(31, 71),
(32, 72),
(33, 73),
(34, 74),
(35, 75),
(36, 76),
(37, 77),
(38, 78),
(39, 79),
(40, 80),
(41, 81),
(42, 82),
(43, 83),
(44, 84),
(45, 85),
(46, 86),
(47, 87),
(48, 88),
(49, 89),
(50, 90),
(51, 91),
(52, 92),
(53, 93),
(54, 94),
(55, 95),
(56, 96),
(57, 97),
(58, 98),
(59, 99),
(60, 100);

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `City_ID` int(11) NOT NULL AUTO_INCREMENT,
  `City_Name` varchar(45) DEFAULT NULL,
  `Country_ID` int(11) NOT NULL,
  PRIMARY KEY (`City_ID`),
  UNIQUE KEY `City_Name` (`City_Name`),
  KEY `fk_City_Country` (`Country_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `city`
--

INSERT INTO `city` (`City_ID`, `City_Name`, `Country_ID`) VALUES
(1, 'Cape Town', 1),
(2, 'Paarl', 1),
(3, 'Stellenbosch', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `Country_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Country_ID`),
  UNIQUE KEY `Country_Name` (`Country_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `country`
--

INSERT INTO `country` (`Country_ID`, `Country_Name`) VALUES
(2, 'Germany'),
(1, 'South Africa');

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `Person_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Address_Address_ID` int(11) NOT NULL,
  `Person_Firstname` varchar(45) DEFAULT NULL,
  `Person_LastName` varchar(45) DEFAULT NULL,
  `Person_PhoneNumber` varchar(45) DEFAULT NULL,
  `Person_Email` varchar(60) DEFAULT NULL,
  `Person_DOB` date DEFAULT NULL,
  PRIMARY KEY (`Person_ID`),
  KEY `fk_Person_Address1_idx` (`Address_Address_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `person`
--

INSERT INTO `person` (`Person_ID`, `Address_Address_ID`, `Person_Firstname`, `Person_LastName`, `Person_PhoneNumber`, `Person_Email`, `Person_DOB`) VALUES
(1, 88, 'Mariam', 'Benton', '03 44 19 27 07', 'Mauris@adipiscingnon.net', '1999-12-17'),
(2, 12, 'Yen', 'Fitzpatrick', '07 90 69 86 83', 'accumsan@erat.ca', '2065-05-12'),
(3, 13, 'Britanney', 'Brooks', '07 89 60 33 45', 'Duis.risus@ataugue.ca', '2039-10-14'),
(4, 48, 'Carolyn', 'Shelton', '09 43 70 34 82', 'tellus.eu.augue@Uttincidunt.co.uk', '1986-09-10'),
(5, 99, 'Whoopi', 'Franklin', '09 80 46 35 72', 'dapibus@lectusCum.net', '1992-02-20'),
(6, 32, 'Alfonso', 'Hubbard', '07 98 45 34 00', 'magnis@molestie.edu', '1987-07-29'),
(7, 36, 'Ryan', 'Rich', '02 50 96 84 51', 'risus.In@ullamcorperviverra.net', '1989-12-22'),
(8, 15, 'Phyllis', 'Odom', '02 14 90 25 27', 'nulla@netusetmalesuada.net', '2046-10-26'),
(9, 52, 'Jael', 'Sandoval', '01 60 00 54 76', 'magna.Lorem.ipsum@nonfeugiat.org', '1976-07-30'),
(10, 92, 'Alexis', 'Hanson', '04 43 62 35 07', 'urna.Nunc@fringilla.com', '2044-03-05'),
(11, 60, 'Tara', 'Gentry', '06 55 91 29 73', 'accumsan.interdum.libero@Phasellusat.com', '1998-07-30'),
(12, 53, 'Ciaran', 'Hunter', '03 10 16 15 75', 'malesuada@purus.com', '1974-09-15'),
(13, 22, 'Brenna', 'Brennan', '04 77 18 96 50', 'primis@acarcuNunc.net', '1984-09-25'),
(14, 64, 'Dorian', 'Hall', '07 19 01 57 64', 'lacus@parturientmontes.com', '1976-05-07'),
(15, 69, 'Aphrodite', 'Sampson', '07 24 80 92 42', 'iaculis.lacus.pede@ipsum.com', '2039-04-15'),
(16, 44, 'Keaton', 'Foster', '04 86 91 36 01', 'mollis.lectus@et.ca', '1973-03-28'),
(17, 7, 'Zeph', 'Holmes', '02 79 34 61 50', 'aliquet@arcuSed.org', '1998-04-11'),
(18, 6, 'Jacob', 'Glover', '04 04 34 78 09', 'velit.Cras@sodales.edu', '1988-07-11'),
(19, 55, 'Preston', 'Morin', '05 68 57 49 54', 'ultrices.Duis.volutpat@enimSuspendissealiquet.com', '2055-07-06'),
(20, 55, 'Tad', 'Cortez', '06 97 45 28 38', 'egestas.rhoncus.Proin@sit.net', '1989-09-02'),
(21, 45, 'Eugenia', 'Cooley', '09 52 42 71 33', 'enim.Suspendisse.aliquet@erat.co.uk', '1993-05-24'),
(22, 21, 'Aspen', 'Floyd', '01 40 16 66 06', 'orci@Proinegetodio.edu', '1972-03-17'),
(23, 88, 'Rose', 'Lucas', '05 99 77 30 67', 'dictum.cursus.Nunc@urnaUt.edu', '1999-07-14'),
(24, 18, 'Lawrence', 'Wooten', '05 09 25 45 29', 'sed.facilisis.vitae@justositamet.net', '1972-02-03'),
(25, 9, 'Rafael', 'Castaneda', '02 35 21 28 90', 'eget@malesuadamalesuadaInteger.edu', '2061-07-22'),
(26, 95, 'Victoria', 'Sykes', '06 03 89 66 92', 'sem@aultriciesadipiscing.co.uk', '2057-07-27'),
(27, 7, 'Tate', 'Hurley', '09 42 44 86 02', 'Vivamus@laciniaatiaculis.org', '1998-03-17'),
(28, 52, 'Brett', 'Patton', '09 15 06 99 12', 'nibh.Phasellus@loremutaliquam.com', '2055-04-21'),
(29, 64, 'Mia', 'Bowman', '06 60 17 26 17', 'ipsum.dolor.sit@at.com', '1982-06-20'),
(30, 35, 'Norman', 'Miles', '01 55 37 51 86', 'vehicula.Pellentesque@Inmipede.edu', '2040-09-08'),
(31, 29, 'Kelsey', 'Blankenship', '05 75 90 69 01', 'non.luctus.sit@placerateget.net', '1969-02-16'),
(32, 63, 'Shay', 'Patton', '04 82 16 05 24', 'Nulla.eu@Donecdignissim.edu', '2048-04-27'),
(33, 38, 'Alma', 'Chandler', '03 70 63 45 62', 'Duis@porttitoreros.ca', '2052-04-29'),
(34, 71, 'Mason', 'Rivers', '01 14 37 50 29', 'dolor@sem.net', '2049-06-08'),
(35, 70, 'Josiah', 'Barry', '02 70 46 20 18', 'at.iaculis@lacus.co.uk', '1981-03-17'),
(36, 78, 'Inez', 'Rosario', '08 53 57 37 94', 'rutrum.eu@ut.ca', '1974-08-28'),
(37, 82, 'Nehru', 'Marshall', '01 40 46 50 97', 'Integer.eu@sed.com', '2065-05-01'),
(38, 89, 'Gray', 'Hogan', '03 05 35 00 53', 'et@lacinia.org', '1994-12-19'),
(39, 57, 'Jessamine', 'Fuller', '09 91 60 02 05', 'semper.dui@mi.edu', '1986-09-26'),
(40, 25, 'Olivia', 'Wyatt', '04 29 28 60 00', 'fringilla.euismod.enim@primisin.co.uk', '2047-05-30'),
(41, 49, 'Haley', 'Barrera', '06 65 99 25 00', 'dui.lectus.rutrum@Fuscealiquetmagna.co.uk', '1989-02-13'),
(42, 26, 'Ethan', 'Greer', '02 79 33 11 86', 'vitae@nisl.co.uk', '1978-03-17'),
(43, 68, 'Kadeem', 'Ray', '04 65 46 87 57', 'tellus.sem@mattissemperdui.edu', '2067-12-29'),
(44, 88, 'Cain', 'Davis', '04 01 83 48 25', 'lacinia@Integer.org', '2054-03-07'),
(45, 96, 'Diana', 'King', '04 04 50 17 34', 'pulvinar.arcu@massaSuspendisse.ca', '2066-08-28'),
(46, 98, 'Wallace', 'Blankenship', '03 01 99 53 55', 'natoque.penatibus@ametornare.edu', '2068-05-17'),
(47, 22, 'Fatima', 'Crawford', '01 92 46 66 90', 'Pellentesque@velitduisemper.org', '2060-06-06'),
(48, 47, 'Logan', 'Rasmussen', '06 71 10 96 85', 'eu@blanditat.co.uk', '1995-02-03'),
(49, 29, 'Josephine', 'Hobbs', '09 05 36 13 29', 'auctor.nunc@augueeutellus.edu', '1999-07-25'),
(50, 86, 'Lars', 'Coffey', '01 46 42 43 66', 'metus.sit@tempuseuligula.com', '1987-10-26'),
(51, 52, 'Brian', 'Delacruz', '04 81 15 50 08', 'sed.pede.Cum@Incondimentum.org', '1977-11-20'),
(52, 20, 'Tiger', 'Wood', '01 50 41 58 54', 'fermentum.metus.Aenean@faucibuslectus.net', '2067-06-28'),
(53, 95, 'Alexa', 'Shepherd', '06 25 30 84 62', 'ut@Maurisutquam.org', '1988-11-29'),
(54, 37, 'Sybill', 'Cain', '09 49 07 87 90', 'auctor.Mauris@lacusQuisqueimperdiet.co.uk', '2041-05-28'),
(55, 99, 'Arthur', 'Phillips', '03 32 87 15 21', 'Integer.eu@augueeu.co.uk', '2053-06-13'),
(56, 66, 'Judah', 'Blackburn', '05 78 54 84 82', 'sit.amet.consectetuer@atarcuVestibulum.org', '1980-02-07'),
(57, 58, 'Quail', 'Guthrie', '05 05 60 88 05', 'congue@libero.org', '1972-12-27'),
(58, 18, 'Jerry', 'Haney', '09 32 81 10 35', 'Proin@cubilia.edu', '2061-12-10'),
(59, 45, 'Zachery', 'Fernandez', '02 76 78 10 53', 'In.ornare.sagittis@enimnectempus.edu', '2066-09-28'),
(60, 89, 'Karly', 'Patton', '08 53 70 12 79', 'eu.eleifend@erat.net', '1994-08-14'),
(61, 65, 'Cade', 'Vargas', '03 27 00 27 11', 'vulputate@enimMauris.org', '2065-02-18'),
(62, 88, 'Camden', 'Bryant', '09 86 80 72 00', 'Vivamus.euismod.urna@lectus.com', '2039-04-27'),
(63, 69, 'Bruce', 'Serrano', '01 56 06 41 62', 'sapien.gravida.non@Proinmi.co.uk', '1972-06-09'),
(64, 25, 'Rae', 'Salas', '04 42 53 30 53', 'enim@Nuncquis.co.uk', '2038-06-30'),
(65, 1, 'Abrahammmm', 'Clayton', '0424928934', 'pellentesque.Sed@sit.net', '2052-05-22'),
(66, 54, 'Hayfa', 'Moses', '02 51 99 16 01', 'enim.gravida.sit@fermentumfermentumarcu.com', '1991-01-30'),
(67, 35, 'Leo', 'Graham', '08 80 34 59 56', 'pretium.neque@necdiamDuis.ca', '2047-01-14'),
(68, 21, 'Reese', 'Wong', '04 78 45 56 78', 'egestas@tinciduntpedeac.org', '2043-04-14'),
(69, 32, 'Nina', 'Reynolds', '02 04 60 73 64', 'Phasellus.dolor@placeratvelit.edu', '2044-10-05'),
(70, 93, 'Michael', 'Irwin', '05 47 72 46 95', 'sit@vitaeorci.edu', '1997-05-08'),
(71, 27, 'Carolyn', 'Baldwin', '01 52 49 10 22', 'pharetra@dolor.org', '1980-09-28'),
(72, 68, 'Price', 'Stafford', '02 65 75 66 39', 'risus.varius@esttemporbibendum.com', '1994-10-22'),
(73, 24, 'Sharon', 'Wiggins', '09 14 14 34 91', 'Sed.auctor@Maecenasiaculis.edu', '1976-06-14'),
(74, 97, 'Levi', 'Petersen', '03 89 31 94 88', 'vulputate@feugiatmetussit.ca', '2065-06-20'),
(75, 17, 'Aladdin', 'Payne', '02 90 31 02 98', 'orci@nuncestmollis.ca', '2062-03-04'),
(76, 89, 'Alisa', 'Hurley', '08 15 29 22 94', 'eros.Proin@metus.co.uk', '2056-11-03'),
(77, 70, 'Camden', 'Gross', '01 00 19 09 46', 'scelerisque.neque.sed@lectusasollicitudin.ca', '1970-04-23'),
(78, 66, 'Jamal', 'Frye', '07 63 72 77 53', 'interdum.Sed@natoquepenatibus.net', '2056-08-02'),
(79, 37, 'Garrett', 'Stafford', '09 56 70 23 75', 'accumsan@Etiamimperdietdictum.net', '2057-02-07'),
(80, 33, 'Silas', 'York', '08 80 34 50 19', 'Donec.non.justo@ipsumSuspendissesagittis.org', '1993-04-08'),
(81, 82, 'Ruth', 'House', '09 34 55 45 60', 'tristique.senectus.et@luctusfelis.com', '2068-06-16'),
(82, 56, 'Ciara', 'Macias', '03 90 38 64 08', 'a@scelerisqueneque.co.uk', '1970-09-13'),
(83, 92, 'Teagan', 'Stewart', '06 29 48 24 49', 'orci.Ut.sagittis@rutrumFuscedolor.ca', '2049-03-03'),
(84, 7, 'Deirdre', 'Schroeder', '07 88 11 21 39', 'tincidunt.aliquam@tinciduntadipiscingMauris.edu', '2047-08-18'),
(85, 24, 'Ethan', 'Mathews', '03 90 29 24 71', 'faucibus.lectus@nibhdolornonummy.ca', '1981-03-10'),
(86, 33, 'Casey', 'Blanchard', '02 06 57 72 07', 'auctor.ullamcorper@semutdolor.net', '2051-03-25'),
(87, 40, 'Vielka', 'Greer', '08 94 32 42 21', 'ultricies.adipiscing@nonleoVivamus.net', '2048-11-25'),
(88, 19, 'Allistair', 'Gibson', '03 74 17 64 41', 'Ut.nec.urna@dictummiac.org', '2057-06-24'),
(89, 69, 'Todd', 'Benson', '08 80 28 53 59', 'et.lacinia@etmalesuada.org', '2034-06-02'),
(90, 26, 'Doris', 'Morse', '04 92 27 01 82', 'sed@Pellentesque.org', '1981-05-17'),
(91, 27, 'Genevieve', 'Mcbride', '06 34 77 48 12', 'Mauris@id.com', '2058-12-24'),
(92, 69, 'Scott', 'Trujillo', '01 80 94 10 65', 'Integer.sem.elit@liberoProinsed.co.uk', '1970-11-29'),
(93, 56, 'William', 'White', '02 36 10 83 71', 'feugiat@arcuiaculisenim.net', '1988-08-19'),
(94, 5, 'Melvin', 'Christian', '05 94 32 12 51', 'Integer.vitae@non.ca', '1980-03-12'),
(95, 87, 'Karen', 'Wolfe', '05 74 92 24 10', 'ipsum.dolor@mus.co.uk', '1999-05-19'),
(96, 22, 'Vielka', 'Bonner', '01 22 37 53 38', 'lacus.Cras.interdum@sagittisNullam.net', '2059-10-19'),
(97, 96, 'Carlos', 'Gardner', '02 32 24 45 31', 'lorem.fringilla@cursusvestibulumMauris.co.uk', '2039-08-16'),
(98, 11, 'Odette', 'Walton', '03 46 32 86 86', 'elit@anteNunc.net', '1973-11-28'),
(99, 63, 'Acton', 'Goodwin', '07 87 45 76 43', 'dolor.Donec@massaQuisque.org', '2045-09-28'),
(100, 54, 'Brent', 'Mccormick', '03 26 61 62 28', 'Integer.aliquam.adipiscing@montes.edu', '1978-03-15'),
(101, 22, 'Jonas', 'Schiller', '2212', 'jonasschiller@online.de', '1998-06-24');

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `Prop_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Prop_Description` varchar(45) DEFAULT NULL,
  `Prop_Bedrooms` varchar(45) DEFAULT NULL,
  `Prop_Bathrooms` varchar(45) DEFAULT NULL,
  `Prop_SquareMeter` varchar(45) DEFAULT NULL,
  `Address_Address_ID` int(11) NOT NULL,
  `Prop_Pool` tinyint(1) NOT NULL,
  PRIMARY KEY (`Prop_ID`),
  KEY `address` (`Address_Address_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `property`
--

INSERT INTO `property` (`Prop_ID`, `Prop_Description`, `Prop_Bedrooms`, `Prop_Bathrooms`, `Prop_SquareMeter`, `Address_Address_ID`, `Prop_Pool`) VALUES
(1, NULL, '4', '4', '259', 4, 1),
(2, NULL, '5', '2', '241', 8, 0),
(3, NULL, '3', '2', '182', 37, 0),
(4, NULL, '5', '1', '163', 24, 0),
(5, NULL, '3', '2', '120', 74, 0),
(6, NULL, '2', '4', '156', 87, 0),
(7, NULL, '1', '1', '87', 98, 1),
(8, NULL, '2', '2', '90', 19, 1),
(9, NULL, '3', '4', '173', 76, 1),
(10, NULL, '5', '3', '213', 66, 1),
(11, NULL, '5', '4', '272', 71, 0),
(12, NULL, '6', '1', '252', 38, 1),
(13, NULL, '3', '3', '203', 69, 0),
(14, NULL, '4', '3', '203', 60, 1),
(15, NULL, '4', '1', '133', 6, 0),
(16, NULL, '2', '1', '106', 98, 0),
(17, NULL, '6', '4', '297', 79, 1),
(18, NULL, '6', '3', '284', 6, 1),
(19, NULL, '5', '2', '231', 18, 1),
(20, NULL, '2', '3', '145', 98, 1),
(21, NULL, '6', '3', '293', 42, 0),
(22, NULL, '6', '1', '220', 36, 1),
(23, NULL, '5', '1', '184', 80, 1),
(24, NULL, '1', '2', '105', 22, 1),
(25, NULL, '3', '1', '102', 57, 1),
(26, NULL, '2', '4', '172', 26, 1),
(27, NULL, '3', '3', '142', 77, 1),
(28, NULL, '6', '2', '274', 78, 1),
(29, NULL, '2', '4', '154', 93, 0),
(30, NULL, '6', '3', '236', 18, 0),
(31, NULL, '3', '4', '203', 53, 0),
(32, NULL, '6', '2', '240', 80, 0),
(33, NULL, '5', '1', '174', 93, 1),
(34, NULL, '5', '1', '163', 34, 0),
(35, NULL, '6', '1', '222', 27, 1),
(36, NULL, '2', '4', '192', 97, 1),
(37, NULL, '2', '1', '134', 6, 0),
(38, NULL, '5', '4', '237', 23, 1),
(39, NULL, '3', '4', '235', 70, 0),
(40, NULL, '4', '2', '219', 18, 1),
(41, NULL, '1', '4', '146', 80, 0),
(42, NULL, '1', '1', '88', 52, 1),
(43, NULL, '2', '4', '186', 77, 1),
(44, NULL, '5', '3', '200', 56, 0),
(45, NULL, '2', '3', '120', 96, 1),
(46, NULL, '2', '3', '180', 78, 0),
(47, NULL, '5', '2', '196', 11, 0),
(48, NULL, '6', '1', '206', 77, 0),
(49, NULL, '6', '1', '199', 96, 0),
(50, NULL, '4', '4', '222', 79, 0),
(51, NULL, '1', '4', '121', 21, 1),
(52, NULL, '3', '2', '159', 54, 0),
(53, NULL, '1', '2', '110', 94, 0),
(54, NULL, '6', '1', '211', 40, 0),
(55, NULL, '1', '3', '120', 35, 0),
(56, NULL, '3', '4', '177', 95, 1),
(57, NULL, '5', '1', '171', 63, 0),
(58, NULL, '4', '1', '175', 46, 0),
(59, NULL, '4', '1', '127', 40, 0),
(60, NULL, '3', '2', '125', 25, 1),
(61, NULL, '5', '4', '241', 76, 1),
(62, NULL, '3', '2', '146', 82, 0),
(63, NULL, '5', '2', '186', 73, 1),
(64, NULL, '5', '3', '262', 91, 1),
(65, NULL, '6', '4', '317', 55, 1),
(66, NULL, '1', '4', '152', 2, 1),
(67, NULL, '2', '2', '88', 85, 1),
(68, NULL, '4', '1', '158', 29, 1),
(69, NULL, '4', '3', '231', 2, 1),
(70, NULL, '5', '2', '179', 31, 0),
(71, NULL, '5', '2', '245', 83, 0),
(72, NULL, '3', '1', '106', 28, 1),
(73, NULL, '5', '1', '191', 53, 0),
(74, NULL, '1', '1', '48', 95, 1),
(75, NULL, '4', '1', '143', 22, 0),
(76, NULL, '5', '4', '300', 97, 0),
(77, NULL, '5', '2', '181', 49, 0),
(78, NULL, '4', '1', '149', 86, 0),
(79, NULL, '3', '4', '167', 70, 1),
(80, NULL, '2', '3', '167', 21, 1),
(81, NULL, '6', '4', '330', 43, 0),
(82, NULL, '3', '4', '175', 75, 0),
(83, NULL, '1', '4', '176', 22, 0),
(84, NULL, '2', '3', '126', 27, 0),
(85, NULL, '4', '4', '218', 96, 0),
(86, NULL, '5', '4', '225', 72, 1),
(87, NULL, '1', '3', '133', 41, 0),
(88, NULL, '2', '2', '127', 14, 1),
(89, NULL, '3', '4', '167', 81, 1),
(90, NULL, '2', '3', '160', 42, 1),
(91, NULL, '1', '1', '89', 93, 0),
(92, NULL, '6', '3', '305', 55, 0),
(93, NULL, '4', '4', '257', 24, 0),
(94, NULL, '2', '3', '115', 52, 0),
(95, NULL, '2', '1', '123', 8, 1),
(96, NULL, '1', '2', '84', 90, 1),
(97, NULL, '2', '2', '88', 54, 1),
(98, NULL, '2', '3', '168', 55, 0),
(99, NULL, '3', '3', '184', 98, 1),
(100, NULL, '2', '4', '161', 82, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `propertyphoto`
--

DROP TABLE IF EXISTS `propertyphoto`;
CREATE TABLE IF NOT EXISTS `propertyphoto` (
  `Property_Prop_ID` int(11) NOT NULL,
  `Photo_Path` varchar(200) NOT NULL,
  PRIMARY KEY (`Property_Prop_ID`,`Photo_Path`) USING BTREE,
  KEY `fk_PropertyPhoto_Property1_idx` (`Property_Prop_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `propertyphoto`
--

INSERT INTO `propertyphoto` (`Property_Prop_ID`, `Photo_Path`) VALUES
(64, '/photos/TigerWaterfront/185741377.jpg'),
(64, '/photos/TigerWaterfront/185742210.jpg'),
(64, '/photos/TigerWaterfront/194689370.jpg'),
(64, '/photos/TigerWaterfront/194689575.jpg'),
(65, '/photos/AshbyManor/115271712.jpg'),
(65, '/photos/AshbyManor/138061763.jpg'),
(65, '/photos/AshbyManor/175800834.jpg'),
(65, '/photos/AshbyManor/182499819.jpg'),
(73, '/photos/FirstHouseWestcampVilla/167497237.jpg'),
(73, '/photos/FirstHouseWestcampVilla/167497263.jpg'),
(73, '/photos/FirstHouseWestcampVilla/167497292.jpg'),
(73, '/photos/FirstHouseWestcampVilla/167497303.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `Sale_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Agent_Agent_ID` int(11) NOT NULL,
  `Buyer_Buyer_ID` int(11) NOT NULL,
  `Property_Prop_ID` int(11) NOT NULL,
  `Sale_Amount` varchar(45) DEFAULT NULL,
  `Sale_Percentage` varchar(45) DEFAULT NULL,
  `Sale_Date` date DEFAULT NULL,
  `Sale_TimeOnMarket` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Sale_ID`),
  KEY `fk_Sales_Agent1_idx` (`Agent_Agent_ID`),
  KEY `fk_Sales_Buyer1_idx` (`Buyer_Buyer_ID`),
  KEY `fk_Sales_Property1_idx` (`Property_Prop_ID`),
  KEY `Sale_ID` (`Sale_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `sales`
--

INSERT INTO `sales` (`Sale_ID`, `Agent_Agent_ID`, `Buyer_Buyer_ID`, `Property_Prop_ID`, `Sale_Amount`, `Sale_Percentage`, `Sale_Date`, `Sale_TimeOnMarket`) VALUES
(1, 4, 47, 52, '648000', '12', '2017-06-19', '692'),
(2, 3, 35, 72, '44000', '10', '2017-08-17', '55'),
(3, 9, 28, 53, '531000', '8', '2018-05-19', '387'),
(4, 7, 31, 41, '819000', '13', '2018-12-06', '339'),
(5, 10, 23, 78, '288000', '15', '2018-08-10', '665'),
(6, 4, 42, 59, '774000', '5', '2018-03-11', '562'),
(7, 5, 11, 52, '648000', '9', '2018-03-05', '697'),
(8, 9, 16, 82, '702000', '12', '2018-04-22', '319'),
(9, 2, 38, 16, '396000', '13', '2018-02-11', '534'),
(10, 3, 6, 51, '351000', '13', '2018-11-22', '322'),
(11, 3, 18, 40, '279000', '11', '2018-07-19', '332'),
(12, 8, 14, 16, '396000', '13', '2018-02-19', '50'),
(13, 7, 38, 28, '135000', '13', '2019-04-19', '643'),
(14, 5, 12, 45, '315000', '10', '2018-11-19', '236'),
(15, 10, 37, 90, '711000', '14', '2017-10-19', '212'),
(16, 1, 8, 72, '36000', '15', '2018-09-19', '776'),
(17, 10, 20, 21, '567000', '14', '2018-06-19', '607'),
(18, 9, 27, 29, '225000', '10', '2018-07-19', '574'),
(19, 3, 6, 66, '711000', '5', '2018-08-19', '510'),
(20, 5, 2, 92, '801000', '9', '2018-06-19', '660'),
(21, 8, 34, 16, '396000', '11', '2017-06-12', '239'),
(22, 10, 28, 58, '504000', '12', '2018-07-19', '659'),
(23, 4, 34, 26, '621000', '9', '2018-06-25', '512'),
(24, 1, 48, 42, '360000', '8', '2017-06-19', '739');

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `seller`
--

DROP TABLE IF EXISTS `seller`;
CREATE TABLE IF NOT EXISTS `seller` (
  `Seller_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Person_Person_ID` int(11) NOT NULL,
  PRIMARY KEY (`Seller_ID`),
  KEY `fk_Seller_Person1_idx` (`Person_Person_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `seller`
--

INSERT INTO `seller` (`Seller_ID`, `Person_Person_ID`) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20),
(11, 21),
(12, 22),
(13, 23),
(14, 24),
(15, 25),
(16, 26),
(17, 27),
(18, 28),
(19, 29),
(20, 30),
(21, 31),
(22, 32),
(23, 33),
(24, 34),
(25, 35),
(26, 36),
(27, 37),
(28, 38),
(29, 39),
(30, 40);

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `street`
--

DROP TABLE IF EXISTS `street`;
CREATE TABLE IF NOT EXISTS `street` (
  `Street_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Street_Name` varchar(45) DEFAULT NULL,
  `Suburb_Suburb_ID` int(11) NOT NULL,
  PRIMARY KEY (`Street_ID`),
  KEY `fk_Street_Suburb` (`Suburb_Suburb_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `street`
--

INSERT INTO `street` (`Street_ID`, `Street_Name`, `Suburb_Suburb_ID`) VALUES
(1, 'Et, Avenue', 9),
(2, 'Aptent St.', 8),
(3, 'Dictum Rd.', 6),
(4, 'Laoreet Avenue', 18),
(5, 'Imperdiet Rd.', 13),
(6, 'Neque Street', 5),
(7, 'Donec Street', 4),
(8, 'Mauris Rd.', 7),
(9, 'Magna Avenue', 8),
(10, 'Sit St.', 6),
(11, 'Vel Rd.', 5),
(12, 'Amet, Rd.', 18),
(13, 'Nunc Avenue', 6),
(14, 'Aliquam St.', 9),
(15, 'Mollis Rd.', 15),
(16, 'Phasellus Street', 19),
(17, 'Sem Street', 13),
(18, 'Donec Road', 2),
(19, 'Cursus. Street', 16),
(20, 'Magna St.', 20),
(21, 'Dis Ave', 3),
(22, 'Egestas Rd.', 8),
(23, 'Eget, Road', 3),
(24, 'Vestibulum St.', 5),
(25, 'Dictum St.', 2),
(26, 'Cras Rd.', 2),
(27, 'Aliquet Ave', 10),
(28, 'Parturient Road', 1),
(29, 'Risus. Avenue', 7),
(30, 'Posuere, Ave', 13),
(31, 'Lacus. Road', 15),
(32, 'Parturient Road', 2),
(33, 'Ullamcorper. St.', 4),
(34, 'Et Av.', 16),
(35, 'Sed St.', 1),
(36, 'Varius Road', 20),
(37, 'Ac Road', 6),
(38, 'Ornare, Road', 16),
(39, 'A, Ave', 17),
(40, 'Consequat Street', 7),
(41, 'Eget Street', 6),
(42, 'Eget St.', 5),
(43, 'Aliquet. Rd.', 19),
(44, 'Mauris Av.', 15),
(45, 'Egestas St.', 9),
(46, 'Euismod Road', 3),
(47, 'Nulla Road', 4),
(48, 'Egestas. Av.', 8),
(49, 'Sit Road', 17),
(50, 'Egestas St.', 6),
(51, 'Eleifend, St.', 12),
(52, 'Sodales Ave', 11),
(53, 'Donec St.', 8),
(54, 'Vitae St.', 14),
(55, 'Auctor St.', 8),
(56, 'Magnis Road', 11),
(57, 'Eget St.', 11),
(58, 'Sapien Road', 18),
(59, 'Ultricies Road', 8),
(60, 'Eget St.', 12),
(61, 'Proin St.', 5),
(62, 'Fusce Road', 4),
(63, 'Nam Ave', 5),
(64, 'Malesuada Street', 10),
(65, 'Ac Street', 16),
(66, 'Nec, Street', 11),
(67, 'Iaculis Street', 20),
(68, 'Suspendisse Av.', 11),
(69, 'Duis Road', 19),
(70, 'Posuere St.', 10),
(71, 'Ultricies St.', 12),
(72, 'Sed Ave', 13),
(73, 'Nullam Rd.', 10),
(74, 'Vel, Rd.', 14);

-- --------------------------------------------------------

--
-- Tabellenstruktur fÃ¼r Tabelle `suburb`
--

DROP TABLE IF EXISTS `suburb`;
CREATE TABLE IF NOT EXISTS `suburb` (
  `Suburb_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Suburb_Name` varchar(45) DEFAULT NULL,
  `Suburb_ZIP` varchar(45) DEFAULT NULL,
  `City_ID` int(11) NOT NULL,
  PRIMARY KEY (`Suburb_ID`),
  UNIQUE KEY `Suburb_only_once` (`Suburb_Name`,`Suburb_ZIP`),
  KEY `fk_Suburb_CIty` (`City_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Daten fÃ¼r Tabelle `suburb`
--

INSERT INTO `suburb` (`Suburb_ID`, `Suburb_Name`, `Suburb_ZIP`, `City_ID`) VALUES
(1, 'Bakoven', '8005', 1),
(2, 'Bantry Bay', '8005', 1),
(3, 'Camps Bay', '8005', 1),
(4, 'Clifton', '8005', 1),
(5, 'Fresnaye', '8005', 1),
(6, 'Green Point', '8005', 1),
(7, 'Hout Bay', '7806', 1),
(8, 'Imizamo Yethu', '7806', 1),
(9, 'Llandudno', '7806', 1),
(10, 'Mouille Point', '8005', 1),
(11, 'Sea Point', '8005', 1),
(12, 'Three Anchor Bay', '8005', 1),
(13, 'Athlone', '7764', 1),
(14, 'Bishop Lavis', '7490', 1),
(15, 'Bonteheuwel', '7764', 1),
(16, 'Crawford', '7780', 1),
(17, 'Delft', '7100', 1),
(18, 'Milnerton', '8005', 1),
(19, 'Elsie\'s River', '7490', 1),
(20, 'Parklands', '7441', 1);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `fk_Agent_Person` FOREIGN KEY (`Person_Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `available`
--
ALTER TABLE `available`
  ADD CONSTRAINT `fk_Available_Agent1` FOREIGN KEY (`Agent_Agent_ID`) REFERENCES `agent` (`Agent_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Available_Property1` FOREIGN KEY (`Property_ID`) REFERENCES `property` (`Prop_ID`),
  ADD CONSTRAINT `fk_Available_Seller1` FOREIGN KEY (`Seller_Seller_ID`) REFERENCES `seller` (`Seller_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `fk_Buyer_Person1` FOREIGN KEY (`Person_Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_City_Country` FOREIGN KEY (`Country_ID`) REFERENCES `country` (`Country_ID`);

--
-- Constraints der Tabelle `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `fk_Person_Address1` FOREIGN KEY (`Address_Address_ID`) REFERENCES `address` (`Address_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `address` FOREIGN KEY (`Address_Address_ID`) REFERENCES `address` (`Address_ID`);

--
-- Constraints der Tabelle `propertyphoto`
--
ALTER TABLE `propertyphoto`
  ADD CONSTRAINT `fk_PropertyPhoto_Property1` FOREIGN KEY (`Property_Prop_ID`) REFERENCES `property` (`Prop_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_Sales_Agent1` FOREIGN KEY (`Agent_Agent_ID`) REFERENCES `agent` (`Agent_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Sales_Buyer1` FOREIGN KEY (`Buyer_Buyer_ID`) REFERENCES `buyer` (`Buyer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Sales_Property1` FOREIGN KEY (`Property_Prop_ID`) REFERENCES `property` (`Prop_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `fk_Seller_Person1` FOREIGN KEY (`Person_Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `street`
--
ALTER TABLE `street`
  ADD CONSTRAINT `fk_Street_Suburb` FOREIGN KEY (`Suburb_Suburb_ID`) REFERENCES `suburb` (`Suburb_ID`);

--
-- Constraints der Tabelle `suburb`
--
ALTER TABLE `suburb`
  ADD CONSTRAINT `fk_Suburb_CIty` FOREIGN KEY (`City_ID`) REFERENCES `city` (`City_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
