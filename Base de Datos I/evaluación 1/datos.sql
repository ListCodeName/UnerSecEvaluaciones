-- =======================================================
-- BASE DE DATOS: literato
-- SCRIPT DE CARGA DE DATOS PARA EVALUACIÓN 1
-- Tablas: libros, clientes, empleados
-- =======================================================

USE literato;

-- -------------------------------------------------------
-- 1. CARGA DE DATOS EN TABLA: libros (50 registros)
-- -------------------------------------------------------
INSERT INTO libros (idLibro, titulo, autor, genero, precio, stock) VALUES
(1, 'El León y el Ratón', 'Esopo', 'Cuentos clásicos', 5.99, 100),
(2, 'Caperucita Roja', 'Charles Perrault', 'Cuentos clásicos', 6.50, 80),
(3, 'Blancanieves y los siete enanitos', 'Hermanos Grimm', 'Cuentos clásicos', 7.25, 120),
(4, 'La tortuga y la liebre', 'Esopo', 'Cuentos clásicos', 4.99, 75),
(5, 'El Patito Feo', 'Hans Christian Andersen', 'Cuentos clásicos', 6.00, 60),
(6, 'La cigarra y la hormiga', 'Esopo', 'Cuentos clásicos', 4.50, 110),
(7, 'Alicia en el País de las Maravillas', 'Lewis Carroll', 'Aventuras', 9.99, 40),
(8, 'Peter Pan', 'J.M. Barrie', 'Aventuras', 8.75, 150),
(9, 'Los tres cerditos', 'Esopo', 'Cuentos clásicos', 5.50, 95),
(10, 'La Bella Durmiente', 'Charles Perrault', 'Cuentos clásicos', 6.30, 85),
(11, 'Cenicienta', 'Charles Perrault', 'Cuentos clásicos', 5.70, 130),
(12, 'El gato con botas', 'Charles Perrault', 'Cuentos clásicos', 6.20, 105),
(13, 'La Sirenita', 'Hans Christian Andersen', 'Cuentos clásicos', 7.10, 140),
(14, 'Rapunzel', 'Hermanos Grimm', 'Cuentos clásicos', 6.40, 90),
(15, 'El flautista de Hamelín', 'Hermanos Grimm', 'Cuentos clásicos', 5.80, 100),
(16, 'El soldadito de plomo', 'Hans Christian Andersen', 'Cuentos clásicos', 5.99, 50),
(17, 'Los músicos de Bremen', 'Hermanos Grimm', 'Cuentos clásicos', 6.00, 60),
(18, 'La gallina de los huevos de oro', 'Esopo', 'Fábulas', 4.25, 110),
(19, 'El árbol generoso', 'Shel Silverstein', 'Cuentos modernos', 7.99, 120),
(20, 'El pequeño príncipe', 'Antoine de Saint-Exupéry', 'Fábulas', 8.50, 140),
(21, 'Matilda', 'Roald Dahl', 'Fantasía', 7.70, 160),
(22, 'Charlie y la fábrica de chocolate', 'Roald Dahl', 'Fantasía', 6.80, 180),
(23, 'James y el melocotón gigante', 'Roald Dahl', 'Fantasía', 6.60, 130),
(24, 'La historia interminable', 'Michael Ende', 'Fantasía', 10.00, 100),
(25, 'El mago de Oz', 'L. Frank Baum', 'Aventuras', 7.40, 95),
(26, 'La princesa y el guisante', 'Hans Christian Andersen', 'Cuentos clásicos', 5.10, 110),
(27, 'Pinocho', 'Carlo Collodi', 'Aventuras', 6.70, 125),
(28, 'El viento en los sauces', 'Kenneth Grahame', 'Aventuras', 8.20, 90),
(29, 'Winnie the Pooh', 'A.A. Milne', 'Fantasía', 9.00, 150),
(30, 'La casa de la abuela', 'Mary Charlyn', 'Fantasía', 6.40, 80),
(31, 'El oso que amaba a los árboles', 'A.A. Milne', 'Fábulas', 5.00, 200),
(32, 'Los viajes de Gulliver', 'Jonathan Swift', 'Aventuras', 9.99, 70),
(33, 'El cuento de la criada', 'Margaret Atwood', 'Ciencia ficción', 14.50, 60),
(34, 'El principito regresa', 'Varios autores', 'Fábulas', 7.50, 80),
(35, 'Los fantasmas de la noche', 'Isabel Allende', 'Fantasía', 12.00, 95),
(36, 'El gran libro de los cuentos', 'Varios autores', 'Cuentos clásicos', 15.00, 100),
(37, 'El árbol de Navidad', 'Hans Christian Andersen', 'Cuentos clásicos', 6.30, 110),
(38, 'El dragón de fuego', 'Edith Nesbit', 'Fantasía', 8.40, 115),
(39, 'El país de las maravillas', 'Alice Lorenz', 'Aventuras', 8.60, 125),
(40, 'La princesa encantada', 'José Luis Guerrero', 'Fantasía', 7.20, 140),
(41, 'Las aventuras de Tom Sawyer', 'Mark Twain', 'Aventuras', 11.50, 135),
(42, 'La isla del tesoro', 'Robert Louis Stevenson', 'Aventuras', 13.00, 100),
(43, 'Un cuento de Navidad', 'Charles Dickens', 'Cuentos clásicos', 8.90, 120),
(44, 'Los secretos de la luna', 'Carlos Ruíz Zafón', 'Fantasía', 14.80, 95),
(45, 'El gato negro y otros relatos', 'Edgar Allan Poe', 'Terror', 10.00, 50),
(46, 'El misterio de la isla', 'José Luis Cortés', 'Misterio', 12.50, 60),
(47, 'Aventuras en la selva', 'Horacio Quiroga', 'Cuentos clásicos', 7.50, 80),
(48, 'El zorro y las uvas', 'Esopo', 'Fábulas', 4.75, 130),
(49, 'Cuentos de la selva', 'Horacio Quiroga', 'Cuentos clásicos', 8.50, 140),
(50, 'El circo de los sueños', 'Erin Morgenstern', 'Fantasía', 16.20, 75);

