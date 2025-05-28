DELIMITER $$
CREATE TRIGGER trg_ActualizarCantEmp
AFTER INSERT ON Empleado
FOR EACH ROW
BEGIN
  UPDATE Sector
  SET cant_emp = cant_emp + 1
  WHERE ID_depto = NEW.ID_depto;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_DecrementarCantEmp
AFTER DELETE ON Empleado
FOR EACH ROW
BEGIN
    UPDATE Sector
    SET cant_emp = cant_emp - 1
    WHERE ID_depto = OLD.ID_depto;
END$$
DELIMITER ;
