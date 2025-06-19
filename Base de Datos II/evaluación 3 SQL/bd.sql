-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2025 a las 03:22:18
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
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `idEmpresa` int(11) NOT NULL,
  `nombreEmpresa` varchar(100) NOT NULL,
  `anioFundacion` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`idEmpresa`, `nombreEmpresa`, `anioFundacion`, `tipo`) VALUES
(1, 'Comercializadora ABC', 1985, 'SRL'),
(2, 'Industria Textil S.A.', 1970, 'SA'),
(3, 'Grupo Alimentario El Buen Sabor', 1990, 'SRL'),
(4, 'Tecnología Innovadora', 2005, 'PyMe'),
(5, 'Soluciones Energéticas', 2010, 'Unitario'),
(6, 'Muebles Modernos', 1963, 'SA'),
(7, 'Fabrica de Calzado El Pasillo', 1980, 'SRL'),
(8, 'Inmobiliaria Global', 1998, 'SA'),
(9, 'Supermercados Juanita', 1975, 'PyMe'),
(10, 'Electrodomésticos del Futuro', 1995, 'SA'),
(11, 'Distribuidora La Perla', 1960, 'PyMe'),
(12, 'Comercio Online Global', 2015, 'Unitario'),
(13, 'Servicios Financieros Integrados', 1988, 'SRL'),
(14, 'Fábrica de Maquinaria Pesada', 1978, 'SA'),
(15, 'Red de Cafeterías 24h', 2000, 'PyMe'),
(16, 'Consultora de Marketing', 2012, 'Unitario'),
(17, 'Agroindustria del Sur', 1967, 'SA'),
(18, 'Tecnología Automotriz S.A.', 2008, 'SA'),
(19, 'Editorial Planeta', 1992, 'SRL'),
(20, 'Energía Verde Ltda.', 2020, 'Unitario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`idEmpresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
