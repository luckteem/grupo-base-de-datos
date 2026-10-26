<?php
// Categoría: 14. Invierno, Botellas y Loncheras
$base = '../';
$titulo = '14. Invierno, Botellas y Loncheras';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>14. Invierno, Botellas y Loncheras</h2>
    <p class="centro"><img class="icono" src="../img/categorias/invierno_botellas_loncheras.svg" alt="14. Invierno, Botellas y Loncheras"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT producto, temporada FROM invierno_botellas_loncheras ORDER BY id",
    ['Producto' => 'producto', 'Temporada' => 'temporada'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
