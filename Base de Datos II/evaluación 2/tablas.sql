-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2024 a las 17:40:16
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
-- Base de datos: `repositorio_proyectos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `idProyecto` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `formato` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`idProyecto`, `titulo`, `descripcion`, `formato`) VALUES
(1, 'Proyecto de Investigación', 'Estudio sobre las nuevas tendencias tecnológicas', '.docx'),
(2, 'Plan de Marketing', 'Desarrollo de estrategia de marketing digital', '.pptx'),
(3, 'Informe Anual', 'Informe sobre el desempeño financiero del año', '.pdf'),
(4, 'Análisis de Mercado', 'Estudio sobre los hábitos de consumo en jóvenes', '.xlsx'),
(5, 'Diseño de Producto', 'Prototipo de un nuevo dispositivo portátil', '.dwg'),
(6, 'Estudio de Viabilidad', 'Evaluación de la viabilidad de un nuevo proyecto', '.docx'),
(7, 'Presentación Corporativa', 'Presentación sobre la visión y misión de la empresa', '.pptx'),
(8, 'Investigación de Mercado', 'Encuesta sobre preferencias de consumidores en línea', '.xls'),
(9, 'Plan de Acción', 'Plan estratégico a corto y mediano plazo', '.docx'),
(10, 'Reporte de Resultados', 'Resumen de los resultados obtenidos en el estudio', '.pdf'),
(11, 'Desarrollo de Software', 'Planificación y desarrollo de software interno', '.cpp'),
(12, 'Investigación Científica', 'Proyecto de investigación en biotecnología', '.docx'),
(13, 'Estrategia de Crecimiento', 'Plan para expandir la presencia en el mercado', '.pptx'),
(14, 'Propuesta de Inversión', 'Propuesta para atraer inversionistas en la startup', '.xls'),
(15, 'Auditoría Interna', 'Informe sobre la auditoría de los procesos internos', '.docx'),
(16, 'Estudio Financiero', 'Análisis de los estados financieros de la empresa', '.xlsx'),
(17, 'Planificación de Recursos', 'Gestión de recursos humanos y materiales', '.xls'),
(18, 'Estudio de Competencia', 'Investigación sobre los competidores directos en el sector', '.pdf'),
(19, 'Revisión de Proyectos', 'Análisis y revisión de proyectos pasados', '.docx'),
(20, 'Propuesta de Diseño', 'Propuesta para el rediseño de la marca de la empresa', '.ai');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_usuarios`
--

