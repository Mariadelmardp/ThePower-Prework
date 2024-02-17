/*Crea una tabla llamada "Clientes" con las columnas id (entero) y nombre
(cadena de texto).*/
CREATE TABLE IF NOT EXISTS Clientes(
	id SERIAL PRIMARY KEY,
	name VARCHAR (255)
	)
/*2. Inserta un cliente con id=1 y nombre='John' en la tabla "Clientes".*/
INSERT INTO Clientes (name)
VALUES ('John'
/*3. Actualiza el nombre del cliente con id=1 a 'John Doe' en la tabla "Clientes".*/
UPDATE public.Clientes
set name ='John Doe'
Where id=1
/*Ejercicios 4
4. Elimina el cliente con id=1 de la tabla "Clientes".*/
Delete from public.clientes
where id=1
/*5. Lee todos los clientes de la tabla "Clientes".*/
SELECT FROM public.clientes
/*6. Crea una tabla llamada "Pedidos" con las columnas id (entero) y cliente_id
(entero).*/
NOTICE:  la relación «pedidos» ya existe, omitiendo
CREATE TABLE

Query returned successfully in 40 msec
/*LLAMARE A MI TABLA PEDIDOS2*/
CREATE TABLE IF NOT EXISTS Pedidos2(
	id SERIAL PRIMARY KEY,
	cliente_id INT
)

/*7. Inserta un pedido con id=1 y cliente_id=1 en la tabla "Pedidos".*/
INSERT INTO public.pedidos2 (cliente_id)
VALUES (1)
/*8. Actualiza el cliente_id del pedido con id=1 a 2 en la tabla "Pedidos".*/
ERROR:  no existe la relación «publics.pedidos2»
LINE 1: UPDATE publics.pedidos2 /* ENTIEDO Q NO ES POSIBLE POR QUE ES UN PRIMARY KEY*/
/*9. Elimina el pedido con id=1 de la tabla "Pedidos".*/
DELETE FROM public.pedidos2
WHERE id=1
/*10. Lee todos los pedidos de la tabla "Pedidos".*/
SELECT FROM public.pedidos2
/*11. Crea una tabla llamada "Productos" con las columnas id (entero) y nombre
(cadena de texto).*/
CREATE TABLE IF NOT EXISTS Productos2(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
	)
/*12. Inserta un producto con id=1 y nombre='Camisa' en la tabla "Productos".*/
INSERT INTO public.productos2 (name)
VALUES ('Camiseta')
/*13. Actualiza el nombre del producto con id=1 a 'Pantalón' en la tabla "Productos".*/
UPDATE public.productos2 
SET name = 'Pantalón'
WHERE id=
/*14. Elimina el producto con id=1 de la tabla "Productos".*/
DELETE FROM public.productos2 
WHERE id=1
/*15. Lee todos los productos de la tabla "Productos".*/
SELECT FROM public.productos2 
/*16. Crea una tabla llamada "DetallesPedido" con las columnas pedido_id (entero) y producto_id (entero).*/
CREATE TABLE IF NOT EXISTS DetallesDePedido (
	id SERIAL,
	pedido_id INT,
	producto_id INT
)
/*17. Inserta un detalle de pedido con pedido_id=1 y producto_id=1 en la tabla "DetallesPedido".*/
INSERT INTO public.DetalleSDePedido (pedido_id, producto_id)
VALUES (1,1)
/*18. Actualiza el producto_id del detalle de pedido con pedido_id=1 a 2 en la tabla"DetallesPedido".*/
UPDATE public.detallesdepedido
set producto_id = 2
WHERE pedido_id= 1
/*19. Elimina el detalle de pedido con pedido_id=1 de la tabla "DetallesPedido".*/
DELETE FROM public.detallesdepedido
WHERE pedido_id=1

/*20. Lee todos los detalles de pedido de la tabla "DetallesPedido".*/

SELECT * FROM public.detallesdepedido
/*21. Realiza una consulta para obtener todos los clientes y sus pedidos
correspondientes utilizando un inner join.*/
SELECT * FROM public.clientes
INNER JOIN public.pedidos
ON clientes.id = pedidos.id_usuario
/*22. Realiza una consulta para obtener todos los clientes y sus pedidos
correspondientes utilizando un left join.*/
SELECT * FROM public.clientes
LEFT JOIN public.pedidos
ON clientes.id = pedidos.id_usuario

/*23. Realiza una consulta para obtener todos los productos y los detalles de pedido
correspondientes utilizando un inner join.*/
SELECT *  FROM public.detallesdepedido
INNER JOIN public.productos
ON detallesdepedido.producto_id = productos.id
/*24. Realiza una consulta para obtener todos los productos y los detalles de pedido
correspondientes utilizando un left join*/
SELECT productos.name, detallesdepedido.producto_id  FROM public.detallesdepedido
LEFT JOIN public.productos
ON detallesdepedido.producto_id = productos.id

/*25. Crea una nueva columna llamada "telefono" de tipo cadena de texto en la tabla
"Clientes".*/
ALTER TABLE public.clientes
ADD telefono VARCHAR (255)
/*26. Modifica la columna "telefono" en la tabla "Clientes" para cambiar su tipo de
datos a entero.*/
ALTER TABLE public.clientes
ALTER COLUMN telefono TYPE INT
USING telefono::INT;
/*27. Elimina la columna "telefono" de la tabla "Clientes".*/

ALTER TABLE public.clientes
DROP COLUMN telefono
/*28. Cambia el nombre de la tabla "Clientes" a "Usuarios".*/
ALTER TABLE public.clientes
RENAME TO usuario
/*29. Cambia el nombre de la columna "nombre" en la tabla "Usuarios" a
"nombre_completo".*/
ALTER TABLE public.usuario
RENAME COLUMN name TO nombre_completo
/*0. Agrega una restricción de clave primaria a la columna "id" en la tabla "Usuarios"*/
/* Ya la tenia crea desde un inico*/