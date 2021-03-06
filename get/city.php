<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include("../connection.php");

$sql = "SELECT * FROM `city` join `country` on city.Country_ID = country.Country_ID ";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
	while($arrayresult = mysqli_fetch_array($result)) {

        $country =
                array(
                "id" => $arrayresult['Country_ID'],
                "name" => $arrayresult['Country_Name']
                );

        $myArray[] = array(
                        "id"=>$arrayresult['City_ID'],
            "name"=>$arrayresult['City_Name'],
            "country"=>$country
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
