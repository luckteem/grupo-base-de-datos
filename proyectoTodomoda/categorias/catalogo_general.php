<?php
// Categoría: 1. Catálogo General
$base = '../';
$titulo = '1. Catálogo General';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>1. Catálogo General</h2>
    <p class="centro"><img class="icono" src="../img/categorias/catalogo_general.svg" alt="1. Catálogo General"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT producto, precio FROM catalogo_general ORDER BY id",
    ['Producto' => 'producto', 'Precio' => 'precio'],
    ['precio']
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
