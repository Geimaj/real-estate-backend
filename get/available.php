<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

$sql = "select *
from `available`
join propertyDetails on available.Property_ID = propertyDetails.Prop_ID;";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
	while($arrayresult = mysqli_fetch_array($result)) {
       $myArray[] = array(
            "id"=>$arrayresult['Avail_ID'],
            "listingDate"=>$arrayresult['Avail_ListingDate'],
            "listingPrice"=>$arrayresult['Avail_ListingPrice'],
            "sellerID"=>$arrayresult['Seller_Seller_ID'],
            "agentID"=>$arrayresult['Agent_Agent_ID'],
            "propertyID"=>$arrayresult['Property_ID'],
            "suburb"=>$arrayresult['Suburb_Name'],
            "zip"=>$arrayresult['Suburb_ZIP'],
            "city"=>$arrayresult['City_Name'],
            "country"=>$arrayresult['Country_Name'],
            "photo"=>$arrayresult['Photo_Path']

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
