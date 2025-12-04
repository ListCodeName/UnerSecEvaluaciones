-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS Universidad;
USE Universidad;

-- Creación de la tabla Estudiantes
CREATE TABLE IF NOT EXISTS Estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefono VARCHAR(15)
);

-- Creación de la tabla Cursos
CREATE TABLE IF NOT EXISTS Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    descripcion TEXT,
    fecha_inicio DATE,
    fecha_fin DATE
);

-- Creación de la tabla intermedia Inscripciones
CREATE TABLE IF NOT EXISTS Inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    id_curso INT,
    fecha_inscripcion DATE NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante) ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso) ON DELETE CASCADE,
    CONSTRAINT UC_Inscripcion UNIQUE (id_estudiante, id_curso)  -- Asegura que un estudiante no se inscriba en el mismo curso más de una vez
);



-- Insertar 50 estudiantes aleatorios
INSERT INTO Estudiantes (nombre, apellido, email, telefono)
VALUES 
('Juan', 'Pérez', 'juan.perez@email.com', '1234567890'),
('Ana', 'Gomez', 'ana.gomez@email.com', '9876543210'),
('Carlos', 'Mendez', 'carlos.mendez@email.com', '3216549870'),
('Lucía', 'Fernández', 'lucia.fernandez@email.com', '6547893210'),
('Sofía', 'Martínez', 'sofia.martinez@email.com', '9876123450'),
('Luis', 'López', 'luis.lopez@email.com', '6543219870'),
('Paula', 'Rodríguez', 'paula.rodriguez@email.com', '3219876540'),
('Miguel', 'Sánchez', 'miguel.sanchez@email.com', '1230987654'),
('Laura', 'Ramírez', 'laura.ramirez@email.com', '5678901234'),
('David', 'Hernández', 'david.hernandez@email.com', '8765432109'),
('María', 'García', 'maria.garcia@email.com', '5432167890'),
('José', 'Martínez', 'jose.martinez@email.com', '2345678901'),
('Isabel', 'Torres', 'isabel.torres@email.com', '7896543210'),
('Raúl', 'Vázquez', 'raul.vazquez@email.com', '5671230987'),
('Alba', 'Morales', 'alba.morales@email.com', '4567890123'),
('Pedro', 'Jiménez', 'pedro.jimenez@email.com', '6549873210'),
('Sara', 'Álvarez', 'sara.alvarez@email.com', '3216549870'),
('Ricardo', 'Cano', 'ricardo.cano@email.com', '7894321560'),
('Clara', 'Paredes', 'clara.paredes@email.com', '5678906543'),
('Antonio', 'Gutiérrez', 'antonio.gutierrez@email.com', '1236549870'),
('Elena', 'Gil', 'elena.gil@email.com', '4321098765'),
('Adrián', 'Pérez', 'adrian.perez@email.com', '8765439870'),
('Eva', 'López', 'eva.lopez@email.com', '2345678909'),
('Marta', 'Mendoza', 'marta.mendoza@email.com', '5678901234'),
('Juan Carlos', 'Alonso', 'juancarlos.alonso@email.com', '2345098761'),
('Antonio', 'Mena', 'antonio.mena@email.com', '6543210987'),
('Cristina', 'Serrano', 'cristina.serrano@email.com', '7654321098'),
('Óscar', 'Gil', 'oscar.gil@email.com', '2345678901'),
('Inés', 'Domínguez', 'ines.dominguez@email.com', '3456789012'),
('Ricardo', 'Sánchez', 'ricardo.sanchez@email.com', '9876543212'),
('Sandra', 'Cabrera', 'sandra.cabrera@email.com', '3456781234'),
('Tomás', 'Ruiz', 'tomas.ruiz@email.com', '1239876543'),
('Patricia', 'Fuentes', 'patricia.fuentes@email.com', '9873216540'),
('Pedro', 'Lara', 'pedro.lara@email.com', '6543212345'),
('Víctor', 'Castro', 'victor.castro@email.com', '9876543215'),
('José Luis', 'Martín', 'jose.luis.martin@email.com', '6549871230'),
('Montserrat', 'Sánchez', 'montserrat.sanchez@email.com', '3216549875'),
('Nerea', 'Núñez', 'nerea.nunez@email.com', '6543218765'),
('Juan José', 'Suárez', 'juanjose.suarez@email.com', '1236547890'),
('Fátima', 'Hernández', 'fatima.hernandez@email.com', '9876541234'),
('Felipe', 'Carrillo', 'felipe.carrillo@email.com', '3456789011'),
('Verónica', 'Salazar', 'veronica.salazar@email.com', '7654321876'),
('Gabriel', 'Benítez', 'gabriel.benitez@email.com', '9876543211'),
('Lola', 'Mora', 'lola.mora@email.com', '6547893450'),
('Javier', 'Paniagua', 'javier.paniagua@email.com', '3456782345'),
('Carolina', 'Espinosa', 'carolina.espinosa@email.com', '2345676789');

