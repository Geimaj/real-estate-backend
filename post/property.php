
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
$stmt = $conn->prepare("INSERT INTO `property`(`Prop_Description`,
`Prop_Bedrooms`,
`Prop_Bathrooms`,
`Prop_SquareMeter`,
`Address_Address_ID`,
`Prop_Pool`)
VALUES (?,?,?,?,?,?)");


if($stmt == false){
    print_r( $conn->error_list );
    echo $conn->error_get_last();
    die();
}

$addressID = $property['address']['id'];

//bind params
$stmt->bind_param("siiiii", $property['description'], $property['bedrooms'],
$property['bathrooms'],$property['squareMeter'],$addressID, $property['pool']);

$result = $stmt->execute();
 if($result===TRUE){
 // set response code - 200 OK
     http_response_code(200);
     echo json_encode(
        array(
            "propertyID" => $conn->insert_id,
            "description" =>  $property['description'],
            "bedrooms" =>  $property['bedrooms'],
            "bathrooms" =>  $property['bathrooms'],
            "squareMeter" =>  $property['squareMeter'],
            "addressID" =>  $addressID,
            "pool" =>  $property['pool']
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