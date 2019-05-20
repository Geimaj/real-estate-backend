<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

$sql = "select
sales.Sale_ID,
agent.Agent_ID,
buyer.Buyer_ID,
sales.Property_Prop_ID,
sales.Sale_Amount,
sales.Sale_Percentage,
sales.Sale_Date,
sales.Sales_TimeOnMarket,
p1.Person_LastName as agentLastName,
p2.Person_LastName as buyerLastName
from sales
join agent on agent.Agent_ID = sales.Agent_Agent_ID
join buyer on buyer.Buyer_ID = sales.Buyer_Buyer_ID
join person p1 on agent.Person_Person_ID = p1.Person_ID
join person p2 on buyer.Person_Person_ID = p2.Person_ID";
$result = $conn->query($sql);
$jsonarray=array();

if ($result->num_rows > 0) {
    // output data of each row
	while($arrayresult = mysqli_fetch_array($result)) {
       $myArray[] = array(
            "id"=>$arrayresult['Sale_ID'],
			"agentID"=>$arrayresult['Agent_ID'],
			"buyerID"=>$arrayresult['Buyer_ID'],
			"propertyID"=>$arrayresult['Property_Prop_ID'],
			"amount"=>$arrayresult['Sale_Amount'],
			"percentage"=>$arrayresult['Sale_Percentage'],
			"date"=>$arrayresult['Sale_Date'],
            "timeOnMarket"=>$arrayresult['Sales_TimeOnMarket'],
            "agentLastName"=>$arrayresult['agentLastName'],
            "buyerLastName"=>$arrayresult['buyerLastName']
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
