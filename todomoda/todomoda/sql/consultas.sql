-- Consultas de ejemplo (las del trabajo práctico). Ejecutar con la base todomoda seleccionada.
USE todomoda;

SELECT * FROM catalogo_general;
SELECT * FROM marcas_colaboracion;
SELECT * FROM seccion_infantil;
SELECT * FROM make_up WHERE precio < 5000;
SELECT * FROM carteras_mochilas WHERE stock > 0;
SELECT * FROM biyuteria WHERE material = 'Acero';
SELECT * FROM etiquetas_caracteristicas ORDER BY hashtag;
SELECT * FROM marcas_colaboracion ORDER BY marca;
SELECT producto, precio FROM make_up ORDER BY precio;
SELECT * FROM seccion_infantil WHERE personaje = 'Stitch';
SELECT * FROM peluches_tazas WHERE personaje = 'Hello Kitty';
SELECT COUNT(*) FROM marcas_colaboracion;
SELECT COUNT(*) FROM seccion_infantil;
SELECT id, nombre, email FROM usuarios;

-- Consultas con las claves foráneas (JOIN)
SELECT c.subcategoria, b.producto, b.precio
FROM biyuteria b
INNER JOIN catalogo_general c ON b.id_catalogo = c.id;

SELECT b.producto, b.precio, e.hashtag
FROM biyuteria b
INNER JOIN etiquetas_caracteristicas e ON b.id_etiqueta = e.id;

SELECT a.producto, a.precio, a.stock
FROM accesorios_pelo a
WHERE a.stock = 0;

SELECT m.producto, m.precio
FROM make_up m
INNER JOIN etiquetas_caracteristicas e ON m.id_etiqueta = e.id
WHERE e.hashtag = '#Coquette';
