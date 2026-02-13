-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS FestivalesDB;
USE FestivalesDB;

-- Tabla Bandas
CREATE TABLE IF NOT EXISTS Bandas (
    id_banda INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    genero VARCHAR(50)
);

-- Tabla Escenarios
CREATE TABLE IF NOT EXISTS Escenarios (
    id_escenario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    capacidad INT
);

-- Tabla Festivales
CREATE TABLE IF NOT EXISTS Festivales (
    id_festival INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ciudad VARCHAR(100),
    fecha_inicio DATE UNIQUE
);

-- Tabla Programacion (Tabla intermedia principal)
CREATE TABLE IF NOT EXISTS Programacion (
    id_programacion INT AUTO_INCREMENT PRIMARY KEY,
    id_festival INT,
    id_banda INT,
    id_escenario INT,
    hora_inicio TIME,
    FOREIGN KEY (id_festival) REFERENCES Festivales(id_festival),
    FOREIGN KEY (id_banda) REFERENCES Bandas(id_banda),
    FOREIGN KEY (id_escenario) REFERENCES Escenarios(id_escenario)
);

-- Insertar Datos
INSERT INTO Bandas (nombre, genero) VALUES 
('The Rockers', 'Rock'), ('Jazz Vibes', 'Jazz'), ('Pop Stars', 'Pop'), 
('Metal Heads', 'Metal'), ('Indie Kids', 'Indie');

INSERT INTO Escenarios (nombre, capacidad) VALUES 
('Escenario Principal', 50000), ('Escenario Alternativo', 15000), ('Carpa Electrónica', 5000);

INSERT INTO Festivales (nombre, ciudad, fecha_inicio) VALUES 
('Rock Fest', 'Buenos Aires', '2024-10-10'), ('Summer Vibes', 'Mar del Plata', '2025-01-15'), ('Jazz & Blues', 'Cordoba', '2024-11-20');

INSERT INTO Programacion (id_festival, id_banda, id_escenario, hora_inicio) VALUES 
(1, 1, 1, '20:00:00'), (1, 4, 2, '21:00:00'), 
(2, 3, 1, '18:00:00'), (2, 5, 2, '19:30:00'), 
(3, 2, 3, '22:00:00');
