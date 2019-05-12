<?php
$min;
$max;
$city;
if (isset($_GET['min'])) {
    $min= $_GET['min'];
} else {
    $min=0;
}
if (isset($_GET['max'])) {
    $max= $_GET['max'];
} else {
    $max=100000000;
}
if (isset($_GET['city'])) {
    $city= $_GET['city'];
} else {
    $city="Cape Town";
	echo $city;
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
include("../../connection.php");

$sql = "SELECT available.Avail_ID,street.Street_Name,suburb.Suburb_Name,suburb.Suburb_ZIP,city.City_Name,country.Country_Name FROM	(((((available
INNER JOIN property
ON available.Property_ID=property.Prop_ID)
INNER JOIN address
ON property.Address_Address_ID = address.Address_ID)
INNER JOIN country
ON country.Country_ID=address.Country_Country_ID)
INNER JOIN city
ON city.City_ID =address.City_City_ID)
INNER JOIN suburb
ON suburb.Suburb_ID=address.Suburb_Suburb_ID)
INNER JOIN street
ON street.Street_ID=address.Street_Street_ID
WHERE city.City_Name=\"".$city."\" AND available.Avail_ListingPrice>".$min." AND available.Avail_ListingPrice<".$max;
echo $sql;
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
	while($arrayresult = mysqli_fetch_array($result)) {
       $myArray[] = array(
                        "Avail_ID"=>$arrayresult['Avail_ID'],
						"Street_Name"=>$arrayresult['Street_Name'],
						"Suburb_Name"=>$arrayresult['Suburb_Name'],
						"Suburb_ZIP"=>$arrayresult['Suburb_ZIP'],
						"City_Name"=>$arrayresult['City_Name'],
						"Country_Name"=>$arrayresult['Country_Name'],
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
