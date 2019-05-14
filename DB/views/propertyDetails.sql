DROP VIEW IF EXISTS `propertyDetails`;
create view propertyDetails as (
	select
    property.Prop_ID,
    property.Prop_Description,
    property.Prop_Bedrooms,
    property.Prop_Bathrooms,
    property.Prop_SquareMeter,
    property.Address_Address_ID,
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


---with availibility data

(
    SELECT
        `real_estate`.`property`.`Prop_ID` AS `Prop_ID`,
        `real_estate`.`property`.`Prop_Description` AS `Prop_Description`,
        `real_estate`.`property`.`Prop_Bedrooms` AS `Prop_Bedrooms`,
        `real_estate`.`property`.`Prop_Bathrooms` AS `Prop_Bathrooms`,
        `real_estate`.`property`.`Prop_SquareMeter` AS `Prop_SquareMeter`,
        `real_estate`.`property`.`Address_Address_ID` AS `Address_Address_ID`,
        `real_estate`.`property`.`Prop_Pool` AS `Prop_Pool`,
        `real_estate`.`address`.`Address_ID` AS `Address_ID`,
        `real_estate`.`address`.`Address_House_Number` AS `Address_House_Number`,
        `real_estate`.`address`.`Street_Street_ID` AS `Street_Street_ID`,
        `real_estate`.`street`.`Street_Name` AS `Street_Name`,
        `real_estate`.`street`.`Suburb_ID` AS `Suburb_ID`,
        `real_estate`.`suburb`.`Suburb_Name` AS `Suburb_Name`,
        `real_estate`.`suburb`.`Suburb_ZIP` AS `Suburb_ZIP`,
        `real_estate`.`suburb`.`City_ID` AS `City_ID`,
        `real_estate`.`city`.`City_Name` AS `City_Name`,
        `real_estate`.`city`.`Country_ID` AS `Country_ID`,
        `real_estate`.`country`.`Country_Name` AS `Country_Name`,
        `real_estate`.`propertyphoto`.`Photo_Path` AS `Photo_Path`,
    	available.Avail_ID,
    available.Avail_ListingDate,
    available.Avail_ListingPrice,
    available.Seller_Seller_ID,
    available.Agent_Agent_ID
    FROM
        (
            (
                (
                    (
                        (
                            (
                                `real_estate`.`property`
                            JOIN `real_estate`.`address` ON
                                (
                                    (
                                        `real_estate`.`property`.`Address_Address_ID` = `real_estate`.`address`.`Address_ID`
                                    )
                                )
                            )
                        JOIN `real_estate`.`street` ON
                            (
                                (
                                    `real_estate`.`address`.`Street_Street_ID` = `real_estate`.`street`.`Street_ID`
                                )
                            )
                        )
                    JOIN `real_estate`.`suburb` ON
                        (
                            (
                                `real_estate`.`street`.`Suburb_ID` = `real_estate`.`suburb`.`Suburb_ID`
                            )
                        )
                    )
                JOIN `real_estate`.`city` ON
                    (
                        (
                            `real_estate`.`suburb`.`City_ID` = `real_estate`.`city`.`City_ID`
                        )
                    )
                )
            JOIN `real_estate`.`country` ON
                (
                    (
                        `real_estate`.`city`.`Country_ID` = `real_estate`.`city`.`City_ID`
                    )
                )
            )
        LEFT JOIN `real_estate`.`propertyphoto` ON
            (
                (
                    `real_estate`.`property`.`Prop_ID` = `real_estate`.`propertyphoto`.`Property_Prop_ID`
                )
            )
        LEFT JOIN `available` ON
            (
                (
                    available.Property_ID =  property.Prop_ID
                )
            )
        )
    GROUP BY
        `real_estate`.`property`.`Prop_ID`
)