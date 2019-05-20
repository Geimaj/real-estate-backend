-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2019 at 10:44 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `Agent_ID` int(11) NOT NULL,
  `Person_Person_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `available`
--

DROP TABLE IF EXISTS `available`;
CREATE TABLE `available` (
  `Avail_ID` int(11) NOT NULL,
  `Avail_ListingDate` date DEFAULT NULL,
  `Seller_Seller_ID` int(11) NOT NULL,
  `Agent_Agent_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL,
  `Avail_ListingPrice` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `Buyer_ID` int(11) NOT NULL,
  `Person_Person_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `Country_ID` int(11) NOT NULL,
  `Country_Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `Person_ID` int(11) NOT NULL,
  `Person_Firstname` varchar(45) DEFAULT NULL,
  `Person_LastName` varchar(45) DEFAULT NULL,
  `Person_PhoneNumber` varchar(45) DEFAULT NULL,
  `Person_Email` varchar(60) DEFAULT NULL,
  `Person_DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
,`Avail_ListingPrice` double
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
  `Sale_Date` date DEFAULT NULL,
  `Sale_Amount` double DEFAULT NULL,
  `Sale_Percentage` double DEFAULT NULL,
  `Sales_TimeOnMArket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `Seller_ID` int(11) NOT NULL,
  `Person_Person_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Structure for view `personDetails`
--
DROP TABLE IF EXISTS `personDetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `personDetails`  AS  (select `person`.`Person_ID` AS `Person_ID`,`person`.`Person_Firstname` AS `Person_Firstname`,`person`.`Person_LastName` AS `Person_LastName`,`person`.`Person_PhoneNumber` AS `Person_PhoneNumber`,`person`.`Person_Email` AS `Person_Email`,`person`.`Person_DOB` AS `Person_DOB`,`agent`.`Agent_ID` AS `Agent_ID`,`buyer`.`Buyer_ID` AS `Buyer_ID`,`seller`.`Seller_ID` AS `Seller_ID` from (((`person` left join `agent` on((`person`.`Person_ID` = `agent`.`Person_Person_ID`))) left join `buyer` on((`person`.`Person_ID` = `buyer`.`Person_Person_ID`))) left join `seller` on((`person`.`Person_ID` = `seller`.`Person_Person_ID`)))) ;

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
  ADD PRIMARY KEY (`Agent_ID`),
  ADD UNIQUE KEY `Person_Person_ID` (`Person_Person_ID`);

--
-- Indexes for table `available`
--
ALTER TABLE `available`
  ADD PRIMARY KEY (`Avail_ID`),
  ADD KEY `fk_seller_id` (`Seller_Seller_ID`),
  ADD KEY `fk_agent_id` (`Agent_Agent_ID`),
  ADD KEY `fk_available_property_id` (`Property_ID`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`Buyer_ID`),
  ADD UNIQUE KEY `Person_Person_ID` (`Person_Person_ID`);

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
  ADD PRIMARY KEY (`Sale_ID`),
  ADD KEY `fk_buyer_id` (`Buyer_Buyer_ID`),
  ADD KEY `fk_Sales_agent_id` (`Agent_Agent_ID`),
  ADD KEY `fk_sales_property_id` (`Property_Prop_ID`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`Seller_ID`),
  ADD UNIQUE KEY `Person_Person_ID` (`Person_Person_ID`);

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
  MODIFY `Address_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `Agent_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `available`
--
ALTER TABLE `available`
  MODIFY `Avail_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `Buyer_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `City_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `Country_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `Person_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `Prop_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propertyphoto`
--
ALTER TABLE `propertyphoto`
  MODIFY `Photo_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Sale_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `Seller_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `street`
--
ALTER TABLE `street`
  MODIFY `Street_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suburb`
--
ALTER TABLE `suburb`
  MODIFY `Suburb_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_street_id` FOREIGN KEY (`Street_Street_ID`) REFERENCES `street` (`Street_ID`);

--
-- Constraints for table `available`
--
ALTER TABLE `available`
  ADD CONSTRAINT `fk_agent_id` FOREIGN KEY (`Agent_Agent_ID`) REFERENCES `agent` (`Agent_ID`),
  ADD CONSTRAINT `fk_available_property_id` FOREIGN KEY (`Property_ID`) REFERENCES `property` (`Prop_ID`),
  ADD CONSTRAINT `fk_seller_id` FOREIGN KEY (`Seller_Seller_ID`) REFERENCES `seller` (`Seller_ID`);

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
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_Sales_agent_id` FOREIGN KEY (`Agent_Agent_ID`) REFERENCES `agent` (`Agent_ID`),
  ADD CONSTRAINT `fk_buyer_id` FOREIGN KEY (`Buyer_Buyer_ID`) REFERENCES `buyer` (`Buyer_ID`),
  ADD CONSTRAINT `fk_sales_property_id` FOREIGN KEY (`Property_Prop_ID`) REFERENCES `property` (`Prop_ID`);

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
