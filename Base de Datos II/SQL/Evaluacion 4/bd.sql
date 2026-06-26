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
('The Rockers', 'Rock'), 
('Jazz Vibes', 'Jazz'), 
('Pop Stars', 'Pop'), 
('Metal Heads', 'Metal'), 
('Indie Kids', 'Indie'),
('Acoustic Soul', 'Soul'), 
('Synth Wave', 'Electronic'), 
('Heavy Riffs', 'Rock'), 
('Smooth Sax', 'Jazz'), 
('Beat Drop', 'Electronic'), 
('Country Roads', 'Folk'), 
('Indie Dreams', 'Indie'), 
('Classic Beats', 'Pop'), 
('The Blues Men', 'Blues'), 
('Hard Core', 'Metal'), 
('Latin Rhythm', 'Latin'), 
('Neo Soul Duo', 'Soul'), 
('Gothic Sounds', 'Rock'), 
('Urban Rap', 'Hip Hop'), 
('Folk Winds', 'Folk');

INSERT INTO Escenarios (nombre, capacidad) VALUES 
('Escenario Principal', 50000), 
('Escenario Alternativo', 15000), 
('Carpa Electrónica', 5000),
('Teatro del Lago', 8000),
('Escenario Acústico', 3000),
('Plaza del Ritmo', 12000);

INSERT INTO Festivales (nombre, ciudad, fecha_inicio) VALUES 
('Rock Fest', 'Buenos Aires', '2024-10-10'), 
('Summer Vibes', 'Mar del Plata', '2025-01-15'), 
('Jazz & Blues', 'Cordoba', '2024-11-20'),
('Spring Sound', 'Rosario', '2024-09-22'),
('Winter Beat', 'Mendoza', '2024-07-05'),
('Lollapalooza Local', 'San Isidro', '2025-03-21'),
('Cosquin Rock', 'Cosquin', '2025-02-08'),
('Electro Sun', 'Rosario', '2025-04-12');

INSERT INTO Programacion (id_festival, id_banda, id_escenario, hora_inicio) VALUES 
-- Rock Fest (ID 1)
(1, 1, 1, '20:00:00'), -- The Rockers in Escenario Principal
(1, 4, 2, '21:00:00'), -- Metal Heads
(1, 8, 1, '18:00:00'), -- Heavy Riffs in Escenario Principal
(1, 15, 2, '19:30:00'), -- Hard Core
(1, 18, 5, '17:00:00'), -- Gothic Sounds
-- Summer Vibes (ID 2)
(2, 3, 1, '18:00:00'), -- Pop Stars in Escenario Principal
(2, 5, 2, '19:30:00'), -- Indie Kids
(2, 6, 5, '16:00:00'), -- Acoustic Soul
(2, 13, 1, '21:00:00'), -- Classic Beats in Escenario Principal
(2, 16, 6, '22:30:00'), -- Latin Rhythm in Plaza del Ritmo
-- Jazz & Blues (ID 3)
(3, 2, 4, '22:00:00'), -- Jazz Vibes in Teatro del Lago
(3, 9, 5, '20:00:00'), -- Smooth Sax
(3, 14, 4, '18:30:00'), -- The Blues Men
(3, 17, 5, '17:00:00'), -- Neo Soul Duo
-- Spring Sound (ID 4)
(4, 1, 1, '21:00:00'), -- The Rockers in Escenario Principal
(4, 12, 2, '19:00:00'), -- Indie Dreams
(4, 13, 1, '23:00:00'), -- Classic Beats in Escenario Principal
(4, 20, 5, '17:30:00'), -- Folk Winds
-- Winter Beat (ID 5)
(5, 4, 2, '20:00:00'), -- Metal Heads
(5, 15, 2, '22:00:00'), -- Hard Core
(5, 18, 6, '18:30:00'), -- Gothic Sounds
-- Lollapalooza Local (ID 6)
(6, 3, 1, '22:00:00'), -- Pop Stars in Escenario Principal
(6, 7, 3, '20:00:00'), -- Synth Wave in Carpa Electrónica
(6, 10, 3, '23:30:00'), -- Beat Drop in Carpa Electrónica
(6, 19, 6, '18:00:00'), -- Urban Rap in Plaza del Ritmo
-- Cosquin Rock (ID 7)
(7, 1, 1, '23:00:00'), -- The Rockers in Escenario Principal
(7, 8, 1, '21:00:00'), -- Heavy Riffs in Escenario Principal
(7, 11, 5, '17:00:00'), -- Country Roads
(7, 12, 2, '19:00:00'), -- Indie Dreams
-- Electro Sun (ID 8)
(8, 7, 3, '19:00:00'), -- Synth Wave
(8, 10, 3, '22:00:00'); -- Beat Drop
