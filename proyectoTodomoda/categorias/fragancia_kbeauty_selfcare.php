<?php
// Categoría: 12. Fragancia, K-Beauty y Self-Care
$base = '../';
$titulo = '12. Fragancia, K-Beauty y Self-Care';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>12. Fragancia, K-Beauty y Self-Care</h2>
    <p class="centro"><img class="icono" src="../img/categorias/fragancia_kbeauty_selfcare.svg" alt="12. Fragancia, K-Beauty y Self-Care"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT categoria, producto FROM fragancia_kbeauty_selfcare ORDER BY id",
    ['Categoría' => 'categoria', 'Producto' => 'producto'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
