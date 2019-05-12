<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $sales= json_decode($body,true);
} else {
    $sales="Error";
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, GET, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");
include("../connection.php");
// prepare statement
$stmt = $conn->prepare("update `sales`
set 
Agent_Agent_ID= ?,
Buyer_Buyer_ID= ?,
Property_Prop_ID = ?,
Sale_Amount = ?,
Sale_Percentage= ?,
Sale_Date= ?,
Sale_TimeOnMarket= ?
where Sale_ID= ?");
if($stmt == false){
    print_r( $conn->error_list );
    echo $conn->error_get_last();
}
//bind params
$stmt->bind_param("iiiiidii", 
$sales['AgentID'], 
$sales['BuyerID'],
$sales['PropID'],
$sales['Amount'],
$sales['Percentage'],
$sales['Date'],
$sales['TimeOnMarket'],
$sales['id']
); 
$result = $stmt->execute();
 if($result===TRUE){
 // set response code - 200 OK
     http_response_code(200);
     echo json_encode(
        array(
            "id" => $sales['id'],
            "AgentID" =>  $sales['AgentID'],
	       "BuyerID" =>  $sales['BuyerID'],
	       "PropID" =>  $sales['PropID'],
	       "Amount" =>  $sales['Amount'],
	       "Percentage" =>  $sales['Percentage'],
	       "Date" =>  $sales['Date'],
		 "TimeOnMarket" =>  $sales['TimeOnMarket']
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
