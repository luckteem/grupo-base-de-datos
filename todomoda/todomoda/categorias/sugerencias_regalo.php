<?php
// Categoría: 5. Sugerencias de Regalo
$base = "../";
$titulo = "5. Sugerencias de Regalo";
include "../php/includes/proteger.php";
include "../php/conexion.php";
include "../php/includes/header.php";

$sql = "SELECT para_quien, idea FROM sugerencias_regalo ORDER BY id";
$resultado = mysqli_query($con, $sql);
?>
<main>
    <h2>5. Sugerencias de Regalo</h2>
    <p class="centro"><img class="icono" src="../img/categorias/sugerencias_regalo.svg" alt="5. Sugerencias de Regalo"></p>
    <table>
        <tr><th>Para quién</th><th>Idea</th></tr>
        <?php while ($fila = mysqli_fetch_assoc($resultado)) { ?>
        <tr>
            <td><?php echo $fila["para_quien"]; ?></td>
            <td><?php echo $fila["idea"]; ?></td>
        </tr>
        <?php } ?>
    </table>
    <p class="centro">
        <a class="boton" href="../index.php">&larr; Volver al inicio</a>
    </p>
</main>
<?php include "../php/includes/footer.php"; ?>
