<?php
// Categoría: 8. Biyutería
$base = "../";
$titulo = "8. Biyutería";
include "../php/includes/proteger.php";
include "../php/conexion.php";
include "../php/includes/header.php";

$sql = "SELECT t.producto, t.material, t.precio, t.stock, e.hashtag
        FROM biyuteria t
        LEFT JOIN etiquetas_caracteristicas e ON t.id_etiqueta = e.id
        ORDER BY t.id";
$resultado = mysqli_query($con, $sql);
?>
<main>
    <h2>8. Biyutería</h2>
    <p class="centro"><img class="icono" src="../img/categorias/biyuteria.svg" alt="8. Biyutería"></p>
    <table>
        <tr><th>Producto</th><th>Material</th><th>Precio</th><th>Stock</th><th>Etiqueta</th></tr>
        <?php while ($fila = mysqli_fetch_assoc($resultado)) { ?>
        <tr>
            <td><?php echo $fila["producto"]; ?></td>
            <td><?php echo $fila["material"]; ?></td>
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
