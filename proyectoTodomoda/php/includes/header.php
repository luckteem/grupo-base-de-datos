<?php
// Cabecera común. Variables que espera: $base (ruta a la raíz) y $titulo.
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
$base   = $base ?? "";
$titulo = $titulo ?? "TODOMODA";
$logueado = isset($_SESSION["id"]);
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= htmlspecialchars($titulo, ENT_QUOTES, "UTF-8") ?> - TODOMODA</title>
    <link rel="stylesheet" href="<?= $base ?>css/todomoda.css">
</head>
<body>
<header>
    <h1><a href="<?= $base ?>index.php">TODOMODA</a></h1>
    <p>Accesorios - Trabajo Práctico</p>
</header>
<nav>
<?php if ($logueado): ?>
    <a href="<?= $base ?>index.php">Inicio</a>
    <a href="<?= $base ?>categorias/catalogo_general.php">Catálogo General</a>
    <a href="<?= $base ?>categorias/accesorios.php">Accesorios</a>
    <a href="<?= $base ?>categorias/etiquetas_caracteristicas.php">#Hashtags</a>
    <a href="<?= $base ?>categorias/marcas_colaboracion.php">Colaboraciones</a>
    <a href="<?= $base ?>categorias/seccion_infantil.php">Infantil</a>
    <a href="<?= $base ?>php/auth/logout.php">Cerrar sesión (<?= htmlspecialchars($_SESSION["nombre"] ?? "usuario", ENT_QUOTES, "UTF-8") ?>)</a>
<?php else: ?>
    <a href="<?= $base ?>php/auth/login.php">Iniciar sesión</a>
    <a href="<?= $base ?>php/auth/registro.php">Crear cuenta</a>
<?php endif; ?>
</nav>
