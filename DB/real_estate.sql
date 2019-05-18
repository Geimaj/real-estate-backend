-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2019 at 08:04 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--
CREATE DATABASE IF NOT EXISTS `real_estate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `real_estate`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `Address_ID` int(11) NOT NULL,
  `Street_Street_ID` int(11) NOT NULL,
  `Address_House_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`Address_ID`, `Street_Street_ID`, `Address_House_Number`) VALUES
(1, 54, 65),
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
(16, 91, 97),
(17, 37, 36),
(18, 33, 75),
(19, 42, 88),
(20, 32, 52),
(21, 4, 1097),
(22, 65, 52),
(23, 54, 65),
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
(54, 90, 1045),
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
(73, 91, 0),
(74, 5, 50),
(75, 69, 39),
(76, 48, 12),
(77, 24, 44),
(78, 24, 71),
(79, 64, 131),
(80, 46, 32),
(81, 34, 113),
(82, 45, 97),
(83, 13, 28),
(84, 64, 19),
(85, 33, 32),
(86, 90, 65),
(87, 90, 4015),
(88, 4, 84),
(89, 8, 105),
(90, 54, 0),
(91, 51, 28),
(92, 35, 6),
(93, 19, 145),
(94, 36, 116),
(95, 68, 142),
(96, 22, 110),
(97, 36, 97),
(98, 12, 32),
(99, 63, 141),
(107, 91, 411),
(108, 92, 45);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `Agent_ID` int(11) NOT NULL,
  `Person_Person_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`Agent_ID`, `Person_Person_ID`) VALUES
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
-- Table structure for table `available`
--

DROP TABLE IF EXISTS `available`;
CREATE TABLE `available` (
  `Avail_ID` int(11) NOT NULL,
  `Avail_ListingDate` date DEFAULT NULL,
  `Avail_ListingPrice` int(45) DEFAULT NULL,
  `Seller_Seller_ID` int(11) NOT NULL,
  `Agent_Agent_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `available`
--

