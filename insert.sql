-- INSERCIONES

/* PROVEEDORES */
insert into proveedor(nombre, telefono, correo) values
('Apple', '300000', 'apple@gmail.com'),
('Microsoft', '311111', 'microsoft@gmail.com'),
('Tech', '3222222', 'tech@gmail.com'),
('Computo', '3020202', 'computo@gmail.com'),
('Compumax', '390909090', 'compumax@gmail.com'),
('Google', '39389333', 'google@gmail.com'),
('Dell', '5000000', 'dell@gmail.com'),
('Samsung', '323232323', 'samsung@gmail.com'),
('Sk Hynix', '321233', 'skhynix@gmail.com'),
('Android', '3333333', 'android@gmail.com');

/* CLIENTES */

insert into cliente(nombre1, nombre2, apellido1, apellido2, correo, telefono) values
('Joel', 'Santiago', 'Martinez', 'Pinzon', 'joel@gmail.com', '3000000'),
('Victor', '', 'Guzman', '', 'victor@gmail.com', '323232323'),
('Juan', '', 'Perez', '',  'juan@gmail.com', '333333'),
('Marcos', '', 'Marquez', '', 'marcos@gmail.com', '300000333'),
('Carlos', 'Alberto', 'Aldana', '', 'carlos@gmail.com', '3111111'),
('Joel', 'Santiago', 'Pinzon', 'Pinzon', 'joels@gmail.com', '30000010'),
('Victor', 'Alfonso', 'Guzman', '', 'victora@gmail.com', '3232332323'),
('Juanes', '', 'Perez', '',  'juanp@gmail.com', '3333433'),
('Marcos', '', 'Zuluaga', '', 'marcoss@gmail.com', '3000003333'),
('Mateo', 'Alberto', 'Aldana', '', 'carlosb@gmail.com', '31211111');

/* CATEGORIA */

insert into categoria(nombre_categoria) values
('Electrodomesticos'), ('Celulares'), ('Discos duros'), ('Audifonos'), ('Monitores');

/* PRODUCTOS */

insert into producto(nombre, precio, stock, id_proveedor, id_categoria) values
('iPhone 17', 4000000.00, 50, 3, 2),
('Samsung s26', 3800000.00, 50, 10, 2),
('Disco SSD', 200000.00, 100, 11, 3),
('Monitor K1', 1000000, 30, 9, 5),
('Nevera Inverter', 2800000, 15, 10, 1);

/* VENTAS */

insert into venta(id_cliente, fecha) values
(8, '2026-08-27'),
(5, '2026-12-13'),
(2, '2026-05-03'),
(1, '2026-04-28'),
(6, '2026-07-14');

/* DETALLE VENTA */

insert into detalle_venta(id_producto, id_venta, precio_unitario, cantidad) values
(1, 2, 4000000.00, 1),
(3, 5, 200000.00, 4),
(5, 1, 2800000.00, 1),
(4, 2, 1000000.00, 50),
(2, 4, 3800000.00, 2),
(1, 6, 4000000.00, 3);








