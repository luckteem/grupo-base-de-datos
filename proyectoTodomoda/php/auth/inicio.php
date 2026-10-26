<?php
$base = "../../";
$titulo = "Inicio";
require_once __DIR__ . "/../includes/proteger.php";
include __DIR__ . "/../includes/header.php";
?>
<main>
    <div class="caja">
        <h2>Bienvenido, <?= htmlspecialchars($_SESSION["nombre"] ?? "usuario", ENT_QUOTES, "UTF-8") ?></h2>
        <p class="ok">Sesión iniciada correctamente.</p>
        <p><a class="boton" href="../../index.php">Ir al catálogo TODOMODA</a></p>
        <p><a href="logout.php">Cerrar sesión</a></p>
    </div>
</main>
<?php include __DIR__ . "/../includes/footer.php"; ?>
