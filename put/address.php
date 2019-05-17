
<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $address= json_decode($body,true);
} else {
    die('Please send property object');
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, PUT, GET, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");
include("../connection.php");

$stmt = $conn->prepare("update `address`
set
Street_Street_ID = ?,
Address_House_Number = ?
where Address_ID = ?");

if($stmt !== false){
    $street = $address['street'];

    //bind params
    $stmt->bind_param("iii",$street['id'] , $address['houseNumber'],
    $address['id']);

    $result = $stmt->execute();
    if($result===TRUE){
        http_response_code(200);
        echo json_encode(
            array(

                "id" => $address['id'],
                "houseNumber" => $address['houseNumber'],
                "streetID" => $street['id']
                )
            );

            die();
        }
} else {
    echo "FAILED PREPARING UPDATE";
    echo $stmt->error;
}

print_r( $conn->error_list );
echo $conn->error_get_last();
die();
?>