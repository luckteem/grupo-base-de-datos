<?php
// Funciones compartidas para dibujar las tablas de cada categoría.

function esc($texto): string
{
    return htmlspecialchars((string) $texto, ENT_QUOTES, "UTF-8");
}

/**
 * Ejecuta $sql y dibuja una <table>.
 *
 * @param mysqli $con      Conexión
 * @param string $sql      Consulta SELECT
 * @param array  $columnas ['Etiqueta visible' => 'campo_en_la_bd', ...]
 * @param array  $moneda   Campos que se muestran como precio ($15.000)
 */
function mostrar_tabla(mysqli $con, string $sql, array $columnas, array $moneda = []): void
{
    $res = mysqli_query($con, $sql);

    if (!$res) {
        echo '<p class="centro error">No se pudo leer la tabla: ' . esc(mysqli_error($con)) . '</p>';
        return;
    }

    echo "<table>\n<tr>";
    foreach ($columnas as $etiqueta => $campo) {
        echo "<th>" . esc($etiqueta) . "</th>";
    }
    echo "</tr>\n";

    if (mysqli_num_rows($res) === 0) {
        echo '<tr><td colspan="' . count($columnas) . '">Sin datos cargados</td></tr>';
    }

    while ($fila = mysqli_fetch_assoc($res)) {
        echo "<tr>";
        foreach ($columnas as $campo) {
            $valor = $fila[$campo];
            if (in_array($campo, $moneda, true)) {
                $valor = '$' . number_format((float) $valor, 0, ",", ".");
            }
            echo "<td>" . esc($valor) . "</td>";
        }
        echo "</tr>\n";
    }

    echo "</table>\n";
}
