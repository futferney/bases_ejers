CREATE database colegio;

USE colegio;

create table profesor(
dni_profe VARCHAR(40) UNIQUE primary key,
nombre VARCHAR(40),
direccion VARCHAR(40),
telefono varchar(40),
correo varchar(40),
creado timestamp default current_timestamp
);

create table modulo(
code_modulo INT UNIQUE primary key,
nombre VARCHAR(40),
dni_profe VARCHAR(40),
creado timestamp default current_timestamp
);

create table alumno(
id_alumno INT UNIQUE primary key,
nombre VARCHAR(40),
apellido VARCHAR(40),
edad varchar(40),
fecha_nacimiento date,
creado timestamp default current_timestamp
);

create table alumnomodulo(
id_modulo INT UNIQUE primary key,
id_alumno INT,
code_modulo INT,
creado timestamp default current_timestamp
);

create table grupos(
id_grupo INT UNIQUE primary key,
id_modulo VARCHAR(40),
id_alumno VARCHAR(40),
creado timestamp default current_timestamp
);

ALTER TABLE modulo
ADD CONSTRAINT fk_profesor
FOREIGN KEY (dni_profe) REFERENCES profesor(dni_profe);

ALTER TABLE alumnomodulo
ADD CONSTRAINT fk_alumno
FOREIGN KEY (id_alumno) REFERENCES alumno(id_alumno);

ALTER TABLE alumnomodulo
ADD CONSTRAINT fk_modulo
FOREIGN KEY (code_modulo) REFERENCES modulo(code_modulo);

ALTER TABLE grupos
ADD CONSTRAINT fk_alumno
FOREIGN KEY (id_alumno) REFERENCES alumno(id_alumno);

ALTER TABLE grupos
ADD CONSTRAINT fk_alumnomodulo
FOREIGN KEY (id_modulo) REFERENCES alumno(id_modulo);
