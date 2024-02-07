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
producto="Camiseta" y cantidad=2.
7. Actualizar la cantidad del pedido con id=1 a 3.
8. Eliminar el pedido con id=1 de la tabla "Pedidos".
9. Crear una tabla llamada "Productos" con las columnas: id (entero, clave
primaria), nombre (texto) y precio (decimal).
10. Insertar varios productos en la tabla "Productos" con diferentes valores.
11. Consultar todos los clientes de la tabla "Clientes".
12. Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los
clientes correspondientes.
13. Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50.
14. Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o
igual a 5.
15. Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra
"A".
*/
