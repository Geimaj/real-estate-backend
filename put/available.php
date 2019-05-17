
<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $listing= json_decode($body,true);
} else {
    die('Please send property object');
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, GET, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");
include("../connection.php");

$stmt = $conn->prepare("UPDATE `available` SET
`Avail_ListingPrice`=?,
`Seller_Seller_ID`=?,
`Agent_Agent_ID`=?
WHERE Avail_ID = ?");

if($stmt !== false){

    //bind params
    $stmt->bind_param("iiii",
    $listing['listingPrice'] ,
    $listing['sellerID'],
    $listing['agentID'],
    $listing['id']
    );

    $result = $stmt->execute();
    if($result===TRUE){
        http_response_code(200);
        echo json_encode(
            array(
            "id" => $listing['id'],
            "listingPrice" => $listing['listingPrice'],
            "sellerID" => $listing['sellerID'],
            "agentID" => $listing['agentID'],
            "propertyID" => $listing['propertyID'],
            )
        );

            die();
        }
} else {
        http_response_code(200);

    echo "FAILED PREPARING UPDATE";
    echo $stmt->error;
}

print_r( $conn->error_list );
echo $conn->error_get_last();
die();
?>