-- Sectores
INSERT INTO Sector (cant_emp, presupuesto, nombre, ubicacion, lider_resp, fecha_creac)
VALUES
(0, 100000, 'Administración', 'Piso 1', 'Ana Torres', '2023-01-01'),
(0, 150000, 'Producción', 'Planta Baja', 'Carlos Ruiz', '2023-01-01');

-- Empleados
INSERT INTO Empleado (edad, antiguedad, salario, horas_trab, nombre_apellido, direccion, email, genero, cargo, fecha_nac, fecha_contr, ID_depto)
VALUES
(30, 5, 55000, 160, 'Lucia Romero', 'Calle Falsa 123', 'lucia@empresa.com', 'F', 'Analista', '1993-06-15', '2018-04-10', 1),
(40, 10, 70000, 180, 'Pedro Gómez', 'Av. Siempre Viva 742', 'pedro@empresa.com', 'M', 'Supervisor', '1984-11-20', '2013-09-01', 2);

-- Asistencias
INSERT INTO Asistencia (minutos_tarde, horas_extra, estado, motivo, observaciones, fecha_asist, hora_ingreso, hora_salida, ID_empleado)
VALUES
(0, 2.5, 'Presente', NULL, '', '2024-10-01', '08:00:00', '17:00:00', 1),
(15, 0, 'Tarde', 'Tráfico', 'Demorado por embotellamiento', '2024-10-01', '08:15:00', '17:00:00', 2);

