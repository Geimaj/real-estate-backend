

<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

$sql = "SELECT * FROM propertyDetails";
$result = $conn->query($sql);
$jsonarray=array();

if ($result->num_rows > 0) {
    // output data of each row
	while($arrayresult = mysqli_fetch_array($result)) {
       $myArray[] = array(
            "id"=>$arrayresult['Prop_ID'],
            "description"=>$arrayresult['Prop_Description'],
            "bedrooms"=>$arrayresult['Prop_Bedrooms'],
            "bathrooms"=>$arrayresult['Prop_Bathrooms'],
            "squareMeter"=>$arrayresult['Prop_SquareMeter'],
            "addressID"=>$arrayresult['Address_Address_ID'],
            "pool"=>$arrayresult['Prop_Pool'],
            "country"=>$arrayresult['Country_Name'],
            "city"=>$arrayresult['City_Name'],
            "suburb"=>$arrayresult['Suburb_Name'],
            "street"=>$arrayresult['Street_Name'],
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
