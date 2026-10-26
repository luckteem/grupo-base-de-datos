<?php
// Categoría: 7. Carteras y Mochilas
$base = '../';
$titulo = '7. Carteras y Mochilas';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>7. Carteras y Mochilas</h2>
    <p class="centro"><img class="icono" src="../img/categorias/carteras_mochilas.svg" alt="7. Carteras y Mochilas"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT modelo, stock FROM carteras_mochilas ORDER BY id",
    ['Modelo' => 'modelo', 'Stock' => 'stock'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
