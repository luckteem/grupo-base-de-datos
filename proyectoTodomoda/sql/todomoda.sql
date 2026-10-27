-- Base de datos TODOMODA (16 tablas: usuarios + 15 de categorías)
-- Importar desde phpMyAdmin (pestaña Importar) o desde la consola: mysql -u root < todomoda.sql
--
-- catalogo_general es la tabla "padre": tiene una fila por cada subcatálogo.
-- Cada subcatálogo (biyuteria, accesorios_pelo, etc.) tiene dos claves foráneas:
--   id_catalogo -> catalogo_general(id)
--   id_etiqueta -> etiquetas_caracteristicas(id)
-- El precio y el stock están en cada subcatálogo, no en el catálogo general.

CREATE DATABASE IF NOT EXISTS todomoda CHARACTER SET utf8mb4;
USE todomoda;

-- Primero se borran las tablas hijas y después las tablas padre
DROP TABLE IF EXISTS accesorios;
DROP TABLE IF EXISTS seccion_infantil;
DROP TABLE IF EXISTS carteras_mochilas;
DROP TABLE IF EXISTS biyuteria;
DROP TABLE IF EXISTS accesorios_pelo;
DROP TABLE IF EXISTS cinturones;
DROP TABLE IF EXISTS make_up;
DROP TABLE IF EXISTS fragancia_kbeauty_selfcare;
DROP TABLE IF EXISTS papeleria_libro_giftcard;
DROP TABLE IF EXISTS invierno_botellas_loncheras;
DROP TABLE IF EXISTS peluches_tazas;
DROP TABLE IF EXISTS catalogo_general;
DROP TABLE IF EXISTS etiquetas_caracteristicas;
DROP TABLE IF EXISTS marcas_colaboracion;
DROP TABLE IF EXISTS sugerencias_regalo;
DROP TABLE IF EXISTS usuarios;

-- ---------- Tablas padre ----------

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE catalogo_general (
    id INT AUTO_INCREMENT PRIMARY KEY,
    subcategoria VARCHAR(100),
    archivo VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE etiquetas_caracteristicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hashtag VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE marcas_colaboracion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(100),
    coleccion VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE sugerencias_regalo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    para_quien VARCHAR(100),
    idea VARCHAR(100)
) ENGINE=InnoDB;

-- ---------- Subcatálogos (tablas hijas, todas con FK) ----------

CREATE TABLE accesorios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    tipo VARCHAR(100),
    color VARCHAR(50),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

