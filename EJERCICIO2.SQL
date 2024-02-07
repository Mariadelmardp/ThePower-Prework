/*1. Crea una base de datos llamada "MiBaseDeDatos".*/

/*2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "edad" (entero).*/
CREATE TABLE IF NOT EXISTS Usuarios (
	id INT PRIMARY KEY,
	name VARCHAR (255),
	age	INT
)
/*3. Inserta dos registros en la tabla "Usuarios".*/
INSERT INTO Usuarios (id, name, age)
VALUES (1,'María', 41)
INSERT INTO Usuarios (id, name, age)
VALUES (2,'Santiago', 35)
/*4. Actualiza la edad de un usuario en la tabla "Usuarios"*/
.UPDATE public.usuarios
SET age=42
WHERE name ='María'
/*5. Elimina un usuario de la tabla "Usuarios".*/
DELETE FROM public.usuarios
WHERE id=1
/*1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "pais" (texto).*/
CREATE TABLE IF NOT EXISTS Ciudades(
	id INT PRIMARY KEY,
	name VARCHAR (255),
	country VARCHAR (255)
)
/*2. Inserta al menos tres registros en la tabla "Ciudades".*/
INSERT INTO public.ciudades (id, name, country)
VALUES (1, 'Madrid', 'España')
INSERT INTO public.ciudades (id, name, country)
VALUES (2, 'Paris', 'Francia')
INSERT INTO public.ciudades (id, name, country)
VALUES (3, 'Venecia', 'Italia')
/*3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id"
de la tabla "Ciudades".*/
ALTER TABLE public.usuarios 
ADD CONSTRAINT FK_usuarios_id FOREIGN KEY (ID) REFERENCES CIUDADES(ID)
/*4. Realiza una consulta que muestre los nombres de los usuarios junto con el
nombre de su ciudad y país (utiliza un LEFT JOIN).*/
SELECT usuarios.name, ciudades.name FROM PUBLIC.USUaRIOS
LEFT JOIN public.ciudades
ON usuarios.id =ciudades.id
/*5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad
asociada (utiliza un INNER JOIN).*/
SELECT usuarios.name, ciudades.name FROM PUBLIC.USUaRIOS
INNER JOIN public.ciudades
ON usuarios.id =ciudades.id