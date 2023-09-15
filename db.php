<?php
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$database = "eticaret"; 

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Veritabanı bağlantısı başarısız: " . $conn->connect_error);
}
?>
