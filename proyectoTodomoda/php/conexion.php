<?php
// Conexión a la base de datos "todomoda" (XAMPP / MariaDB)
$host     = "localhost";
$user     = "root";
$password = "";
$dbname   = "todomoda";

// Evita que mysqli lance excepciones: así mostramos nuestro propio mensaje
mysqli_report(MYSQLI_REPORT_OFF);

$con = mysqli_connect($host, $user, $password, $dbname);

if (!$con) {
    die("Error de conexión: " . mysqli_connect_error()
        . " — ¿está iniciado MySQL/MariaDB y creaste la base 'todomoda' (sql/todomoda.sql)?");
}

mysqli_set_charset($con, "utf8mb4");
