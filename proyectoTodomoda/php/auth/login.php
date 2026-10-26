<?php
session_start();
$base = "../../";
$titulo = "Iniciar sesión";
require_once __DIR__ . "/../conexion.php";

// Si ya inició sesión, lo mando al inicio
if (isset($_SESSION["id"])) {
    header("Location: inicio.php");
    exit;
}

$msg = "";
$ok  = "";

if (isset($_GET["registro"]) && $_GET["registro"] === "ok") {
    $ok = "Cuenta creada correctamente. Ya podés iniciar sesión.";
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $email = trim($_POST["email"] ?? "");
    $clave = $_POST["clave"] ?? "";

    $st = $con->prepare("SELECT id, nombre, password FROM usuarios WHERE email = ?");

    if (!$st) {
        $msg = "Error en la base de datos. ¿Importaste sql/todomoda.sql?";
    } else {
        $st->bind_param("s", $email);
        $st->execute();
        $resultado = $st->get_result();
        $fila = $resultado->fetch_assoc();
        $st->close();

        if ($fila && password_verify($clave, $fila["password"])) {
            session_regenerate_id(true);
            $_SESSION["id"]     = $fila["id"];
            $_SESSION["nombre"] = $fila["nombre"];
            header("Location: inicio.php");
            exit;
        }

        $msg = "Email o contraseña incorrectos.";
    }
}

include __DIR__ . "/../includes/header.php";
?>
<main>
    <div class="caja">
        <h2>Iniciar sesión</h2>
        <?php if ($ok !== ""): ?>
            <p class="ok"><?= htmlspecialchars($ok, ENT_QUOTES, "UTF-8") ?></p>
        <?php endif; ?>
        <?php if ($msg !== ""): ?>
            <p class="error"><?= htmlspecialchars($msg, ENT_QUOTES, "UTF-8") ?></p>
        <?php endif; ?>
        <form method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="clave" placeholder="Contraseña" required>
            <button type="submit">Entrar</button>
        </form>
        <p>¿No tenés cuenta? <a href="registro.php">Crear cuenta</a></p>
    </div>
</main>
<?php include __DIR__ . "/../includes/footer.php"; ?>
