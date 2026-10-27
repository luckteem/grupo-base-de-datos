<?php
// Conexión a la base de datos "todomoda" (XAMPP)
$host = "localhost";
$user = "root";
$password = "";
$dbname = "todomoda";

$con = mysqli_connect($host, $user, $password, $dbname);

if (!$con) {
    die("Error de conexión: " . mysqli_connect_error());
}

mysqli_set_charset($con, "utf8mb4");
