-- =======================================================
-- BASE DE DATOS: inmobiliaria
-- SCRIPT DE CARGA DE DATOS PARA EVALUACIÓN 5
-- Tablas: agentes, clientes, propiedades, visitas
-- =======================================================

USE inmobiliaria;

-- -------------------------------------------------------
-- 1. CARGA DE DATOS EN TABLA: agentes (6 registros)
-- Nota: Los agentes 5 y 6 no tienen propiedades para probar LEFT JOIN
-- -------------------------------------------------------
INSERT INTO agentes (idAgente, nombre, apellido, contacto, comision_porcentaje) VALUES
(1, 'Roberto', 'Méndez', '341-5559988', 3.00),
(2, 'Silvia', 'Gómez', '351-4448877', 3.00),
(3, 'Fernando', 'Suárez', '11-3337766', 3.50),
(4, 'Andrea', 'López', '343-2226655', 3.00),
(5, 'Martín', 'Díaz', '261-1115544', 2.50),
(6, 'Valeria', 'Romero', '342-9994433', 2.50);

-- -------------------------------------------------------
-- 2. CARGA DE DATOS EN TABLA: clientes (10 registros)
-- -------------------------------------------------------
INSERT INTO clientes (idCliente, nombre, apellido, email, presupuesto_max) VALUES
(1, 'Agustín', 'Pérez', 'agustin.p@gmail.com', 85000000.00),
(2, 'Camila', 'Fernández', 'camila.f@hotmail.com', 450000.00),
(3, 'Lucas', 'Torres', 'lucas.t@yahoo.com', 120000000.00),
(4, 'Florencia', 'Benítez', 'flor.b@gmail.com', 380000.00),
(5, 'Gonzalo', 'Castro', 'gonza.c@outlook.com', 95000000.00),
(6, 'Lucía', 'Navarro', 'lucia.n@gmail.com', 500000.00),
(7, 'Esteban', 'Morales', 'esteban.m@yahoo.com', 75000000.00),
(8, 'Romina', 'Álvarez', 'romina.a@hotmail.com', 320000.00),
(9, 'Matías', 'Ortiz', 'matias.o@gmail.com', 110000000.00),
(10, 'Paula', 'Vargas', 'paula.v@outlook.com', 600000.00);

-- -------------------------------------------------------
-- 3. CARGA DE DATRA EN TABLA: propiedades (12 registros)
-- Nota: Las propiedades 11 y 12 no tienen visitas para probar LEFT JOIN
-- -------------------------------------------------------
INSERT INTO propiedades (idPropiedad, idAgente, direccion, ciudad, tipo, operacion, precio, estado) VALUES
(1, 1, 'Av. Pellegrini 1420', 'Rosario', 'Departamento', 'Venta', 82000000.00, 'Disponible'),
(2, 1, 'Bv. Oroño 850', 'Rosario', 'Departamento', 'Alquiler', 380000.00, 'Disponible'),
(3, 2, 'Av. Colón 2300', 'Córdoba', 'Casa', 'Venta', 115000000.00, 'Disponible'),
(4, 2, 'Calle San Martín 450', 'Córdoba', 'Local', 'Alquiler', 490000.00, 'Disponible'),
(5, 3, 'Av. Santa Fe 3100', 'Buenos Aires', 'Departamento', 'Venta', 140000000.00, 'Vendida'),
(6, 3, 'Av. Cabildo 1800', 'Buenos Aires', 'Departamento', 'Alquiler', 420000.00, 'Disponible'),
(7, 4, 'Urquiza 620', 'Paraná', 'Casa', 'Venta', 72000000.00, 'Disponible'),
(8, 4, 'Peatonal San Martín 110', 'Paraná', 'Local', 'Alquiler', 350000.00, 'Alquilada'),
(9, 1, 'Córdoba 1950', 'Rosario', 'Departamento', 'Alquiler', 310000.00, 'Disponible'),
(10, 2, 'Chacabuco 780', 'Córdoba', 'Departamento', 'Venta', 68000000.00, 'Disponible'),
(11, 3, 'Corrientes 2450', 'Buenos Aires', 'Local', 'Venta', 95000000.00, 'Disponible'),
(12, 4, 'Laprida 340', 'Paraná', 'Casa', 'Alquiler', 290000.00, 'Disponible');

-- -------------------------------------------------------
-- 4. CARGA DE DATOS EN TABLA: visitas (18 registros)
-- -------------------------------------------------------
INSERT INTO visitas (idVisita, idPropiedad, idCliente, fecha_visita, interes) VALUES
(1, 1, 1, '2024-04-02', 'Alto'),
(2, 1, 5, '2024-04-04', 'Medio'),
(3, 1, 9, '2024-04-06', 'Alto'),
(4, 2, 2, '2024-04-08', 'Alto'),
(5, 2, 4, '2024-04-10', 'Medio'),
(6, 3, 3, '2024-04-11', 'Alto'),
(7, 3, 7, '2024-04-13', 'Bajo'),
(8, 4, 6, '2024-04-15', 'Medio'),
(9, 5, 3, '2024-04-16', 'Alto'),
(10, 6, 2, '2024-04-18', 'Alto'),
(11, 6, 6, '2024-04-20', 'Medio'),
(12, 6, 10, '2024-04-22', 'Alto'),
(13, 7, 7, '2024-04-23', 'Medio'),
(14, 8, 8, '2024-04-25', 'Alto'),
(15, 9, 4, '2024-04-27', 'Bajo'),
(16, 9, 8, '2024-04-29', 'Alto'),
(17, 10, 1, '2024-05-02', 'Medio'),
(18, 10, 5, '2024-05-04', 'Bajo');
