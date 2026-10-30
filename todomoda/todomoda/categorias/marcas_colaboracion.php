<?php
// Categoría: 4. Marcas de Colaboración
$base = "../";
$titulo = "4. Marcas de Colaboración";
include "../php/includes/proteger.php";
include "../php/conexion.php";
include "../php/includes/header.php";

$sql = "SELECT marca, coleccion FROM marcas_colaboracion ORDER BY id";
$resultado = mysqli_query($con, $sql);
?>
<main>
    <h2>4. Marcas de Colaboración</h2>
    <p class="centro"><img class="icono" src="../img/categorias/marcas_colaboracion.svg" alt="4. Marcas de Colaboración"></p>
    <table>
        <tr><th>Marca</th><th>Colección</th></tr>
        <?php while ($fila = mysqli_fetch_assoc($resultado)) { ?>
        <tr>
            <td><?php echo $fila["marca"]; ?></td>
            <td><?php echo $fila["coleccion"]; ?></td>
        </tr>
        <?php } ?>
    </table>
    <p class="centro">
        <a class="boton" href="../index.php">&larr; Volver al inicio</a>
    </p>
</main>
<?php include "../php/includes/footer.php"; ?>
