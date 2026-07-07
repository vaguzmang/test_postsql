
# Documentación de la base de datos TechZone

## Descripción del modelo

El modelo fue diseñado para dar solución a un problema de manejo de datos persistente, empleamos un lenguaje de definición de datos y un modelo entidad relación para resolverlo, la empresa tenía que poder manejar diferentes tipos de datos y diferentes actores, tales como sus proveedores de productos, clientes, sus ventas, los productos que manejan y a qué categoría pertenecen. El sistema está definido en las siguientes tablas y campos:

### Tabla Cliente

Esta tabla permite llevar un control total de los clientes de la empresa, para comprender como son sus hábitos de compra, cada cuánto lo hacen y quiénes son, la tabla posee los siguientes campos:

1. id_cliente: Este es el identificador único en la base de datos de cada cliente, para que no hayan repeticiones o confusiones en los registros.

2. nombre1: Representa el primer nombre del cliente, no es un dato con posibilidad de ser nulo, debes digitarlo, tiene una longitud de 100 caracteres para asegurar que si el nombre es muy extenso tenga cabida en la base de datos.

3. nombre2: Representa el segundo nombre del cliente, es un dato opcional, no es obligatorio escribirlo, tiene una longitud de 100 caracteres, al igual que nombre1.

4. apellido1: Representa el primer apellido del cliente, no es un dato con posibilidad de ser nulo, debes digitarlo, tiene una longitud de 100 caracteres, igual que los nombres.

5. apellido2: Representa el segundo apellido del cliente, es un dato opcional, no es obligatorio escribirlo, tiene una longitud de 100 caracteres.

6. correo: Representa el correo electrónico de cada cliente, es un dato obligatorio y único, debes digitarlo y no pueden existir 2 iguales, tiene una longitud de 150 caracteres para asegurar que si el correo es muy largo aún asi pueda ser agregado.

7. telefono: Representa el teléfono celular del cliente, no puede ser nulo, y tiene una longitud de 15 caracteres.


### Tabla Proveedor

Esta tabla permite llevar un manejo de cada proveedor, para saber quién es el que vende los productos a la empresa y cuáles, posee los siguientes campos:

1. id_proveedor: Es el identificador único e irrepetible para cada proveedor.

2. nombre: Representa el nombre del proveedor, no puede ser nulo y tiene una longitud de 100 caracteres.

3. telefono: Representa el teléfono del proveedor, no puede ser nulo y tiene una longitud de 15 caracteres.

4. correo: Representa el correo del proveedor, no puede ser nulo y tiene una longitud de 100 caracteres para asegurar que un correo muy largo no quede fuera.


### Tabla Producto

Esta tabla permite llevar un manejo de los productos de la empresa, asegura un control preciso de los precios, stock, y qué proveedor lo maneja, la tabla posee los siguientes campos:

1. id_producto: Es el identificador único e irrepetible para cada proveedor.

2. nombre: Representa el nombre del producto, no puede ser nulo, tiene una longitud de 100 caracteres y además es único, no puede repetirse.

3. precio: Representa el precio del producto y no puede ser nulo, es un tipo de dato numeric con una longitud de (10,2), para asegurar un control estricto de los precios con decimales si es necesario.

4. stock: Representa la cantidad de unidades de cada producto, no puede ser nulo, es un tipo de dato número entero, para poder contabilizar el stock de forma eficiente.

5. id_proveedor: Representa el id del proveedor que vende un determinado producto a la empresa, es una llave foránea ya que representa a la tabla proveedor.

6. id_categoria: Representa a qué categoría pertenece este producto, es una llave foránea ya que representa la tabla categoría.


### Tabla Venta

Esta tabla habilita un control sobre las ventas realizadas por la empresa, posee los siguientes campos:

1. id_venta: Es el identificador único e irrepetible de cada venta, permite que el acceso a la información de determinada venta sea rápido y fácil.

2. id_cliente: Representa qué cliente realizó la compra, es una llave foránea ya que representa la tabla cliente.

