CREATE DATABASE Todo_Moda;
USE tienda;

CREATE TABLE Categorias (
    id_cate INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Subcategoria (
    id_subcate INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    id_cate INT,
    FOREIGN KEY (id_cate) REFERENCES Categorias(id_cate)
);

CREATE TABLE Marca (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Productos (
    id_productos INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    id_subcate INT,
    id_marca INT,
    id_cate INT,
    
    FOREIGN KEY (id_subcate) REFERENCES Subcategoria(id_subcate),
    FOREIGN KEY (id_marca) REFERENCES Marca(id_marca),
    FOREIGN KEY (id_cate) REFERENCES Categorias(id_cate)
);

CREATE TABLE Colaboraciones (
    id_colaboracion INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    id_producto INT,
    
    FOREIGN KEY (id_producto) REFERENCES Productos(id_productos)
);

CREATE TABLE Caracteristicas (
    id_caracteristica INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    id_producto INT,
    
    FOREIGN KEY (id_producto) REFERENCES Productos(id_productos)
);

CREATE TABLE secciones_infantil (
    id_seccion INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    id_producto INT,
    
    FOREIGN KEY (id_producto) REFERENCES Productos(id_productos)
);

CREATE TABLE stock (
    id_stock INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    cantidad INT NOT NULL,
    
    FOREIGN KEY (id_producto) REFERENCES Productos(id_productos)
);

CREATE TABLE Etiquetas (
    id_etiqueta INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    id_producto INT,
    
    FOREIGN KEY (id_producto) REFERENCES Productos(id_productos)
);

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE medios_pago (
    id_medio_pago INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    id_cliente INT,
    id_medio_pago INT,
    
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_medio_pago) REFERENCES medios_pago(id_medio_pago)
);

CREATE TABLE Detalle_pedido (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_productos)
);

CREATE TABLE Gift_Card (
    id_gift_card INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(50) NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha_vencimiento DATE,
    estado VARCHAR(50)
);

CREATE TABLE Sugerencia_regalo (
    id_sugerencia INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    id_producto INT,
    
    FOREIGN KEY (id_producto) REFERENCES Productos(id_productos)
);

INSERT INTO Categorias (nombre) VALUES
('Ropa'),
('Calzado'),
('Accesorios'),
('Infantil');

INSERT INTO Subcategoria (nombre, id_cate) VALUES
('Remeras', 1),
('Pantalones', 1),
('Zapatillas', 2),
('Bolsos', 3),
('Juguetes', 4);

INSERT INTO Marca (nombre) VALUES
('Nike'),
('Adidas'),
('Puma'),
('Reebok'),
('Vans');

INSERT INTO Productos
(nombre, descripcion, precio, id_subcate, id_marca, id_cate)
VALUES
('Remera deportiva', 'Remera deportiva de algodón', 25000, 1, 1, 1),
('Pantalón deportivo', 'Pantalón deportivo negro', 45000, 2, 2, 1),
('Zapatillas Runner', 'Zapatillas para correr', 85000, 3, 1, 2),
('Bolso deportivo', 'Bolso para gimnasio', 55000, 4, 3, 3),
('Zapatillas infantiles', 'Zapatillas para niños', 60000, 3, 4, 4);


INSERT INTO Colaboraciones (nombre, id_producto) VALUES
('Nike x Jordan', 1),
('Adidas x Marvel', 2),
('Puma x Ferrari', 3);

INSERT INTO Caracteristicas
(nombre, descripcion, id_producto)
VALUES
('Material', 'Algodón', 1),
('Color', 'Negro', 2),
('Material', 'Cuero sintético', 3),
('Capacidad', '30 litros', 4),
('Material', 'Tela', 5);

INSERT INTO secciones_infantil
(nombre, descripcion, id_producto)
VALUES
('Ropa infantil', 'Ropa para niños', 1),
('Calzado infantil', 'Calzado para niños', 5);

INSERT INTO stock (id_producto, cantidad) VALUES
(1, 20),
(2, 15),
(3, 10),
(4, 25),
(5, 8);

INSERT INTO Etiquetas (nombre, id_producto) VALUES
('Deportivo', 1),
('Oferta', 2),
('Nuevo', 3),
('Gimnasio', 4),
('Infantil', 5);

INSERT INTO Clientes
(nombre, apellido, telefono, email)
VALUES
('Juan', 'Perez', '1123456789', 'juan@gmail.com'),
('Sofia', 'Gomez', '1134567890', 'sofia@gmail.com'),
('Lucas', 'Rodriguez', '1145678901', 'lucas@gmail.com'),
('Martina', 'Lopez', '1156789012', 'martina@gmail.com');


