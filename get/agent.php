

<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

$sql = "SELECT * FROM agent join personDetails on agent.Person_Person_ID = personDetails.Person_ID";
$result = $conn->query($sql);
$jsonarray=array();

if ($result->num_rows > 0) {
    // output data of each row
	while($arrayresult = mysqli_fetch_array($result)) {
       $myArray[] = array(
            "id"=>$arrayresult['Person_ID'],
            "AddressID"=>$arrayresult['Address_Address_ID'],
            "firstname"=>$arrayresult['Person_Firstname'],
            "lastname"=>$arrayresult['Person_LastName'],
            "phone"=>$arrayresult['Person_PhoneNumber'],
            "email"=>$arrayresult['Person_Email'],
            "dob"=>$arrayresult['Person_DOB'],

            "agentID"=>$arrayresult['Agent_ID'],
            "buyerID"=>$arrayresult['Buyer_ID'],
            "sellerID"=>$arrayresult['Seller_ID'],
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
        array("message" => "No properties found.")
    );
}
$conn->close();
?>
