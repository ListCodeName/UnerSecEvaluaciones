-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2024 a las 21:59:35
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreriapanambi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `origen` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `descuento` int(11) NOT NULL,
  `icono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombre`, `descripcion`, `origen`, `precio`, `descuento`, `icono`) VALUES
(1, 'Lapiz', 'Lapiz de madera de alta calidad', 'México', 1500, 0, 'icon-pencil'),
(2, 'Cuadernos', 'Cuaderno tamaño carta con 100 hojas', 'Colombia', 5000, 10, 'icon-book'),
(3, 'Pelota de fútbol', 'Pelota de fútbol para uso recreativo', 'Brasil', 25000, 5, 'icon-dice'),
(4, 'Peluche', 'Peluche de oso tamaño mediano', 'China', 12000, 15, 'icon-twitter'),
(5, 'Juguete de madera', 'Juguete de construcción de madera', 'Ecuador', 4500, 20, 'icon-dice'),
(6, 'Aguja de coser', 'Aguja de acero inoxidable', 'India', 1200, 0, 'icon-pencil'),
(7, 'Estuche de lápices', 'Estuche con 10 lápices de colores', 'México', 2000, 5, 'icon-pencil'),
(8, 'Cuaderno de dibujo', 'Cuaderno con hojas blancas para dibujo artístico', 'España', 8000, 0, 'icon-book'),
(9, 'Mochila', 'Mochila escolar de tela resistente', 'China', 15000, 10, 'icon-briefcase'),
(10, 'Puzzles', 'Rompecabezas de 500 piezas', 'Estados Unidos', 35000, 20, 'icon-dice'),
(11, 'Caja de lápices', 'Caja con 12 lápices de grafito', 'México', 2500, 0, 'icon-pencil'),
(12, 'Regla', 'Regla de plástico transparente de 30 cm', 'China', 1500, 5, 'icon-pencil'),
(13, 'Tijeras', 'Tijeras escolares para niños', 'Brasil', 3500, 10, 'icon-pencil'),
(14, 'Colores', 'Paquete de 24 colores para pintar', 'Argentina', 4000, 15, 'icon-pencil'),
(15, 'Goma de borrar', 'Goma de borrar de alta calidad', 'México', 1000, 0, 'icon-pencil'),
(16, 'Agenda escolar', 'Agenda para estudiantes con calendario', 'España', 8000, 10, 'icon-book'),
(17, 'Dado', 'Dado de plástico para juegos', 'China', 3000, 20, 'icon-dice'),
(18, 'Baraja de cartas', 'Baraja estándar de 52 cartas', 'Estados Unidos', 2000, 0, 'icon-dice'),
(19, 'Set de pinturas', 'Set de 12 pinturas acrílicas para arte', 'Francia', 12000, 5, 'icon-pencil'),
(20, 'Cuaderno de notas', 'Cuaderno tamaño A5 con tapas duras', 'Colombia', 6000, 10, 'icon-book'),
(21, 'Mochila escolar', 'Mochila con diseño de personajes para niños', 'China', 25000, 15, 'icon-briefcase'),
(22, 'Lápices de colores', 'Paquete de 10 lápices de colores', 'México', 3500, 0, 'icon-pencil'),
(23, 'Cinta adhesiva', 'Cinta adhesiva para manualidades', 'India', 1200, 0, 'icon-pencil'),
(24, 'Bloc de notas', 'Bloc de notas con 100 hojas', 'Argentina', 4000, 5, 'icon-book'),
(25, 'Cuaderno universitario', 'Cuaderno con espiral para universitarios', 'Chile', 8000, 0, 'icon-book'),
(26, 'Mochila infantil', 'Mochila infantil con diseño divertido', 'México', 15000, 20, 'icon-briefcase'),
(27, 'Marcadores', 'Marcadores permanentes de colores', 'Brasil', 5000, 15, 'icon-pencil'),
(28, 'Papel kraft', 'Papel kraft para manualidades', 'Colombia', 3000, 5, 'icon-pencil'),
(29, 'Pinceles', 'Set de pinceles para pintura', 'China', 5500, 10, 'icon-pencil'),
(30, 'Compás', 'Compás de metal para dibujar círculos', 'India', 2000, 0, 'icon-pencil'),
(31, 'Papel de construcción', 'Papel de colores para manualidades', 'México', 2500, 10, 'icon-pencil'),
(32, 'Reloj de juguete', 'Reloj de juguete para niños', 'Japón', 18000, 15, 'icon-dice'),
(33, 'Peluche de unicornio', 'Peluche de unicornio suave y grande', 'China', 22000, 20, 'icon-twitter'),
(34, 'Lentes de sol', 'Lentes de sol para niños', 'Italia', 8000, 0, 'icon-dice'),
(35, 'Tetraedro', 'Juguete educativo de geometría', 'Alemania', 15000, 5, 'icon-dice'),
(36, 'Estuche escolar', 'Estuche con varios compartimientos', 'México', 4500, 10, 'icon-briefcase'),
(37, 'Súper peluche', 'Peluche de dinosaurio tamaño gigante', 'China', 30000, 20, 'icon-twitter'),
(38, 'Libreta', 'Libreta pequeña con espiral', 'Argentina', 3000, 0, 'icon-book'),
(39, 'Pincel redondo', 'Pincel redondo para acuarelas', 'Francia', 2000, 10, 'icon-pencil'),
(40, 'Set de plastilina', 'Set de 8 colores de plastilina', 'México', 3000, 0, 'icon-pencil'),
(41, 'Cinta métrica', 'Cinta métrica de 3 metros', 'Estados Unidos', 1500, 5, 'icon-pencil'),
(42, 'Lámpara LED', 'Lámpara LED para escritorio', 'China', 12000, 0, 'icon-dice'),
(43, 'Caja registradora', 'Caja registradora de juguete para niños', 'Italia', 20000, 15, 'icon-dice'),
(44, 'Juego de mesa', 'Juego de mesa familiar de estrategia', 'Alemania', 35000, 10, 'icon-dice'),
(45, 'Peluche de perro', 'Peluche suave de perro', 'India', 12000, 5, 'icon-twitter'),
(46, 'Librero', 'Librero de madera para libros pequeños', 'México', 25000, 0, 'icon-book'),
(47, 'Reloj de pared', 'Reloj de pared con diseño moderno', 'España', 8000, 20, 'icon-dice'),
(48, 'Juguete de plástico', 'Juguete de plástico para niños pequeños', 'China', 5000, 10, 'icon-dice'),
(49, 'Set de lápices de colores', 'Set con 36 lápices de colores', 'Ecuador', 12000, 15, 'icon-pencil'),
(50, 'Tablero de ajedrez', 'Tablero de ajedrez de madera', 'Rusia', 25000, 5, 'icon-dice'),
(51, 'Regla de metal', 'Regla de metal de 30 cm', 'México', 1800, 0, 'icon-pencil'),
(52, 'Papel fotográfico', 'Papel fotográfico de alta calidad', 'Japón', 5000, 5, 'icon-book'),
(53, 'Espejo de mano', 'Espejo compacto de mano', 'España', 2500, 0, 'icon-dice'),
(54, 'Papel de regalo', 'Papel de regalo con diseño de navidad', 'Colombia', 3000, 10, 'icon-book'),
(55, 'Tetraedro educativo', 'Juguete educativo en forma de tetraedro', 'Brasil', 4500, 15, 'icon-dice'),
(56, 'Set de marcos', 'Set de marcos para fotos', 'Italia', 7000, 10, 'icon-dice'),
(57, 'Cuaderno escolar', 'Cuaderno de 200 hojas para estudiantes', 'Chile', 12000, 5, 'icon-book'),
(58, 'Caja de herramientas', 'Caja de herramientas de juguete para niños', 'China', 18000, 15, 'icon-briefcase'),
(59, 'Juguete de madera', 'Juguete didáctico de madera para niños', 'México', 3000, 0, 'icon-dice'),
(60, 'Set de pinceles', 'Set de pinceles de diferentes tamaños', 'España', 3500, 10, 'icon-pencil');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
