<?php

$body = file_get_contents('php://input');

if (isset($body)) {
    $street= json_decode($body,true);
} else {
    $street="Error";
}

// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, GET, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

// prepare statement
$stmt = $conn->prepare("update `street`
set Street_Name = ?, Suburb_ID = ?
where Street_ID = ?");

if($stmt == false){
    print_r( $conn->error_list );
    echo $conn->error_get_last();
}

//bind params
$stmt->bind_param("sii", $street['name'], $street['suburbID'], $street['id']);

$result = $stmt->execute();

 if($result===TRUE){
 // set response code - 200 OK
     http_response_code(200);
     echo json_encode(
        array(
            "id" => $street['id'],
            "name" => $street['name'],
            "suburbID" => $street['suburbID']
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
