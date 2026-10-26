<?php
// Categoría: 3. Etiquetas Características
$base = '../';
$titulo = '3. Etiquetas Características';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>3. Etiquetas Características</h2>
    <p class="centro"><img class="icono" src="../img/categorias/etiquetas_caracteristicas.svg" alt="3. Etiquetas Características"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT hashtag FROM etiquetas_caracteristicas ORDER BY id",
    ['Hashtag' => 'hashtag'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
