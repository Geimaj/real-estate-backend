<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $suburb= json_decode($body,true);
} else {
    $suburb="Error";
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, GET, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");
include("../connection.php");
// prepare statement
$stmt = $conn->prepare("update `surburb'
set Suburb_Name = ?,Suburb_ZIP = ?, City_ID = ?
where Suburb_ID = ?");
if($stmt == false){
    print_r( $conn->error_list );
    echo $conn->error_get_last();
}
//bind params
$stmt->bind_param("siii", $surburb['name'], $suburb['ZIP'], $suburb['CityID'], $suburb['id']);
$result = $stmt->execute();
 if($result===TRUE){
 // set response code - 200 OK
     http_response_code(200);
     echo json_encode(
        array(
            "id" => $suburb['id'],
            "name" => $suburb['name'],
            "ZIP" => $suburb['ZIP'],
	    "CityID" => $suburb['CityID']
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
