-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: real-estate-db.cklg4jn7wizp.us-west-1.rds.amazonaws.com    Database: real_estate
-- ------------------------------------------------------
-- Server version	5.7.22-log

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

DROP DATABASE IF EXISTS `real_estate`;


CREATE DATABASE IF NOT EXISTS `real_estate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `real_estate`;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `Address_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Street_Street_ID` int(11) NOT NULL,
  `Address_House_Number` int(11) NOT NULL,
  PRIMARY KEY (`Address_ID`),
  KEY `fk_street_id` (`Street_Street_ID`),
  CONSTRAINT `fk_street_id` FOREIGN KEY (`Street_Street_ID`) REFERENCES `street` (`Street_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,63,66),(2,68,66),(3,24,45),(4,29,146),(5,23,15),(6,34,132),(7,63,96),(8,8,73),(9,52,29),(10,68,53),(11,36,142),(12,60,54),(13,34,105),(14,8,147),(15,37,31),(16,10,123),(17,37,36),(18,33,75),(19,42,88),(20,32,52),(21,42,94),(22,65,52),(23,12,74),(24,14,83),(25,62,72),(26,54,129),(27,7,28),(28,10,42),(29,69,57),(30,19,51),(31,62,59),(32,59,66),(33,46,97),(34,9,86),(35,35,31),(36,65,43),(37,21,18),(38,27,87),(39,3,97),(40,68,73),(41,50,148),(42,39,71),(43,72,42),(44,49,91),(45,30,62),(46,30,65),(47,33,14),(48,11,113),(49,67,146),(50,9,121),(51,26,20),(52,11,9),(53,32,146),(54,23,45),(55,30,18),(56,44,132),(57,32,70),(58,14,94),(59,35,68),(60,69,56),(61,20,117),(62,25,3),(63,48,70),(64,50,47),(65,74,34),(66,68,129),(67,42,65),(68,68,19),(69,58,25),(70,24,108),(71,33,13),(72,2,94),(73,20,148),(74,5,50),(75,69,39),(76,48,12),(77,24,44),(78,24,71),(79,64,131),(80,46,32),(81,34,113),(82,51,130),(83,13,28),(84,64,19),(85,33,32),(86,40,115),(87,36,63),(88,4,84),(89,8,105),(90,50,88),(91,51,28),(92,35,6),(93,19,145),(94,36,116),(95,68,142),(96,22,110),(97,36,97),(98,12,32),(99,63,141),(100,73,1024),(101,18,12);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent` (
  `Agent_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Person_Person_ID` int(11) NOT NULL,
  PRIMARY KEY (`Agent_ID`),
  UNIQUE KEY `Person_Person_ID` (`Person_Person_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,101),(12,110),(13,111),(14,112);
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `available`
--

