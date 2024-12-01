-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2024 a las 14:03:46
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
-- Base de datos: `deportivoasturia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `local` varchar(50) NOT NULL,
  `visitante` varchar(50) NOT NULL,
  `cancha` varchar(50) NOT NULL,
  `idPartido` int(11) NOT NULL,
  `resultado` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`local`, `visitante`, `cancha`, `idPartido`, `resultado`, `fecha`) VALUES
('Tiburones Rápidos', 'Águilas Doradas', 'Estadio Marítimo', 1, '2-1', '2024-01-15'),
('Leones Salvajes', 'Pumas Negros', 'Arena del Bosque', 2, '1-1', '2024-02-10'),
('Fénix de Fuego', 'Cóndores Blancos', 'Coliseo del Sol', 3, '3-2', '2024-03-05'),
('Dragones Verdes', 'Tigres Azules', 'Fortaleza del Dragón', 4, '0-0', '2024-04-12'),
('Vikingos del Norte', 'Espartanos Rojos', 'Campo de la Gloria', 5, '1-3', '2024-05-20'),
('Toros Bravos', 'Hienas Grises', 'Estadio Central', 6, '4-1', '2024-06-15'),
('Águilas Plateadas', 'Cuervos Oscuros', 'Arena del Alba', 7, '2-2', '2024-07-18'),
('Cóndores Rojos', 'Lobos Blancos', 'Estadio Montañoso', 8, '0-1', '2024-08-10'),
('Tiburones Azules', 'Halcones Dorados', 'Coliseo Marino', 9, '3-0', '2024-09-05'),
('Leones Negros', 'Serpientes Doradas', 'Fortaleza León', 10, '2-4', '2024-10-23'),
('Dragones del Este', 'Panteras Grises', 'Estadio del Dragón', 11, '1-0', '2024-11-14'),
('Tigres Dorados', 'Hienas Verdes', 'Campo Tigre', 12, '2-2', '2024-12-01'),
('Águilas Negras', 'Pumas Plateados', 'Arena del Norte', 13, '0-2', '2024-12-15'),
('Toros Dorados', 'Cóndores Negros', 'Estadio Llanura', 14, '1-3', '2025-01-05'),
('Fénix del Norte', 'Cuervos Plateados', 'Coliseo del Norte', 15, '4-4', '2025-01-20'),
('Leones Rojos', 'Halcones Negros', 'Arena Solar', 16, '3-1', '2025-02-05'),
('Tiburones Grises', 'Espartanos Dorados', 'Fortaleza Marina', 17, '0-3', '2025-02-18'),
('Vikingos Salvajes', 'Dragones Dorados', 'Estadio Valhalla', 18, '5-2', '2025-03-03'),
('Toros Azules', 'Pumas Dorados', 'Campo del Trueno', 19, '2-0', '2025-03-20'),
('Águilas Rojas', 'Tigres Salvajes', 'Arena de los Vientos', 20, '1-1', '2025-04-02'),
('Leones Plateados', 'Lobos Negros', 'Estadio León', 21, '3-2', '2025-04-18'),
('Dragones Blancos', 'Hienas Doradas', 'Fortaleza Celestial', 22, '2-1', '2025-05-05'),
('Tiburones Rojos', 'Serpientes Plateadas', 'Coliseo del Océano', 23, '0-0', '2025-05-23'),
('Vikingos Dorados', 'Panteras Plateadas', 'Estadio del Norte', 24, '4-3', '2025-06-10'),
('Águilas Azules', 'Cuervos Grises', 'Arena de los Cielos', 25, '1-1', '2025-06-28'),
('Fénix Salvaje', 'Cóndores Plateados', 'Coliseo del Sol', 26, '2-0', '2025-07-14'),
('Leones Azules', 'Tigres Negros', 'Estadio del Reino', 27, '0-2', '2025-07-30'),
('Dragones Negros', 'Hienas Plateadas', 'Fortaleza Oscura', 28, '3-0', '2025-08-12'),
('Tiburones Blancos', 'Pumas Rojos', 'Estadio Marino', 29, '1-1', '2025-08-30'),
('Toros Negros', 'Halcones Plateados', 'Campo del Sol', 30, '4-1', '2025-09-15'),
('Águilas Verdes', 'Serpientes Negras', 'Arena del Bosque', 31, '0-2', '2025-09-27'),
('Vikingos Negros', 'Cuervos Rojos', 'Estadio Valhalla', 32, '2-2', '2025-10-10'),
('Fénix Plateado', 'Panteras Azules', 'Coliseo del Alba', 33, '3-1', '2025-10-22'),
('Dragones Plateados', 'Lobos Azules', 'Fortaleza Brillante', 34, '0-1', '2025-11-05'),
('Tiburones Verdes', 'Hienas Rojas', 'Coliseo Marino', 35, '1-4', '2025-11-19'),
('Leones Dorados', 'Pumas Negros', 'Estadio León', 36, '5-3', '2025-12-05'),
('Águilas Doradas', 'Halcones Blancos', 'Arena del Alba', 37, '3-2', '2025-12-22'),
('Vikingos Blancos', 'Tigres Verdes', 'Campo del Norte', 38, '0-3', '2026-01-10'),
('Toros Plateados', 'Espartanos Negros', 'Estadio Central', 39, '1-1', '2026-01-27'),
('Fénix Dorado', 'Cóndores Azules', 'Coliseo Solar', 40, '4-2', '2026-02-14'),
('Leones Blancos', 'Cuervos Azules', 'Estadio del Alba', 41, '2-3', '2026-03-01'),
('Dragones Azules', 'Lobos Dorados', 'Fortaleza del Dragón', 42, '1-0', '2026-03-19'),
('Tiburones Rojos', 'Hienas Negras', 'Coliseo Marino', 43, '2-2', '2026-04-07'),
('Vikingos Azules', 'Pumas Blancos', 'Estadio del Norte', 44, '0-1', '2026-04-24'),
('Águilas Plateadas', 'Panteras Rojas', 'Arena Celestial', 45, '3-3', '2026-05-12'),
('Toros Rojos', 'Tigres Plateados', 'Campo del Fuego', 46, '2-0', '2026-05-28'),
('Leones Verdes', 'Serpientes Doradas', 'Estadio del Bosque', 47, '1-4', '2026-06-15'),
('Dragones Dorados', 'Halcones Grises', 'Fortaleza Real', 48, '3-1', '2026-07-02'),
('Fénix Negro', 'Lobos Negros', 'Coliseo del Alba', 49, '0-0', '2026-07-21'),
('Tiburones Negros', 'Pumas Verdes', 'Estadio del Océano', 50, '4-2', '2026-08-05'),
('Águilas Doradas', 'Tiburones Rápidos', 'Arena del Alba', 51, '1-0', '2024-02-20'),
('Pumas Negros', 'Leones Salvajes', 'Campo del Trueno', 52, '2-2', '2024-03-15'),
('Cóndores Blancos', 'Fénix de Fuego', 'Estadio Montañoso', 53, '1-3', '2024-04-08'),
('Tigres Azules', 'Dragones Verdes', 'Campo Tigre', 54, '2-1', '2024-05-01'),
('Espartanos Rojos', 'Vikingos del Norte', 'Coliseo del Sol', 55, '3-0', '2024-06-10'),
('Hienas Grises', 'Toros Bravos', 'Fortaleza Oscura', 56, '1-4', '2024-07-05'),
('Cuervos Oscuros', 'Águilas Plateadas', 'Estadio Valhalla', 57, '0-1', '2024-08-02'),
('Lobos Blancos', 'Cóndores Rojos', 'Estadio León', 58, '2-2', '2024-09-18'),
('Halcones Dorados', 'Tiburones Azules', 'Arena Celestial', 59, '1-3', '2024-10-08'),
('Serpientes Doradas', 'Leones Negros', 'Coliseo del Alba', 60, '0-0', '2024-11-12'),
('Panteras Grises', 'Dragones del Este', 'Fortaleza Celestial', 61, '1-1', '2024-12-05'),
('Hienas Verdes', 'Tigres Dorados', 'Fortaleza Oscura', 62, '2-3', '2025-01-08'),
('Pumas Plateados', 'Águilas Negras', 'Campo del Norte', 63, '1-0', '2025-02-01'),
('Cóndores Negros', 'Toros Dorados', 'Coliseo Marino', 64, '0-1', '2025-03-10'),
('Cuervos Plateados', 'Fénix del Norte', 'Estadio Llanura', 65, '1-1', '2025-04-05'),
('Halcones Negros', 'Leones Rojos', 'Campo del Fuego', 66, '3-2', '2025-05-12'),
('Espartanos Dorados', 'Tiburones Grises', 'Coliseo del Norte', 67, '2-0', '2025-06-01'),
('Dragones Dorados', 'Vikingos Salvajes', 'Fortaleza Real', 68, '0-4', '2025-07-20'),
('Pumas Dorados', 'Toros Azules', 'Campo Tigre', 69, '1-1', '2025-08-10'),
('Tigres Salvajes', 'Águilas Rojas', 'Campo del Trueno', 70, '2-2', '2025-09-08'),
('Lobos Negros', 'Leones Plateados', 'Estadio Montañoso', 71, '3-1', '2025-10-05'),
('Hienas Doradas', 'Dragones Blancos', 'Fortaleza Oscura', 72, '1-0', '2025-11-01'),
('Serpientes Plateadas', 'Tiburones Rojos', 'Arena del Bosque', 73, '2-1', '2025-11-25'),
('Panteras Plateadas', 'Vikingos Dorados', 'Arena de los Cielos', 74, '4-4', '2025-12-12'),
('Cuervos Grises', 'Águilas Azules', 'Estadio Valhalla', 75, '0-2', '2026-01-10'),
('Cóndores Plateados', 'Fénix Salvaje', 'Campo del Norte', 76, '3-2', '2026-02-05'),
('Tigres Negros', 'Leones Azules', 'Campo Tigre', 77, '0-0', '2026-03-02'),
('Hienas Plateadas', 'Dragones Negros', 'Arena del Alba', 78, '1-3', '2026-04-01'),
('Pumas Rojos', 'Tiburones Blancos', 'Coliseo del Sol', 79, '0-1', '2026-04-18'),
('Halcones Plateados', 'Toros Negros', 'Arena de los Vientos', 80, '2-4', '2026-05-07'),
('Serpientes Negras', 'Águilas Verdes', 'Estadio Central', 81, '1-0', '2026-05-20'),
('Cuervos Rojos', 'Vikingos Negros', 'Coliseo Marino', 82, '2-1', '2026-06-15'),
('Panteras Azules', 'Fénix Plateado', 'Estadio del Bosque', 83, '3-3', '2026-07-05'),
('Lobos Azules', 'Dragones Plateados', 'Estadio Montañoso', 84, '1-0', '2026-07-20'),
('Hienas Rojas', 'Tiburones Verdes', 'Fortaleza Oscura', 85, '2-2', '2026-08-02'),
('Pumas Negros', 'Leones Dorados', 'Campo del Norte', 86, '1-5', '2026-08-17'),
('Halcones Blancos', 'Águilas Doradas', 'Arena Celestial', 87, '0-1', '2026-09-03'),
('Tigres Verdes', 'Vikingos Blancos', 'Campo del Trueno', 88, '2-0', '2026-09-20'),
('Espartanos Negros', 'Toros Plateados', 'Estadio Llanura', 89, '3-3', '2026-10-08'),
('Cóndores Azules', 'Fénix Dorado', 'Coliseo Marino', 90, '1-4', '2026-10-22'),
('Cuervos Azules', 'Leones Blancos', 'Estadio Valhalla', 91, '2-2', '2026-11-07'),
('Lobos Dorados', 'Dragones Azules', 'Estadio León', 92, '0-1', '2026-11-22'),
('Hienas Negras', 'Tiburones Rojos', 'Arena del Bosque', 93, '3-0', '2026-12-02'),
('Pumas Blancos', 'Vikingos Azules', 'Coliseo del Alba', 94, '2-1', '2026-12-18'),
('Panteras Rojas', 'Águilas Plateadas', 'Arena de los Vientos', 95, '0-0', '2027-01-05'),
('Tigres Plateados', 'Toros Rojos', 'Campo Tigre', 96, '1-3', '2027-01-25'),
('Serpientes Doradas', 'Leones Verdes', 'Coliseo del Alba', 97, '4-1', '2027-02-10'),
('Halcones Grises', 'Dragones Dorados', 'Arena Celestial', 98, '0-0', '2027-03-05'),
('Lobos Negros', 'Fénix Negro', 'Fortaleza del Dragón', 99, '3-2', '2027-03-25'),
('Pumas Verdes', 'Tiburones Negros', 'Estadio del Bosque', 100, '1-4', '2027-04-10'),
('Águilas Doradas', 'Tiburones Rápidos', 'Arena del Alba', 101, '10-2', '2027-05-10'),
('Pumas Negros', 'Leones Salvajes', 'Campo del Trueno', 102, '3-10', '2027-05-15'),
('Fénix de Fuego', 'Cóndores Blancos', 'Estadio Montañoso', 103, '10-1', '2027-05-20'),
('Dragones Verdes', 'Tigres Azules', 'Fortaleza del Dragón', 104, '5-10', '2027-05-25'),
('Espartanos Rojos', 'Vikingos del Norte', 'Coliseo del Sol', 105, '10-0', '2027-06-01'),
('Toros Bravos', 'Hienas Grises', 'Estadio Central', 106, '10-9', '2027-06-05'),
('Cuervos Oscuros', 'Águilas Plateadas', 'Estadio Valhalla', 107, '2-10', '2027-06-10'),
('Lobos Blancos', 'Cóndores Rojos', 'Estadio León', 108, '10-4', '2027-06-15'),
('Halcones Dorados', 'Tiburones Azules', 'Arena Celestial', 109, '0-10', '2027-06-20'),
('Serpientes Doradas', 'Leones Negros', 'Coliseo del Alba', 110, '10-6', '2027-06-25'),
('Panteras Grises', 'Dragones del Este', 'Fortaleza del Bosque', 111, '8-10', '2027-07-01'),
('Hienas Verdes', 'Tigres Dorados', 'Fortaleza Oscura', 112, '10-3', '2027-07-05'),
('Pumas Plateados', 'Águilas Negras', 'Campo del Norte', 113, '10-7', '2027-07-10'),
('Cóndores Negros', 'Toros Dorados', 'Coliseo Marino', 114, '1-10', '2027-07-15'),
('Cuervos Plateados', 'Fénix del Norte', 'Estadio Llanura', 115, '10-5', '2027-07-20'),
('Halcones Negros', 'Leones Rojos', 'Campo del Fuego', 116, '10-10', '2027-07-25'),
('Espartanos Dorados', 'Tiburones Grises', 'Coliseo del Norte', 117, '2-10', '2027-08-01'),
('Dragones Dorados', 'Vikingos Salvajes', 'Fortaleza Real', 118, '10-2', '2027-08-05'),
('Pumas Dorados', 'Toros Azules', 'Campo Tigre', 119, '10-8', '2027-08-10'),
('Tigres Salvajes', 'Águilas Rojas', 'Campo del Trueno', 120, '6-10', '2027-08-15'),
('Lobos Negros', 'Leones Plateados', 'Estadio Montañoso', 121, '10-0', '2027-08-20'),
('Hienas Doradas', 'Dragones Blancos', 'Fortaleza Oscura', 122, '7-10', '2027-08-25'),
('Serpientes Plateadas', 'Tiburones Rojos', 'Arena del Bosque', 123, '10-4', '2027-09-01'),
('Vikingos Dorados', 'Panteras Plateadas', 'Arena de los Cielos', 124, '10-10', '2027-09-05'),
('Dragones Plateados', 'Lobos Azules', 'Estadio del Dragón', 125, '10-1', '2027-09-10'),
('Hienas Rojas', 'Tiburones Verdes', 'Fortaleza Oscura', 126, '10-6', '2027-09-15'),
('Leones Dorados', 'Pumas Negros', 'Estadio León', 127, '10-0', '2027-09-20'),
('Águilas Azules', 'Cuervos Grises', 'Arena Celestial', 128, '2-10', '2027-09-25'),
('Vikingos Blancos', 'Tigres Verdes', 'Estadio Valhalla', 129, '10-9', '2027-10-01'),
('Toros Plateados', 'Espartanos Negros', 'Coliseo Marino', 130, '0-10', '2027-10-05'),
('Fénix Dorado', 'Cóndores Azules', 'Estadio del Sol', 131, '10-7', '2027-10-10'),
('Leones Blancos', 'Cuervos Azules', 'Estadio Central', 132, '1-10', '2027-10-15'),
('Dragones Azules', 'Lobos Dorados', 'Campo del Norte', 133, '10-2', '2027-10-20'),
('Tiburones Negros', 'Pumas Verdes', 'Estadio Marítimo', 134, '10-4', '2027-10-25'),
('Tiburones Rápidos', 'Águilas Doradas', 'Estadio Marítimo', 135, '0-100', '2027-11-01'),
('Águilas Doradas', 'Tiburones Rápidos', 'Arena del Alba', 136, '100-0', '2027-11-05'),
('Leones Salvajes', 'Pumas Negros', 'Arena del Bosque', 137, '10-3', '2027-11-10'),
('Cóndores Blancos', 'Fénix de Fuego', 'Estadio Montañoso', 138, '4-10', '2027-11-15'),
('Tigres Azules', 'Dragones Verdes', 'Campo Tigre', 139, '7-10', '2027-11-20'),
('Vikingos del Norte', 'Espartanos Rojos', 'Campo de la Gloria', 140, '10-0', '2027-11-25'),
('Hienas Grises', 'Toros Bravos', 'Fortaleza Oscura', 141, '2-10', '2027-11-30'),
('Águilas Plateadas', 'Cuervos Oscuros', 'Arena del Alba', 142, '10-10', '2027-12-01'),
('Leones Negros', 'Serpientes Doradas', 'Estadio León', 143, '10-1', '2027-12-05'),
('Panteras Grises', 'Dragones del Este', 'Fortaleza del Bosque', 144, '10-5', '2027-12-10'),
('Tigres Dorados', 'Hienas Verdes', 'Campo Tigre', 145, '10-2', '2027-12-15'),
('Águilas Negras', 'Pumas Plateados', 'Arena del Norte', 146, '3-10', '2027-12-20'),
('Cóndores Negros', 'Toros Dorados', 'Coliseo Marino', 147, '10-9', '2027-12-25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`idPartido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `idPartido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
