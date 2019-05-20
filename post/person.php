<?php
$body = file_get_contents('php://input');

if (isset($body)) {
    $person= json_decode($body,true);
} else {
    $person="Error";
}

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

$sql = $conn->prepare("INSERT INTO `person`(
    `Address_Address_ID`,
    `Person_Firstname`,
    `Person_LastName`,
    `Person_PhoneNumber`,
    `Person_Email`,
    `Person_DOB`) VALUES (?,?,?,?,?, STR_TO_DATE( ? , '%d-%m-%Y' ) )");

if($sql != false){
    $sql->bind_param("isssss",
    $person['address'],
     $person['firstname'],
     $person['firstname'],
     $person['phone'],
     $person['email'],
     $person['dob']);
    $result = $sql->execute();

    if($result===TRUE){
        // set response code - 200 OK
        http_response_code(200);

        $person_id=$conn->insert_id;

        //check if we should insert person_id into buyer, seller or agent
        if($person['buyerID'] == TRUE){
            $sql = $conn->prepare("INSERT INTO `buyer`(`Person_Person_ID`) VALUES (?)");
            $sql->bind_param("i", $person_id);
        }

        if($person['sellerID'] == TRUE){
            $sql = $conn->prepare("INSERT INTO `seller`(`Person_Person_ID`) VALUES (?)");
            $sql->bind_param("i", $person_id);
        }

        if($person['agentID'] == TRUE){
            $sql = $conn->prepare("INSERT INTO `agent`(`Person_Person_ID`) VALUES (?)");
            $sql->bind_param("i", $person_id);
        }

        echo json_encode(array(
            "id" => $person_id,
            "addressID" => $person['address'],
            "firstname" => $person['firstname'],
            "lastname" => $person['lastname'],
            "phone" => $person['phone'],
            "email" => $person['email'],
            "dob" => $person['dob'],

        ));

        $conn->close();
        die();
    }
}

// set response code - 404 Not found
    http_response_code(404);
    echo $sql->error;
    print_r( $conn->error_list );

$conn->close();
?>
