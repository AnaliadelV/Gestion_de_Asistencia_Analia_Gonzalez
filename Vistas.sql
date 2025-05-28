CREATE VIEW Vista_AsistenciaCompleta AS
SELECT A.ID_asistencia, E.nombre_apellido, S.nombre AS sector, A.fecha_asist, A.hora_ingreso, A.hora_salida,
       A.minutos_tarde, A.horas_extra, A.estado
FROM Asistencia A
JOIN Empleado E ON A.ID_empleado = E.ID_empleado
JOIN Sector S ON E.ID_depto = S.ID_depto;


CREATE VIEW Vista_ResumenHorasPorEmpleado AS
SELECT E.ID_empleado, E.nombre_apellido,
       SUM(A.horas_extra) AS TotalHorasExtra,
       SUM(A.minutos_tarde) AS TotalMinutosTarde
FROM Asistencia A
JOIN Empleado E ON A.ID_empleado = E.ID_empleado
GROUP BY E.ID_empleado, E.nombre_apellido;
