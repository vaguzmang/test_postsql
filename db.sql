create schema if not exists TechZone;


drop table proveedor;
create table if not exists Proveedor (
	id_proveedor SERIAL primary KEY,
	nombre varchar(100) not null,
	telefono varchar(15) not null,
	correo varchar(100) not null
);

create table if not exists Categoria (
	id_categoria SERIAL primary key,
	nombre_categoria varchar(100) not null
);

create table if not exists Venta (
	id_venta SERIAL primary key,
	id_cliente SERIAL,
	fecha timestamp,
	foreign key(id_cliente) references Cliente(id_cliente)
);

create table if not exists Cliente (
	id_cliente SERIAL primary key,
	nombre1 varchar(100) not null,
	nombre2 varchar(100),
	apellido1 varchar(100) not null,
	apellido2 varchar(100),
	correo varchar(150) unique not null,
	telefono varchar(15) not null
);

create table if not exists Producto (
	id_producto SERIAL primary key,
	nombre varchar(100) unique not null,
	precio numeric(10,2) not null,
	stock integer not null,
	id_proveedor integer,
	id_categoria integer,
	foreign key (id_proveedor) references Proveedor(id_proveedor),
	foreign key (id_categoria) references Categoria(id_categoria)
);

create table if not exists detalle_venta (
	id_producto integer,
	id_venta integer,
	precio_unitario numeric(10,2) not null,
	cantidad integer not null,
	foreign key (id_producto) references Producto(id_producto),
	foreign key (id_venta) references Venta(id_venta)
);










