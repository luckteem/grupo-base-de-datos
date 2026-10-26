<?php
// Exige sesión iniciada. Incluir ANTES de imprimir cualquier HTML.
// Usa $base (ruta relativa a la raíz del proyecto) definida en cada página.
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION["id"])) {
    header("Location: " . ($base ?? "") . "php/auth/login.php");
    exit;
}
