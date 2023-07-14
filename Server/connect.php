<?php
$hostname = "localhost";
$username = "root";
$password = "";
$database = "ecommerce";
$connect = mysqli_connect($hostname, $username, $password, $database);
mysqli_query($connect,"SET NAMES 'utf8'");
?>