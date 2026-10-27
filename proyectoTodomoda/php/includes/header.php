<?php
// Cabecera común. Cada página define antes $base y $titulo.
// (la sesión ya se inició en proteger.php, login.php o registro.php)
$logueado = isset($_SESSION["id"]);
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $titulo; ?> - TODOMODA</title>
    <link rel="stylesheet" href="<?php echo $base; ?>css/todomoda.css">
</head>
<body>
<header>
    <h1><a href="<?php echo $base; ?>index.php">TODOMODA</a></h1>
    <p>Accesorios - Trabajo Práctico</p>
</header>
<nav>
<?php if ($logueado) { ?>
    <a href="<?php echo $base; ?>index.php">Inicio</a>
    <a href="<?php echo $base; ?>categorias/catalogo_general.php">Catálogo General</a>
    <a href="<?php echo $base; ?>categorias/accesorios.php">Accesorios</a>
    <a href="<?php echo $base; ?>categorias/etiquetas_caracteristicas.php">#Hashtags</a>
    <a href="<?php echo $base; ?>categorias/marcas_colaboracion.php">Colaboraciones</a>
    <a href="<?php echo $base; ?>categorias/seccion_infantil.php">Infantil</a>
    <a href="<?php echo $base; ?>php/auth/logout.php">Cerrar sesión (<?php echo htmlspecialchars($_SESSION["nombre"]); ?>)</a>
<?php } else { ?>
    <a href="<?php echo $base; ?>php/auth/login.php">Iniciar sesión</a>
    <a href="<?php echo $base; ?>php/auth/registro.php">Crear cuenta</a>
<?php } ?>
</nav>
