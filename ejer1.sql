create database productos;
use productos; 
create table clientes(
id_clientes INT auto_increment primary key,
nombre varchar(40) not null,
apellido varchar(40) not null,
identificacion varchar(40) unique,
direccion varchar(40),
fecha_nacimientoa date,
creado timestamp default current_timestamp
);

create table proveedores(
id_pobredor INT auto_increment primary key,
nombre varchar(40) not null,
direccion varchar(40) not null,
telefono varchar(40),
nit varchar(40),
creado timestamp default current_timestamp
);

create table producto(
id_producto INT auto_increment primary key,
nombre_produto varchar(40) not null,
precio varchar(40),
cantidad varchar(40),
id_pobredor int,
creado timestamp default current_timestamp
);

create table compras(
id_compra INT auto_increment primary key,
id_clientes int,
id_producto int,
cantidad varchar(50),
fecha_venta date,
creado timestamp default current_timestamp
);

ALTER TABLE producto
ADD CONSTRAINT fk_proveedores
FOREIGN KEY (id_pobredor) REFERENCES proveedores(id_pobredor);

ALTER TABLE compras
ADD CONSTRAINT fk_clientes
FOREIGN KEY (id_clientes) REFERENCES clientes(id_clientes);

ALTER TABLE compras
ADD CONSTRAINT fk_producto
FOREIGN KEY (id_producto) REFERENCES producto(id_producto);

