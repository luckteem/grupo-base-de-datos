<?php
// Si no inició sesión, lo manda al login. Incluir ANTES de imprimir HTML.
session_start();

if (!isset($_SESSION["id"])) {
    header("Location: " . $base . "php/auth/login.php");
    exit;
}
