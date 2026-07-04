/* LISTAR LOS PRODUCTOS CON STOCK MENOR A 5 UNIDADES */

select id_producto, nombre, stock 
from  producto p 
where stock < 5;

/* Calcular ventas totales de un mes específico. */

select sum(dv.precio_unitario * cantidad) 
from venta v
join detalle_venta dv on v.id_venta = dv.id_venta
where v.fecha between '2026-07-01' and '2026-07-30';

/* Obtener el cliente con más compras realizadas. */

select c.id_cliente, c.nombre1, c.apellido1, c.telefono, count(v.id_cliente)
from cliente c
join venta v on c.id_cliente = v.id_cliente
order by v.id_cliente desc;
