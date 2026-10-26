<?php
// Categoría: 13. Papelería, Libros y Gift Card
$base = '../';
$titulo = '13. Papelería, Libros y Gift Card';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>13. Papelería, Libros y Gift Card</h2>
    <p class="centro"><img class="icono" src="../img/categorias/papeleria_libro_giftcard.svg" alt="13. Papelería, Libros y Gift Card"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT producto, uso_tipo FROM papeleria_libro_giftcard ORDER BY id",
    ['Producto' => 'producto', 'Uso' => 'uso_tipo'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
