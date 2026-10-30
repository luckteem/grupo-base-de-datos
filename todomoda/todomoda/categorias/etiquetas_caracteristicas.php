<?php
// Categoría: 3. Etiquetas Características
$base = "../";
$titulo = "3. Etiquetas Características";
include "../php/includes/proteger.php";
include "../php/conexion.php";
include "../php/includes/header.php";

$sql = "SELECT hashtag FROM etiquetas_caracteristicas ORDER BY id";
$resultado = mysqli_query($con, $sql);
?>
<main>
    <h2>3. Etiquetas Características</h2>
    <p class="centro"><img class="icono" src="../img/categorias/etiquetas_caracteristicas.svg" alt="3. Etiquetas Características"></p>
    <table>
        <tr><th>Hashtag</th></tr>
        <?php while ($fila = mysqli_fetch_assoc($resultado)) { ?>
        <tr>
            <td><?php echo $fila["hashtag"]; ?></td>
        </tr>
        <?php } ?>
    </table>
    <p class="centro">
        <a class="boton" href="../index.php">&larr; Volver al inicio</a>
    </p>
</main>
<?php include "../php/includes/footer.php"; ?>
