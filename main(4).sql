-- Crear tabla Edificio
CREATE TABLE Edificio (
  Id_Edificio INT PRIMARY KEY,
  Nombre_Edificio VARCHAR(100) NOT NULL
);

-- Crear tabla Camino
CREATE TABLE Camino (
  Id_Caminos INT PRIMARY KEY,
  Nombre_Caminos VARCHAR(100) NOT NULL,
  Distancia INT NOT NULL
);

-- Crear tabla Mejor Ruta
CREATE TABLE Mejor_Ruta (
  Id_Mejor_Ruta INT PRIMARY KEY,
  Nombre_MejorRuta VARCHAR(100) NOT NULL,
  Distancia INT NOT NULL
);

-- Crear tabla Peor Ruta
CREATE TABLE Peor_Ruta (
  Id_Peor_Ruta INT PRIMARY KEY,
  Nombre_PeorRuta VARCHAR(100) NOT NULL,
  Distancia INT NOT NULL
);
-- Insertar datos en Edificio
INSERT INTO Edificio VALUES (1, 'Edificio Humanidades');
INSERT INTO Edificio VALUES (2, 'Edificio Ingenierías');
INSERT INTO Edificio VALUES (3, 'Auditorio Guillermo y Sofía Jenkins');
INSERT INTO Edificio VALUES (4, 'Edificio Negocios');
INSERT INTO Edificio VALUES (5, 'Biblioteca');
INSERT INTO Edificio VALUES (6, 'Cafetería');
INSERT INTO Edificio VALUES (7, 'Edificio Medicina');

-- Insertar datos en Camino
INSERT INTO Camino VALUES (1, 'Humanidades-Ingenierías', 200);
INSERT INTO Camino VALUES (2, 'Humanidades-Auditorio', 300);
INSERT INTO Camino VALUES (3, 'Ingeniería-Medicina', 600);
INSERT INTO Camino VALUES (4, 'Auditorio-Cafetería', 300);
INSERT INTO Camino VALUES (5, 'Biblioteca-Negocios', 100);
INSERT INTO Camino VALUES (6, 'Negocios-Medicina ', 300);
INSERT INTO Camino VALUES (7, 'Biblioteca-Cafetería', 200);


-- Insertar datos en Camino
INSERT INTO Mejor_Ruta VALUES (1, 'Humanidades – Ingenierías',200);
INSERT INTO Mejor_Ruta VALUES (2, 'Humanidades – Auditorio', 300);
INSERT INTO Mejor_Ruta VALUES (3, 'Humanidades – Negocios', 900);
INSERT INTO Mejor_Ruta VALUES (4, 'Humanidades – Biblioteca', 800);
INSERT INTO Mejor_Ruta VALUES (5, 'Humanidades – Cafetería', 600);
INSERT INTO Mejor_Ruta VALUES (6, 'Humanidades – Medicina', 800);
INSERT INTO Mejor_Ruta VALUES (7, 'Ingenierías – Auditorio', 500);
INSERT INTO Mejor_Ruta VALUES (8, 'Ingenierías – Negocios', 900);
INSERT INTO Mejor_Ruta VALUES (9, 'Ingenierías – Biblioteca', 1000);
INSERT INTO Mejor_Ruta VALUES (10, 'Ingenierías – Cafetería', 800);
INSERT INTO Mejor_Ruta VALUES (11, 'Ingenierías – Medicina', 600);
INSERT INTO Mejor_Ruta VALUES (12, 'Auditorio – Negocios', 600);
INSERT INTO Mejor_Ruta VALUES (13, 'Auditorio – Biblioteca ', 500);
INSERT INTO Mejor_Ruta VALUES (14, 'Auditorio – Cafetería', 300);
INSERT INTO Mejor_Ruta VALUES (15, 'Auditorio – Medicina', 900);
INSERT INTO Mejor_Ruta VALUES (16, 'Negocios – Biblioteca', 100);
INSERT INTO Mejor_Ruta VALUES (17, 'Negocios – Cafetería', 300);
INSERT INTO Mejor_Ruta VALUES (18, 'Negocios – Medicina', 300);
INSERT INTO Mejor_Ruta VALUES (19, 'Biblioteca – Cafetería', 200);
INSERT INTO Mejor_Ruta VALUES (20, 'Biblioteca – Medicina', 400);
INSERT INTO Mejor_Ruta VALUES (21, 'Cafetería – Medicina', 600);

