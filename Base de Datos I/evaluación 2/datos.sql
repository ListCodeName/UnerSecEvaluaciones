-- =======================================================
-- BASE DE DATOS: deportivoasturia
-- SCRIPT DE CARGA DE DATOS PARA EVALUACIÓN 2
-- Tablas: equipos, estadios, partidos
-- =======================================================

USE deportivoasturia;

-- -------------------------------------------------------
-- 1. CARGA DE DATOS EN TABLA: estadios (8 registros)
-- -------------------------------------------------------
INSERT INTO estadios (idEstadio, nombre, ciudad, capacidad) VALUES
(1, 'Estadio Centenario', 'Rosario', 42000),
(2, 'Monumental de la Ribera', 'Buenos Aires', 65000),
(3, 'Nuevo Gasómetro', 'Buenos Aires', 45000),
(4, 'Estadio Mario Kempes', 'Córdoba', 57000),
(5, 'Gigante del Parque', 'Rosario', 38000),
(6, 'Malvinas Argentinas', 'Mendoza', 40000),
(7, 'Estadio Brigadier López', 'Santa Fe', 32000),
(8, 'Estadio Presbítero Grella', 'Paraná', 22000);

-- -------------------------------------------------------
-- 2. CARGA DE DATOS EN TABLA: equipos (12 registros)
-- -------------------------------------------------------
INSERT INTO equipos (idEquipo, nombre, entrenador, ciudad, puntos) VALUES
(1, 'Tigres Azules', 'Marcelo Gallardo', 'Rosario', 28),
(2, 'Fénix de Fuego', 'Guillermo Barros Schelotto', 'Córdoba', 25),
(3, 'Atlético Porteño', 'Eduardo Coudet', 'Buenos Aires', 31),
(4, 'Deportivo Unión', 'Gustavo Alfaro', 'Santa Fe', 19),
(5, 'Huracán del Sur', 'Diego Martínez', 'Buenos Aires', 22),
(6, 'Racing Costero', 'Gabriel Heinze', 'Rosario', 18),
(7, 'Leones de la Sierra', 'Ricardo Gareca', 'Córdoba', 15),
(8, 'Sportivo Paraná', 'Facundo Sava', 'Paraná', 12),
(9, 'Andino Mendoza', 'Jorge Almirón', 'Mendoza', 21),
(10, 'Estudiantes del Este', 'Mauricio Pellegrino', 'Santa Fe', 14),
(11, 'Defensores del Valle', 'Lucas Pusineri', 'Mendoza', 8),
(12, 'Juventud Unida', 'Leonardo Madelón', 'Paraná', 0);

-- -------------------------------------------------------
-- 3. CARGA DE DATOS EN TABLA: partidos (25 registros)
-- -------------------------------------------------------
INSERT INTO partidos (idPartido, equipo_local, equipo_visitante, estadio, goles_local, goles_visitante, fecha, arbitro) VALUES
(1, 'Tigres Azules', 'Fénix de Fuego', 'Estadio Centenario', 2, 2, '2024-03-02', 'Fernando Rapallini'),
(2, 'Atlético Porteño', 'Huracán del Sur', 'Monumental de la Ribera', 3, 1, '2024-03-03', 'Facundo Tello'),
(3, 'Deportivo Unión', 'Sportivo Paraná', 'Estadio Brigadier López', 1, 0, '2024-03-08', 'Patricio Loustau'),
(4, 'Racing Costero', 'Tigres Azules', 'Gigante del Parque', 0, 0, '2024-03-09', 'Nicolás Ramírez'),
(5, 'Leones de la Sierra', 'Deportivo Unión', 'Estadio Mario Kempes', 2, 1, '2024-03-15', 'Darío Herrera'),
(6, 'Andino Mendoza', 'Defensores del Valle', 'Malvinas Argentinas', 4, 1, '2024-03-16', 'Fernando Echenique'),
(7, 'Sportivo Paraná', 'Juventud Unida', 'Estadio Presbítero Grella', 2, 2, '2024-03-22', 'Yael Falcón'),
(8, 'Fénix de Fuego', 'Atlético Porteño', 'Estadio Mario Kempes', 1, 3, '2024-03-23', 'Patricio Loustau'),
(9, 'Huracán del Sur', 'Racing Costero', 'Nuevo Gasómetro', 2, 0, '2024-03-29', 'Facundo Tello'),
(10, 'Tigres Azules', 'Andino Mendoza', 'Estadio Centenario', 3, 0, '2024-03-30', 'Fernando Rapallini'),
(11, 'Estudiantes del Este', 'Leones de la Sierra', 'Estadio Brigadier López', 1, 1, '2024-04-05', 'Darío Herrera'),
(12, 'Defensores del Valle', 'Fénix de Fuego', 'Malvinas Argentinas', 0, 2, '2024-04-06', 'Fernando Echenique'),
(13, 'Atlético Porteño', 'Tigres Azules', 'Monumental de la Ribera', 2, 1, '2024-04-12', 'Facundo Tello'),
(14, 'Juventud Unida', 'Deportivo Unión', 'Estadio Presbítero Grella', 0, 3, '2024-04-13', 'Patricio Loustau'),
(15, 'Racing Costero', 'Sportivo Paraná', 'Gigante del Parque', 1, 1, '2024-04-19', 'Yael Falcón'),
(16, 'Andino Mendoza', 'Huracán del Sur', 'Malvinas Argentinas', 2, 1, '2024-04-20', 'Nicolás Ramírez'),
(17, 'Fénix de Fuego', 'Racing Costero', 'Estadio Mario Kempes', 4, 2, '2024-04-26', 'Fernando Rapallini'),
(18, 'Sportivo Paraná', 'Atlético Porteño', 'Estadio Presbítero Grella', 0, 2, '2024-04-27', 'Darío Herrera'),
(19, 'Deportivo Unión', 'Andino Mendoza', 'Estadio Brigadier López', 2, 2, '2024-05-03', 'Patricio Loustau'),
(20, 'Tigres Azules', 'Defensores del Valle', 'Estadio Centenario', 5, 0, '2024-05-04', 'Facundo Tello'),
(21, 'Huracán del Sur', 'Juventud Unida', 'Nuevo Gasómetro', 3, 0, '2024-05-10', 'Fernando Echenique'),
(22, 'Leones de la Sierra', 'Tigres Azules', 'Estadio Mario Kempes', 1, 2, '2024-05-11', 'Fernando Rapallini'),
(23, 'Atlético Porteño', 'Estudiantes del Este', 'Monumental de la Ribera', 2, 0, '2024-05-17', 'Nicolás Ramírez'),
(24, 'Defensores del Valle', 'Sportivo Paraná', 'Malvinas Argentinas', 1, 1, '2024-05-18', 'Yael Falcón'),
(25, 'Fénix de Fuego', 'Huracán del Sur', 'Estadio Mario Kempes', 3, 1, '2024-05-24', 'Darío Herrera');
