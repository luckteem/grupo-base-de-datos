<?php
// Categoría: 8. Biyutería
$base = '../';
$titulo = '8. Biyutería';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>8. Biyutería</h2>
    <p class="centro"><img class="icono" src="../img/categorias/biyuteria.svg" alt="8. Biyutería"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT producto, material FROM biyuteria ORDER BY id",
    ['Producto' => 'producto', 'Material' => 'material'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
