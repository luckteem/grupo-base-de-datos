<?php
session_start();
$base = "../../";
$titulo = "Crear cuenta";
require_once __DIR__ . "/../conexion.php";

$msg = "";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $nombre = trim($_POST["nombre"] ?? "");
    $email  = trim($_POST["email"] ?? "");
    $clave  = $_POST["clave"] ?? "";

    if ($nombre === "" || $email === "" || $clave === "") {
        $msg = "Completá todos los campos.";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $msg = "El email no es válido.";
    } elseif (strlen($clave) < 6) {
        $msg = "La contraseña debe tener al menos 6 caracteres.";
    } else {
        $st = $con->prepare("SELECT id FROM usuarios WHERE email = ?");

        if (!$st) {
            $msg = "Error en la base de datos. ¿Importaste sql/todomoda.sql?";
        } else {
            $st->bind_param("s", $email);
            $st->execute();
            $st->store_result();
            $existe = $st->num_rows > 0;
            $st->close();

            if ($existe) {
                $msg = "Ese email ya existe.";
            } else {
                $hash = password_hash($clave, PASSWORD_DEFAULT);
                $st2  = $con->prepare("INSERT INTO usuarios (nombre, email, password) VALUES (?, ?, ?)");
                $st2->bind_param("sss", $nombre, $email, $hash);

                if ($st2->execute()) {
                    $st2->close();
                    header("Location: login.php?registro=ok");
                    exit;
                }

                $msg = "Error al registrar.";
                $st2->close();
            }
        }
    }
}

include __DIR__ . "/../includes/header.php";
?>
<main>
    <div class="caja">
        <h2>Crear cuenta</h2>
        <?php if ($msg !== ""): ?>
            <p class="error"><?= htmlspecialchars($msg, ENT_QUOTES, "UTF-8") ?></p>
        <?php endif; ?>
        <form method="post">
            <input type="text" name="nombre" placeholder="Nombre" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="clave" placeholder="Contraseña (mínimo 6)" required minlength="6">
            <button type="submit">Registrarme</button>
        </form>
        <p>¿Ya tenés cuenta? <a href="login.php">Iniciar sesión</a></p>
    </div>
</main>
<?php include __DIR__ . "/../includes/footer.php"; ?>
