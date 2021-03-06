
<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $property= json_decode($body,true);
} else {
    die('Please send property object');
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, GET, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");
include("../connection.php");

// prepare statement
$stmt = $conn->prepare("update `property`
set
Prop_Description = ?,
Prop_Bedrooms = ?,
Prop_Bathrooms = ?,
Prop_SquareMeter = ?,
Address_Address_ID = ?,
Prop_Pool = ?
where Prop_ID = ?");


if($stmt == false){
    print_r( $conn->error_list );
    echo $conn->error_get_last();
    die();
}

$address = $property['address'];

//bind params
$stmt->bind_param("siiiiii", $property['description'], $property['bedrooms'],
$property['bathrooms'],$property['squareMeter'],$address['id'], $property['pool'], $property['propertyID']);

$result = $stmt->execute();
 if($result===TRUE){
 // set response code - 200 OK
     http_response_code(200);
     echo json_encode(
        array(
            "id" => $property['propertyID'],
        //     "Description" =>  $property['Description'],
	    // "Prop_Bedrooms" =>  $property['Bedrooms'],
	    // "Bathrooms" =>  $property['Bathrooms'],
	    // "SquareMeter" =>  $property['SquareMeter'],
	    // "AddressID" =>  $property['AddressID'],
	    // "Pool" =>  $property['Pool']
        )
     );
     die();
 }
// set response code - 404 Not found
    http_response_code(500);
   echo json_encode(
       array()
   );
$conn->close();
?>