
SET @listingID := 1;
SET @buyerID := 1;
SET @saleAmmount := 1207000;

SELECT
	@agentID := available.Agent_Agent_ID,
    @sellerID := available.Seller_Seller_ID,
    @propertyID := available.Property_ID,
    @listingPrice := available.Avail_ListingPrice,
    @listingDate := available.Avail_ListingDate,
    @now := (select NOW()),
    @percentage := (select @listingPrice/@salePrice*100)

FROM `available` where available.Avail_ID = @listingID;

 insert into `sales` (Agent_Agent_ID,Buyer_Buyer_ID, Property_Prop_ID, Sale_Amount, Sale_Percentage, Sale_Date, Sales_TimeOnMarket)
 VALUES(@agentID, @buyerID, @propertyID, @saleAmmount, @percentage, @now, DATEDIFF(@now, @listingDate));

	delete from `available` where available.Avail_ID = @listingID