INSERT INTO medios_pago (nombre) VALUES
('Tarjeta de crédito'),
('Tarjeta de débito'),
('Mercado Pago'),
('Efectivo');


INSERT INTO Pedidos
(fecha, id_cliente, id_medio_pago)
VALUES
('2026-10-01', 1, 1),
('2026-10-02', 2, 3),
('2026-10-03', 3, 2),
('2026-10-04', 4, 1);

INSERT INTO Detalle_pedido
(id_pedido, id_producto, cantidad, precio)
VALUES
(1, 1, 2, 25000),
(1, 3, 1, 85000),
(2, 2, 1, 45000),
(2, 4, 1, 55000),
(3, 5, 2, 60000),
(4, 3, 1, 85000);

INSERT INTO Gift_Card
(codigo, monto, fecha_vencimiento, estado)
VALUES
('GIFT100', 10000.00, '2026-12-31', 'Disponible'),
('GIFT200', 20000.00, '2027-01-31', 'Disponible'),
('GIFT300', 30000.00, '2026-11-30', 'Usada');


INSERT INTO Sugerencia_regalo
(nombre, descripcion, id_producto)
VALUES
('Para deportistas', 'Ideal para personas que hacen deporte', 1),
('Para corredores', 'Producto recomendado para correr', 3),
('Para niños', 'Regalo ideal para niños', 5);

SELECT * FROM Productos;

SELECT nombre, precio
FROM Productos;

SELECT nombre, precio
FROM Productos
WHERE precio > 50000;

SELECT nombre, precio
FROM Productos
WHERE precio < 50000;

SELECT nombre, precio
FROM Productos
WHERE id_cate = 1;

SELECT nombre, precio
FROM Productos
WHERE precio BETWEEN 40000 AND 80000;

SELECT *
FROM Productos
WHERE id_marca = 1;

SELECT 
    Categorias.nombre AS categoria,
    Subcategoria.nombre AS subcategoria
FROM Categorias
JOIN Subcategoria
ON Categorias.id_cate = Subcategoria.id_cate;

SELECT
    Subcategoria.nombre AS subcategoria,
    Productos.nombre AS producto
FROM Subcategoria
JOIN Productos
ON Subcategoria.id_subcate = Productos.id_subcate;

SELECT
    Categorias.nombre AS categoria,
    Productos.nombre AS producto
FROM Categorias
JOIN Productos
ON Categorias.id_cate = Productos.id_cate;


SELECT
    Productos.nombre AS producto,
    Marca.nombre AS marca
FROM Productos
JOIN Marca
ON Productos.id_marca = Marca.id_marca;

SELECT
    Productos.nombre AS producto,
    stock.cantidad
FROM Productos
JOIN stock
ON Productos.id_productos = stock.id_producto;


SELECT
    Productos.nombre AS producto,
    Caracteristicas.nombre AS caracteristica,
    Caracteristicas.descripcion
FROM Productos
JOIN Caracteristicas
ON Productos.id_productos = Caracteristicas.id_producto;

SELECT
    Productos.nombre AS producto,
    Colaboraciones.nombre AS colaboracion
FROM Productos
JOIN Colaboraciones
ON Productos.id_productos = Colaboraciones.id_producto;

SELECT
    Productos.nombre AS producto,
    secciones_infantil.nombre AS seccion
FROM Productos
JOIN secciones_infantil
ON Productos.id_productos = secciones_infantil.id_producto;

SELECT
    Productos.nombre AS producto,
    Etiquetas.nombre AS etiqueta
FROM Productos
JOIN Etiquetas
ON Productos.id_productos = Etiquetas.id_producto;

SELECT
    Productos.nombre AS producto,
    Detalle_pedido.cantidad,
    Detalle_pedido.precio
FROM Productos
JOIN Detalle_pedido
ON Productos.id_productos = Detalle_pedido.id_producto;

SELECT
    Clientes.nombre,
    Clientes.apellido,
    Pedidos.id_pedido,
    Pedidos.fecha
FROM Clientes
JOIN Pedidos
ON Clientes.id_cliente = Pedidos.id_cliente;

SELECT
    medios_pago.nombre AS medio_pago,
    Pedidos.id_pedido,
    Pedidos.fecha
FROM medios_pago
JOIN Pedidos
ON medios_pago.id_medio_pago = Pedidos.id_medio_pago;

SELECT
    Pedidos.id_pedido,
    Pedidos.fecha,
    Detalle_pedido.id_producto,
    Detalle_pedido.cantidad,
    Detalle_pedido.precio
FROM Pedidos
JOIN Detalle_pedido
ON Pedidos.id_pedido = Detalle_pedido.id_pedido;