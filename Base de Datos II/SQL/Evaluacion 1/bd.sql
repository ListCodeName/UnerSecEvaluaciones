-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2025 a las 22:27:13
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
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `idCargo` int(11) NOT NULL,
  `nombreCargo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`idCargo`, `nombreCargo`) VALUES
(1, 'Presidente'),
(2, 'Gerente General'),
(3, 'Director de Finanzas'),
(4, 'Director de Marketing'),
(5, 'Jefe de Recursos Humanos'),
(6, 'Contador'),
(7, 'Analista de Sistemas'),
(8, 'Desarrollador Web'),
(9, 'Asistente Administrativo'),
(10, 'Recepcionista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `salarioBruto` decimal(10,2) NOT NULL,
  `salarioNeto` decimal(10,2) NOT NULL,
  `idCargo` int(11) DEFAULT NULL,
  `idEmpresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombre`, `apellido`, `edad`, `salarioBruto`, `salarioNeto`, `idCargo`, `idEmpresa`) VALUES
(1, 'Carlos', 'Perez', 27, 50000.00, 35000.00, 1, 1),
(2, 'Luis', 'Garcia', 34, 50000.00, 35000.00, 1, 2),
(3, 'Ana', 'Lopez', 41, 50000.00, 35000.00, 1, 3),
(4, 'Juan', 'Martinez', 48, 50000.00, 35000.00, 1, 4),
(5, 'Pedro', 'Rodriguez', 55, 50000.00, 35000.00, 1, 5),
(6, 'Maria', 'Sanchez', 62, 40000.00, 28000.00, 2, 1),
(7, 'Jose', 'Hernandez', 24, 40000.00, 28000.00, 2, 2),
(8, 'Carmen', 'Gomez', 31, 40000.00, 28000.00, 2, 3),
(9, 'Alberto', 'Diaz', 38, 40000.00, 28000.00, 2, 4),
(10, 'Julia', 'Martinez', 45, 40000.00, 28000.00, 2, 5),
(11, 'Raul', 'Fernandez', 52, 35000.00, 24500.00, 3, 1),
(12, 'Patricia', 'Vargas', 59, 35000.00, 24500.00, 3, 2),
(13, 'Marta', 'Jimenez', 21, 35000.00, 24500.00, 3, 3),
(14, 'Ricardo', 'Morales', 28, 35000.00, 24500.00, 3, 4),
(15, 'Oscar', 'Perez', 35, 35000.00, 24500.00, 3, 5),
(16, 'Gabriel', 'Ruiz', 42, 30000.00, 21000.00, 4, 1),
(17, 'Sofia', 'Alvarez', 49, 30000.00, 21000.00, 4, 2),
(18, 'Eugenia', 'Rodriguez', 56, 30000.00, 21000.00, 4, 3),
(19, 'Diego', 'Gonzalez', 63, 30000.00, 21000.00, 4, 4),
(20, 'Valeria', 'Martinez', 25, 30000.00, 21000.00, 4, 5),
(21, 'Felipe', 'Castro', 32, 25000.00, 17500.00, 5, 1),
(22, 'Elena', 'Torres', 39, 25000.00, 17500.00, 5, 2),
(23, 'Lucas', 'Flores', 46, 25000.00, 17500.00, 5, 3),
(24, 'David', 'Silva', 53, 25000.00, 17500.00, 5, 4),
(25, 'Paula', 'Mendez', 60, 25000.00, 17500.00, 5, 5),
(26, 'Manuel', 'Rios', 22, 20000.00, 14000.00, 6, 1),
(27, 'Clara', 'Vazquez', 29, 20000.00, 14000.00, 6, 2),
(28, 'Isabel', 'Moreno', 36, 20000.00, 14000.00, 6, 3),
(29, 'Ricardo', 'Cordero', 43, 20000.00, 14000.00, 6, 4),
(30, 'Victor', 'López', 50, 20000.00, 14000.00, 6, 5),
(31, 'Julia', 'Paredes', 57, 18000.00, 12600.00, 7, 1),
(32, 'Guillermo', 'Castillo', 64, 18000.00, 12600.00, 7, 2),
(33, 'Rosa', 'Fernandez', 26, 18000.00, 12600.00, 7, 3),
(34, 'Claudia', 'Martinez', 33, 18000.00, 12600.00, 7, 4),
(35, 'Juan', 'Lopez', 40, 18000.00, 12600.00, 7, 5),
(36, 'Carlos', 'Ruiz', 47, 22000.00, 15400.00, 8, 1),
(37, 'Santiago', 'Mendez', 54, 22000.00, 15400.00, 8, 2),
(38, 'David', 'Jimenez', 61, 22000.00, 15400.00, 8, 3),
(39, 'Carlos', 'Gutierrez', 23, 22000.00, 15400.00, 8, 4),
(40, 'Laura', 'Santos', 30, 22000.00, 15400.00, 8, 5),
(41, 'Oscar', 'Ramirez', 37, 15000.00, 10500.00, 9, 1),
(42, 'Mariana', 'Herrera', 44, 15000.00, 10500.00, 9, 2),
(43, 'Laura', 'Torres', 51, 15000.00, 10500.00, 9, 3),
(44, 'Antonio', 'Castro', 58, 15000.00, 10500.00, 9, 4),
(45, 'Vanessa', 'Martínez', 20, 15000.00, 10500.00, 9, 5),
(46, 'Carlos', 'Mendoza', 27, 50000.00, 35000.00, 1, 6),
(47, 'Susana', 'Vega', 34, 50000.00, 35000.00, 1, 7),
(48, 'Eduardo', 'Romero', 41, 50000.00, 35000.00, 1, 8),
(49, 'Raul', 'Gomez', 54, 50000.00, 35000.00, 1, 9),
(50, 'Patricia', 'Soto', 55, 50000.00, 35000.00, 1, 10),
(51, 'Sergio', 'Fernandez', 62, 40000.00, 28000.00, 2, 6),
(52, 'Gabriela', 'Martínez', 24, 40000.00, 28000.00, 2, 7),
(53, 'Mónica', 'Cabrera', 31, 40000.00, 28000.00, 2, 8),
(54, 'Alfredo', 'Vazquez', 38, 40000.00, 28000.00, 2, 9),
(55, 'Elena', 'López', 45, 40000.00, 28000.00, 2, 10),
(56, 'Victor', 'González', 52, 35000.00, 24500.00, 3, 6),
(57, 'Ana', 'Muñoz', 59, 35000.00, 24500.00, 3, 7),
(58, 'Ricardo', 'Ríos', 21, 35000.00, 24500.00, 3, 8),
(59, 'Cristina', 'Mora', 28, 35000.00, 24500.00, 3, 9),
(60, 'Guillermo', 'Ortiz', 35, 35000.00, 24500.00, 3, 10),
(61, 'Javier', 'Pérez', 42, 30000.00, 21000.00, 4, 6),
(62, 'Fabiola', 'Silva', 49, 30000.00, 21000.00, 4, 7),
(63, 'Bárbara', 'Zúñiga', 56, 30000.00, 21000.00, 4, 8),
(64, 'Ricardo', 'Téllez', 63, 30000.00, 21000.00, 4, 9),
(65, 'Mariana', 'Paredes', 25, 30000.00, 21000.00, 4, 10),
(66, 'Isabel', 'Hernández', 32, 25000.00, 17500.00, 5, 6),
(67, 'José', 'Gutiérrez', 39, 25000.00, 17500.00, 5, 7),
(68, 'Cecilia', 'Morales', 46, 25000.00, 17500.00, 5, 8),
(69, 'Luis', 'Alvarado', 53, 25000.00, 17500.00, 5, 9),
(70, 'Mario', 'Vega', 60, 25000.00, 17500.00, 5, 10),
(71, 'Fernanda', 'Ruiz', 22, 22000.00, 15400.00, 8, 6),
(72, 'Antonio', 'Ramírez', 29, 22000.00, 15400.00, 8, 7),
(73, 'Laura', 'Rivas', 36, 22000.00, 15400.00, 8, 8),
(74, 'Joaquín', 'Romero', 43, 22000.00, 15400.00, 8, 9),
(75, 'Patricia', 'López', 50, 22000.00, 15400.00, 8, 10),
(76, 'Nicolás', 'Fuentes', 57, 18000.00, 12600.00, 9, 6),
(77, 'Silvia', 'Cordero', 64, 18000.00, 12600.00, 9, 7),
(78, 'Felipe', 'Vásquez', 26, 18000.00, 12600.00, 9, 8),
(79, 'Sofía', 'Jiménez', 33, 18000.00, 12600.00, 9, 9),
(80, 'Raúl', 'Luna', 40, 18000.00, 12600.00, 9, 10),
(81, 'Miguel', 'Álvarez', 47, 15000.00, 10500.00, 10, 6),
(82, 'Rocío', 'Sánchez', 54, 15000.00, 10500.00, 10, 7),
(83, 'Claudia', 'Vásquez', 61, 15000.00, 10500.00, 10, 8),
(84, 'Álvaro', 'Torres', 23, 15000.00, 10500.00, 10, 9),
(85, 'Laura', 'Pérez', 30, 15000.00, 10500.00, 10, 10),,
(86, 'Jorge', 'Gomez', 52, 160000.00, 128000.00, 2, 14),
(87, 'Ana', 'Castro', 39, 185000.00, 148000.00, 5, 2),
(88, 'Sofia', 'Lopez', 48, 210000.00, 168000.00, 2, 19),
(89, 'Miguel', 'Silva', 55, 240000.00, 192000.00, 1, 18),
(90, 'Elena', 'Vazquez', 62, 155000.00, 124000.00, 3, 10),
(91, 'Carlos', 'Ortega', 41, 170000.00, 136000.00, 2, 1),
(92, 'Lucia', 'Mendoza', 33, 45000.00, 36000.00, 6, 2),
(93, 'Juan', 'Herrera', 29, 152000.00, 121600.00, 5, 13),
(94, 'Laura', 'Perez', 35, 165000.00, 132000.00, 2, 13),
(95, 'Roberto', 'Gimenez', 46, 158000.00, 126400.00, 2, 8),
(96, 'Marta', 'Benitez', 50, 190000.00, 152000.00, 1, 14),
(97, 'Luis', 'Sosa', 31, 28000.00, 22400.00, 7, 2),
(98, 'Patricia', 'Alvarez', 44, 175000.00, 140000.00, 3, 18),
(99, 'Walter', 'Paredes', 58, 220000.00, 176000.00, 1, 10),
(100, 'Gabriela', 'Torres', 37, 162000.00, 129600.00, 5, 6)
;

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
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`idCargo`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD UNIQUE KEY `Unique_Presidente` (`idCargo`,`idEmpresa`),
  ADD KEY `idEmpresa` (`idEmpresa`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargos` (`idCargo`),
  ADD CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`idEmpresa`) REFERENCES `empresas` (`idEmpresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
