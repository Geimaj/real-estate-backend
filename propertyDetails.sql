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
    propertyphoto.Photo_Path
    from `property`
    join `address` on property.Address_Address_ID = address.Address_ID
    join `street` on address.Street_Street_ID = street.Street_ID
    join `suburb` on street.Suburb_ID = suburb.Suburb_ID
    join `city` on suburb.City_ID = city.City_ID
    join `country` on city.Country_ID = city.City_ID
    left outer join propertyphoto on property.Prop_ID = propertyphoto.Property_Prop_ID
    group by Prop_ID
);
