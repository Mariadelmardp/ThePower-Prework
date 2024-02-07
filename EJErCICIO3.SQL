/*1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "precio" (numérico).*/
CREATE TABLE IF NOT EXISTS Productos (
	id INT PRIMARY KEY,
	name VARCHAR(255),
	price INT
)
/*2. Inserta al menos cinco registros en la tabla "Productos".*/
INSERT INTO public.productos (id, name, price)
VALUES (1, 'Plátanos', 2)
INSERT INTO public.productos (id, name, price)
VALUES (2, 'mango', 2),(3,'papaya',3)
INSERT INTO public.productos (id, name, price)
VALUES (4, 'kiwi', 6),(5,'Fresa',8)
/*3. Actualiza el precio de un producto en la tabla "Productos".*/
UPDATE public.productos 
set price=20
where name = 'papaya'
/*4. Elimina un producto de la tabla "Productos".*/
DELETE FROM public.productos
where name='plátano'
/*5. Realiza una consulta que muestre los nombres de los usuarios junto con los
nombres de los productos que han comprado (utiliza un INNER JOIN con la
tabla "Productos").*/
ALTER TABLE public.usuarios
ADD CONSTRAINT FK_usuarios_name FOREIGN KEY (id) REFERENCES productos(id)