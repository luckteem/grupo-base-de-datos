<?php
// Catálogo TODOMODA (página principal). Requiere sesión iniciada.
$base = "";
$titulo = "Catálogo";
include "php/includes/proteger.php";
include "php/conexion.php";

// nombre de la tabla (= archivo en /categorias) => título
$categorias = array(
    "catalogo_general" => "1. Catálogo General",
    "accesorios" => "2. Accesorios",
    "etiquetas_caracteristicas" => "3. Etiquetas Características",
    "marcas_colaboracion" => "4. Marcas de Colaboración",
    "sugerencias_regalo" => "5. Sugerencias de Regalo",
    "seccion_infantil" => "6. Sección Infantil",
    "carteras_mochilas" => "7. Carteras y Mochilas",
    "biyuteria" => "8. Biyutería",
    "accesorios_pelo" => "9. Accesorios de Pelo",
    "cinturones" => "10. Cinturones",
    "make_up" => "11. Make Up",
    "fragancia_kbeauty_selfcare" => "12. Fragancia, K-Beauty y Self-Care",
    "papeleria_libro_giftcard" => "13. Papelería, Libros y Gift Card",
    "invierno_botellas_loncheras" => "14. Invierno, Botellas y Loncheras",
    "peluches_tazas" => "15. Peluches y Tazas"
);

include "php/includes/header.php";
?>
<main>
    <h2>Categorías</h2>
    <div class="grid">
        <?php foreach ($categorias as $tabla => $nombre) {
            $resultado = mysqli_query($con, "SELECT COUNT(*) AS total FROM " . $tabla);
            $fila = mysqli_fetch_assoc($resultado);
        ?>
        <a class="card" href="categorias/<?php echo $tabla; ?>.php">
            <img src="img/categorias/<?php echo $tabla; ?>.svg" alt="<?php echo $nombre; ?>">
            <h3><?php echo $nombre; ?></h3>
            <p><?php echo $fila["total"]; ?> registros</p>
        </a>
        <?php } ?>
    </div>
</main>
<?php include "php/includes/footer.php"; ?>
