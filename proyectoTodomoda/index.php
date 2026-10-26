<?php
// Catálogo TODOMODA (página principal). Requiere sesión iniciada.
$base = "";
$titulo = "Catálogo";
require_once __DIR__ . "/php/includes/proteger.php";
require_once __DIR__ . "/php/conexion.php";
require_once __DIR__ . "/php/includes/tabla.php";

// [tabla en la BD (= archivo en /categorias), título]
$categorias = [
    ['catalogo_general', '1. Catálogo General'],
    ['accesorios', '2. Accesorios'],
    ['etiquetas_caracteristicas', '3. Etiquetas Características'],
    ['marcas_colaboracion', '4. Marcas de Colaboración'],
    ['sugerencias_regalo', '5. Sugerencias de Regalo'],
    ['seccion_infantil', '6. Sección Infantil'],
    ['carteras_mochilas', '7. Carteras y Mochilas'],
    ['biyuteria', '8. Biyutería'],
    ['accesorios_pelo', '9. Accesorios de Pelo'],
    ['cinturones', '10. Cinturones'],
    ['make_up', '11. Make Up'],
    ['fragancia_kbeauty_selfcare', '12. Fragancia, K-Beauty y Self-Care'],
    ['papeleria_libro_giftcard', '13. Papelería, Libros y Gift Card'],
    ['invierno_botellas_loncheras', '14. Invierno, Botellas y Loncheras'],
    ['peluches_tazas', '15. Peluches y Tazas']
];

include __DIR__ . "/php/includes/header.php";
?>
<main>
    <h2>Categorías</h2>
    <div class="grid">
<?php foreach ($categorias as [$tabla, $nombre]):
    $r = mysqli_query($con, "SELECT COUNT(*) AS n FROM `$tabla`");
    $fila = $r ? mysqli_fetch_assoc($r) : null;
    $n = $fila ? (int) $fila["n"] : 0;
?>
        <a class="card" href="categorias/<?= $tabla ?>.php">
            <img src="img/categorias/<?= $tabla ?>.svg" alt="<?= esc($nombre) ?>">
            <h3><?= esc($nombre) ?></h3>
            <p><?= $n ?> registros</p>
        </a>
<?php endforeach; ?>
    </div>
</main>
<?php include __DIR__ . "/php/includes/footer.php"; ?>
