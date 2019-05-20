
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `real_estate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `real_estate`;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `Country_ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Country_Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `City_ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `City_Name` varchar(45) DEFAULT NULL,
  `Country_ID` int(11) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_country_id` FOREIGN KEY (`Country_ID`) REFERENCES `country` (`Country_ID`);


-- --------------------------------------------------------

--
-- Table structure for table `suburb`
--

DROP TABLE IF EXISTS `suburb`;
CREATE TABLE `suburb` (
  `Suburb_ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Suburb_Name` varchar(45) DEFAULT NULL,
  `Suburb_ZIP` varchar(45) DEFAULT NULL,
  `City_ID` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for table `suburb`
--
ALTER TABLE `suburb`
  ADD CONSTRAINT `fk_city_id` FOREIGN KEY (`City_ID`) REFERENCES `city` (`City_ID`);


-- --------------------------------------------------------

--
-- Table structure for table `street`
--

DROP TABLE IF EXISTS `street`;
CREATE TABLE `street` (
  `Street_ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Street_Name` varchar(45) DEFAULT NULL,
  `Suburb_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for table `street`
--
ALTER TABLE `street`
  ADD CONSTRAINT `fk_suburb_id` FOREIGN KEY (`Suburb_ID`) REFERENCES `suburb` (`Suburb_ID`);


-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `Address_ID` int(11) NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  `Street_Street_ID` int(11) NOT NULL,
  `Address_House_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for table `street`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_street_id` FOREIGN KEY (`Street_Street_ID`) REFERENCES `street` (`Street_ID`);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `Person_ID` int(11) NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  `Address_Address_ID` int(11) DEFAULT NULL,
  `Person_Firstname` varchar(45) DEFAULT NULL,
  `Person_LastName` varchar(45) DEFAULT NULL,
  `Person_PhoneNumber` varchar(45) DEFAULT NULL,
  `Person_Email` varchar(60) DEFAULT NULL,
  `Person_DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `Agent_ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Person_Person_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `Buyer_ID` int(11) NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  `Person_Person_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `Seller_ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Person_Person_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `Prop_ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Prop_Description` varchar(45) DEFAULT NULL,
  `Prop_Bedrooms` varchar(45) DEFAULT NULL,
  `Prop_Bathrooms` varchar(45) DEFAULT NULL,
  `Prop_SquareMeter` varchar(45) DEFAULT NULL,
  `Address_Address_ID` int(11) NOT NULL,
  `Prop_Pool` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `fk_address_id` FOREIGN KEY (`Address_Address_ID`) REFERENCES `address` (`Address_ID`);


-- --------------------------------------------------------

--
-- Table structure for table `propertyphoto`
--

DROP TABLE IF EXISTS `propertyphoto`;
CREATE TABLE `propertyphoto` (
  `Photo_ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Property_Prop_ID` int(11) NOT NULL,
  `Photo_Path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for table `propertyphoto`
--
ALTER TABLE `propertyphoto`
  ADD CONSTRAINT `fk_property_id` FOREIGN KEY (`Property_Prop_ID`) REFERENCES `property` (`Prop_ID`);


-- --------------------------------------------------------

--
-- Table structure for table `available`
--

DROP TABLE IF EXISTS `available`;
CREATE TABLE `available` (
  `Avail_ID` int(11) NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  `Avail_ListingDate` date DEFAULT NULL,
  `Avail_ListingPrice` int(45) DEFAULT NULL,
  `Seller_Seller_ID` int(11) NOT NULL,
  `Agent_Agent_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `Sale_ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Agent_Agent_ID` int(11) NOT NULL,
  `Buyer_Buyer_ID` int(11) NOT NULL,
  `Property_Prop_ID` int(11) NOT NULL,
  `Sale_Amount` varchar(45) DEFAULT NULL,
  `Sale_Percentage` varchar(45) DEFAULT NULL,
  `Sale_Date` date DEFAULT NULL,
  `Sales_TimeOnMarket` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP VIEW IF EXISTS `propertyDetails`;
create view propertyDetails as (
	select
    property.Prop_ID,
    property.Prop_Description,
    property.Prop_Bedrooms,
    property.Prop_Bathrooms,
    property.Prop_SquareMeter,
    property.Address_Address_ID,
    property.Prop_Pool,
    address.Address_ID,
    address.Address_House_Number,
    address.Street_Street_ID,
    street.Street_Name,
    street.Suburb_ID,
    suburb.Suburb_Name,
    suburb.Suburb_ZIP,
    suburb.City_ID,
    city.City_Name,
    city.Country_ID,
	country.Country_Name,
    propertyphoto.Photo_Path,
    available.Avail_ID,
    available.Avail_ListingDate,
    available.Avail_ListingPrice,
    available.Seller_Seller_ID,
    available.Agent_Agent_ID
    from `property`
    join `address` on property.Address_Address_ID = address.Address_ID
    join `street` on address.Street_Street_ID = street.Street_ID
    join `suburb` on street.Suburb_ID = suburb.Suburb_ID
    join `city` on suburb.City_ID = city.City_ID
    join `country` on city.Country_ID = city.City_ID
    left outer join propertyphoto on property.Prop_ID = propertyphoto.Property_Prop_ID
    LEFT JOIN `available` ON available.Property_ID =  property.Prop_ID
    group by Prop_ID
);

COMMIT;
