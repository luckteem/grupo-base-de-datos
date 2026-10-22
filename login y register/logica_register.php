<?php
include "conexion.php";

$nombre     = $conexion->real_escape_string($_POST["nombre"]);
$apellido   = $conexion->real_escape_string($_POST["apellido"]);
$email      = $conexion->real_escape_string($_POST["gmail"]);
$contrasena = password_hash($_POST["contrasena"], PASSWORD_DEFAULT);

$conexion->query("CALL CrearCliente('$nombre', '$apellido', NULL, '$email', '$contrasena')");

echo "Cuenta creada correctamente.";