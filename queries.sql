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

select c.id_cliente, c.nombre1, c.apellido1, c.telefono, count(v.id_venta) as total_transacciones
from cliente c
join venta v on c.id_cliente = v.id_cliente
group by c.id_cliente, c.nombre1, c.apellido1, c.telefono
order by total_transacciones desc
limit 1;

/* Listar los productos más vendidos */

select p.id_producto, p.nombre, p.precio, dv.cantidad
from producto p
join detalle_venta dv on p.id_producto = dv.id_producto
order by dv.cantidad desc
limit 1;

/* Consultar ventas realizadas en un rango de fechas */

select v.id_venta
from venta v 
where v.fecha between '2026-01-01' and '2026-06-01';

/* Identificar clientes que no han comprado en los últimos 6 meses */

select c.id_cliente, c.nombre1, c.apellido1, c.correo, c.telefono
from cliente c 
where not exists (select 1 from venta v
	where v.id_cliente = c.id_cliente
	and v.fecha >= current_timestamp - interval '6 months'
);

