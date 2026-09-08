-- =======================================================
-- BASE DE DATOS: electromundo
-- SCRIPT DE CARGA DE DATOS PARA EVALUACIÓN 4
-- Tablas: productos, clientes, ventas
-- =======================================================

USE electromundo;

-- -------------------------------------------------------
-- 1. CARGA DE DATOS EN TABLA: productos (15 registros)
-- -------------------------------------------------------
INSERT INTO productos (idProducto, nombre, marca, precio, stock, categoria) VALUES
(1, 'iPhone 15 128GB', 'Apple', 1450000.00, 15, 'Celulares'),
(2, 'Galaxy S23 Ultra', 'Samsung', 1350000.00, 12, 'Celulares'),
(3, 'Moto G84 5G', 'Motorola', 420000.00, 25, 'Celulares'),
(4, 'Redmi Note 13', 'Xiaomi', 360000.00, 30, 'Celulares'),
(5, 'MacBook Air M2', 'Apple', 1850000.00, 8, 'Notebooks'),
(6, 'ThinkPad E14', 'Lenovo', 1100000.00, 10, 'Notebooks'),
(7, 'Notebook Pavilion 15', 'HP', 890000.00, 14, 'Notebooks'),
(8, 'iPad 10ma Gen 64GB', 'Apple', 780000.00, 18, 'Tablets'),
(9, 'Galaxy Tab S9', 'Samsung', 920000.00, 11, 'Tablets'),
(10, 'Smart TV 55 Pulgadas 4K', 'Samsung', 650000.00, 20, 'Televisores'),
(11, 'Smart TV 50 Pulgadas 4K', 'LG', 580000.00, 16, 'Televisores'),
(12, 'Auriculares WH-1000XM5', 'Sony', 480000.00, 22, 'Audio'),
(13, 'Parlante Flip 6 Bluetooth', 'JBL', 195000.00, 35, 'Audio'),
(14, 'Mouse Inalámbrico MX Master', 'Logitech', 110000.00, 40, 'Accesorios'),
(15, 'Teclado Mecánico G Pro', 'Logitech', 145000.00, 0, 'Accesorios');

-- -------------------------------------------------------
-- 2. CARGA DE DATOS EN TABLA: clientes (12 registros)
-- -------------------------------------------------------
INSERT INTO clientes (idCliente, nombre, apellido, email, localidad) VALUES
(1, 'Mariano', 'López', 'mariano.lopez@gmail.com', 'Rosario'),
(2, 'Valeria', 'Fernández', 'valeria.f@hotmail.com', 'Córdoba'),
(3, 'Gonzalo', 'Suárez', 'gonza.s@yahoo.com', 'Buenos Aires'),
(4, 'Camila', 'Navarro', 'camila.n@gmail.com', 'Paraná'),
(5, 'Esteban', 'Pérez', 'esteban.p@gmail.com', 'Santa Fe'),
(6, 'Florencia', 'Benítez', 'flor.b@outlook.com', 'Mendoza'),
(7, 'Javier', 'Giménez', 'javier.g@gmail.com', 'Rosario'),
(8, 'Romina', 'Cardozo', 'romina.c@hotmail.com', 'Córdoba'),
(9, 'Matías', 'Herrera', 'matias.h@gmail.com', 'Buenos Aires'),
(10, 'Lucía', 'Morales', 'lucia.m@yahoo.com', 'Paraná'),
(11, 'Diego', 'Vázquez', 'diego.v@gmail.com', 'Santa Fe'),
(12, 'Paula', 'Rios', 'paula.rios@outlook.com', 'Mendoza');

-- -------------------------------------------------------
-- 3. CARGA DE DATOS EN TABLA: ventas (25 registros)
-- -------------------------------------------------------
INSERT INTO ventas (idVenta, idCliente, idProducto, fecha, cantidad, metodo_pago) VALUES
(1, 1, 1, '2024-04-02', 1, 'Tarjeta de Crédito'),
(2, 2, 3, '2024-04-03', 2, 'Transferencia'),
(3, 3, 5, '2024-04-05', 1, 'Tarjeta de Crédito'),
(4, 4, 14, '2024-04-06', 3, 'Efectivo'),
(5, 5, 2, '2024-04-08', 1, 'Tarjeta de Crédito'),
(6, 6, 10, '2024-04-10', 1, 'Transferencia'),
(7, 7, 4, '2024-04-11', 2, 'Efectivo'),
(8, 8, 8, '2024-04-12', 1, 'Tarjeta de Crédito'),
(9, 9, 13, '2024-04-15', 2, 'Transferencia'),
(10, 10, 6, '2024-04-15', 1, 'Tarjeta de Crédito'),
(11, 11, 12, '2024-04-16', 1, 'Efectivo'),
(12, 12, 1, '2024-04-18', 1, 'Tarjeta de Crédito'),
(13, 1, 14, '2024-04-20', 4, 'Efectivo'),
(14, 2, 7, '2024-04-22', 1, 'Transferencia'),
(15, 3, 11, '2024-04-23', 1, 'Tarjeta de Crédito'),
(16, 4, 3, '2024-04-25', 1, 'Efectivo'),
(17, 5, 9, '2024-04-26', 1, 'Tarjeta de Crédito'),
(18, 6, 13, '2024-04-28', 3, 'Transferencia'),
(19, 7, 2, '2024-05-02', 1, 'Tarjeta de Crédito'),
(20, 8, 4, '2024-05-04', 2, 'Efectivo'),
(21, 9, 5, '2024-05-06', 1, 'Tarjeta de Crédito'),
(22, 10, 12, '2024-05-08', 2, 'Transferencia'),
(23, 11, 8, '2024-05-10', 1, 'Tarjeta de Crédito'),
(24, 12, 10, '2024-05-12', 1, 'Transferencia'),
(25, 1, 3, '2024-05-15', 1, 'Efectivo');
