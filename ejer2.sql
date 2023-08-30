create database transporte;

use transporte; 

create table camioneros(
dni_camioneros VARCHAR(40) primary key,
nombre varchar(40) not null,
apellido varchar(40) not null,
telefono varchar(40) NOT NULL,
direccion varchar(40),
salario varchar(40),
poblacion VARCHAR(40),
creado timestamp default current_timestamp
);

INSERT INTO 'camionero' ('dni_camioneros', 'nombre', 'apellido', 'telefono', 'direccion', 'salario', 'poablacion')
VALUES(1234, 'sofia','perez', 2142563225, 'garzon', 1500000, 'garzon');

INSERT INTO 'camionero' ('dni_camioneros', 'nombre','apellido', 'telefono', 'direccion', 'salario', 'poablacion')
VALUES(1235, 'luasor','lombana', 2142563224, 'villa_alejandra', 1500000, 'garzon');

INSERT INTO 'camionero' ('dni_camioneros', 'nombre','apellido', 'telefono', 'direccion', 'salario', 'poablacion')
VALUES(1236, 'pedro', 'rodrigues', 2142563223, 'san_fransisco', 1500000, 'agrado');

create table provincias(
code_provincias VARCHAR(40) primary key,
nombre varchar(40) ,
ubicacion varchar(40) ,
creado timestamp default current_timestamp
);

INSERT INTO provincias ('code_provincias', 'nombre', 'ubicacion')
VALUES ('694255', 'dayana', 'neiva');

INSERT INTO provincias ('code_provincias', 'nombre', 'ubicacion')
VALUES ('0708971', 'luisa', 'medellin');

INSERT INTO provincias ('code_provincias', 'nombre', 'ubicacion')
VALUES ('7708155', 'fernando', 'barranquilla');

create table paquetes(
code_paquetes INT auto_increment primary key,
descricion varchar(40),
destinatario varchar(40),
direccion varchar(40),
dni_camioneros varchar(40),
code_provincias varchar(40),
creado timestamp default current_timestamp
);

INSERT INTO paquetes (code_paquetes descricion destinatario direccion dni_camioneros code_provincias)

create table camiones(
matricula VARCHAR(40) primary key,
modelo varchar(40),
tipo varchar(40),
potencia varchar(40),
creado timestamp default current_timestamp
);

INSERT INTO camiones ('matricula', 'modelo', 'tipo', 'potencia') 
VALUES(8556, 'nisan', 'cuatro x cuatro', 'alta');

INSERT INTO camiones ('matricula', 'modelo', 'tipo', 'potencia')
VALUES(4766, 'ford', 'band', 'baja');

INSERT INTO camiones ('matricula', 'modelo', 'tipo', 'potencia')
VALUES(9996, 'ford', 'cuatro x cuatro', 'media');

create table conducioncamion(
id_conductor INT auto_increment primary key,
dni_camioneros INT,
matricula varchar(40),
uso varchar(40),
creado timestamp default current_timestamp
);

ALTER TABLE paquetes
ADD CONSTRAINT fk_camioneros
FOREIGN KEY (dni_camioneros) REFERENCES camioneros(dni_camioneros);

ALTER TABLE paquetes
ADD CONSTRAINT fk_provincias
FOREIGN KEY (code_provincias) REFERENCES provincias(code_provincias);

ALTER TABLE conducioncamion
ADD CONSTRAINT fk_camioneros
FOREIGN KEY (dni_camioneros) REFERENCES camioneros(dni_camioneros);

ALTER TABLE conducioncamion
ADD CONSTRAINT fk_camiones
FOREIGN KEY (matricula) REFERENCES camioneros(matricula);



