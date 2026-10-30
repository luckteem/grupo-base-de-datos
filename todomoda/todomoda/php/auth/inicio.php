<?php
$base = "../../";
$titulo = "Inicio";
include "../includes/proteger.php";
include "../includes/header.php";
?>
<main>
    <div class="caja">
        <h2>Bienvenido, <?php echo htmlspecialchars($_SESSION["nombre"]); ?></h2>
        <p class="ok">Sesión iniciada correctamente.</p>
        <p><a class="boton" href="../../index.php">Ir al catálogo TODOMODA</a></p>
        <p><a href="logout.php">Cerrar sesión</a></p>
    </div>
</main>
<?php include "../includes/footer.php"; ?>
