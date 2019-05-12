<?php
$servername = "localhost";
$username = "root";
$password = getenv('mysql_password');
$dbname = "real_estate";

if($password === null){
    die('Enviroment variable [mysql_password] not set');
}

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    echo 'Did you go to /create-database.php ?';
    die("Connection failed: " . $conn->connect_error);
}
?>
