-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2026 a las 15:11:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `todomoda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorios`
--

CREATE TABLE `accesorios` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accesorios`
--

INSERT INTO `accesorios` (`id`, `tipo`, `color`) VALUES
(1, 'Cinturon', 'Negro'),
(2, 'Vincha', 'Rosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorios_pelo`
--

CREATE TABLE `accesorios_pelo` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accesorios_pelo`
--

INSERT INTO `accesorios_pelo` (`id`, `producto`) VALUES
(1, 'Hebillas'),
(2, 'Vinchas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biyuteria`
--

CREATE TABLE `biyuteria` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `biyuteria`
--

INSERT INTO `biyuteria` (`id`, `producto`, `material`) VALUES
(1, 'Aros', 'Acero'),
(2, 'Collares', 'Perlas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carteras_mochilas`
--

CREATE TABLE `carteras_mochilas` (
  `id` int(11) NOT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `stock` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carteras_mochilas`
--

INSERT INTO `carteras_mochilas` (`id`, `modelo`, `stock`) VALUES
(1, 'Cartera Tote', 'Si'),
(2, 'Mochila Escolar', 'Si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_general`
--

CREATE TABLE `catalogo_general` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `catalogo_general`
--

INSERT INTO `catalogo_general` (`id`, `producto`, `precio`) VALUES
(1, 'Carteras y Mochilas', 15000),
(2, 'Biyuteria', 3500),
(3, 'Accesorios de pelo', 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinturones`
--

CREATE TABLE `cinturones` (
  `id` int(11) NOT NULL,
  `talle` varchar(10) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cinturones`
--

INSERT INTO `cinturones` (`id`, `talle`, `color`) VALUES
(1, 'S', 'Negro'),
(2, 'M', 'Beige');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiquetas_caracteristicas`
--

CREATE TABLE `etiquetas_caracteristicas` (
  `id` int(11) NOT NULL,
  `hashtag` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `etiquetas_caracteristicas`
--

INSERT INTO `etiquetas_caracteristicas` (`id`, `hashtag`) VALUES
(1, '#Y2K'),
(2, '#Coquette'),
(3, '#Soft Girl');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fragancia_kbeauty_selfcare`
--

CREATE TABLE `fragancia_kbeauty_selfcare` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fragancia_kbeauty_selfcare`
--

INSERT INTO `fragancia_kbeauty_selfcare` (`id`, `categoria`, `producto`) VALUES
(1, 'Fragancia', 'Body Splash'),
(2, 'K-Beauty', 'Mascarilla'),
(3, 'Self-Care', 'Crema de manos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invierno_botellas_loncheras`
--

CREATE TABLE `invierno_botellas_loncheras` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `temporada` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `invierno_botellas_loncheras`
--

INSERT INTO `invierno_botellas_loncheras` (`id`, `producto`, `temporada`) VALUES
(1, 'Bufanda', 'Invierno'),
(2, 'Botella termica', 'Todo el año'),
(3, 'Lonchera Stitch', 'Escuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `make_up`
--

CREATE TABLE `make_up` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `make_up`
--

INSERT INTO `make_up` (`id`, `producto`, `precio`) VALUES
(1, 'Labial', 4500),
(2, 'Rubor', 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas_colaboracion`
--

CREATE TABLE `marcas_colaboracion` (
  `id` int(11) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `coleccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas_colaboracion`
--

INSERT INTO `marcas_colaboracion` (`id`, `marca`, `coleccion`) VALUES
(1, 'Kitty', 'Hello Kitty'),
(2, 'Disney', 'Princesas'),
(3, 'Stitch', 'Lilo y Stitch'),
(4, 'Miffy', 'Miffy Friends'),
(5, 'Cinnamoroll', 'Sanrio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `papeleria_libro_giftcard`
--

CREATE TABLE `papeleria_libro_giftcard` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `uso_tipo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `papeleria_libro_giftcard`
--

INSERT INTO `papeleria_libro_giftcard` (`id`, `producto`, `uso_tipo`) VALUES
(1, 'Libro para colorear', 'Infantil'),
(2, 'Papeleria Kitty', 'Escuela'),
(3, 'Gift Card', 'Regalo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peluches_tazas`
--

CREATE TABLE `peluches_tazas` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `personaje` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peluches_tazas`
--

INSERT INTO `peluches_tazas` (`id`, `producto`, `personaje`) VALUES
(1, 'Peluche', 'Cinnamoroll'),
(2, 'Taza', 'Hello Kitty'),
(3, 'Vaso termico', 'Miffy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion_infantil`
--

CREATE TABLE `seccion_infantil` (
  `id` int(11) NOT NULL,
  `personaje` varchar(100) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seccion_infantil`
--

INSERT INTO `seccion_infantil` (`id`, `personaje`, `producto`) VALUES
(1, 'Stitch', 'Mochila'),
(2, 'Cinnamoroll', 'Cartuchera'),
(3, 'Miffy', 'Taza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias_regalo`
--

CREATE TABLE `sugerencias_regalo` (
  `id` int(11) NOT NULL,
  `para_quien` varchar(100) DEFAULT NULL,
  `idea` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sugerencias_regalo`
--

INSERT INTO `sugerencias_regalo` (`id`, `para_quien`, `idea`) VALUES
(1, 'Amiga', 'Kit Make Up'),
(2, 'Hermana', 'Peluches');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `accesorios_pelo`
--
ALTER TABLE `accesorios_pelo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `biyuteria`
--
ALTER TABLE `biyuteria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carteras_mochilas`
--
ALTER TABLE `carteras_mochilas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogo_general`
--
ALTER TABLE `catalogo_general`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cinturones`
--
ALTER TABLE `cinturones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `etiquetas_caracteristicas`
--
ALTER TABLE `etiquetas_caracteristicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fragancia_kbeauty_selfcare`
--
ALTER TABLE `fragancia_kbeauty_selfcare`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invierno_botellas_loncheras`
--
ALTER TABLE `invierno_botellas_loncheras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `make_up`
--
ALTER TABLE `make_up`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas_colaboracion`
--
ALTER TABLE `marcas_colaboracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `papeleria_libro_giftcard`
--
ALTER TABLE `papeleria_libro_giftcard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peluches_tazas`
--
ALTER TABLE `peluches_tazas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccion_infantil`
--
ALTER TABLE `seccion_infantil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sugerencias_regalo`
--
ALTER TABLE `sugerencias_regalo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `accesorios_pelo`
--
ALTER TABLE `accesorios_pelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `biyuteria`
--
ALTER TABLE `biyuteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `carteras_mochilas`
--
ALTER TABLE `carteras_mochilas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `catalogo_general`
--
ALTER TABLE `catalogo_general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cinturones`
--
ALTER TABLE `cinturones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `etiquetas_caracteristicas`
--
ALTER TABLE `etiquetas_caracteristicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fragancia_kbeauty_selfcare`
--
ALTER TABLE `fragancia_kbeauty_selfcare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `invierno_botellas_loncheras`
--
ALTER TABLE `invierno_botellas_loncheras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `make_up`
--
ALTER TABLE `make_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marcas_colaboracion`
--
ALTER TABLE `marcas_colaboracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `papeleria_libro_giftcard`
--
ALTER TABLE `papeleria_libro_giftcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `peluches_tazas`
--
ALTER TABLE `peluches_tazas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `seccion_infantil`
--
ALTER TABLE `seccion_infantil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sugerencias_regalo`
--
ALTER TABLE `sugerencias_regalo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