3. fecha: Representa la fecha y hora a la que la venta fue realizada, se usa un tipo de dato time_stamp para esto.


### Tabla Categoria

Esta tabla permite registrar categorías para los productos de la empresa, tiene los siguientes campos:

1. id_categoría: Es el identificador único e irrepetible de cada categoría.

2. nombre_categoria: Representa el nombre de cada categoría, no puede ser nulo, tiene una longitud de 100 caracteres para asegurar que ninguna categoría quede fuera, es un dato tipo varchar(texto).


### Tabla detalle_venta

Esta tabla representa la información detallada por cada venta realizada, surge como tabla intermedia para solucionar el conflicto de la forma normal entre las tablas Producto y Venta. Posee los siguientes campos:

1. id_producto: Representa el producto que fue vendido, es una llave foránea ya que representa la tabla Producto.

2. id_venta: Representa en qué venta se vendió el producto, es una llave foránea ya que representa la tabla Venta.

3. precio_unitario: Representa el precio del producto de forma individual, por unidad, no puede ser nulo y es un tipo de dato numeric con longitud (10,2) para permitir el ingreso de decimales y cálculos precisos.

4. cantidad: Representa la cantidad de productos que fueron vendidos en la determinada venta, es un tipo de dato número entero y no puede ser nulo.


## Imagen del modelo entidad - relación:

<img width="984" height="658" alt="modelo_er" src="https://github.com/user-attachments/assets/e9e81a76-0138-4a84-9aa2-c9d04af79da2" />



## ¿Cómo importar y ejecutar los archivos SQL en PostgreSQL?

Para importar y ejecutar los archivos idealmente deberías tener un entorno SQL como DBeaver Community Edition, que te permitirá abrir y manipular los archivos SQL, y ejecutarlos.

- Paso 1: Descargar los archivos del repositorio.
- Paso 2: Abrirlos en DBeaver (o usar PostgreSQL en la terminal de Windows/Linux/Mac, y abrir los archivos ahí.)
- Paso 3: Crear una conexión; puedes hacerla en un localhost, en DBeaver creas la nueva conexión, pones el parámetro PostgreSQL en el gestor, y le das a localhost, en caso de tener acceso a una base de datos en la nube en servicios como Aiven, deberas crearla como Host o URL y poner los datos que te solicita DBeaver, pruebas la conexión y arrancas.
- Paso 4: Ejecutar los scripts, seleccionas el texto y presionas Alt + x, esta combinación permite ejecutar un script completo directamente.



## Descripción de cada script

1. db.sql: Este archivo contiene el DDL de TechZone, posee las tablas definidas, sus campos, sus relaciones, todo el proyecto se basa en este archivo .sql, ya que es quién posee la lógica de creación del modelo.

2. insert.sql: Este archivo contiene inserciones de datos genéricos, para poder hacer que funcionen las consultas, son datos de ejemplo, pero podrías inyectar datos reales a las tablas.

3. queries.sql: Este archivo contiene las consultas a la base de datos, la lógica de cada consulta esta implícita en este archivo .sql, que le da dinamismo a la base de datos.


## Ejemplo de cómo ejecutar las consultas

Para realizar una consulta, debes seleccionar el código o script de la consulta deseada, darle alt + x y ver el resultado, o puedes darle clic al final del código, en el punto y coma (;) y darle ctrl + enter, de esa forma también funciona. Aquí un ejemplo:

#### Obtener el cliente con más compras realizadas.

select c.id_cliente, c.nombre1, c.apellido1, c.telefono, count(v.id_venta) as total_transacciones
from cliente c
join venta v on c.id_cliente = v.id_cliente
group by c.id_cliente, c.nombre1, c.apellido1, c.telefono
order by total_transacciones desc
limit 1;

Una vez ejecutado el resultado esperado será el siguiente:

|========================================================================|
| id_cliente | nombre1   |  apellido1  | telefono  |  total_transacciones|
|========================================================================|
|   1	     |   Joel	 |  Martinez   | 3000000   |           2         |
|========================================================================|
