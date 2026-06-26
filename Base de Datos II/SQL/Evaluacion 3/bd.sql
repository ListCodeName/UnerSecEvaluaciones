-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS Ecommerce;
USE Ecommerce;

-- Tabla de Categorías
CREATE TABLE IF NOT EXISTS Categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Tabla de Productos
CREATE TABLE IF NOT EXISTS Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);

-- Tabla de Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Tabla de Ventas (Cabecera)
CREATE TABLE IF NOT EXISTS Ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Tabla de Detalle de Ventas
CREATE TABLE IF NOT EXISTS DetalleVentas (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT,
    id_producto INT,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- Insertar Datos
INSERT INTO Categorias (nombre) VALUES 
('Electrónica'), 
('Ropa'), 
('Hogar'), 
('Deportes'), 
('Juguetes'),
('Libros'),
('Belleza'),
('Mascotas'),
('Automotriz'),
('Jardín'),
('Oficina'),
('Herramientas');

INSERT INTO Productos (nombre, precio, id_categoria) VALUES 
('Smartphone X', 800.00, 1), 
('Laptop Pro', 1200.00, 1), 
('Camiseta Básica', 20.00, 2), 
('Jeans', 50.00, 2), 
('Sofá Cama', 300.00, 3), 
('Lámpara LED', 15.00, 3), 
('Pelota de Fútbol', 25.00, 4), 
('Raqueta Tenis', 100.00, 4), 
('Muñeca', 30.00, 5), 
('Lego Set', 80.00, 5),
('Smartwatch Fit', 150.00, 1),
('Auriculares Bluetooth', 80.00, 1),
('Chaqueta de Invierno', 120.00, 2),
('Zapatillas Deportivas', 90.00, 2),
('Licuadora de Vaso', 45.00, 3),
('Juego de Sabanas', 35.00, 3),
('Bicicleta de Montaña', 450.00, 4),
('Mesa de Ping Pong', 220.00, 4),
('Auto a Control Remoto', 60.00, 5),
('Rompecabezas 1000 piezas', 25.00, 5),
('Novela de Ficción', 18.00, 6),
('Biografía Histórica', 22.00, 6),
('Perfume Premium', 95.00, 7),
('Crema Hidratante', 30.00, 7),
('Alimento para Perros 10kg', 40.00, 8),
('Rascador para Gatos', 55.00, 8),
('Cargador de Batería Auto', 70.00, 9),
('Juego de Herramientas Jardín', 35.00, 10),
('Silla Ergonómica', 180.00, 11),
('Taladro Percutor', 110.00, 12); -- Category 12 has NO SALES

INSERT INTO Clientes (nombre, apellido, email) VALUES 
('Juan', 'Perez', 'juan@mail.com'), 
('Maria', 'Gomez', 'maria@mail.com'), 
('Pedro', 'Lopez', 'pedro@mail.com'), 
('Laura', 'Diaz', 'laura@mail.com'), 
('Carlos', 'Ruiz', 'carlos@mail.com'),
('Ana', 'Fernandez', 'ana.f@mail.com'),
('Luis', 'Martinez', 'luis.m@mail.com'),
('Sofia', 'Sanchez', 'sofia.s@mail.com'),
('Jorge', 'Gomez', 'jorge.g@mail.com'),
('Elena', 'Vazquez', 'elena.v@mail.com'),
('Diego', 'Torres', 'diego.t@mail.com'),
('Lucia', 'Ramirez', 'lucia.r@mail.com'),
('Miguel', 'Castro', 'miguel.c@mail.com'),
('Patricia', 'Ortega', 'patricia.o@mail.com'),
('Walter', 'Paredes', 'walter.p@mail.com'),
('Gabriela', 'Silva', 'gabriela.s@mail.com'),
('Roberto', 'Mendoza', 'roberto.m@mail.com'),
('Marta', 'Herrera', 'marta.h@mail.com'),
('Daniel', 'Sosa', 'daniel.s@mail.com'),
('Beatriz', 'Luna', 'beatriz.l@mail.com');

INSERT INTO Ventas (id_cliente, fecha, total) VALUES 
(1, '2024-01-15', 820.00), -- Juan Perez (Venta 1)
(2, '2024-02-10', 50.00),  -- Maria Gomez (Venta 2)
(3, '2024-03-05', 1300.00),
(4, '2024-04-20', 125.00),
(5, '2024-05-12', 30.00),
(1, '2024-05-18', 230.00), -- Juan Perez (Venta 6)
(2, '2024-06-01', 170.00), -- Maria Gomez (Venta 7)
(6, '2024-06-15', 400.00),
(7, '2024-07-02', 95.00),
(8, '2024-07-10', 150.00),
(9, '2024-07-22', 18.00),
(10, '2024-08-05', 80.00),
(11, '2024-08-12', 450.00),
(12, '2024-08-19', 35.00),
(13, '2024-09-02', 205.00),
(14, '2024-09-15', 180.00),
(15, '2024-09-28', 110.00),
(16, '2024-10-05', 40.00),
(17, '2024-10-12', 55.00),
(18, '2024-10-25', 70.00),
(1, '2024-11-02', 150.00), -- Juan Perez (Venta 21)
(2, '2024-11-15', 115.00), -- Maria Gomez (Venta 22)
(19, '2024-11-20', 35.00),
(20, '2024-12-01', 300.00),
(6, '2024-12-10', 180.00),
(7, '2024-12-15', 150.00),
(8, '2024-12-22', 200.00),
(9, '2024-12-28', 45.00),
(10, '2025-01-05', 120.00),
(11, '2025-01-12', 80.00);

INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario) VALUES 
(1, 1, 1, 800.00), 
(1, 3, 1, 20.00), 
(2, 4, 1, 50.00), 
(3, 2, 1, 1200.00), 
(3, 8, 1, 100.00), 
(4, 7, 1, 25.00), 
(4, 8, 1, 100.00), 
(5, 9, 1, 30.00),
(6, 11, 1, 150.00), 
(6, 12, 1, 80.00),
(7, 13, 1, 120.00), 
(7, 4, 1, 50.00),
(8, 5, 1, 300.00), 
(8, 8, 1, 100.00),
(9, 23, 1, 95.00),
(10, 11, 1, 150.00),
(11, 21, 1, 18.00),
(12, 10, 1, 80.00),
(13, 17, 1, 450.00),
(14, 16, 1, 35.00),
(15, 11, 1, 150.00), 
(15, 26, 1, 55.00),
(16, 29, 1, 180.00),
(17, 13, 1, 120.00), 
(17, 19, 1, 60.00),
(18, 25, 1, 40.00),
(19, 26, 1, 55.00),
(20, 27, 1, 70.00),
(21, 11, 1, 150.00),
(22, 23, 1, 95.00), 
(22, 3, 1, 20.00),
(23, 28, 1, 35.00),
(24, 5, 1, 300.00),
(25, 29, 1, 180.00),
(26, 11, 1, 150.00),
(27, 8, 2, 100.00),
(28, 15, 1, 45.00),
(29, 13, 1, 120.00),
(30, 12, 1, 80.00);
