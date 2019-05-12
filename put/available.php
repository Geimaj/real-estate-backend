<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $available= json_decode($body,true);
} else {
    $available="Error";
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, GET, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");
include("../connection.php");
// prepare statement
$stmt = $conn->prepare("update `available`
set 
Avail_ListingDate= ?, 
Avail_ListingPrice= ?,
Seller_Seller_ID= ?,
Agent_Agent_ID= ?,
Property_ID = ?
where Avail_ID= ?");
if($stmt == false){
    print_r( $conn->error_list );
    echo $conn->error_get_last();
}
//bind params
$stmt->bind_param("diiiii", 
$available['ListingDate'], 
$available['ListingPrice'],
$available['SellerID'],
$available['AgentID'],
$available['PropertyID'],
$available['id']); 
$result = $stmt->execute();
 if($result===TRUE){
 // set response code - 200 OK
     http_response_code(200);
     echo json_encode(
        array(
            "id" => $available['id'],
            "ListingDate" =>  $available['ListingDate'],
	       "ListingPrice" =>  $available['ListingPrice'],
	       "SellerID" =>  $available['SellerID'],
	       "AgentID" =>  $available['SquareMeter'],
	       "PropertyID" =>  $available['PropertyID']
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
