<?php
// Categoría: 11. Make Up
$base = "../";
$titulo = "11. Make Up";
include "../php/includes/proteger.php";
include "../php/conexion.php";
include "../php/includes/header.php";

$sql = "SELECT t.producto, t.precio, t.stock, e.hashtag
        FROM make_up t
        LEFT JOIN etiquetas_caracteristicas e ON t.id_etiqueta = e.id
        ORDER BY t.id";
$resultado = mysqli_query($con, $sql);
?>
<main>
    <h2>11. Make Up</h2>
    <p class="centro"><img class="icono" src="../img/categorias/make_up.svg" alt="11. Make Up"></p>
    <table>
        <tr><th>Producto</th><th>Precio</th><th>Stock</th><th>Etiqueta</th></tr>
        <?php while ($fila = mysqli_fetch_assoc($resultado)) { ?>
        <tr>
            <td><?php echo $fila["producto"]; ?></td>
            <td>$<?php echo number_format($fila["precio"], 0, ",", "."); ?></td>
            <td><?php if ($fila["stock"] == 0) { echo "Agotado"; } else { echo $fila["stock"]; } ?></td>
            <td class="etiqueta"><?php echo $fila["hashtag"]; ?></td>
        </tr>
        <?php } ?>
    </table>
    <p class="centro">
        <a class="boton" href="catalogo_general.php">&larr; Catálogo general</a>
        <a class="boton" href="../index.php">Volver al inicio</a>
    </p>
</main>
<?php include "../php/includes/footer.php"; ?>
