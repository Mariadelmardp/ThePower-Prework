/*
1. Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria),
nombre (texto) y email (texto).
*/
CREATE TABLE IF NOT EXISTS Clientes(
	id INT PRIMARY KEY,
	name TEXT,
	email TEXT
)
/*2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y
email="juan@example.com".
*/
INSERT INTO Clientes (id, name, email)
VALUES (1, 'Juan', 'juan@example.com')
/*
3. Actualizar el email del cliente con id=1 a "juan@gmail.com".*/
UPDATE public.clientes
set email='juan@gmail.com'
where id=1
/*4. Eliminar el cliente con id=1 de la tabla "Clientes".*/
DELETE FROM public.clientes
where id=1
/*5. Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria),
cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto
(texto) y cantidad (entero).*/
CREATE TABLE IF NOT EXISTS Pedidos(
	id INT PRIMARY KEY,
	cliente_id INT,
	producto  varchar (255),
	cantidad  VARCHAR (255),
	CONSTRAINT FK_cliente_id FOREIGN KEY (cliente_id) REFERENCES CLIENTES (ID)
)
/*6. Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1,
producto="Camiseta" y cantidad=2.*/
INSERT INTO pedidos (id, cliente_id, producto, cantidad)
VALUES(1,1,'camiseta',2)
/*7. Actualizar la cantidad del pedido con id=1 a 3.*/
UPDATE public.pedidos
set cantidad=3
where id=1
/*8. Eliminar el pedido con id=1 de la tabla "Pedidos".*/
DELETE FROM public.pedidos
WHERE id=1
/*9. Crear una tabla llamada "Productos" con las columnas: id (entero, clave
primaria), nombre (texto) y precio (decimal).*/
CREATE TABLE IF NOT EXISTS Productos(
	id INT PRIMARY KEY,
	name VARCHAR(255),
	price DECIMAL
)
/*10. Insertar varios productos en la tabla "Productos" con diferentes valores.*/
INSERT INTO public.productos (id, name, price)
values(1, 'pantalones', 85.5)
INSERT INTO public.productos (id, name, price)
VALUES (2, 'cALCETINES', 5.85)
/*11. Consultar todos los clientes de la tabla "Clientes".*/
SELECT*FROM public.clientes 
WHERE name ILIKE '%c'
/*12. Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los
clientes correspondientes.*/
SELECT*FROM public.pedidos 
WHERE producto ILIKE '%c'and cliente_id ILIKE'%c'
/*13. Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50.*/
SELECT*FROM public.productos
WHERE price >50

/*14. Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o
igual a 5.*/
SELECT*FROM public.pedidos
WHERE cantidad >= '5'
/*15. Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra
"A".
*/
SELECT*FROM public.clientes
WHERE name ILIKE 'A%'