
<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $address= json_decode($body,true);
} else {
    die('Please send address object');
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, GET, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");
include("../connection.php");

$stmt = $conn->prepare("INSERT INTO `address`
( `Street_Street_ID`, `Address_House_Number`)
 VALUES (?,?)");

if($stmt !== false){

    $streetID = $address['street']['id'];

    //bind params
    $stmt->bind_param("ii", $streetID, $address['houseNumber']);

    $result = $stmt->execute();
    if($result===TRUE){
        http_response_code(200);
        echo json_encode(
            array(

                "id" => $conn->insert_id,
                "houseNumber" => $address['houseNumber'],
                "streetID" => $streetID
                )
            );

            die();
        }
} else {
    echo "FAILED PREPARING UPDATE";
    echo $stmt->error;
}

print_r( $conn->error_list );
die();
?>