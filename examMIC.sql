CREATE DATABASE servicios;

USE servicios;


CREATE TABLE clientes(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	telefono VARCHAR(50) NOT NULL,
	cedula VARCHAR(30) NOT NULL
);

CREATE TABLE tecnico(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE repuestos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre_repuesto VARCHAR(100) NOT NULL
);

CREATE TABLE ticket(
	id INT AUTO_INCREMENT PRIMARY KEY,
	fecha DATE NOT NULL,
	FOREIGN KEY (id) REFERENCES clientes (id),
	FOREIGN KEY (id) REFERENCES tecnico (id),
	FOREIGN KEY (id) REFERENCES repuestos (id)
);

SELECT t.nombre, COUNT(t.id) AS registros 
FROM tecnico t
INNER JOIN nombre t  ON t.nombre = t.id
GROUP BY t.id, t.nombre;



