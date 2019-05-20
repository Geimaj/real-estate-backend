<?php
$year;
if (isset($_GET['year'])) {
    $year= $_GET['year'];
} else {
    $year=2018;
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
include("../../connection.php");

$sql = "SELECT Agent_Agent_ID, person.Person_Firstname, person.Person_LastName, sum(Sale_Amount) as totalValue, COUNT(Agent_Agent_ID) as totalSales FROM `agent`
join sales on sales.Agent_Agent_ID = agent.Agent_ID
join person on agent.Person_Person_ID = person.Person_ID
where YEAR(Sale_Date) = " . $year . "
group by Agent_Agent_ID
ORDER by totalValue desc
LIMIT 1
";

$result = $conn->query($sql);
$jsonarray=array();
if ($result->num_rows > 0) {
    // output data of each row
	while($arrayresult = mysqli_fetch_array($result)) {
       $myArray[] = array(
            "firstname"=>$arrayresult['Person_Firstname'],
            "lastname"=>$arrayresult['Person_LastName'],
            "totalValueSold"=>$arrayresult['totalValue'],
            "totalSales"=>$arrayresult['totalSales'],
        );
    }
	// set response code - 200 OK
    http_response_code(200);
    echo json_encode($myArray);
} else {
// set response code - 404 Not found
    http_response_code(203);
    echo json_encode(
        array()
    );
}
$conn->close();
?>