DROP TABLE IF EXISTS `available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `available` (
  `Avail_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Avail_ListingDate` date DEFAULT NULL,
  `Seller_Seller_ID` int(11) NOT NULL,
  `Agent_Agent_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL,
  `Avail_ListingPrice` double DEFAULT NULL,
  PRIMARY KEY (`Avail_ID`),
  KEY `fk_seller_id` (`Seller_Seller_ID`),
  KEY `fk_agent_id` (`Agent_Agent_ID`),
  KEY `fk_available_property_id` (`Property_ID`),
  CONSTRAINT `fk_agent_id` FOREIGN KEY (`Agent_Agent_ID`) REFERENCES `agent` (`Agent_ID`),
  CONSTRAINT `fk_available_property_id` FOREIGN KEY (`Property_ID`) REFERENCES `property` (`Prop_ID`),
  CONSTRAINT `fk_seller_id` FOREIGN KEY (`Seller_Seller_ID`) REFERENCES `seller` (`Seller_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available`
--

LOCK TABLES `available` WRITE;
/*!40000 ALTER TABLE `available` DISABLE KEYS */;
INSERT INTO `available` VALUES (2,'2016-05-20',19,10,82,1224000),(3,'2017-07-15',26,5,95,4950000),(4,'2018-02-04',5,9,66,1341000),(5,'2016-03-05',8,10,49,150000),(6,'2017-03-09',19,2,57,1548000),(8,'2017-02-13',15,3,68,1305000),(10,'2017-02-14',3,6,53,2070000),(11,'2019-03-20',9,5,74,1935000),(12,'2017-01-08',11,8,56,1260000),(13,'2018-10-25',16,9,75,4050000),(14,'2018-11-20',13,9,58,7470000),(16,'2018-07-10',8,7,101,2200000),(17,'2019-01-09',13,4,102,2800000);
/*!40000 ALTER TABLE `available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyer` (
  `Buyer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Person_Person_ID` int(11) NOT NULL,
  PRIMARY KEY (`Buyer_ID`),
  UNIQUE KEY `Person_Person_ID` (`Person_Person_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (61,1),(1,41),(2,42),(3,43),(4,44),(5,45),(6,46),(7,47),(8,48),(9,49),(10,50),(11,51),(12,52),(13,53),(14,54),(15,55),(16,56),(17,57),(18,58),(19,59),(20,60),(21,61),(22,62),(23,63),(24,64),(25,65),(26,66),(27,67),(28,68),(29,69),(30,70),(31,71),(32,72),(33,73),(34,74),(35,75),(36,76),(37,77),(38,78),(39,79),(40,80),(41,81),(42,82),(43,83),(44,84),(45,85),(46,86),(47,87),(48,88),(49,89),(50,90),(51,91),(52,92),(53,93),(54,94),(55,95),(56,96),(57,97),(58,98),(59,99),(60,100);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `City_ID` int(11) NOT NULL AUTO_INCREMENT,
  `City_Name` varchar(45) DEFAULT NULL,
  `Country_ID` int(11) NOT NULL,
  PRIMARY KEY (`City_ID`),
  KEY `fk_country_id` (`Country_ID`),
  CONSTRAINT `fk_country_id` FOREIGN KEY (`Country_ID`) REFERENCES `country` (`Country_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Cape Town',1),(2,'Gauteng',1),(3,'Port Elizebeth',1),(4,'Frankfurt',2),(5,'Durban',1),(6,'Adelaide',3),(7,'Windhoek',4),(8,'Maputo',6),(9,'Beira',6),(10,'Gaborone',5),(11,'Maun',5);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `Country_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Country_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'South Africa'),(2,'Germany'),(3,'Australia'),(4,'Namibia'),(5,'Botswana'),(6,'Mozambique');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `Person_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Person_Firstname` varchar(45) DEFAULT NULL,
  `Person_LastName` varchar(45) DEFAULT NULL,
  `Person_PhoneNumber` varchar(45) DEFAULT NULL,
  `Person_Email` varchar(60) DEFAULT NULL,
  `Person_DOB` date DEFAULT NULL,
  PRIMARY KEY (`Person_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Mariam','Benton','03 44 19 27 07','Mauris@adipiscingnon.net','1999-12-17'),(2,'Yen','Fitzpatrick','07 90 69 86 83','accumsan@erat.ca','1955-05-12'),(3,'Britanney','Brooks','07 89 60 33 45','Duis.risus@ataugue.ca','1934-10-14'),(4,'Carolyn','Shelton','09 43 70 34 82','tellus.eu.augue@Uttincidunt.co.uk','1986-09-10'),(5,'Whoopi','Franklin','09 80 46 35 72','dapibus@lectusCum.net','1992-02-20'),(6,'Alfonso','Hubbard','07 98 45 34 00','magnis@molestie.edu','1987-07-29'),(7,'Ryan','Rich','02 50 96 84 51','risus.In@ullamcorperviverra.net','1989-12-22'),(8,'Phyllis','Odom','02 14 90 25 27','nulla@netusetmalesuada.net','1954-10-26'),(9,'Jael','Sandoval','01 60 00 54 76','magna.Lorem.ipsum@nonfeugiat.org','1976-07-30'),(10,'Alexis','Hanson','04 43 62 35 07','urna.Nunc@fringilla.com','1966-03-05'),(11,'Tara','Gentry','06 55 91 29 73','accumsan.interdum.libero@Phasellusat.com','1998-07-30'),(12,'Ciaran','Hunter','03 10 16 15 75','malesuada@purus.com','1974-09-15'),(13,'Brenna','Brennan','04 77 18 96 50','primis@acarcuNunc.net','1984-09-25'),(14,'Dorian','Hall','07 19 01 57 64','lacus@parturientmontes.com','1976-05-07'),(15,'Aphrodite','Sampson','07 24 80 92 42','iaculis.lacus.pede@ipsum.com','1977-04-15'),(16,'Keaton','Foster','04 86 91 36 01','mollis.lectus@et.ca','1973-03-28'),(17,'Zeph','Holmes','02 79 34 61 50','aliquet@arcuSed.org','1998-04-11'),(18,'Jacob','Glover','04 04 34 78 09','velit.Cras@sodales.edu','1988-07-11'),(19,'Preston','Morin','05 68 57 49 54','ultrices.Duis.volutpat@enimSuspendissealiquet.com','1982-07-06'),(20,'Tad','Cortez','06 97 45 28 38','egestas.rhoncus.Proin@sit.net','1989-09-02'),(21,'Eugenia','Cooley','09 52 42 71 33','enim.Suspendisse.aliquet@erat.co.uk','1993-05-24'),(22,'Aspen','Floyd','01 40 16 66 06','orci@Proinegetodio.edu','1972-03-17'),(23,'Rose','Lucas','05 99 77 30 67','dictum.cursus.Nunc@urnaUt.edu','1994-07-14'),(24,'Lawrence','Wooten','05 09 25 45 29','sed.facilisis.vitae@justositamet.net','1972-02-03'),(25,'Rafael','Castaneda','02 35 21 28 90','eget@malesuadamalesuadaInteger.edu','1990-07-22'),(26,'Victoria','Sykes','06 03 89 66 92','sem@aultriciesadipiscing.co.uk','1985-07-27'),(27,'Tate','Hurley','09 42 44 86 02','Vivamus@laciniaatiaculis.org','1998-03-17'),(28,'Brett','Patton','09 15 06 99 12','nibh.Phasellus@loremutaliquam.com','1983-04-21'),(29,'Mia','Bowman','06 60 17 26 17','ipsum.dolor.sit@at.com','1982-06-20'),(30,'Norman','Miles','01 55 37 51 86','vehicula.Pellentesque@Inmipede.edu','1977-09-08'),(31,'Kelsey','Blankenship','05 75 90 69 01','non.luctus.sit@placerateget.net','1969-02-16'),(32,'Shay','Patton','04 82 16 05 24','Nulla.eu@Donecdignissim.edu','1987-04-27'),(33,'Alma','Chandler','03 70 63 45 62','Duis@porttitoreros.ca','1989-04-29'),(34,'Mason','Rivers','01 14 37 50 29','dolor@sem.net','1966-06-08'),(35,'Josiah','Barry','02 70 46 20 18','at.iaculis@lacus.co.uk','1981-03-17'),(36,'Inez','Rosario','08 53 57 37 94','rutrum.eu@ut.ca','1974-08-28'),(37,'Nehru','Marshall','01 40 46 50 97','Integer.eu@sed.com','1972-05-01'),(38,'Gray','Hogan','03 05 35 00 53','et@lacinia.org','1994-12-19'),(39,'Jessamine','Fuller','09 91 60 02 05','semper.dui@mi.edu','1986-09-26'),(40,'Olivia','Wyatt','04 29 28 60 00','fringilla.euismod.enim@primisin.co.uk','1956-05-30'),(41,'Haley','Barrera','06 65 99 25 00','dui.lectus.rutrum@Fuscealiquetmagna.co.uk','1989-02-13'),(42,'Ethan','Greer','02 79 33 11 86','vitae@nisl.co.uk','1978-03-17'),(43,'Kadeem','Ray','04 65 46 87 57','tellus.sem@mattissemperdui.edu','1967-12-29'),(44,'Cain','Davis','04 01 83 48 25','lacinia@Integer.org','1954-03-07'),(45,'Diana','King','04 04 50 17 34','pulvinar.arcu@massaSuspendisse.ca','1966-08-28'),(46,'Wallace','Blankenship','03 01 99 53 55','natoque.penatibus@ametornare.edu','1968-05-17'),(47,'Fatima','Crawford','01 92 46 66 90','Pellentesque@velitduisemper.org','1960-06-06'),(48,'Logan','Rasmussen','06 71 10 96 85','eu@blanditat.co.uk','1995-02-03'),(49,'Josephine','Hobbs','09 05 36 13 29','auctor.nunc@augueeutellus.edu','1999-07-25'),(50,'Lars','Coffey','01 46 42 43 66','metus.sit@tempuseuligula.com','1987-10-26'),(51,'Brian','Delacruz','04 81 15 50 08','sed.pede.Cum@Incondimentum.org','1977-11-20'),(52,'Tiger','Wood','01 50 41 58 54','fermentum.metus.Aenean@faucibuslectus.net','1967-06-28'),(53,'Alexa','Shepherd','06 25 30 84 62','ut@Maurisutquam.org','1988-11-29'),(54,'Sybill','Cain','09 49 07 87 90','auctor.Mauris@lacusQuisqueimperdiet.co.uk','1941-05-28'),(55,'Arthur','Phillips','03 32 87 15 21','Integer.eu@augueeu.co.uk','1953-06-13'),(56,'Judah','Blackburn','05 78 54 84 82','sit.amet.consectetuer@atarcuVestibulum.org','1980-02-07'),(57,'Quail','Guthrie','05 05 60 88 05','congue@libero.org','1972-12-27'),(58,'Jerry','Haney','09 32 81 10 35','Proin@cubilia.edu','1961-12-10'),(59,'Zachery','Fernandez','02 76 78 10 53','In.ornare.sagittis@enimnectempus.edu','1966-09-28'),(60,'Karly','Patton','08 53 70 12 79','eu.eleifend@erat.net','1994-08-14'),(61,'Cade','Vargas','03 27 00 27 11','vulputate@enimMauris.org','1965-02-18'),(62,'Camden','Bryant','09 86 80 72 00','Vivamus.euismod.urna@lectus.com','1939-04-27'),(63,'Bruce','Serrano','01 56 06 41 62','sapien.gravida.non@Proinmi.co.uk','1972-06-09'),(64,'Rae','Salas','04 42 53 30 53','enim@Nuncquis.co.uk','1938-06-30'),(65,'Abrahammmm','Clayton','0424928934','pellentesque.Sed@sit.net','1952-05-22'),(66,'Hayfa','Moses','02 51 99 16 01','enim.gravida.sit@fermentumfermentumarcu.com','1991-01-30'),(67,'Leo','Graham','08 80 34 59 56','pretium.neque@necdiamDuis.ca','1947-01-14'),(68,'Reese','Wong','04 78 45 56 78','egestas@tinciduntpedeac.org','1943-04-14'),(69,'Nina','Reynolds','02 04 60 73 64','Phasellus.dolor@placeratvelit.edu','1944-10-05'),(70,'Michael','Irwin','05 47 72 46 95','sit@vitaeorci.edu','1997-05-08'),(71,'Carolyn','Baldwin','01 52 49 10 22','pharetra@dolor.org','1980-09-28'),(72,'Price','Stafford','02 65 75 66 39','risus.varius@esttemporbibendum.com','1994-10-22'),(73,'Sharon','Wiggins','09 14 14 34 91','Sed.auctor@Maecenasiaculis.edu','1976-06-14'),(74,'Levi','Petersen','03 89 31 94 88','vulputate@feugiatmetussit.ca','1965-06-20'),(75,'Aladdin','Payne','02 90 31 02 98','orci@nuncestmollis.ca','1962-03-04'),(76,'Alisa','Hurley','08 15 29 22 94','eros.Proin@metus.co.uk','1956-11-03'),(77,'Camden','Gross','01 00 19 09 46','scelerisque.neque.sed@lectusasollicitudin.ca','1970-04-23'),(78,'Jamal','Frye','07 63 72 77 53','interdum.Sed@natoquepenatibus.net','1956-08-02'),(79,'Garrett','Stafford','09 56 70 23 75','accumsan@Etiamimperdietdictum.net','1957-02-07'),(80,'Silas','York','08 80 34 50 19','Donec.non.justo@ipsumSuspendissesagittis.org','1993-04-08'),(81,'Ruth','House','09 34 55 45 60','tristique.senectus.et@luctusfelis.com','1968-06-16'),(82,'Ciara','Macias','03 90 38 64 08','a@scelerisqueneque.co.uk','1970-09-13'),(83,'Teagan','Stewart','06 29 48 24 49','orci.Ut.sagittis@rutrumFuscedolor.ca','1949-03-03'),(84,'Deirdre','Schroeder','07 88 11 21 39','tincidunt.aliquam@tinciduntadipiscingMauris.edu','1947-08-18'),(85,'Ethan','Mathews','03 90 29 24 71','faucibus.lectus@nibhdolornonummy.ca','1981-03-10'),(86,'Casey','Blanchard','02 06 57 72 07','auctor.ullamcorper@semutdolor.net','1951-03-25'),(87,'Vielka','Greer','08 94 32 42 21','ultricies.adipiscing@nonleoVivamus.net','1948-11-25'),(88,'Allistair','Gibson','03 74 17 64 41','Ut.nec.urna@dictummiac.org','1957-06-24'),(89,'Todd','Benson','08 80 28 53 59','et.lacinia@etmalesuada.org','1934-06-02'),(90,'Doris','Morse','04 92 27 01 82','sed@Pellentesque.org','1981-05-17'),(91,'Genevieve','Mcbride','06 34 77 48 12','Mauris@id.com','1958-12-24'),(92,'Scott','Trujillo','01 80 94 10 65','Integer.sem.elit@liberoProinsed.co.uk','1970-11-29'),(93,'William','White','02 36 10 83 71','feugiat@arcuiaculisenim.net','1988-08-19'),(94,'Melvin','Christian','05 94 32 12 51','Integer.vitae@non.ca','1980-03-12'),(95,'Karen','Wolfe','05 74 92 24 10','ipsum.dolor@mus.co.uk','1999-05-19'),(96,'Vielka','Bonner','01 22 37 53 38','lacus.Cras.interdum@sagittisNullam.net','1959-10-19'),(97,'Carlos','Gardner','02 32 24 45 31','lorem.fringilla@cursusvestibulumMauris.co.uk','1939-08-16'),(98,'Odette','Walton','03 46 32 86 86','elit@anteNunc.net','1973-11-28'),(99,'Acton','Goodwin','07 87 45 76 43','dolor.Donec@massaQuisque.org','1945-09-28'),(100,'Brent','Mccormick','03 26 61 62 28','Integer.aliquam.adipiscing@montes.edu','1978-03-15'),(101,'Jonas','Schiller','2212','jonasschiller@online.de','1998-06-24'),(102,'Abraham','Mark','0424928934','pellentesque.Sed@sit.net','1952-05-22'),(103,'Abraham','Bauer','0424928934','pellentesque.Sed@sit.net','1952-05-24'),(104,'Abraham','Weber','0424928934','pellentesque.Sed@sit.net','1952-05-22'),(105,'Aaron','Stark','1234567890','a@chandler.com','1966-06-07'),(106,'Abron','Rodgers','1213215416','king@bb.com','1988-04-11'),(107,'Aaron','Thor','1234567890','a@chandler.com','1956-05-12'),(108,'Gregor','Test','1231651016','2ejubeqjub@c.com','1963-06-22'),(109,'Gregor','Ahab','1245678945','j@g.com','1965-08-23'),(110,'zoltan','zoltan','2135647897','zoltan@zork.com','1997-04-03'),(111,'Jj','Jj','8164720174','Sofa77@gmx.de','1998-11-24'),(112,'fred','fred','1234657456','fred@gregs.com','1997-03-01');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `Prop_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Prop_Description` varchar(45) DEFAULT NULL,
  `Prop_Bedrooms` varchar(45) DEFAULT NULL,
  `Prop_Bathrooms` varchar(45) DEFAULT NULL,
  `Prop_SquareMeter` varchar(45) DEFAULT NULL,
  `Address_Address_ID` int(11) NOT NULL,
  `Prop_Pool` tinyint(1) NOT NULL,
  PRIMARY KEY (`Prop_ID`),
  KEY `fk_address_id` (`Address_Address_ID`),
  CONSTRAINT `fk_address_id` FOREIGN KEY (`Address_Address_ID`) REFERENCES `address` (`Address_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,NULL,'2','1','109',75,0),(2,NULL,'6','1','202',55,0),(3,NULL,'3','4','181',88,1),(4,NULL,'3','1','69',24,1),(5,NULL,'1','2','48',31,0),(6,NULL,'2','2','88',96,1),(7,NULL,'3','1','71',95,1),(8,NULL,'5','4','226',7,1),(9,NULL,'5','4','216',78,0),(10,NULL,'4','2','113',85,0),(11,NULL,'4','3','189',59,0),(12,NULL,'6','4','186',24,1),(13,NULL,'3','2','92',18,0),(14,NULL,'3','2','145',39,1),(15,NULL,'4','1','93',64,0),(16,NULL,'4','2','128',16,0),(17,NULL,'5','2','153',76,1),(18,NULL,'5','1','117',49,0),(19,NULL,'4','1','143',16,0),(20,NULL,'5','3','183',67,1),(21,NULL,'6','4','188',2,1),(22,NULL,'5','2','199',24,0),(23,NULL,'4','2','135',86,0),(24,NULL,'2','2','113',10,1),(25,NULL,'6','2','220',60,0),(26,NULL,'1','3','116',61,1),(27,NULL,'5','2','148',65,1),(28,NULL,'6','1','146',4,1),(29,NULL,'3','4','182',69,0),(30,NULL,'2','4','123',2,1),(31,NULL,'3','3','164',26,0),(32,NULL,'2','2','101',24,1),(33,NULL,'4','3','127',38,1),(34,NULL,'1','4','85',84,1),(35,NULL,'2','1','81',53,1),(36,'Cool view','1','4','195',8,0),(37,NULL,'4','4','139',26,1),(38,NULL,'5','4','226',52,0),(39,NULL,'4','3','146',6,1),(40,NULL,'2','1','101',59,0),(41,NULL,'6','4','188',69,0),(42,NULL,'5','1','177',95,0),(43,NULL,'1','3','91',51,0),(44,NULL,'3','4','152',92,1),(45,NULL,'1','4','109',95,0),(46,NULL,'4','4','116',54,0),(47,NULL,'5','2','163',87,0),(48,NULL,'5','1','127',32,0),(49,NULL,'3','1','71',14,0),(50,NULL,'1','3','107',42,0),(51,NULL,'2','2','112',96,1),(52,NULL,'5','1','159',44,0),(53,NULL,'5','4','176',86,1),(54,NULL,'1','2','90',9,1),(55,NULL,'1','4','107',15,1),(56,NULL,'3','3','125',79,0),(57,NULL,'5','1','149',73,0),(58,NULL,'2','1','77',84,0),(59,NULL,'1','4','118',64,0),(60,NULL,'5','1','115',64,0),(61,NULL,'3','4','174',94,1),(62,NULL,'6','2','170',70,1),(63,NULL,'2','3','77',4,1),(64,NULL,'3','3','119',67,1),(65,NULL,'5','3','175',61,0),(66,NULL,'2','4','122',24,0),(67,NULL,'5','4','210',24,1),(68,NULL,'2','3','84',19,0),(69,NULL,'3','3','109',85,0),(70,NULL,'6','2','219',83,0),(71,NULL,'3','2','110',45,1),(72,NULL,'5','3','151',23,0),(73,NULL,'2','4','125',74,0),(74,NULL,'5','4','181',16,1),(75,NULL,'5','1','190',92,0),(76,NULL,'4','4','155',31,1),(77,NULL,'5','2','174',76,1),(78,NULL,'5','2','166',23,0),(79,NULL,'5','2','160',64,1),(80,NULL,'1','4','69',96,1),(81,NULL,'3','1','77',46,1),(82,NULL,'4','3','172',21,0),(83,NULL,'1','3','85',18,0),(84,NULL,'2','2','85',27,1),(85,NULL,'3','1','81',16,1),(86,NULL,'6','4','239',68,0),(87,NULL,'2','2','121',66,0),(88,NULL,'6','4','201',8,1),(89,NULL,'4','3','174',36,0),(90,NULL,'6','3','183',37,0),(91,NULL,'1','3','77',2,1),(92,NULL,'5','3','193',34,0),(93,NULL,'5','4','187',75,1),(94,NULL,'5','1','187',70,0),(95,NULL,'3','4','124',34,0),(96,NULL,'3','1','102',75,1),(97,NULL,'5','1','175',1,0),(98,NULL,'2','3','124',96,1),(99,NULL,'1','1','31',54,1),(100,NULL,'2','4','139',63,1),(101,'\"Lovely Villa\"','5','3','320',85,0),(102,'\"Huge Mansion\"','6','7','520',99,0),(103,'Sweet place','2','2','200',100,1),(104,NULL,'4','2','200',101,0);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `propertyDetails`
--

--
-- Table structure for table `propertyphoto`
--

DROP TABLE IF EXISTS `propertyphoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertyphoto` (
  `Photo_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Property_Prop_ID` int(11) NOT NULL,
  `Photo_Path` varchar(200) NOT NULL,
  PRIMARY KEY (`Photo_ID`),
  KEY `fk_property_id` (`Property_Prop_ID`),
  CONSTRAINT `fk_property_id` FOREIGN KEY (`Property_Prop_ID`) REFERENCES `property` (`Prop_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertyphoto`
--

LOCK TABLES `propertyphoto` WRITE;
/*!40000 ALTER TABLE `propertyphoto` DISABLE KEYS */;
INSERT INTO `propertyphoto` VALUES (1,1,'/photos/TigerWaterfront/185741377.jpg'),(2,2,'/photos/TigerWaterfront/185742210.jpg'),(3,3,'/photos/TigerWaterfront/194689370.jpg'),(4,4,'/photos/TigerWaterfront/194689575.jpg'),(5,49,'/photos/FirstHouseWestcampVilla/167497237.jpg'),(6,6,'/photos/FirstHouseWestcampVilla/167497263.jpg'),(7,7,'/photos/FirstHouseWestcampVilla/167497292.jpg'),(8,8,'/photos/FirstHouseWestcampVilla/167497303.jpg'),(9,9,'/photos/AshbyManor/115271712.jpg'),(10,10,'/photos/AshbyManor/138061763.jpg'),(11,11,'/photos/AshbyManor/175800834.jpg'),(12,12,'/photos/AshbyManor/182499819.jpg'),(13,36,'/photos/1.jpg'),(14,82,'/photos/2.jpg'),(15,95,'/photos/3.jpg'),(16,66,'/photos/4.jpg'),(17,5,'/photos/5.jpg'),(18,57,'/photos/6.jpg'),(19,47,'/photos/7.jpg'),(20,68,'/photos/8.jpg'),(21,23,'/photos/9.jpg'),(22,53,'/photos/10.jpg'),(23,74,'/photos/11.jpg'),(24,56,'/photos/12.jpg'),(25,75,'/photos/13.jpg'),(26,58,'/photos/14.jpg'),(27,46,'/photos/15.jpg'),(28,101,'/photos/16.jpg'),(29,102,'/photos/17.jpg');
/*!40000 ALTER TABLE `propertyphoto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `Sale_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Agent_Agent_ID` int(11) NOT NULL,
  `Buyer_Buyer_ID` int(11) NOT NULL,
  `Property_Prop_ID` int(11) NOT NULL,
  `Sale_Date` date DEFAULT NULL,
  `Sale_Amount` double DEFAULT NULL,
  `Sale_Percentage` double DEFAULT NULL,
  `Sales_TimeOnMArket` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sale_ID`),
  KEY `fk_buyer_id` (`Buyer_Buyer_ID`),
  KEY `fk_Sales_agent_id` (`Agent_Agent_ID`),
  KEY `fk_sales_property_id` (`Property_Prop_ID`),
  CONSTRAINT `fk_Sales_agent_id` FOREIGN KEY (`Agent_Agent_ID`) REFERENCES `agent` (`Agent_ID`),
  CONSTRAINT `fk_buyer_id` FOREIGN KEY (`Buyer_Buyer_ID`) REFERENCES `buyer` (`Buyer_ID`),
  CONSTRAINT `fk_sales_property_id` FOREIGN KEY (`Property_Prop_ID`) REFERENCES `property` (`Prop_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,7,53,59,'2018-01-20',2700000,9,142),(2,9,35,3,'2018-10-20',4500000,13,820),(3,6,30,72,'2018-04-20',4860000,14,576),(4,3,13,85,'2018-05-20',1720000,5,757),(5,8,54,80,'2015-11-20',1495000,9,937),(6,10,41,20,'2019-01-20',1405000,11,777),(7,8,55,25,'2018-04-20',1369000,13,583),(8,4,14,13,'2018-12-20',1774000,7,618),(9,10,12,72,'2017-04-20',1486000,7,399),(10,2,50,60,'2016-09-20',1675000,15,896),(11,5,4,29,'2018-04-20',1387000,11,854),(12,1,49,58,'2017-06-20',2300000,10,441),(13,9,44,22,'2018-04-20',2381000,12,305),(14,3,9,80,'2018-07-20',3495000,6,145),(15,9,15,58,'2018-06-20',3486000,11,400),(16,4,48,100,'2018-01-20',4180000,9,881),(17,9,51,68,'2018-06-20',1227000,10,151),(18,1,4,76,'2016-02-20',2738000,14,532),(19,7,30,79,'2018-05-20',2567000,8,422),(20,1,26,31,'2018-10-12',6729000,5,27),(21,2,20,20,'2018-04-20',7405000,11,920),(22,4,48,97,'2017-05-20',2324000,9,169),(23,10,28,33,'2018-08-20',5153000,5,23),(24,7,10,84,'2016-06-20',7918000,13,390),(25,2,12,45,'2019-05-10',2729000,15,3177),(27,4,49,8,'2019-08-20',2425368,11,461),(28,1,52,45,'2017-10-20',2617744,11,193),(29,7,26,32,'2018-01-20',1460778,5,604),(30,1,45,91,'2018-06-20',2508678,5,392),(31,10,1,39,'2017-07-20',1504858,12,763),(32,7,40,90,'2016-07-20',2426922,9,450),(33,1,46,93,'2015-04-20',3419869,11,735),(34,5,29,57,'2014-02-20',1356098,5,638),(35,7,55,78,'2015-05-20',1719853,13,659),(36,3,6,62,'2016-05-20',2387888,11,72),(37,10,46,66,'2017-09-20',3299960,7,432),(38,2,5,78,'2018-10-20',2276742,7,615),(39,6,13,62,'2018-12-20',2210296,7,381),(40,2,47,79,'2016-02-20',2840442,9,369),(41,6,48,69,'2017-02-20',1502271,10,270),(42,4,12,70,'2018-02-20',2301239,6,45),(43,10,7,10,'2017-03-20',2738017,15,798),(44,7,11,30,'2016-04-20',2847288,5,266),(45,6,9,47,'2015-02-20',3448222,14,27),(46,9,2,64,'2018-07-20',1565555,8,228),(47,6,9,25,'2016-12-20',2540497,10,622),(48,8,41,44,'2017-02-20',3007812,13,534),(49,7,54,14,'2018-06-20',1992320,6,313),(50,3,41,23,'2019-05-21',2000000,24.84394506866417,183),(51,3,41,36,'2019-05-21',75000000,67650.67750677507,1431),(52,3,41,46,'2019-05-21',250000,-88.61566484517304,343),(53,3,43,47,'2019-05-21',1500000,11.11111111111111,303);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller` (
  `Seller_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Person_Person_ID` int(11) NOT NULL,
  PRIMARY KEY (`Seller_ID`),
  UNIQUE KEY `Person_Person_ID` (`Person_Person_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,11),(2,12),(3,13),(4,14),(5,15),(6,16),(7,17),(8,18),(9,19),(10,20),(11,21),(12,22),(13,23),(14,24),(15,25),(16,26),(17,27),(18,28),(19,29),(20,30),(21,31),(22,32),(23,33),(24,34),(25,35),(26,36),(27,37),(28,38),(29,39),(30,40),(31,102),(32,103);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `street`
--

DROP TABLE IF EXISTS `street`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `street` (
  `Street_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Street_Name` varchar(45) DEFAULT NULL,
  `Suburb_ID` int(11) NOT NULL,
  PRIMARY KEY (`Street_ID`),
  KEY `fk_suburb_id` (`Suburb_ID`),
  CONSTRAINT `fk_suburb_id` FOREIGN KEY (`Suburb_ID`) REFERENCES `suburb` (`Suburb_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `street`
--

LOCK TABLES `street` WRITE;
/*!40000 ALTER TABLE `street` DISABLE KEYS */;
INSERT INTO `street` VALUES (1,'Et Ave',1),(2,'Aptent St.',2),(3,'Dictum Road',6),(4,'Laoreet Avenue',3),(5,'Imperdiet Rd.',4),(6,'Neque Street',5),(7,'Donec Street',6),(8,'Mauris Rd.',7),(9,'Magna Avenue',8),(10,'Sit St.',9),(11,'Vel Rd.',6),(12,'Amet, Rd.',22),(13,'Nunc Avenue',8),(14,'Aliquam St.',13),(15,'Mollis Rd.',14),(16,'Phasellus Street',7),(17,'Sem Street',33),(18,'Donec Road',30),(19,'Cursus. Street',30),(20,'Magna St.',30),(21,'Dis Ave',30),(22,'Egestas Rd.',30),(23,'Eget, Road',30),(24,'Vestibulum St.',30),(25,'Dictum St.',30),(26,'Cras Rd.',30),(27,'Aliquet Ave',30),(28,'Allice Road',30),(29,'Risus. Avenue',30),(30,'Posuere, Ave',30),(31,'Lacus. Road',14),(32,'Parturient Road',15),(33,'Ullamcorper. St.',16),(34,'Et Av.',17),(35,'Sed St.',18),(36,'Varius Road',19),(37,'Ac Road',20),(38,'Ornare Road',21),(39,'Ave',22),(40,'Consequat Street',23),(41,'Eget Street',24),(42,'Eget St.',25),(43,'Aliquet. Rd.',26),(44,'Mauris Av.',27),(45,'Egestas St.',28),(46,'Euismod Road',29),(47,'Nulla Road',30),(48,'Egestas. Av.',31),(49,'Sit Road',32),(50,'Egestas St.',30),(51,'Eleifend, St.',30),(52,'Sodales Ave',30),(53,'Donec St.',30),(54,'Vitae St.',30),(55,'Auctor St.',30),(56,'Magnis Road',30),(57,'Eget St.',30),(58,'Sapien Road',21),(59,'Ultricies Road',18),(60,'Eget St.',17),(61,'Proin St.',16),(62,'Fusce Road',15),(63,'Nam Ave',14),(64,'Malesuada Street',13),(65,'Ac Street',12),(66,'Nec, Street',11),(67,'Iaculis Street',10),(68,'Suspendisse Av.',9),(69,'Duis Road',8),(70,'Posuere St.',7),(71,'Ultricies St.',6),(72,'Sed Ave',5),(73,'Nullam Rd.',4),(74,'Vel, Rd.',3),(75,'Penny Lane',2),(76,'Milberry Lane',35),(77,'South Lane',34),(78,'lane',16),(79,'Ingelwood',22),(80,'Street',23),(81,'Strand',26),(82,'lane',25),(83,'District',30),(84,'Main Road',3),(85,'Main Road',12),(86,'Everest Way',3),(87,'New Way',1),(88,'Miway',1),(89,'Et Avenue',6),(90,'parade cresecnt',34);
/*!40000 ALTER TABLE `street` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suburb`
--

DROP TABLE IF EXISTS `suburb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suburb` (
  `Suburb_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Suburb_Name` varchar(45) DEFAULT NULL,
  `Suburb_ZIP` varchar(45) DEFAULT NULL,
  `City_ID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Suburb_ID`),
  KEY `fk_city_id` (`City_ID`),
  CONSTRAINT `fk_city_id` FOREIGN KEY (`City_ID`) REFERENCES `city` (`City_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suburb`
--

LOCK TABLES `suburb` WRITE;
/*!40000 ALTER TABLE `suburb` DISABLE KEYS */;
INSERT INTO `suburb` VALUES (1,'Bakoven','8005',1),(2,'Bantry Bay','8005',1),(3,'Camps Bay','8005',1),(4,'Clifton','8005',1),(5,'Fresnaye','8005',1),(6,'Green Point','8005',1),(7,'Hout Bay','7806',1),(8,'Imizamo Yethu','7806',1),(9,'Llandudno','7806',1),(10,'Mouille Point','8005',1),(11,'Sea Point','8005',1),(12,'Three Anchor Bay','8005',1),(13,'Athlone','7764',1),(14,'Bishop Lavis','7490',1),(15,'Bonteheuwel','7764',1),(16,'Crawford','7780',1),(17,'Delft','7100',1),(18,'Elsie\'s River','7490',1),(19,'Epping','7460',1),(20,'Grassy Park','7941',1),(21,'Gugulethu','7750',1),(22,'Kalksteenfontein','7490',1),(23,'Khayelitsha','7784',1),(24,'Langa','7455',1),(25,'Lavender Hill','7945',1),(26,'Lotus River','7941',1),(27,'Macassar','7130',1),(28,'Milnerton','7441',1),(29,'Montague Gardens','7441',1),(30,'Parklands','7441',1),(31,'Table View','7441',1),(32,'West Beach','7441',1),(33,'Ulm','89077',2),(34,'Glenelg','6320',6),(35,'Lofty','6321',6);
/*!40000 ALTER TABLE `suburb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `personDetails`
--

create VIEW
 `personDetails` AS (
   select `person`.`Person_ID` AS `Person_ID`,
`person`.`Person_Firstname` AS `Person_Firstname`,
`person`.`Person_LastName` AS `Person_LastName`,
`person`.`Person_PhoneNumber` AS `Person_PhoneNumber`,
`person`.`Person_Email` AS `Person_Email`,
`person`.`Person_DOB` AS `Person_DOB`,
`agent`.`Agent_ID` AS `Agent_ID`,
`buyer`.`Buyer_ID` AS `Buyer_ID`,
`seller`.`Seller_ID` AS `Seller_ID` from (((`person` 
left join `agent` on((`person`.`Person_ID` = `agent`.`Person_Person_ID`))) 
left join `buyer` on((`person`.`Person_ID` = `buyer`.`Person_Person_ID`))) 
left join `seller` on((`person`.`Person_ID` = `seller`.`Person_Person_ID`))));

--
-- Final view structure for view `propertyDetails`
--


create VIEW 
`propertyDetails` AS (select `property`.`Prop_ID` AS `Prop_ID`,`property`.`Prop_Description` AS `Prop_Description`,`property`.`Prop_Bedrooms` AS `Prop_Bedrooms`,`property`.`Prop_Bathrooms` AS `Prop_Bathrooms`,`property`.`Prop_SquareMeter` AS `Prop_SquareMeter`,`property`.`Address_Address_ID` AS `Address_Address_ID`,`property`.`Prop_Pool` AS `Prop_Pool`,`address`.`Address_ID` AS `Address_ID`,`address`.`Address_House_Number` AS `Address_House_Number`,`address`.`Street_Street_ID` AS `Street_Street_ID`,`street`.`Street_Name` AS `Street_Name`,`street`.`Suburb_ID` AS `Suburb_ID`,`suburb`.`Suburb_Name` AS `Suburb_Name`,`suburb`.`Suburb_ZIP` AS `Suburb_ZIP`,`suburb`.`City_ID` AS `City_ID`,`city`.`City_Name` AS `City_Name`,`city`.`Country_ID` AS `Country_ID`,`country`.`Country_Name` AS `Country_Name`,`propertyphoto`.`Photo_Path` AS `Photo_Path`,`available`.`Avail_ID` AS `Avail_ID`,`available`.`Avail_ListingDate` AS `Avail_ListingDate`,`available`.`Avail_ListingPrice` AS `Avail_ListingPrice`,`available`.`Seller_Seller_ID` AS `Seller_Seller_ID`,`available`.`Agent_Agent_ID` AS `Agent_Agent_ID` from (((((((`property` join `address` on((`property`.`Address_Address_ID` = `address`.`Address_ID`))) join `street` on((`address`.`Street_Street_ID` = `street`.`Street_ID`))) join `suburb` on((`street`.`Suburb_ID` = `suburb`.`Suburb_ID`))) join `city` on((`suburb`.`City_ID` = `city`.`City_ID`))) join `country` on((`city`.`Country_ID` = `country`.`Country_ID`))) left join `propertyphoto` on((`property`.`Prop_ID` = `propertyphoto`.`Property_Prop_ID`))) left join `available` on((`available`.`Property_ID` = `property`.`Prop_ID`))) group by `property`.`Prop_ID`);
