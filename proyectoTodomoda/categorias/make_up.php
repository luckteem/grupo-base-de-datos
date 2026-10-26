<?php
// Categoría: 11. Make Up
$base = '../';
$titulo = '11. Make Up';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>11. Make Up</h2>
    <p class="centro"><img class="icono" src="../img/categorias/make_up.svg" alt="11. Make Up"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT producto, precio FROM make_up ORDER BY id",
    ['Producto' => 'producto', 'Precio' => 'precio'],
    ['precio']
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
