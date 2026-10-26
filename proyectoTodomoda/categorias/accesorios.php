<?php
// Categoría: 2. Accesorios
$base = '../';
$titulo = '2. Accesorios';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>2. Accesorios</h2>
    <p class="centro"><img class="icono" src="../img/categorias/accesorios.svg" alt="2. Accesorios"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT tipo, color FROM accesorios ORDER BY id",
    ['Tipo' => 'tipo', 'Color' => 'color'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
