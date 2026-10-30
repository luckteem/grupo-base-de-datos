<?php
session_start();
$base = "../../";
$titulo = "Iniciar sesión";
include "../conexion.php";

// Si ya inició sesión, lo mando al inicio
if (isset($_SESSION["id"])) {
    header("Location: inicio.php");
    exit;
}

$msg = "";
$ok = "";

if (isset($_GET["registro"]) && $_GET["registro"] == "ok") {
    $ok = "Cuenta creada correctamente. Ya podés iniciar sesión.";
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = trim($_POST["email"]);
    $clave = $_POST["clave"];

    // Se usa prepare para que nadie pueda meter código SQL en el email
    $st = mysqli_prepare($con, "SELECT id, nombre, password FROM usuarios WHERE email = ?");
    mysqli_stmt_bind_param($st, "s", $email);
    mysqli_stmt_execute($st);
    mysqli_stmt_bind_result($st, $id, $nombre, $hash);

    if (mysqli_stmt_fetch($st) && password_verify($clave, $hash)) {
        $_SESSION["id"] = $id;
        $_SESSION["nombre"] = $nombre;
        header("Location: inicio.php");
        exit;
    }

    $msg = "Email o contraseña incorrectos.";
}

include "../includes/header.php";
?>
<main>
    <div class="caja">
        <h2>Iniciar sesión</h2>
        <?php if ($ok != "") { echo '<p class="ok">' . $ok . '</p>'; } ?>
        <?php if ($msg != "") { echo '<p class="error">' . $msg . '</p>'; } ?>
        <form method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="clave" placeholder="Contraseña" required>
            <button type="submit">Entrar</button>
        </form>
        <p>¿No tenés cuenta? <a href="registro.php">Crear cuenta</a></p>
    </div>
</main>
<?php include "../includes/footer.php"; ?>
