<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

$sql = "SELECT * FROM sales";
$result = $conn->query($sql);
$jsonarray=array();

if ($result->num_rows > 0) {
    // output data of each row
	while($arrayresult = mysqli_fetch_array($result)) {
       $myArray[] = array(
            "id"=>$arrayresult['Sale_ID'],
			"agentID"=>$arrayresult['Agent_Agent_ID'],
			"buyerID"=>$arrayresult['Buyer_Buyer_ID'],
			"propertyID"=>$arrayresult['Property_Prop_ID'],
			"amount"=>$arrayresult['Sale_Amount'],
			"percentage"=>$arrayresult['Sale_Percentage'],
			"date"=>$arrayresult['Sale_Date'],
			"timeOnMarket"=>$arrayresult['Sales_TimeOnMarket'],
                                           );
    }
	// set response code - 200 OK
    http_response_code(200);

    echo json_encode($myArray);
} else {
// set response code - 404 Not found
    http_response_code(404);

    // tell the user no products found
    echo json_encode(
        array("message" => "No addresses found.")
    );
}
$conn->close();
?>
