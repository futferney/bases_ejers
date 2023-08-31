CREATE DATABASE hospital;

use hospital;

CREATE TABLE pacientes(
    id_pacientes INT auto_increment PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    dirrecion VARCHAR(40) NOT NULL,
    poblacion VARCHAR(40) NOT NULL,
    municipio VARCHAR(40) NOT NULL,
    codigo_postal VARCHAR(40) NOT NULL,
    telefono VARCHAR(40) NOT NULL,
    fecha_nacimiento DATE,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE medicos(
    id_medicos INT auto_increment PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    telefono VARCHAR(40) NOT NULL,
    especialidad VARCHAR(40) NOT NULL,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ingresos(
    id_ingresos INT auto_increment PRIMARY KEY,
    id_medicos INT,
    id_pacientes INT,
    nun_habitacion INT,
    nun_cama INT,
    fecha_ingreso datetime,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE ingresos
ADD CONSTRAINT fk_pacientes
FOREIGN KEY (id_pacientes) REFERENCES pacientes(id_pacientes);

ALTER TABLE ingresos
ADD CONSTRAINT fk_medicos
FOREIGN KEY (id_medicos) REFERENCES medicos(id_medicos);

