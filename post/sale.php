<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $sale= json_decode($body,true);
}
    else{
    echo "provide lisingID, saleprice and buyerID";
    die();
}

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

    $sql = "SET @listingID := " . $sale['id'] . "; " .
    "SET @buyerID := " . $sale['buyerID'] . "; " .
    "SET @saleAmmount := " . $sale['salePrice'] . "; " .

    "SELECT
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

    delete from `available` where available.Avail_ID = @listingID";

$result = $conn->multi_query($sql);

if($result != false){

        // set response code - 200 OK
            http_response_code(200);
        $saleID=$conn->insert_id;

        echo json_encode( array(
            "saleID" => $saleID
        ));
} else {
// set response code - 404 Not found
    http_response_code(500);
    echo $conn->error;
    print_r( $conn->error_list );
}
$conn->close();
?>
