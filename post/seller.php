<?php
$body = file_get_contents('php://input');
if (isset($body)) {
    $seller = json_decode($body,true);
}
else{
    echo "provide sellerID";
    die();
}

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

$sql = "INSERT INTO `seller`(Person_Person_ID)
VALUES (".$seller['id'].")";

if($conn->query($sql)===TRUE){
// set response code - 200 OK
    http_response_code(200);
    echo json_encode(
        array(
            'id'=>$conn->insert_id
        )
        );
} else {
// set response code - 404 Not found
    http_response_code(404);
    echo json_encode(array());
}
$conn->close();
?>
