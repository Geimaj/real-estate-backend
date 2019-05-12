<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $property= json_decode($body,true);
} else {
    $property="Error";
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
}
//bind params
$stmt->bind_param("siiiiii", $property['Description'], $property['Bedrooms'],
$property['Bathrooms'],$property['SquareMeter'],$property['AddressID'], $property['Pool'], $property['id]);
$result = $stmt->execute();
 if($result===TRUE){
 // set response code - 200 OK
     http_response_code(200);
     echo json_encode(
        array(
            "id" => $property['id'],
            "Description" =>  $property['Description'],
	    "Prop_Bedrooms" =>  $property['Bedrooms'],
	    "Bathrooms" =>  $property['Bathrooms'],
	    "SquareMeter" =>  $property['SquareMeter'],
	    "AddressID" =>  $property['AddressID'],
	    "Pool" =>  $property['Pool']
        )
     );
     die();
 }
// set response code - 404 Not found
    http_response_code(404);
   echo json_encode(
       array("message" => $conn->error_get_last())
   );
$conn->close();
?>