-- Insertar datos en Camino
INSERT INTO Peor_Ruta VALUES (1, 'Humanidades – Ingenierías', 1800);
INSERT INTO Peor_Ruta VALUES (2, 'Humanidades – Auditorio', 1700);
INSERT INTO Peor_Ruta VALUES (3, 'Humanidades – Negocios', 1100);
INSERT INTO Peor_Ruta VALUES (4, 'Humanidades – Biblioteca', 1200);
INSERT INTO Peor_Ruta VALUES (5, 'Humanidades – Cafetería', 1400);
INSERT INTO Peor_Ruta VALUES (6, 'Humanidades – Medicina', 1200);
INSERT INTO Peor_Ruta VALUES (7, 'Ingenierías – Auditorio', 1500);
INSERT INTO Peor_Ruta VALUES (8, 'Ingenierías – Negocios', 1100);
INSERT INTO Peor_Ruta VALUES (9, 'Ingenierías – Biblioteca', 1000);
INSERT INTO Peor_Ruta VALUES (10, 'Ingenierías – Cafetería', 1300);
INSERT INTO Peor_Ruta VALUES (11, 'Ingenierías – Medicina', 1400);
INSERT INTO Peor_Ruta VALUES (12, 'Auditorio – Negocios', 1400);
INSERT INTO Peor_Ruta VALUES (13, 'Auditorio – Biblioteca ', 1500);
INSERT INTO Peor_Ruta VALUES (14, 'Auditorio – Cafetería', 1700);
INSERT INTO Peor_Ruta VALUES (15, 'Auditorio – Medicina', 1100);
INSERT INTO Peor_Ruta VALUES (16, 'Negocios – Biblioteca', 1900);
INSERT INTO Peor_Ruta VALUES (17, 'Negocios – Cafetería', 1700);
INSERT INTO Peor_Ruta VALUES (18, 'Negocios – Medicina', 1700);
INSERT INTO Peor_Ruta VALUES (19, 'Biblioteca – Cafetería', 1800);
INSERT INTO Peor_Ruta VALUES (20, 'Biblioteca – Medicina', 1600);
INSERT INTO Peor_Ruta VALUES (21, 'Cafetería – Medicina', 1400);

-- Consultas
SELECT * FROM Edificio WHERE Nombre_Edificio = 'Edificio Ingenierías';
SELECT * FROM Edificio WHERE Nombre_Edificio = 'Auditorio Guillermo y Sofía Jenkins';
SELECT * FROM Camino WHERE Distancia > 250;
SELECT * FROM Camino WHERE Id_Caminos = 4;
SELECT * FROM Camino WHERE Distancia > 250 ORDER BY Distancia ASC;
SELECT * FROM Camino WHERE Distancia > (SELECT AVG(Distancia) FROM Camino);
SELECT Mejor_Ruta.Nombre_MejorRuta AS Ruta, Mejor_Ruta.Distancia AS Distancia_Mejor, Peor_Ruta.Distancia AS Distancia_Peor FROM Mejor_Ruta INNER JOIN Peor_Ruta ON (Mejor_Ruta.Nombre_MejorRuta = Peor_Ruta.Nombre_PeorRuta);
INSERT INTO Edificio(Id_Edificio,Nombre_Edificio) VALUES (8, 'Unicaja');
SELECT * FROM Edificio WHERE Id_Edificio = 8;
UPDATE Edificio SET Id_Edificio = 8 , Nombre_Edificio = 'Hacienda' WHERE Id_Edificio = 8 ;
SELECT * FROM Edificio WHERE Nombre_Edificio = 'Hacienda';