CREATE TABLE `proyectos_usuarios` (
  `idProUsu` int(11) NOT NULL,
  `idProyecto` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos_usuarios`
--

INSERT INTO `proyectos_usuarios` (`idProUsu`, `idProyecto`, `idUsuario`, `rol`) VALUES
(1, 1, 1, 'propietario'),
(2, 1, 2, 'colaborador'),
(3, 1, 3, 'colaborador'),
(4, 1, 4, 'lector'),
(5, 2, 5, 'propietario'),
(6, 2, 6, 'colaborador'),
(7, 2, 7, 'lector'),
(8, 3, 8, 'propietario'),
(9, 3, 9, 'colaborador'),
(10, 3, 10, 'lector'),
(11, 4, 11, 'propietario'),
(12, 4, 12, 'colaborador'),
(13, 5, 13, 'propietario'),
(14, 5, 14, 'lector'),
(15, 6, 15, 'propietario'),
(16, 6, 16, 'colaborador'),
(17, 6, 17, 'colaborador'),
(18, 7, 18, 'propietario'),
(19, 7, 19, 'colaborador'),
(20, 8, 20, 'propietario'),
(21, 8, 21, 'lector'),
(22, 9, 22, 'propietario'),
(23, 9, 23, 'colaborador'),
(24, 10, 24, 'propietario'),
(25, 10, 25, 'lector'),
(26, 11, 26, 'propietario'),
(27, 11, 27, 'colaborador'),
(28, 12, 28, 'propietario'),
(29, 12, 29, 'lector');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fechaNac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido`, `fechaNac`) VALUES
(1, 'Juan', 'Pérez', '1990-05-12'),
(2, 'Ana', 'López', '1985-07-20'),
(3, 'Carlos', 'Gómez', '1992-03-15'),
(4, 'María', 'Martínez', '1991-11-30'),
(5, 'Pedro', 'Hernández', '1989-01-18'),
(6, 'Lucía', 'González', '1993-02-25'),
(7, 'Raúl', 'Rodríguez', '1987-08-10'),
(8, 'Clara', 'Fernández', '1990-04-07'),
(9, 'José', 'Sánchez', '1988-09-22'),
(10, 'Elena', 'Ramírez', '1994-12-05'),
(11, 'Andrés', 'Vázquez', '1986-06-14'),
(12, 'Laura', 'Moreno', '1991-02-02'),
(13, 'David', 'Jiménez', '1985-10-17'),
(14, 'Isabel', 'Serrano', '1992-01-25'),
(15, 'Fernando', 'Gil', '1989-12-03'),
(16, 'Sofía', 'Cruz', '1994-05-09'),
(17, 'Ricardo', 'Torres', '1990-11-27'),
(18, 'Verónica', 'Vega', '1987-02-19'),
(19, 'Héctor', 'Ruiz', '1988-10-04'),
(20, 'Teresa', 'Álvarez', '1993-07-13'),
(21, 'Miguel', 'Jiménez', '1989-04-21'),
(22, 'Patricia', 'López', '1994-09-18'),
(23, 'Jesús', 'Ramírez', '1992-08-15'),
(24, 'Marta', 'Sánchez', '1990-01-05'),
(25, 'Ángel', 'Gómez', '1986-12-23'),
(26, 'Beatriz', 'Serrano', '1987-03-11'),
(27, 'Francisco', 'Hernández', '1991-06-02'),
(28, 'Carmen', 'Vázquez', '1993-04-28'),
(29, 'Antonio', 'Torres', '1990-07-22'),
(30, 'Raquel', 'Cruz', '1988-11-10'),
(31, 'Juan Carlos', 'Pérez', '1994-10-30'),
(32, 'Sandra', 'Moreno', '1985-01-14'),
(33, 'Juan Antonio', 'González', '1990-12-01'),
(34, 'Susana', 'Rodríguez', '1989-02-19'),
(35, 'Fernando', 'Ramírez', '1991-05-21'),
(36, 'Carlos', 'Vega', '1987-06-18'),
(37, 'Lidia', 'Sánchez', '1992-04-09'),
(38, 'Manuel', 'Serrano', '1988-01-27'),
(39, 'Nuria', 'López', '1993-09-12'),
(40, 'Javier', 'Álvarez', '1990-06-07'),
(41, 'Gloria', 'Jiménez', '1994-03-13'),
(42, 'Alberto', 'Cruz', '1985-12-11'),
(43, 'Miriam', 'Torres', '1986-09-04'),
(44, 'Felipe', 'Pérez', '1990-08-15'),
(45, 'Alicia', 'Hernández', '1992-10-10'),
(46, 'Juan', 'López', '1987-11-23'),
(47, 'Esteban', 'Vázquez', '1989-07-18'),
(48, 'Patricia', 'Torres', '1991-03-30'),
(49, 'Ricardo', 'Gómez', '1994-06-25'),
(50, 'José Antonio', 'Ramírez', '1988-05-05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`idProyecto`);

--
-- Indices de la tabla `proyectos_usuarios`
--
ALTER TABLE `proyectos_usuarios`
  ADD PRIMARY KEY (`idProUsu`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `idProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `proyectos_usuarios`
--
ALTER TABLE `proyectos_usuarios`
  MODIFY `idProUsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
