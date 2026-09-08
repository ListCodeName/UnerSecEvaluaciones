-- =======================================================
-- BASE DE DATOS: streamflix
-- SCRIPT DE CARGA DE DATOS PARA EVALUACIÓN 6
-- Tablas: peliculas, usuarios, visualizaciones
-- =======================================================

USE streamflix;

-- -------------------------------------------------------
-- 1. CARGA DE DATOS EN TABLA: peliculas (12 registros)
-- -------------------------------------------------------
INSERT INTO peliculas (idPelicula, titulo, genero, duracion_min, anio_estreno) VALUES
(1, 'Interstellar', 'Ciencia Ficción', 169, 2014),
(2, 'Matrix', 'Ciencia Ficción', 136, 1999),
(3, 'El Padrino', 'Drama', 175, 1972),
(4, 'Pulp Fiction', 'Crimen', 154, 1994),
(5, 'Inception', 'Ciencia Ficción', 148, 2010),
(6, 'Toy Story', 'Animación', 81, 1995),
(7, 'El Caballero de la Noche', 'Acción', 152, 2008),
(8, 'Parasite', 'Drama', 132, 2019),
(9, 'Gladiador', 'Acción', 155, 2000),
(10, 'Coco', 'Animación', 105, 2017),
(11, 'Volver al Futuro', 'Ciencia Ficción', 116, 1985),
(12, 'Oppenheimer', 'Drama', 180, 2023);

-- -------------------------------------------------------
-- 2. CARGA DE DATOS EN TABLA: usuarios (10 registros)
-- Nota: Los usuarios 9 y 10 no tienen visualizaciones para probar NOT IN
-- -------------------------------------------------------
INSERT INTO usuarios (idUsuario, nombre, email, plan, nacionalidad) VALUES
(1, 'Mateo', 'mateo.c@gmail.com', 'Premium', 'Argentina'),
(2, 'Camila', 'camila.v@hotmail.com', 'Estándar', 'Chile'),
(3, 'Santiago', 'santi.g@yahoo.com', 'Premium', 'Argentina'),
(4, 'Valentina', 'valen.m@gmail.com', 'Básico', 'Uruguay'),
(5, 'Lucas', 'lucas.d@outlook.com', 'Básico', 'Argentina'),
(6, 'Sofía', 'sofia.r@gmail.com', 'Premium', 'Colombia'),
(7, 'Joaquín', 'joaco.f@hotmail.com', 'Estándar', 'México'),
(8, 'Martina', 'martu.l@gmail.com', 'Básico', 'Argentina'),
(9, 'Nicolás', 'nico.t@outlook.com', 'Básico', 'España'),
(10, 'Lucía', 'lucia.b@gmail.com', 'Estándar', 'Perú');

-- -------------------------------------------------------
-- 3. CARGA DE DATOS EN TABLA: visualizaciones (20 registros)
-- -------------------------------------------------------
INSERT INTO visualizaciones (idUsuario, idPelicula, fecha_visualizacion, minutos_vistos, dispositivo, calificacion) VALUES
(1, 1, '2024-04-01', 169, 'Smart TV', 5),
(1, 2, '2024-04-03', 136, 'PC', 5),
(1, 5, '2024-04-06', 148, 'Smart TV', 4),
(2, 3, '2024-04-02', 175, 'Smart TV', 5),
(2, 6, '2024-04-05', 81, 'Móvil', 4),
(3, 1, '2024-04-07', 160, 'PC', 5),
(3, 7, '2024-04-10', 152, 'Smart TV', 5),
(3, 12, '2024-04-12', 180, 'Smart TV', 4),
(4, 4, '2024-04-04', 150, 'Móvil', 4),
(4, 6, '2024-04-08', 80, 'Móvil', 5),
(5, 2, '2024-04-09', 130, 'PC', 4),
(5, 11, '2024-04-11', 116, 'Smart TV', 5),
(6, 8, '2024-04-13', 132, 'PC', 5),
(6, 1, '2024-04-15', 169, 'Smart TV', 5),
(6, 5, '2024-04-17', 140, 'Smart TV', 4),
(7, 9, '2024-04-14', 155, 'Móvil', 4),
(7, 10, '2024-04-16', 105, 'Smart TV', 5),
(8, 6, '2024-04-18', 81, 'Móvil', 4),
(8, 10, '2024-04-20', 100, 'Móvil', 4),
(1, 7, '2024-04-22', 4, 'Móvil', 1);
