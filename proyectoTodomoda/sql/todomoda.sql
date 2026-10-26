-- Base de datos TODOMODA (16 tablas: usuarios + 15 de categorías)
-- Importar desde phpMyAdmin (pestaña Importar) o desde la consola: mysql -u root < todomoda.sql

CREATE DATABASE IF NOT EXISTS todomoda DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE todomoda;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS catalogo_general;
CREATE TABLE catalogo_general (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(100),
    precio INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS accesorios;
CREATE TABLE accesorios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100),
    color VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS etiquetas_caracteristicas;
CREATE TABLE etiquetas_caracteristicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hashtag VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS marcas_colaboracion;
CREATE TABLE marcas_colaboracion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(100),
    coleccion VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS sugerencias_regalo;
CREATE TABLE sugerencias_regalo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    para_quien VARCHAR(100),
    idea VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS seccion_infantil;
CREATE TABLE seccion_infantil (
    id INT AUTO_INCREMENT PRIMARY KEY,
    personaje VARCHAR(100),
    producto VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS carteras_mochilas;
CREATE TABLE carteras_mochilas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100),
    stock VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS biyuteria;
CREATE TABLE biyuteria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(100),
    material VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS accesorios_pelo;
CREATE TABLE accesorios_pelo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS cinturones;
CREATE TABLE cinturones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    talle VARCHAR(10),
    color VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS make_up;
CREATE TABLE make_up (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(100),
    precio INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS fragancia_kbeauty_selfcare;
CREATE TABLE fragancia_kbeauty_selfcare (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(100),
    producto VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS papeleria_libro_giftcard;
CREATE TABLE papeleria_libro_giftcard (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(100),
    uso_tipo VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS invierno_botellas_loncheras;
CREATE TABLE invierno_botellas_loncheras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(100),
    temporada VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS peluches_tazas;
CREATE TABLE peluches_tazas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(100),
    personaje VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO catalogo_general (producto, precio) VALUES
    ('Carteras y Mochilas', 15000),
    ('Biyuteria', 3500),
    ('Accesorios de pelo', 2000);

INSERT INTO accesorios (tipo, color) VALUES
    ('Cinturon', 'Negro'),
    ('Vincha', 'Rosa');

INSERT INTO etiquetas_caracteristicas (hashtag) VALUES
    ('#Y2K'),
    ('#Coquette'),
    ('#Soft Girl');

INSERT INTO marcas_colaboracion (marca, coleccion) VALUES
    ('Kitty', 'Hello Kitty'),
    ('Disney', 'Princesas'),
    ('Stitch', 'Lilo y Stitch'),
    ('Miffy', 'Miffy Friends'),
    ('Cinnamoroll', 'Sanrio');

INSERT INTO sugerencias_regalo (para_quien, idea) VALUES
    ('Amiga', 'Kit Make Up'),
    ('Hermana', 'Peluches');

INSERT INTO seccion_infantil (personaje, producto) VALUES
    ('Stitch', 'Mochila'),
    ('Cinnamoroll', 'Cartuchera'),
    ('Miffy', 'Taza');

INSERT INTO carteras_mochilas (modelo, stock) VALUES
    ('Cartera Tote', 'Si'),
    ('Mochila Escolar', 'Si');

INSERT INTO biyuteria (producto, material) VALUES
    ('Aros', 'Acero'),
    ('Collares', 'Perlas');

INSERT INTO accesorios_pelo (producto) VALUES
    ('Hebillas'),
    ('Vinchas');

INSERT INTO cinturones (talle, color) VALUES
    ('S', 'Negro'),
    ('M', 'Beige');

INSERT INTO make_up (producto, precio) VALUES
    ('Labial', 4500),
    ('Rubor', 5000);

INSERT INTO fragancia_kbeauty_selfcare (categoria, producto) VALUES
    ('Fragancia', 'Body Splash'),
    ('K-Beauty', 'Mascarilla'),
    ('Self-Care', 'Crema de manos');

INSERT INTO papeleria_libro_giftcard (producto, uso_tipo) VALUES
    ('Libro para colorear', 'Infantil'),
    ('Papeleria Kitty', 'Escuela'),
    ('Gift Card', 'Regalo');

INSERT INTO invierno_botellas_loncheras (producto, temporada) VALUES
    ('Bufanda', 'Invierno'),
    ('Botella termica', 'Todo el año'),
    ('Lonchera Stitch', 'Escuela');

INSERT INTO peluches_tazas (producto, personaje) VALUES
    ('Peluche', 'Cinnamoroll'),
    ('Taza', 'Hello Kitty'),
    ('Vaso termico', 'Miffy');
