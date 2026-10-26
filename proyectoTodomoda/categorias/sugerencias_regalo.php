<?php
// Categoría: 5. Sugerencias de Regalo
$base = '../';
$titulo = '5. Sugerencias de Regalo';
require_once __DIR__ . '/../php/includes/proteger.php';
require_once __DIR__ . '/../php/conexion.php';
require_once __DIR__ . '/../php/includes/tabla.php';
include __DIR__ . '/../php/includes/header.php';
?>
<main>
    <h2>5. Sugerencias de Regalo</h2>
    <p class="centro"><img class="icono" src="../img/categorias/sugerencias_regalo.svg" alt="5. Sugerencias de Regalo"></p>
<?php
mostrar_tabla(
    $con,
    "SELECT para_quien, idea FROM sugerencias_regalo ORDER BY id",
    ['Para quién' => 'para_quien', 'Idea' => 'idea'],
    []
);
?>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include __DIR__ . '/../php/includes/footer.php'; ?>
