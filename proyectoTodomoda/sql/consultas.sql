-- Consultas de ejemplo (las del trabajo práctico). Ejecutar con la base todomoda seleccionada.
USE todomoda;

SELECT * FROM catalogo_general;
SELECT * FROM marcas_colaboracion;
SELECT * FROM seccion_infantil;
SELECT * FROM make_up WHERE precio < 5000;
SELECT * FROM carteras_mochilas WHERE stock = 'Si';
SELECT * FROM biyuteria WHERE material = 'Acero';
SELECT * FROM etiquetas_caracteristicas ORDER BY hashtag;
SELECT * FROM marcas_colaboracion ORDER BY marca;
SELECT producto, precio FROM catalogo_general ORDER BY precio;
SELECT * FROM seccion_infantil WHERE personaje = 'Stitch';
SELECT * FROM peluches_tazas WHERE personaje = 'Hello Kitty';
SELECT COUNT(*) FROM marcas_colaboracion;
SELECT COUNT(*) FROM seccion_infantil;
SELECT id, nombre, email FROM usuarios;
