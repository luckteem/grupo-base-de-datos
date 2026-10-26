<?php
// Categoría: 15. Peluches y Tazas
$base = '../';
$titulo = '15. Peluches y Tazas';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>15. Peluches y Tazas</h2>
    <p class="centro"><img class="icono" src="../img/categorias/peluches_tazas.svg" alt="15. Peluches y Tazas"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT producto, personaje FROM peluches_tazas ORDER BY id",
    ['Producto' => 'producto', 'Personaje' => 'personaje'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
