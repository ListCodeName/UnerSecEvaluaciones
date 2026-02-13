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
INSERT INTO Categorias (nombre) VALUES ('Electrónica'), ('Ropa'), ('Hogar'), ('Deportes'), ('Juguetes');

INSERT INTO Productos (nombre, precio, id_categoria) VALUES 
('Smartphone X', 800.00, 1), ('Laptop Pro', 1200.00, 1), ('Camiseta Básica', 20.00, 2), 
('Jeans', 50.00, 2), ('Sofá Cama', 300.00, 3), ('Lámpara LED', 15.00, 3), 
('Pelota de Fútbol', 25.00, 4), ('Raqueta Tenis', 100.00, 4), ('Muñeca', 30.00, 5), ('Lego Set', 80.00, 5);

INSERT INTO Clientes (nombre, apellido, email) VALUES 
('Juan', 'Perez', 'juan@mail.com'), ('Maria', 'Gomez', 'maria@mail.com'), 
('Pedro', 'Lopez', 'pedro@mail.com'), ('Laura', 'Diaz', 'laura@mail.com'), ('Carlos', 'Ruiz', 'carlos@mail.com');

INSERT INTO Ventas (id_cliente, fecha, total) VALUES 
(1, '2024-01-15', 820.00), (2, '2024-02-10', 50.00), (3, '2024-03-05', 1300.00), 
(4, '2024-04-20', 125.00), (5, '2024-05-12', 30.00);

INSERT INTO DetalleVentas (id_venta, id_producto, cantidad, precio_unitario) VALUES 
(1, 1, 1, 800.00), (1, 3, 1, 20.00), 
(2, 4, 1, 50.00), 
(3, 2, 1, 1200.00), (3, 8, 1, 100.00), 
(4, 7, 1, 25.00), (4, 8, 1, 100.00), 
(5, 9, 1, 30.00);
