CREATE DATABASE COLSESONARIO;

USE COLSESONARIO;

CREATE TABLE carros(
    id_matricula VARCHAR(40) PRIMARY KEY,
    marca VARCHAR(40),
    modelo VARCHAR(40),
    color VARCHAR(40),
    valor VARCHAR(40),
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE clientes(
    id_clientes INT auto_increment PRIMARY KEY,
    nombre VARCHAR(40),
    apellido VARCHAR(40),
    dirrecion VARCHAR(40),
    ciudad VARCHAR(40),
    telefono VARCHAR(40),
    correo VARCHAR(40),
    code_interno INT,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE compras(
    id_compras VARCHAR(40) PRIMARY KEY,
    id_clientes INT,
    id_matricula VARCHAR(40),
    cantidad VARCHAR(40),
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE compras
ADD CONSTRAINT fk_carros
FOREIGN KEY (id_matricula) REFERENCES carros(id_matricula);

ALTER TABLE compras
ADD CONSTRAINT fk_clientes
FOREIGN KEY (id_clientes) REFERENCES clientes(id_clientes
0);