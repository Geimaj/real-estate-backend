<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $listing= json_decode($body,true);
}
    else{
    echo "provide lisingID, saleprice and buyerID";
    die();
}

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

$stmt = $conn->prepare("INSERT INTO `available`( `Avail_ListingDate`, `Avail_ListingPrice`, `Seller_Seller_ID`, `Agent_Agent_ID`, `Property_ID`) VALUES (?,?,?,?,?");

if($stmt == false){
    print_r( $conn->error_list );
    echo $conn->error_get_last();
    die();
}
$stmt->bind_param("siiii", date('d/m/Y'), $listing['listingPrice'],$listing['sellerID'],$listing['agentID'],$listing['propertyID'] );

$result = $stmt->execute();

 if($result===TRUE){
 // set response code - 200 OK
     http_response_code(200);
     echo json_encode(
        array(
            "id" => $conn->insert_id,
            "listingDate" => date(),
            "listingPrice" => $listing['listingPrice'],
            "sellerID" => $listing['sellerID'],
            "agentID" => $listing['agentID'],
            "propertyID" => $listing['propertyID'],
        )
     );

     die();
 }
// set response code - 404 Not found
    http_response_code(404);
    print_r($conn->error_list);
   echo json_encode(
       array("message" => $conn->error_get_last())
   );

$conn->close();
?>
