CREATE DATABASE IF NOT EXISTS GestionAsistenciaRRHH;
USE GestionAsistenciaRRHH;

CREATE TABLE IF NOT EXISTS Sector (
    ID_depto INT NOT NULL AUTO_INCREMENT,
    cant_emp INT,
    presupuesto DECIMAL(15,2),
    nombre VARCHAR(100),
    ubicacion VARCHAR(100),
    lider_resp VARCHAR(100),
    fecha_creac DATE,
    fecha_eli DATE,
    fecha_reestr DATE,
    PRIMARY KEY (ID_depto)
);

CREATE TABLE IF NOT EXISTS Empleado (
    ID_empleado INT NOT NULL AUTO_INCREMENT,
    edad INT,
    antiguedad INT,
    salario DECIMAL(10,2),
    horas_trab DECIMAL(5,2),
    nombre_apellido VARCHAR(100),
    direccion VARCHAR(150),
    email VARCHAR(100),
    genero CHAR(1),
    cargo VARCHAR(50),
    fecha_nac DATE,
    fecha_contr DATE,
    fecha_term DATE,
    ID_depto INT,
    PRIMARY KEY (ID_empleado),
    FOREIGN KEY (ID_depto) REFERENCES Sector(ID_depto)
);

CREATE TABLE IF NOT EXISTS Asistencia (
    ID_asistencia INT NOT NULL AUTO_INCREMENT,
    minutos_tarde INT,
    horas_extra DECIMAL(5,2),
    estado VARCHAR(20),
    motivo VARCHAR(100),
    observaciones TEXT,
    fecha_asist DATE,
    hora_ingreso TIME,
    hora_salida TIME,
    ID_empleado INT,
    PRIMARY KEY (ID_asistencia),
    FOREIGN KEY (ID_empleado) REFERENCES Empleado(ID_empleado)
);