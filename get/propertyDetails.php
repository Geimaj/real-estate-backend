<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

$where = " where propertyDetails.Prop_ID ";

if(isset($_GET['propertyID'])){
    $where = $where . " = " . $_GET['propertyID'];
}

$sql = "select *
from `propertyDetails`"
. $where;

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
	while($arrayresult = mysqli_fetch_array($result)) {

        $country = array(
            "id"=>$arrayresult['Country_ID'],
            "name"=>$arrayresult['Country_Name'],
        );

        $city = array(
            "id"=>$arrayresult['City_ID'],
            "name"=>$arrayresult['City_Name'],
            "country"=> $country
        );

        $suburb = array (
            "id"=>$arrayresult['Suburb_ID'],
            "name"=>$arrayresult['Suburb_Name'],
            "zip"=>$arrayresult['Suburb_ZIP'],
            "city"=> $city
        );

                $street = array (
            "id"=>$arrayresult['Street_Street_ID'],
            "name"=>$arrayresult['Street_Name'],
            "suburb"=> $suburb
        );

        $address = array (
            "id"=>$arrayresult['Address_ID'],
            "houseNumber"=>$arrayresult['Address_House_Number'],
            "street"=> $street
        );

       $myArray[] = array(
            "listingID"=>$arrayresult['Avail_ID'],
            "listingDate"=>$arrayresult['Avail_ListingDate'],
            "listingPrice"=>$arrayresult['Avail_ListingPrice'],
            "sellerID"=>$arrayresult['Seller_Seller_ID'],
            "agentID"=>$arrayresult['Agent_Agent_ID'],
            "propertyID"=>$arrayresult['Prop_ID'],
            "address"=>$address,
            "photo"=>$arrayresult['Photo_Path'],
            "listingID"=>$arrayresult['Avail_ID'],
            "pool"=>$arrayresult['Prop_Pool'],
            "description"=>$arrayresult['Prop_Description'],
        "bedrooms"=>$arrayresult['Prop_Bedrooms'],
        "bathrooms"=>$arrayresult['Prop_Bathrooms'],
        "squareMeter"=>$arrayresult['Prop_SquareMeter'],

        );
    }
	// set response code - 200 OK
    http_response_code(200);

    echo json_encode($myArray);
} else {
// set response code - 404 Not found
    http_response_code(204);

    // tell the user no products found
    echo json_encode(
        array()
    );
}
$conn->close();
?>
