
<?php $mysql_host = "localhost";
$mysql_database = "real_estate";
$mysql_user = "root";
$mysql_password = getenv('mysql_password');
if($mysql_password === null){
    die('Enviroment variable [mysql_password] not set');
}
# MySQL with PDO_MYSQL
$db = new PDO("mysql:host=$mysql_host", $mysql_user, $mysql_password);
$query = file_get_contents("./DB/create-database.sql");
$stmt = $db->prepare($query);
if ($stmt->execute())
     echo "Success";
else
     echo "Fail";
?>