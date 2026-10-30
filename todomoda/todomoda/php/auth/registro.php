<?php
session_start();
$base = "../../";
$titulo = "Crear cuenta";
include "../conexion.php";

$msg = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = trim($_POST["nombre"]);
    $email = trim($_POST["email"]);
    $clave = $_POST["clave"];

    if ($nombre == "" || $email == "" || $clave == "") {
        $msg = "Completá todos los campos.";
    } elseif (strlen($clave) < 6) {
        $msg = "La contraseña debe tener al menos 6 caracteres.";
    } else {
        // Busco si el email ya existe
        $st = mysqli_prepare($con, "SELECT id FROM usuarios WHERE email = ?");
        mysqli_stmt_bind_param($st, "s", $email);
        mysqli_stmt_execute($st);
        mysqli_stmt_store_result($st);
        $existe = mysqli_stmt_num_rows($st);
        mysqli_stmt_close($st);

        if ($existe > 0) {
            $msg = "Ese email ya existe.";
        } else {
            // La contraseña se guarda encriptada, nunca en texto plano
            $hash = password_hash($clave, PASSWORD_DEFAULT);
            $st2 = mysqli_prepare($con, "INSERT INTO usuarios (nombre, email, password) VALUES (?, ?, ?)");
            mysqli_stmt_bind_param($st2, "sss", $nombre, $email, $hash);
            mysqli_stmt_execute($st2);
            header("Location: login.php?registro=ok");
            exit;
        }
    }
}

include "../includes/header.php";
?>
<main>
    <div class="caja">
        <h2>Crear cuenta</h2>
        <?php if ($msg != "") { echo '<p class="error">' . $msg . '</p>'; } ?>
        <form method="post">
            <input type="text" name="nombre" placeholder="Nombre" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="clave" placeholder="Contraseña (mínimo 6)" required minlength="6">
            <button type="submit">Registrarme</button>
        </form>
        <p>¿Ya tenés cuenta? <a href="login.php">Iniciar sesión</a></p>
    </div>
</main>
<?php include "../includes/footer.php"; ?>
