

<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

if(!isset($_GET['id'])){
    http_response_code(404);

    // tell the user no products found
    echo json_encode(
        array("message" => "provide ID")
    );
    die();
}

$propertyID = $_GET['id'];

$sql = "SELECT * FROM propertyDetails where Prop_ID = " . $propertyID;
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    $sql = "select *from propertyphoto where propertyphoto.Property_Prop_ID = " . $propertyID;
    $photos = $conn->query($sql);

    $photosArray = array();

while($photosResult = mysqli_fetch_array($photos)) {
       $photosArray[] = array(
                        "id"=>$photosResult['Property_Prop_ID'],
						"path"=>$photosResult['Photo_Path'],
                        );
                    }


    // output data of each row
	$propertyResult = mysqli_fetch_array($result);

    $property = array(
        "id"=>$propertyResult['Prop_ID'],
        "description"=>$propertyResult['Prop_Description'],
        "bedrooms"=>$propertyResult['Prop_Bedrooms'],
        "bathrooms"=>$propertyResult['Prop_Bathrooms'],
        "squareMeter"=>$propertyResult['Prop_SquareMeter'],
        "addressID"=>$propertyResult['Address_Address_ID'],
        "pool"=>$propertyResult['Prop_Pool'],
        "country"=>$propertyResult['Country_Name'],
        "city"=>$propertyResult['City_Name'],
        "suburb"=>$propertyResult['Suburb_Name'],
        "street"=>$propertyResult['Street_Name'],
        "photos"=>$photosArray
    );

	// set response code - 200 OK
    http_response_code(200);

    echo json_encode($property);
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
