<?php
// Categoría: 1. Catálogo General (lista de subcatálogos, sin precios)
$base = "../";
$titulo = "1. Catálogo General";
include "../php/includes/proteger.php";
include "../php/conexion.php";
include "../php/includes/header.php";

$sql = "SELECT subcategoria, archivo FROM catalogo_general ORDER BY id";
$resultado = mysqli_query($con, $sql);
?>
<main>
    <h2>1. Catálogo General</h2>
    <p class="centro"><img class="icono" src="../img/categorias/catalogo_general.svg" alt="1. Catálogo General"></p>
    <p class="centro">Tocá una subcategoría para ver sus productos y precios.</p>
    <table>
        <tr><th>Subcategoría</th><th>Productos y precios</th></tr>
        <?php while ($fila = mysqli_fetch_assoc($resultado)) { ?>
        <tr>
            <td><a href="<?php echo $fila["archivo"]; ?>"><?php echo $fila["subcategoria"]; ?></a></td>
            <td><a href="<?php echo $fila["archivo"]; ?>">Ver precios &rarr;</a></td>
        </tr>
        <?php } ?>
    </table>
    <p class="centro"><a class="boton" href="../index.php">&larr; Volver al inicio</a></p>
</main>
<?php include "../php/includes/footer.php"; ?>