-- -------------------------------------------------------
-- 2. CARGA DE DATOS EN TABLA: clientes (25 registros)
-- -------------------------------------------------------
INSERT INTO clientes (idCliente, nombre, apellido, email, ciudad, contacto) VALUES
(1, 'Agustín', 'Fernández', 'agustin.f@gmail.com', 'Rosario', '341-4567890'),
(2, 'Camila', 'Gómez', 'camila.g@hotmail.com', 'Córdoba', '351-9876543'),
(3, 'Lucas', 'Martínez', 'lucas.m@yahoo.com', 'Rosario', '341-2345678'),
(4, 'Valentina', 'Rodríguez', 'valen.r@gmail.com', 'Buenos Aires', '11-34567890'),
(5, 'Mateo', 'López', 'mateo.l@gmail.com', 'Córdoba', '351-4561234'),
(6, 'Sofía', 'Díaz', 'sofia.diaz@outlook.com', 'Paraná', '343-8765432'),
(7, 'Joaquín', 'Pérez', 'joaquin.p@gmail.com', 'Mendoza', '261-2348901'),
(8, 'Martina', 'García', 'martina.g@gmail.com', 'Rosario', '341-9012345'),
(9, 'Bautista', 'Sánchez', 'bauti.s@hotmail.com', 'Santa Fe', '342-6543210'),
(10, 'Emma', 'Romero', 'emma.romero@gmail.com', 'Córdoba', '351-8765432'),
(11, 'Santiago', 'Sosa', 'santi.sosa@yahoo.com', 'Paraná', '343-5678901'),
(12, 'Lucía', 'Torres', 'lucia.t@gmail.com', 'Buenos Aires', '11-98765432'),
(13, 'Facundo', 'Álvarez', 'facu.alvarez@gmail.com', 'Rosario', '341-6789012'),
(14, 'Catalina', 'Ruiz', 'cata.ruiz@hotmail.com', 'Mendoza', '261-7890123'),
(15, 'Nicolás', 'Benítez', 'nico.b@outlook.com', 'Santa Fe', '342-4321098'),
(16, 'Julieta', 'Acosta', 'juli.acosta@gmail.com', 'Córdoba', '351-3456789'),
(17, 'Tomás', 'Medina', 'tomas.m@gmail.com', 'Paraná', '343-2109876'),
(18, 'Mia', 'Herrera', 'mia.herrera@gmail.com', 'Buenos Aires', '11-87654321'),
(19, 'Benjamín', 'Aguirre', 'benja.a@yahoo.com', 'Rosario', '341-3210987'),
(20, 'Delfina', 'Giménez', 'delfi.g@gmail.com', 'Salta', '387-4567890'),
(21, 'Ignacio', 'Castro', 'nacho.c@hotmail.com', 'Córdoba', '351-6549870'),
(22, 'Victoria', 'Molina', 'vicky.m@gmail.com', 'Mendoza', '261-9012345'),
(23, 'Emiliano', 'Ortiz', 'emi.ortiz@gmail.com', 'Paraná', '343-9871234'),
(24, 'Zoe', 'Silva', 'zoe.silva@outlook.com', 'Buenos Aires', '11-23456789'),
(25, 'Thiago', 'Morales', 'thiago.m@gmail.com', 'Rosario', '341-7891234');

