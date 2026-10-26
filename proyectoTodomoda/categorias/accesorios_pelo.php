<?php
// Categoría: 9. Accesorios de Pelo
$base = '../';
$titulo = '9. Accesorios de Pelo';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>9. Accesorios de Pelo</h2>
    <p class="centro"><img class="icono" src="../img/categorias/accesorios_pelo.svg" alt="9. Accesorios de Pelo"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT producto FROM accesorios_pelo ORDER BY id",
    ['Producto' => 'producto'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
