
<?php

$servername = "localhost";
$username = "root";
$password = getenv('mysql_password');
$dbname = "real_estate";

if($password === null){
    die('Enviroment variable [mysql_password] not set');
}

if(getenv('mysql_user') != null){
    $username = getenv('mysql_user');
}

if(getenv('mysql_servername') != null){
    $servername = getenv('mysql_servername');
}


# MySQL with PDO_MYSQL
$db = new PDO("mysql:host=$servername", $username, $password);
$query = file_get_contents("./DB/create-database.sql");
$stmt = $db->prepare($query);
if ($stmt->execute())
     echo "Success";
else
     echo "Fail";
?>