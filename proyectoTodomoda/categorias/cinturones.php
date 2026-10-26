<?php
// Categoría: 10. Cinturones
$base = '../';
$titulo = '10. Cinturones';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>10. Cinturones</h2>
    <p class="centro"><img class="icono" src="../img/categorias/cinturones.svg" alt="10. Cinturones"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT talle, color FROM cinturones ORDER BY id",
    ['Talle' => 'talle', 'Color' => 'color'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