CREATE TABLE seccion_infantil (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    personaje VARCHAR(100),
    producto VARCHAR(100),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

CREATE TABLE carteras_mochilas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    modelo VARCHAR(100),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

CREATE TABLE biyuteria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    producto VARCHAR(100),
    material VARCHAR(100),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

CREATE TABLE accesorios_pelo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    producto VARCHAR(100),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

CREATE TABLE cinturones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    producto VARCHAR(100),
    talle VARCHAR(10),
    color VARCHAR(50),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

CREATE TABLE make_up (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    producto VARCHAR(100),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

CREATE TABLE fragancia_kbeauty_selfcare (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    categoria VARCHAR(100),
    producto VARCHAR(100),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

CREATE TABLE papeleria_libro_giftcard (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    producto VARCHAR(100),
    uso_tipo VARCHAR(100),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

CREATE TABLE invierno_botellas_loncheras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    producto VARCHAR(100),
    temporada VARCHAR(100),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

CREATE TABLE peluches_tazas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_catalogo INT NOT NULL,
    id_etiqueta INT,
    producto VARCHAR(100),
    personaje VARCHAR(100),
    precio INT,
    stock INT,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo_general(id),
    FOREIGN KEY (id_etiqueta) REFERENCES etiquetas_caracteristicas(id)
) ENGINE=InnoDB;

-- ---------- Datos: tablas padre ----------

-- El id de cada fila es el que usan los subcatálogos en id_catalogo
INSERT INTO catalogo_general (subcategoria, archivo) VALUES
    ('Accesorios', 'accesorios.php'),
    ('Sección Infantil', 'seccion_infantil.php'),
    ('Carteras y Mochilas', 'carteras_mochilas.php'),
    ('Biyutería', 'biyuteria.php'),
    ('Accesorios de Pelo', 'accesorios_pelo.php'),
    ('Cinturones', 'cinturones.php'),
    ('Make Up', 'make_up.php'),
    ('Fragancia, K-Beauty y Self-Care', 'fragancia_kbeauty_selfcare.php'),
    ('Papelería, Libros y Gift Card', 'papeleria_libro_giftcard.php'),
    ('Invierno, Botellas y Loncheras', 'invierno_botellas_loncheras.php'),
    ('Peluches y Tazas', 'peluches_tazas.php');

-- Ids de las etiquetas: 1 #Y2K, 2 #Coquette, 3 #Soft Girl, 4 #Kawaii,
-- 5 #Aesthetic, 6 #Minimalista, 7 #Regalo, 8 #Escuela
INSERT INTO etiquetas_caracteristicas (hashtag) VALUES
    ('#Y2K'),
    ('#Coquette'),
    ('#Soft Girl'),
    ('#Kawaii'),
    ('#Aesthetic'),
    ('#Minimalista'),
    ('#Regalo'),
    ('#Escuela');

INSERT INTO marcas_colaboracion (marca, coleccion) VALUES
    ('Kitty', 'Hello Kitty'),
    ('Disney', 'Princesas'),
    ('Stitch', 'Lilo y Stitch'),
    ('Miffy', 'Miffy Friends'),
    ('Cinnamoroll', 'Sanrio'),
    ('Kuromi', 'Sanrio'),
    ('My Melody', 'Sanrio');

INSERT INTO sugerencias_regalo (para_quien, idea) VALUES
    ('Amiga', 'Kit Make Up'),
    ('Hermana', 'Peluches'),
    ('Mamá', 'Crema de manos'),
    ('Prima', 'Gift Card'),
    ('Mejor amiga', 'Set de anillos');

-- ---------- Datos: subcatálogos (id_catalogo, id_etiqueta, ...) ----------

INSERT INTO accesorios (id_catalogo, id_etiqueta, tipo, color, precio, stock) VALUES
    (1, 5, 'Cinturón', 'Negro', 4500, 12),
    (1, 2, 'Vincha', 'Rosa', 2500, 20),
    (1, 1, 'Lentes de sol', 'Rosa', 6000, 8),
    (1, 6, 'Gorra', 'Beige', 7000, 10),
    (1, 3, 'Pañuelo', 'Blanco', 3000, 15),
    (1, 4, 'Llavero', 'Celeste', 1800, 30),
    (1, 5, 'Paraguas', 'Transparente', 9000, 0);

INSERT INTO seccion_infantil (id_catalogo, id_etiqueta, personaje, producto, precio, stock) VALUES
    (2, 4, 'Stitch', 'Mochila', 18000, 6),
    (2, 4, 'Cinnamoroll', 'Cartuchera', 6500, 14),
    (2, 3, 'Miffy', 'Taza', 5000, 10),
    (2, 4, 'Stitch', 'Cartuchera', 6500, 9),
    (2, 2, 'Hello Kitty', 'Botella', 8500, 12),
    (2, 3, 'My Melody', 'Mochila', 17500, 4),
    (2, 4, 'Kuromi', 'Cuaderno', 4200, 25),
    (2, 8, 'Cinnamoroll', 'Set de stickers', 2200, 0);

INSERT INTO carteras_mochilas (id_catalogo, id_etiqueta, modelo, precio, stock) VALUES
    (3, 6, 'Cartera Tote', 15000, 7),
    (3, 8, 'Mochila Escolar', 22000, 10),
    (3, 5, 'Bandolera Mini', 12000, 9),
    (3, 1, 'Riñonera', 9500, 6),
    (3, 2, 'Cartera Matelassé', 17500, 0),
    (3, 3, 'Mochila Transparente', 19000, 5),
    (3, 5, 'Cartera Baguette', 16000, 8);

INSERT INTO biyuteria (id_catalogo, id_etiqueta, producto, material, precio, stock) VALUES
    (4, 5, 'Aros', 'Acero', 3500, 25),
    (4, 2, 'Collares', 'Perlas', 4800, 15),
    (4, 5, 'Pulsera', 'Acero', 3200, 18),
    (4, 6, 'Anillo', 'Plata', 5500, 10),
    (4, 2, 'Aros', 'Perlas', 3900, 20),
    (4, 1, 'Collar Corazón', 'Acero', 4200, 12),
    (4, 3, 'Tobillera', 'Dorado', 2800, 0),
    (4, 4, 'Set de anillos', 'Plateado', 4600, 16);

INSERT INTO accesorios_pelo (id_catalogo, id_etiqueta, producto, precio, stock) VALUES
    (5, 5, 'Hebillas', 2000, 40),
    (5, 2, 'Vinchas', 2500, 22),
    (5, 4, 'Colitas', 1200, 60),
    (5, 2, 'Scrunchie de seda', 1800, 30),
    (5, 1, 'Pinza mariposa', 2200, 35),
    (5, 3, 'Cinta con lazo', 1500, 28),
    (5, 2, 'Hebilla de perlas', 2600, 0),
    (5, 4, 'Set de broches', 2900, 18);

INSERT INTO cinturones (id_catalogo, id_etiqueta, producto, talle, color, precio, stock) VALUES
    (6, 5, 'Cinturón clásico', 'S', 'Negro', 4500, 10),
    (6, 6, 'Cinturón clásico', 'M', 'Beige', 4500, 12),
    (6, 5, 'Cinturón clásico', 'L', 'Negro', 4800, 8),
    (6, 2, 'Cinturón con moño', 'S', 'Rosa', 5200, 6),
    (6, 1, 'Cinturón cadena', 'M', 'Plateado', 5800, 9),
    (6, 6, 'Cinturón trenzado', 'M', 'Marrón', 5000, 0),
    (6, 3, 'Cinturón fino', 'L', 'Blanco', 4200, 7);

INSERT INTO make_up (id_catalogo, id_etiqueta, producto, precio, stock) VALUES
    (7, 2, 'Labial', 4500, 20),
    (7, 3, 'Rubor', 5000, 14),
    (7, 4, 'Brillo labial', 3200, 25),
    (7, 5, 'Delineador', 3800, 18),
    (7, 1, 'Máscara de pestañas', 4900, 16),
    (7, 3, 'Paleta de sombras', 6500, 9),
    (7, 6, 'Iluminador', 5400, 0),
    (7, 7, 'Kit Make Up', 12000, 5);

INSERT INTO fragancia_kbeauty_selfcare (id_catalogo, id_etiqueta, categoria, producto, precio, stock) VALUES
    (8, 3, 'Fragancia', 'Body Splash', 7500, 15),
    (8, 4, 'K-Beauty', 'Mascarilla', 2800, 40),
    (8, 3, 'Self-Care', 'Crema de manos', 3600, 22),
    (8, 2, 'Fragancia', 'Perfume Vainilla', 14000, 6),
    (8, 4, 'K-Beauty', 'Sérum facial', 9800, 10),
    (8, 3, 'Self-Care', 'Exfoliante labial', 3200, 17),
    (8, 5, 'Fragancia', 'Bruma corporal', 6900, 0),
    (8, 4, 'K-Beauty', 'Parches para ojos', 4500, 24);

INSERT INTO papeleria_libro_giftcard (id_catalogo, id_etiqueta, producto, uso_tipo, precio, stock) VALUES
    (9, 4, 'Libro para colorear', 'Infantil', 4800, 14),
    (9, 8, 'Papelería Kitty', 'Escuela', 3500, 30),
    (9, 7, 'Gift Card', 'Regalo', 10000, 100),
    (9, 8, 'Cuaderno espiralado', 'Escuela', 3900, 26),
    (9, 5, 'Agenda 2027', 'Oficina', 8500, 11),
    (9, 4, 'Set de lapiceras', 'Escuela', 2900, 35),
    (9, 7, 'Gift Card', 'Regalo', 20000, 100),
    (9, 1, 'Stickers holográficos', 'Hobby', 1500, 0);

INSERT INTO invierno_botellas_loncheras (id_catalogo, id_etiqueta, producto, temporada, precio, stock) VALUES
    (10, 6, 'Bufanda', 'Invierno', 8500, 12),
    (10, 6, 'Botella térmica', 'Todo el año', 11000, 16),
    (10, 4, 'Lonchera Stitch', 'Escuela', 13500, 7),
    (10, 2, 'Gorro de lana', 'Invierno', 6200, 10),
    (10, 3, 'Guantes de lana', 'Invierno', 4800, 0),
    (10, 4, 'Botella Hello Kitty', 'Todo el año', 9800, 13),
    (10, 4, 'Lonchera Miffy', 'Escuela', 13500, 5),
    (10, 5, 'Medias térmicas', 'Invierno', 3900, 21);

INSERT INTO peluches_tazas (id_catalogo, id_etiqueta, producto, personaje, precio, stock) VALUES
    (11, 4, 'Peluche', 'Cinnamoroll', 12500, 8),
    (11, 2, 'Taza', 'Hello Kitty', 6800, 15),
    (11, 3, 'Vaso térmico', 'Miffy', 9500, 9),
    (11, 4, 'Peluche', 'Stitch', 14500, 6),
    (11, 4, 'Taza', 'Kuromi', 6800, 0),
    (11, 2, 'Peluche', 'Hello Kitty', 13500, 10),
    (11, 4, 'Taza', 'Stitch', 6800, 12),
    (11, 3, 'Peluche', 'My Melody', 12800, 7);
