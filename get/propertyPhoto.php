

<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

if(!isset($_GET['propertyID'])){
    http_response_code(404);

    // tell the user no products found
    echo json_encode(
        array("message" => "provide ID")
    );
    die();
}

$propertyID = $_GET['propertyID'];

$sql = "SELECT * FROM propertyphoto where propertyphoto.Property_Prop_ID =  " . $propertyID;
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $property = array();
    // output data of each row
	while($propertyResult = mysqli_fetch_array($result)) {

        $property[] = array(
            "propertyID"=>$propertyResult['Property_Prop_ID'],
            "path"=>$propertyResult['Photo_Path']
        );
    }

	// set response code - 200 OK
    http_response_code(200);
    echo json_encode($property);
} else {
// set response code - 404 Not found

    // tell the user no products found
    echo json_encode(
        array()
    );
}
$conn->close();
?>