-- Insertar 10 cursos aleatorios
INSERT INTO Cursos (nombre_curso, descripcion, fecha_inicio, fecha_fin)
VALUES
('Matemáticas 101', 'Curso introductorio de matemáticas para principiantes', '2025-01-15', '2025-05-15'),
('Programación 101', 'Curso básico de programación en Python', '2025-02-01', '2025-06-01'),
('Física 101', 'Física básica para estudiantes de ingeniería', '2025-03-01', '2025-07-01'),
('Biología 101', 'Fundamentos de biología celular', '2025-04-01', '2025-08-01'),
('Química 101', 'Introducción a la química general', '2025-05-01', '2025-09-01'),
('Historia Universal', 'Historia de la humanidad desde la prehistoria hasta la Edad Media', '2025-06-01', '2025-10-01'),
('Literatura 101', 'Estudio de la literatura clásica', '2025-07-01', '2025-11-01'),
('Arte 101', 'Fundamentos del arte contemporáneo', '2025-08-01', '2025-12-01'),
('Economía 101', 'Introducción a los principios de economía', '2025-09-01', '2025-12-15'),
('Psicología 101', 'Conceptos básicos de psicología', '2025-10-01', '2026-02-01');

-- Insertar 50 inscripciones aleatorias
INSERT INTO Inscripciones (id_estudiante, id_curso, fecha_inscripcion)
VALUES
(1, 1, '2025-01-10'),
(2, 1, '2025-02-12'),
(3, 2, '2025-03-15'),
(4, 3, '2025-03-20'),
(5, 4, '2025-04-10'),
(6, 5, '2025-05-05'),
(7, 6, '2025-05-12'),
(8, 7, '2025-06-18'),
(9, 8, '2025-07-02'),
(10, 9, '2025-07-15'),
(11, 10, '2025-08-01'),
(12, 2, '2025-09-02'),
(13, 1, '2025-09-05'),
(14, 3, '2025-10-07'),
(15, 4, '2025-10-11'),
(16, 5, '2025-11-20'),
(17, 6, '2025-12-01'),
(18, 7, '2025-12-05'),
(19, 8, '2025-12-15'),
(20, 9, '2025-01-01'),
(21, 10, '2025-01-02'),
(22, 1, '2025-02-01'),
(23, 2, '2025-03-03'),
(24, 3, '2025-04-04'),
(25, 4, '2025-05-05'),
(26, 5, '2025-06-06'),
(27, 6, '2025-07-07'),
(28, 7, '2025-08-08'),
(29, 8, '2025-09-09'),
(30, 9, '2025-10-10'),
(31, 10, '2025-11-11'),
(32, 2, '2025-12-12'),
(33, 3, '2025-01-13'),
(34, 4, '2025-02-14'),
(35, 5, '2025-03-15'),
(36, 6, '2025-04-16'),
(37, 7, '2025-05-17'),
(38, 8, '2025-06-18'),
(39, 9, '2025-07-19'),
(40, 10, '2025-08-20'),
(41, 1, '2025-09-21'),
(42, 2, '2025-10-22'),
(43, 3, '2025-11-23'),
(44, 4, '2025-12-24'),
(45, 5, '2025-01-25'),
(46, 6, '2025-02-26'),
(47, 7, '2025-03-27'),
(48, 8, '2025-04-28'),
(49, 9, '2025-05-29'),
(50, 10, '2025-06-30');
