<?php
// Categoría: 4. Marcas de Colaboración
$base = '../';
$titulo = '4. Marcas de Colaboración';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>4. Marcas de Colaboración</h2>
    <p class="centro"><img class="icono" src="../img/categorias/marcas_colaboracion.svg" alt="4. Marcas de Colaboración"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT marca, coleccion FROM marcas_colaboracion ORDER BY id",
    ['Marca' => 'marca', 'Colección' => 'coleccion'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
