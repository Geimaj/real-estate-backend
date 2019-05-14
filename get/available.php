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
from `available`
join propertyDetails on available.Property_ID = propertyDetails.Prop_ID"
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
            "name"=>$arrayresult['Address_House_Number'],
            "street"=> $street
        );

       $myArray[] = array(
            "id"=>$arrayresult['Avail_ID'],
            "listingDate"=>$arrayresult['Avail_ListingDate'],
            "listingPrice"=>$arrayresult['Avail_ListingPrice'],
            "sellerID"=>$arrayresult['Seller_Seller_ID'],
            "agentID"=>$arrayresult['Agent_Agent_ID'],
            "propertyID"=>$arrayresult['Property_ID'],
            "suburbID"=>$arrayresult['Suburb_ID'],
            "address"=>$address,
            "photo"=>$arrayresult['Photo_Path'],
            "pool"=>$arrayresult['Prop_Pool'],
            "beds"=>$arrayresult['Prop_Bedrooms'],
            "baths"=>$arrayresult['Prop_Bathrooms'],


        );
    }
	// set response code - 200 OK
    http_response_code(200);

    echo json_encode($myArray);
} else {
// set response code - 404 Not found
    http_response_code(404);

    // tell the user no products found
    echo json_encode(
        array("message" => "No properties found.")
    );
}
$conn->close();
?>
