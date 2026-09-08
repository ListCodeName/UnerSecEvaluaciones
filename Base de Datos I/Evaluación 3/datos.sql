-- =======================================================
-- BASE DE DATOS: saludvida
-- SCRIPT DE CARGA DE DATOS PARA EVALUACIÓN 3
-- Tablas: medicos, pacientes, turnos
-- =======================================================

USE saludvida;

-- -------------------------------------------------------
-- 1. CARGA DE DATOS EN TABLA: medicos (10 registros)
-- -------------------------------------------------------
INSERT INTO medicos (idMedico, nombre, apellido, especialidad, matricula, consultorio) VALUES
(1, 'Alejandro', 'Gómez', 'Cardiología', 'MN-45210', 1),
(2, 'Valeria', 'Ríos', 'Pediatría', 'MN-48901', 2),
(3, 'Mariano', 'López', 'Dermatología', 'MN-33120', 3),
(4, 'Claudia', 'Fernández', 'Traumatología', 'MN-51200', 4),
(5, 'Esteban', 'Martínez', 'Pediatría', 'MN-60124', 2),
(6, 'Patricia', 'Herrera', 'Cardiología', 'MN-39871', 1),
(7, 'Lucas', 'Benítez', 'Neurología', 'MN-54219', 5),
(8, 'Jimena', 'Castro', 'Oftalmología', 'MN-47120', 6),
(9, 'Roberto', 'Navarro', 'Cardiología', 'MN-29801', 1),
(10, 'Silvina', 'Paz', 'Ginecología', 'MN-62100', 3);

-- -------------------------------------------------------
-- 2. CARGA DE DATOS EN TABLA: pacientes (15 registros)
-- -------------------------------------------------------
INSERT INTO pacientes (idPaciente, nombre, apellido, anio_nacimiento, obra_social, celular) VALUES
(1, 'Martín', 'Acosta', 1985, 'OSDE', '341-5551122'),
(2, 'Luciana', 'Pérez', 1992, 'Swiss Medical', '351-4442233'),
(3, 'Diego', 'Romero', 1978, NULL, '11-6663344'),
(4, 'Camila', 'Sánchez', 2005, 'IOMA', '341-7774455'),
(5, 'Joaquín', 'Díaz', 1964, 'PAMI', '343-8885566'),
(6, 'Florencia', 'Torres', 1999, 'OSDE', '351-9996677'),
(7, 'Nicolás', 'Gutiérrez', 1988, NULL, '11-1117788'),
(8, 'Sofía', 'Álvarez', 2001, 'Medifé', '341-2228899'),
(9, 'Emiliano', 'Morales', 1973, 'Swiss Medical', '261-3339900'),
(10, 'Valentina', 'Ruiz', 2010, 'OSDE', '342-4440011'),
(11, 'Franco', 'Molina', 1995, NULL, '343-5551100'),
(12, 'Agustina', 'Ortiz', 1982, 'Galeno', '351-6662211'),
(13, 'Tomás', 'Vargas', 2008, 'OSDE', '11-7773322'),
(14, 'Micaela', 'Paredes', 1969, 'PAMI', '341-8884433'),
(15, 'Bautista', 'Silva', 2003, NULL, '261-9995544');

-- -------------------------------------------------------
-- 3. CARGA DE DATOS EN TABLA: turnos (30 registros)
-- -------------------------------------------------------
INSERT INTO turnos (idTurno, idPaciente, idMedico, fecha, hora, motivo_consulta, estado) VALUES
(1, 1, 1, '2024-05-02', '09:00:00', 'Chequeo anual', 'Atendido'),
(2, 2, 2, '2024-05-02', '09:30:00', 'Fiebre y dolor de garganta', 'Atendido'),
(3, 3, 3, '2024-05-03', '10:00:00', 'Revisión de lunares', 'Atendido'),
(4, 4, 4, '2024-05-03', '11:00:00', 'Esguince de tobillo', 'Atendido'),
(5, 5, 1, '2024-05-06', '08:30:00', 'Control de presión arterial', 'Atendido'),
(6, 6, 6, '2024-05-06', '10:30:00', 'Electrocardiograma', 'Atendido'),
(7, 7, 7, '2024-05-07', '14:00:00', 'Migrañas frecuentes', 'Atendido'),
(8, 8, 8, '2024-05-08', '15:30:00', 'Control de graduación visual', 'Atendido'),
(9, 9, 9, '2024-05-09', '09:00:00', 'Ecocardiograma', 'Atendido'),
(10, 10, 2, '2024-05-10', '11:30:00', 'Vacunación y control de peso', 'Atendido'),
(11, 11, 10, '2024-05-13', '16:00:00', 'Control ginecológico anual', 'Atendido'),
(12, 12, 3, '2024-05-14', '10:00:00', 'Alergia en piel', 'Atendido'),
(13, 13, 5, '2024-05-15', '09:30:00', 'Certificado escolar', 'Atendido'),
(14, 14, 1, '2024-05-16', '08:00:00', 'Ajuste de medicación coronaria', 'Atendido'),
(15, 15, 4, '2024-05-17', '12:00:00', 'Dolor lumbar persistente', 'Atendido'),
(16, 1, 6, '2024-05-20', '10:00:00', 'Ergometría', 'Atendido'),
(17, 2, 5, '2024-05-21', '09:00:00', 'Control pediátrico', 'Cancelado'),
(18, 3, 7, '2024-05-22', '14:30:00', 'Estudio neurológico', 'Atendido'),
(19, 4, 8, '2024-05-23', '16:00:00', 'Irritación ocular', 'Atendido'),
(20, 5, 9, '2024-05-24', '09:30:00', 'Control postoperatorio', 'Atendido'),
(21, 6, 10, '2024-06-03', '15:00:00', 'Ecografía de rutina', 'Pendiente'),
(22, 7, 1, '2024-06-03', '08:30:00', 'Consulta cardiológica', 'Pendiente'),
(23, 8, 2, '2024-06-04', '10:00:00', 'Seguimiento bronquitis', 'Pendiente'),
(24, 9, 3, '2024-06-05', '11:00:00', 'Tratamiento dermatitis', 'Pendiente'),
(25, 10, 5, '2024-06-06', '09:00:00', 'Control semestral', 'Pendiente'),
(26, 11, 4, '2024-06-07', '13:00:00', 'Rehabilitación rodilla', 'Pendiente'),
(27, 12, 6, '2024-06-10', '10:30:00', 'Monitoreo Holter', 'Pendiente'),
(28, 13, 7, '2024-06-11', '14:00:00', 'Evaluación de reflejos', 'Pendiente'),
(29, 14, 8, '2024-06-12', '16:30:00', 'Fondo de ojos', 'Pendiente'),
(30, 15, 2, '2024-06-13', '09:30:00', 'Control general', 'Cancelado');