-- -------------------------------------------------------
-- 3. CARGA DE DATOS EN TABLA: empleados (20 registros)
-- -------------------------------------------------------
INSERT INTO empleados (idEmpleado, nombre, apellido, puesto, salario, turno) VALUES
(1, 'Carlos', 'Navarro', 'Gerente', 850000.00, 'Mañana'),
(2, 'Mariana', 'Vázquez', 'Subgerente', 720000.00, 'Tarde'),
(3, 'Esteban', 'Quilodrán', 'Encargado', 600000.00, 'Mañana'),
(4, 'Laura', 'Montes', 'Encargado', 600000.00, 'Tarde'),
(5, 'Diego', 'Rios', 'Vendedor', 480000.00, 'Mañana'),
(6, 'Florencia', 'Carrizo', 'Vendedor', 480000.00, 'Mañana'),
(7, 'Gonzalo', 'Paz', 'Vendedor', 495000.00, 'Tarde'),
(8, 'Carolina', 'Ibáñez', 'Vendedor', 495000.00, 'Tarde'),
(9, 'Javier', 'Roldán', 'Vendedor', 510000.00, 'Noche'),
(10, 'Melina', 'Coria', 'Cajero', 460000.00, 'Mañana'),
(11, 'Federico', 'Godoy', 'Cajero', 460000.00, 'Tarde'),
(12, 'Romina', 'Bravo', 'Cajero', 475000.00, 'Noche'),
(13, 'Alejandro', 'Ledesma', 'Repositor', 430000.00, 'Mañana'),
(14, 'Gisela', 'Méndez', 'Repositor', 430000.00, 'Tarde'),
(15, 'Hernán', 'Barrios', 'Repositor', 445000.00, 'Noche'),
(16, 'Cecilia', 'Villalba', 'Atención al Cliente', 520000.00, 'Mañana'),
(17, 'Matías', 'Cardozo', 'Atención al Cliente', 520000.00, 'Tarde'),
(18, 'Sol', 'Vargas', 'Pasante', 280000.00, 'Mañana'),
(19, 'Franco', 'Paredes', 'Pasante', 280000.00, 'Tarde'),
(20, 'Lorena', 'Funes', 'Seguridad', 550000.00, 'Noche');
