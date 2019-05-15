<?php
$year;
$where = " where YEAR(Sale_Date) ";
if (isset($_GET['year'])) {
    $year= $_GET['year'];
    $where = $where . " = " . $year . " ";
}
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
include("../../connection.php");

$sql = "SELECT
Agent_Agent_ID,
person.Person_Firstname,
person.Person_LastName,
sum(Sale_Amount) as totalValue,
COUNT(Agent_Agent_ID) as totalSales,
AVG(sales.Sale_Amount) as avgSales,
AVG(sales.Sales_TimeOnMarket) as avgTimeOnMarket
FROM `agent`
join sales on sales.Agent_Agent_ID = agent.Agent_ID
join person on agent.Person_Person_ID = person.Person_ID"
. $where .
"group by Agent_Agent_ID
";

$result = $conn->query($sql);
$jsonarray=array();
if ($result->num_rows > 0) {
    // output data of each row
	while($arrayresult = mysqli_fetch_array($result)) {
       $myArray[] = array(
            "id" => $arrayresult['Agent_Agent_ID'],
            "firstname"=>$arrayresult['Person_Firstname'],
            "lastname"=>$arrayresult['Person_LastName'],
            "totalValue"=>$arrayresult['totalValue'],
            "totalSales" => $arrayresult['totalSales'],
            "avgSales"=>$arrayresult['avgSales'],
            "avgTimeOnMarket"=>$arrayresult['avgTimeOnMarket']
        );
    }
	// set response code - 200 OK
    http_response_code(200);
    echo json_encode($myArray);
} else {
// set response code - 404 Not found
    http_response_code(404);
    echo json_encode(
        array("message" => "No properties found.")
    );
}
$conn->close();
?>
