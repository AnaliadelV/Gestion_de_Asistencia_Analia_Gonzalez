DELIMITER $$
CREATE PROCEDURE sp_InsertarEmpleado (
    IN p_nombre_apellido VARCHAR(100),
    IN p_edad INT,
    IN p_salario DECIMAL(10,2),
    IN p_ID_depto INT
)
BEGIN
  INSERT INTO Empleado(nombre_apellido, edad, salario, ID_depto)
  VALUES (p_nombre_apellido, p_edad, p_salario, p_ID_depto);
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE sp_AsistenciaDelDia (IN p_fecha DATE)
BEGIN
  SELECT A.*, E.nombre_apellido
  FROM Asistencia A
  JOIN Empleado E ON A.ID_empleado = E.ID_empleado
  WHERE A.fecha_asist = p_fecha;
END$$
DELIMITER ;

