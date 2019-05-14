<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $person= json_decode($body,true);
} else {
    $person="Error";
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, GET, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");
include("../connection.php");
// prepare statement
$stmt = $conn->prepare("delete person, agent, buyer, seller
from person
left join agent on person.Person_ID = agent.Person_Person_ID
left join buyer on person.Person_ID = buyer.Person_Person_ID
left join seller on person.Person_ID = seller.Person_Person_ID
where person.Person_ID = ?");

if($stmt == false){
    print_r( $conn->error_list );
    echo $conn->error_get_last();
    die();
}
//bind params
$stmt->bind_param("i", $person['id']);
$result = $stmt->execute();
 if($result===TRUE){
 // set response code - 200 OK
     http_response_code(200);
     echo "Success";
     die();
 }
    http_response_code(500);
   echo json_encode(
       array("message" => $conn->error_get_last())
   );
$conn->close();
?>