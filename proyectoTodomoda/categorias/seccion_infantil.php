<?php
// Categoría: 6. Sección Infantil
$base = '../';
$titulo = '6. Sección Infantil';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>6. Sección Infantil</h2>
    <p class="centro"><img class="icono" src="../img/categorias/seccion_infantil.svg" alt="6. Sección Infantil"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT personaje, producto FROM seccion_infantil ORDER BY id",
    ['Personaje' => 'personaje', 'Producto' => 'producto'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