INSERT INTO `available` (`Avail_ID`, `Avail_ListingDate`, `Avail_ListingPrice`, `Seller_Seller_ID`, `Agent_Agent_ID`, `Property_ID`) VALUES
(2, '2013-05-20', 1224000, 19, 10, 82),
(3, '2002-07-20', 495000, 26, 5, 95),
(4, '2025-02-20', 1341000, 5, 9, 66),
(5, '2008-03-20', 909000, 8, 10, 49),
(6, '2020-03-20', 1548000, 19, 2, 57),
(7, '2022-03-20', 1350000, 2, 3, 47),
(8, '2002-04-20', 1305000, 15, 3, 68),
(9, '2026-12-20', 1602000, 14, 1, 23),
(10, '2010-01-20', 2070000, 3, 6, 53),
(11, '2019-03-20', 1935000, 9, 5, 74),
(12, '2030-01-20', 1260000, 11, 8, 56),
(13, '2022-10-20', 405000, 16, 9, 75),
(14, '2018-11-20', 747000, 13, 9, 58),
(15, '2018-06-20', 2196000, 1, 3, 46),
(18, '0000-00-00', 420000, 0, 4, -1),
(19, '0000-00-00', 420000, 0, 4, -1),
(20, '0000-00-00', 420000, 0, 4, -1),
(21, '0000-00-00', 100, 0, 2, -1),
(22, '0000-00-00', 100, 0, 4, -1),
(23, '0000-00-00', 100, 0, 2, -1),
(24, '0000-00-00', 100, 0, 2, -1),
(25, '0000-00-00', 100, 17, 4, -1),
(26, '0000-00-00', 500, 17, 4, 107),
(27, '0000-00-00', 100, 17, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `Buyer_ID` int(11) NOT NULL,
  `Person_Person_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buyer`
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
(60, 100),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `City_ID` int(11) NOT NULL,
  `City_Name` varchar(45) DEFAULT NULL,
  `Country_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`City_ID`, `City_Name`, `Country_ID`) VALUES
(1, 'Cape Town', 1),
(2, 'Gauteng', 1),
(3, 'Port Elizebeth', 1),
(4, 'Frankfurt', 2),
(5, 'Durban', 1),
(6, 'Adelaide', 3);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `Country_ID` int(11) NOT NULL,
  `Country_Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Country_ID`, `Country_Name`) VALUES
(1, 'South Africa'),
(2, 'Germany'),
(3, 'Australia'),
(4, 'China');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `Person_ID` int(11) NOT NULL,
  `Address_Address_ID` int(11) DEFAULT NULL,
  `Person_Firstname` varchar(45) DEFAULT NULL,
  `Person_LastName` varchar(45) DEFAULT NULL,
  `Person_PhoneNumber` varchar(45) DEFAULT NULL,
  `Person_Email` varchar(60) DEFAULT NULL,
  `Person_DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`Person_ID`, `Address_Address_ID`, `Person_Firstname`, `Person_LastName`, `Person_PhoneNumber`, `Person_Email`, `Person_DOB`) VALUES
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
(101, 22, 'Jonas', 'Schiller', '2212', 'jonasschiller@online.de', '1998-06-24'),
(102, NULL, 'Abraham', 'Abraham', '0424928934', 'pellentesque.Sed@sit.net', '2052-05-22'),
(103, NULL, 'Abraham', 'Abraham', '0424928934', 'pellentesque.Sed@sit.net', '2052-05-22'),
(104, NULL, 'Abraham', 'Abraham', '0424928934', 'pellentesque.Sed@sit.net', '2052-05-22'),
(105, NULL, 'Aaron', 'Aaron', '1234567890', 'a@chandler.com', '0000-00-00'),
(106, NULL, 'Abron', 'Abron', '1213215416', 'kin=g@bb.com', '0000-00-00'),
(107, NULL, 'Aaron', 'Aaron', '1234567890', 'a@chandler.com', '0000-00-00'),
(108, NULL, 'aabbb', 'bbbb', '1231651016', '2ejubeqjub@c.com', '0000-00-00'),
(109, NULL, 'aajmie', 'aajmie', '1245678945', 'j@g.com', '0000-00-00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `personDetails`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `personDetails`;
CREATE TABLE `personDetails` (
`Person_ID` int(11)
,`Person_Firstname` varchar(45)
,`Person_LastName` varchar(45)
,`Person_PhoneNumber` varchar(45)
,`Address_Address_ID` int(11)
,`Person_Email` varchar(60)
,`Person_DOB` date
,`Agent_ID` int(11)
,`Buyer_ID` int(11)
,`Seller_ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `Prop_ID` int(11) NOT NULL,
  `Prop_Description` varchar(45) DEFAULT NULL,
  `Prop_Bedrooms` varchar(45) DEFAULT NULL,
  `Prop_Bathrooms` varchar(45) DEFAULT NULL,
  `Prop_SquareMeter` varchar(45) DEFAULT NULL,
  `Address_Address_ID` int(11) NOT NULL,
  `Prop_Pool` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`Prop_ID`, `Prop_Description`, `Prop_Bedrooms`, `Prop_Bathrooms`, `Prop_SquareMeter`, `Address_Address_ID`, `Prop_Pool`) VALUES
(1, NULL, '2', '1', '109', 75, 0),
(2, NULL, '6', '1', '202', 55, 0),
(3, NULL, '3', '4', '181', 88, 1),
(4, NULL, '3', '1', '69', 24, 1),
(5, NULL, '1', '2', '48', 31, 0),
(6, NULL, '2', '2', '88', 96, 1),
(7, NULL, '3', '1', '71', 95, 1),
(8, NULL, '5', '4', '226', 7, 1),
(9, NULL, '5', '4', '216', 78, 0),
(10, NULL, '4', '2', '113', 85, 0),
(11, NULL, '4', '3', '189', 59, 0),
(12, NULL, '6', '4', '186', 24, 1),
(13, NULL, '3', '2', '92', 18, 0),
(14, NULL, '3', '2', '145', 39, 1),
(15, NULL, '4', '1', '93', 64, 0),
(16, NULL, '4', '2', '128', 16, 0),
(17, NULL, '5', '2', '153', 76, 1),
(18, NULL, '5', '1', '117', 49, 0),
(19, NULL, '4', '1', '143', 16, 0),
(20, NULL, '5', '3', '183', 67, 1),
(21, NULL, '6', '4', '188', 2, 1),
(22, NULL, '5', '2', '199', 24, 0),
(23, NULL, '4', '2', '135', 86, 0),
(24, NULL, '2', '2', '113', 10, 1),
(25, NULL, '6', '2', '220', 60, 0),
(26, NULL, '1', '3', '116', 61, 1),
(27, NULL, '5', '2', '148', 65, 1),
(28, NULL, '6', '1', '146', 4, 1),
(29, NULL, '3', '4', '182', 69, 0),
(30, NULL, '2', '4', '123', 2, 1),
(31, NULL, '3', '3', '164', 26, 0),
(32, NULL, '2', '2', '101', 24, 1),
(33, NULL, '4', '3', '127', 38, 1),
(34, NULL, '1', '4', '85', 84, 1),
(35, NULL, '2', '1', '81', 53, 1),
(36, NULL, '6', '4', '195', 8, 0),
(37, NULL, '4', '4', '139', 26, 1),
(38, NULL, '5', '4', '226', 52, 0),
(39, NULL, '4', '3', '146', 6, 1),
(40, NULL, '2', '1', '101', 59, 0),
(41, NULL, '6', '4', '188', 69, 0),
(42, NULL, '5', '1', '177', 95, 0),
(43, NULL, '1', '3', '91', 51, 0),
(44, NULL, '3', '4', '152', 92, 1),
(45, NULL, '1', '4', '109', 95, 0),
(46, 'A nice place to be now', '20', '4', '116', 54, 1),
(47, 'sweet as', '5', '2', '163', 87, 0),
(48, NULL, '5', '1', '127', 32, 0),
(49, NULL, '3', '1', '71', 14, 0),
(50, NULL, '1', '3', '107', 42, 0),
(51, NULL, '2', '2', '112', 96, 1),
(52, NULL, '5', '1', '159', 44, 0),
(53, 'Cool view', '5', '4', '176', 86, 1),
(54, NULL, '1', '2', '90', 9, 1),
(55, NULL, '1', '4', '107', 15, 1),
(56, NULL, '3', '3', '125', 79, 0),
(57, 'awe', '5', '1', '149', 73, 1),
(58, NULL, '2', '1', '77', 84, 0),
(59, NULL, '1', '4', '118', 64, 0),
(60, NULL, '5', '1', '115', 64, 0),
(61, NULL, '3', '4', '174', 94, 1),
(62, NULL, '6', '2', '170', 70, 1),
(63, NULL, '2', '3', '77', 4, 1),
(64, NULL, '3', '3', '119', 67, 1),
(65, NULL, '5', '3', '175', 61, 0),
(66, NULL, '2', '4', '122', 24, 0),
(67, NULL, '5', '4', '210', 24, 1),
(68, NULL, '2', '3', '84', 19, 0),
(69, NULL, '3', '3', '109', 85, 0),
(70, NULL, '6', '2', '219', 83, 0),
(71, NULL, '3', '2', '110', 45, 1),
(72, NULL, '5', '3', '151', 23, 0),
(73, NULL, '2', '4', '125', 74, 0),
(74, 'HOT!', '5', '4', '181', 16, 1),
(75, NULL, '5', '1', '190', 92, 0),
(76, NULL, '4', '4', '155', 31, 1),
(77, NULL, '5', '2', '174', 76, 1),
(78, NULL, '5', '2', '166', 23, 0),
(79, NULL, '5', '2', '160', 64, 1),
(80, NULL, '1', '4', '69', 96, 1),
(81, NULL, '3', '1', '77', 46, 1),
(82, NULL, '4', '3', '172', 21, 0),
(83, NULL, '1', '3', '85', 18, 0),
(84, NULL, '2', '2', '85', 27, 1),
(85, NULL, '3', '1', '81', 16, 1),
(86, NULL, '6', '4', '239', 68, 0),
(87, NULL, '2', '2', '121', 66, 0),
(88, NULL, '6', '4', '201', 8, 1),
(89, NULL, '4', '3', '174', 36, 0),
(90, NULL, '6', '3', '183', 37, 0),
(91, NULL, '1', '3', '77', 2, 1),
(92, NULL, '5', '3', '193', 34, 0),
(93, NULL, '5', '4', '187', 75, 1),
(94, NULL, '5', '1', '187', 70, 0),
(95, NULL, '3', '4', '124', 34, 0),
(96, NULL, '3', '1', '102', 75, 1),
(97, NULL, '5', '1', '175', 1, 0),
(98, NULL, '2', '3', '124', 96, 1),
(99, NULL, '1', '1', '31', 54, 1),
(100, NULL, '2', '4', '139', 63, 1),
(101, '\"Lovely Villa\"', '5', '3', '320', 85, 0),
(102, '\"Huge Mansion\"', '6', '7', '520', 99, 0),
(106, 'For  real', '20', '2', '200', 107, 1),
(107, 'not good for downhill skating', '2', '2', '200', 108, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `propertyDetails`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `propertyDetails`;
CREATE TABLE `propertyDetails` (
`Prop_ID` int(11)
,`Prop_Description` varchar(45)
,`Prop_Bedrooms` varchar(45)
,`Prop_Bathrooms` varchar(45)
,`Prop_SquareMeter` varchar(45)
,`Address_Address_ID` int(11)
,`Prop_Pool` tinyint(1)
,`Address_ID` int(11)
,`Address_House_Number` int(11)
,`Street_Street_ID` int(11)
,`Street_Name` varchar(45)
,`Suburb_ID` int(11)
,`Suburb_Name` varchar(45)
,`Suburb_ZIP` varchar(45)
,`City_ID` int(11)
,`City_Name` varchar(45)
,`Country_ID` int(11)
,`Country_Name` varchar(45)
,`Photo_Path` varchar(200)
,`Avail_ID` int(11)
,`Avail_ListingDate` date
,`Avail_ListingPrice` int(45)
,`Seller_Seller_ID` int(11)
,`Agent_Agent_ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `propertyphoto`
--

DROP TABLE IF EXISTS `propertyphoto`;
CREATE TABLE `propertyphoto` (
  `Photo_ID` int(11) NOT NULL,
  `Property_Prop_ID` int(11) NOT NULL,
  `Photo_Path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `propertyphoto`
--

INSERT INTO `propertyphoto` (`Photo_ID`, `Property_Prop_ID`, `Photo_Path`) VALUES
(1, 1, '/photos/TigerWaterfront/185741377.jpg'),
(2, 1, '/photos/TigerWaterfront/185742210.jpg'),
(3, 1, '/photos/TigerWaterfront/194689370.jpg'),
(4, 1, '/photos/TigerWaterfront/194689575.jpg'),
(5, 2, '/photos/FirstHouseWestcampVilla/167497237.jpg'),
(6, 2, '/photos/FirstHouseWestcampVilla/167497263.jpg'),
(7, 2, '/photos/FirstHouseWestcampVilla/167497292.jpg'),
(8, 2, '/photos/FirstHouseWestcampVilla/167497303.jpg'),
(9, 3, '/photos/AshbyManor/115271712.jpg'),
(10, 3, '/photos/AshbyManor/138061763.jpg'),
(11, 3, '/photos/AshbyManor/175800834.jpg'),
(12, 3, '/photos/AshbyManor/182499819.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `Sale_ID` int(11) NOT NULL,
  `Agent_Agent_ID` int(11) NOT NULL,
  `Buyer_Buyer_ID` int(11) NOT NULL,
  `Property_Prop_ID` int(11) NOT NULL,
  `Sale_Amount` varchar(45) DEFAULT NULL,
  `Sale_Percentage` varchar(45) DEFAULT NULL,
  `Sale_Date` date DEFAULT NULL,
  `Sales_TimeOnMarket` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Sale_ID`, `Agent_Agent_ID`, `Buyer_Buyer_ID`, `Property_Prop_ID`, `Sale_Amount`, `Sale_Percentage`, `Sale_Date`, `Sales_TimeOnMarket`) VALUES
(1, 7, 53, 59, '270000', '9', '2018-01-20', '142'),
(2, 9, 35, 3, '90000', '13', '2018-10-20', '820'),
(3, 6, 30, 72, '486000', '14', '2018-04-20', '576'),
(4, 3, 13, 85, '720000', '5', '2018-05-20', '757'),
(5, 8, 54, 80, '495000', '9', '2015-11-20', '937'),
(6, 10, 41, 20, '405000', '11', '2019-01-20', '777'),
(7, 8, 55, 25, '369000', '13', '2018-04-20', '583'),
(8, 4, 14, 13, '774000', '7', '2018-12-20', '618'),
(9, 10, 12, 72, '486000', '7', '2017-04-20', '399'),
(10, 2, 50, 60, '675000', '15', '2016-09-20', '896'),
(11, 5, 4, 29, '387000', '11', '2018-04-20', '854'),
(12, 1, 49, 58, '486000', '10', '2017-06-20', '441'),
(13, 9, 44, 22, '81000', '12', '2018-04-20', '305'),
(14, 3, 9, 80, '495000', '6', '2018-07-20', '145'),
(15, 9, 15, 58, '486000', '11', '2018-06-20', '400'),
(16, 4, 48, 100, '180000', '9', '2018-01-20', '881'),
(17, 9, 51, 68, '27000', '10', '2018-06-20', '151'),
(18, 1, 4, 76, '738000', '14', '2016-02-20', '532'),
(19, 7, 30, 79, '567000', '8', '2018-05-20', '422'),
(20, 1, 26, 31, '729000', '5', '2018-10-12', '27'),
(21, 2, 20, 20, '405000', '11', '2018-04-20', '920'),
(22, 4, 48, 97, '324000', '9', '2017-05-20', '169'),
(23, 10, 28, 33, '153000', '5', '2018-08-20', '23'),
(24, 7, 10, 84, '18000', '13', '2016-06-20', '390'),
(25, 2, 12, 45, '729000', '15', '2019-05-10', '3177'),
(26, 4, 1, 36, '1207000', NULL, '2019-05-14', '5441'),
(27, 4, 1, 36, '1207000', NULL, '2019-05-14', '5441'),
(28, 4, 41, 102, '288000000', NULL, '2019-05-14', '125'),
(29, 7, 41, 101, '222000000', NULL, '2019-05-14', '308');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `Seller_ID` int(11) NOT NULL,
  `Person_Person_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`Seller_ID`, `Person_Person_ID`) VALUES
(1, 11),
(2, 12),
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
-- Table structure for table `street`
--

DROP TABLE IF EXISTS `street`;
CREATE TABLE `street` (
  `Street_ID` int(11) NOT NULL,
  `Street_Name` varchar(45) DEFAULT NULL,
  `Suburb_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `street`
--

INSERT INTO `street` (`Street_ID`, `Street_Name`, `Suburb_ID`) VALUES
(1, 'Et Ave', 2),
(2, '3865 Aptent St.', 1),
(3, 'Dictum Road', 6),
(4, '5486 Laoreet Avenue', 1),
(5, '5628 Imperdiet Rd.', 1),
(6, '690-2677 Neque Street', 1),
(7, 'Ap #859-6571 Donec Street', 1),
(8, '6194 Mauris Rd.', 5),
(9, 'Magna Avenue', 7),
(10, 'Ap #617-2953 Sit St.', 1),
(11, 'Vel Road', 8),
(12, 'Ap #621-3272 Amet, Rd.', 1),
(13, '8557 Nunc Avenue', 1),
(14, '265 Aliquam St.', 1),
(15, 'Ap #792-1649 Mollis Rd.', 1),
(16, 'Ap #693-9462 Phasellus Street', 1),
(17, '251-5270 Sem Street', 1),
(18, '586-2587 Donec Road', 1),
(19, 'Ap #371-8430 Cursus. Street', 1),
(20, 'Ap #633-2033 Magna St.', 1),
(21, 'Ap #593-416 Dis Ave', 1),
(22, '704 Egestas Rd.', 1),
(23, '7236 Eget, Road', 4),
(24, 'Ap #108-5978 Vestibulum St.', 1),
(25, 'Ap #923-8149 Dictum St.', 1),
(26, '550-2101 Cras Rd.', 1),
(27, 'Ap #395-1579 Aliquet Ave', 1),
(28, '7358 Parturient Road', 1),
(29, '897-5390 Risus. Avenue', 1),
(30, 'Ap #114-4922 Posuere, Ave', 1),
(31, 'Ap #276-8353 Lacus. Road', 1),
(32, 'Ap #303-2819 Parturient Road', 1),
(33, '888-898 Ullamcorper. St.', 1),
(34, '2881 Et Av.', 1),
(35, '590-5365 Sed St.', 1),
(36, '443-3676 Varius Road', 1),
(37, '809-4966 Ac Road', 1),
(38, 'Ap #259-3387 Ornare, Road', 1),
(39, '3005 A, Ave', 1),
(40, '382-1395 Consequat Street', 1),
(41, 'Ap #279-6194 Eget Street', 1),
(42, '584-1649 Eget St.', 1),
(43, 'Aliquet. Rd.', 4),
(44, 'Mauris Av.', 4),
(45, 'Ap #408-5504 Egestas St.', 1),
(46, '145-3560 Euismod Road', 4),
(47, 'Ap #502-6357 Nulla Road', 1),
(48, '865-4513 Egestas. Av.', 1),
(49, '216-6804 Sit Road', 1),
(50, '836-2841 Egestas St.', 3),
(51, 'Ap #844-8850 Eleifend, St.', 1),
(52, '6377 Sodales Ave', 1),
(53, '958-4018 Donec St.', 1),
(54, 'Ap #368-3536 Vitae St.', 1),
(55, '191 Auctor St.', 1),
(56, '9799 Magnis Road', 1),
(57, '459-8509 Eget St.', 1),
(58, '3199 Sapien Road', 1),
(59, 'Ap #705-1836 Ultricies Road', 1),
(60, 'Ap #460-9787 Eget St.', 1),
(61, '8967 Proin St.', 1),
(62, 'Ap #620-9140 Fusce Road', 1),
(63, '4009 Nam Ave', 1),
(64, '866-3297 Malesuada Street', 1),
(65, '5638 Ac Street', 1),
(66, '697-7839 Nec, Street', 1),
(67, '6586 Iaculis Street', 1),
(68, '800 Suspendisse Av.', 1),
(69, 'Ap #922-4903 Duis Road', 1),
(70, '1683 Posuere St.', 1),
(71, '6321 Ultricies St.', 1),
(72, '331-6870 Sed Ave', 1),
(73, '842 Nullam Rd.', 1),
(74, '948 Vel, Rd.', 1),
(75, 'lane', 1),
(76, 'lane', 1),
(77, 'lane', 1),
(78, 'lane', 1),
(79, 'lane', 1),
(80, 'lane', 1),
(81, 'lane', 1),
(82, 'lane', 1),
(83, 'lane', 1),
(84, 'Main Road', 3),
(85, 'Main Road', 12),
(86, 'Everest Way', 3),
(87, 'New Way', 1),
(88, 'Miway', 1),
(89, 'Et Avenue', 6),
(90, 'Farr Terrace', 34),
(91, 'Mains Street', 36),
(92, 'flat street', 37);

-- --------------------------------------------------------

--
-- Table structure for table `suburb`
--

DROP TABLE IF EXISTS `suburb`;
CREATE TABLE `suburb` (
  `Suburb_ID` int(11) NOT NULL,
  `Suburb_Name` varchar(45) DEFAULT NULL,
  `Suburb_ZIP` varchar(45) DEFAULT NULL,
  `City_ID` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suburb`
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
(18, 'Elsie\'s River', '7490', 1),
(19, 'Epping', '7460', 1),
(20, 'Grassy Park', '7941', 1),
(21, 'Gugulethu', '7750', 1),
(22, 'Kalksteenfontein', '7490', 1),
(23, 'Khayelitsha', '7784', 1),
(24, 'Langa', '7455', 1),
(25, 'Lavender Hill', '7945', 1),
(26, 'Lotus River', '7941', 1),
(27, 'Macassar', '7130', 1),
(28, 'Milnerton', '7441', 1),
(29, 'Montague Gardens', '7441', 1),
(30, 'Parklands', '7441', 1),
(31, 'Table View', '7441', 1),
(32, 'West Beach', '7441', 1),
(34, 'Glenelg', '6320', 6),
(35, 'Lofty', '6321', 6),
(36, 'Umshlanga', '10101', 5),
(37, 'West', '9760', 5);

-- --------------------------------------------------------

--
-- Structure for view `personDetails`
--
DROP TABLE IF EXISTS `personDetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `personDetails`  AS  (select `person`.`Person_ID` AS `Person_ID`,`person`.`Person_Firstname` AS `Person_Firstname`,`person`.`Person_LastName` AS `Person_LastName`,`person`.`Person_PhoneNumber` AS `Person_PhoneNumber`,`person`.`Address_Address_ID` AS `Address_Address_ID`,`person`.`Person_Email` AS `Person_Email`,`person`.`Person_DOB` AS `Person_DOB`,`agent`.`Agent_ID` AS `Agent_ID`,`buyer`.`Buyer_ID` AS `Buyer_ID`,`seller`.`Seller_ID` AS `Seller_ID` from (((`person` left join `agent` on((`person`.`Person_ID` = `agent`.`Agent_ID`))) left join `buyer` on((`person`.`Person_ID` = `buyer`.`Buyer_ID`))) left join `seller` on((`person`.`Person_ID` = `seller`.`Seller_ID`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `propertyDetails`
--
DROP TABLE IF EXISTS `propertyDetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `propertyDetails`  AS  (select `property`.`Prop_ID` AS `Prop_ID`,`property`.`Prop_Description` AS `Prop_Description`,`property`.`Prop_Bedrooms` AS `Prop_Bedrooms`,`property`.`Prop_Bathrooms` AS `Prop_Bathrooms`,`property`.`Prop_SquareMeter` AS `Prop_SquareMeter`,`property`.`Address_Address_ID` AS `Address_Address_ID`,`property`.`Prop_Pool` AS `Prop_Pool`,`address`.`Address_ID` AS `Address_ID`,`address`.`Address_House_Number` AS `Address_House_Number`,`address`.`Street_Street_ID` AS `Street_Street_ID`,`street`.`Street_Name` AS `Street_Name`,`street`.`Suburb_ID` AS `Suburb_ID`,`suburb`.`Suburb_Name` AS `Suburb_Name`,`suburb`.`Suburb_ZIP` AS `Suburb_ZIP`,`suburb`.`City_ID` AS `City_ID`,`city`.`City_Name` AS `City_Name`,`city`.`Country_ID` AS `Country_ID`,`country`.`Country_Name` AS `Country_Name`,`propertyphoto`.`Photo_Path` AS `Photo_Path`,`available`.`Avail_ID` AS `Avail_ID`,`available`.`Avail_ListingDate` AS `Avail_ListingDate`,`available`.`Avail_ListingPrice` AS `Avail_ListingPrice`,`available`.`Seller_Seller_ID` AS `Seller_Seller_ID`,`available`.`Agent_Agent_ID` AS `Agent_Agent_ID` from (((((((`property` join `address` on((`property`.`Address_Address_ID` = `address`.`Address_ID`))) join `street` on((`address`.`Street_Street_ID` = `street`.`Street_ID`))) join `suburb` on((`street`.`Suburb_ID` = `suburb`.`Suburb_ID`))) join `city` on((`suburb`.`City_ID` = `city`.`City_ID`))) join `country` on((`city`.`Country_ID` = `country`.`Country_ID`))) left join `propertyphoto` on((`property`.`Prop_ID` = `propertyphoto`.`Property_Prop_ID`))) left join `available` on((`available`.`Property_ID` = `property`.`Prop_ID`))) group by `property`.`Prop_ID`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`Address_ID`),
  ADD KEY `fk_street_id` (`Street_Street_ID`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`Agent_ID`);

--
-- Indexes for table `available`
--
ALTER TABLE `available`
  ADD PRIMARY KEY (`Avail_ID`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`Buyer_ID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`City_ID`),
  ADD KEY `fk_country_id` (`Country_ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Country_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Person_ID`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`Prop_ID`),
  ADD KEY `fk_address_id` (`Address_Address_ID`);

--
-- Indexes for table `propertyphoto`
--
ALTER TABLE `propertyphoto`
  ADD PRIMARY KEY (`Photo_ID`),
  ADD KEY `fk_property_id` (`Property_Prop_ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Sale_ID`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`Seller_ID`);

--
-- Indexes for table `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`Street_ID`),
  ADD KEY `fk_suburb_id` (`Suburb_ID`);

--
-- Indexes for table `suburb`
--
ALTER TABLE `suburb`
  ADD PRIMARY KEY (`Suburb_ID`),
  ADD KEY `fk_city_id` (`City_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `Address_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `Agent_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `available`
--
ALTER TABLE `available`
  MODIFY `Avail_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `Buyer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `City_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `Country_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `Person_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `Prop_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `propertyphoto`
--
ALTER TABLE `propertyphoto`
  MODIFY `Photo_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Sale_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `Seller_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `street`
--
ALTER TABLE `street`
  MODIFY `Street_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `suburb`
--
ALTER TABLE `suburb`
  MODIFY `Suburb_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_street_id` FOREIGN KEY (`Street_Street_ID`) REFERENCES `street` (`Street_ID`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_country_id` FOREIGN KEY (`Country_ID`) REFERENCES `country` (`Country_ID`);

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `fk_address_id` FOREIGN KEY (`Address_Address_ID`) REFERENCES `address` (`Address_ID`);

--
-- Constraints for table `propertyphoto`
--
ALTER TABLE `propertyphoto`
  ADD CONSTRAINT `fk_property_id` FOREIGN KEY (`Property_Prop_ID`) REFERENCES `property` (`Prop_ID`);

--
-- Constraints for table `street`
--
ALTER TABLE `street`
  ADD CONSTRAINT `fk_suburb_id` FOREIGN KEY (`Suburb_ID`) REFERENCES `suburb` (`Suburb_ID`);

--
-- Constraints for table `suburb`
--
ALTER TABLE `suburb`
  ADD CONSTRAINT `fk_city_id` FOREIGN KEY (`City_ID`) REFERENCES `city` (`City_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
