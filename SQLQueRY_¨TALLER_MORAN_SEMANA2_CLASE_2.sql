
create database taller_moran


CREATE TABLE Clientes ( 
    ClienteID INT PRIMARY KEY, 
    Nombre VARCHAR(100), 
    Apellido VARCHAR(100), 
    Email VARCHAR(100), 
    Telefono VARCHAR(15) 
); 
 
CREATE TABLE Vehiculos ( 
    VehiculoID INT PRIMARY KEY, 
    ClienteID INT, 
    Marca VARCHAR(50), 
    Modelo VARCHAR(50), 
    Año INT, 
    Placa VARCHAR(10), 
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(Cliente_ID) 
); 



CREATE TABLE Orden ( 
    OrdenID INT PRIMARY KEY, 
    VehiculoID INT, 
    Fecha DATE, 
    Total DECIMAL(10, 2), 
    Descripcion TEXT, 
    Estatus VARCHAR(30), 
    FOREIGN KEY (VehiculoID) REFERENCES Vehiculos(VehiculoID) 
); 

select * from Clientes
select * from Vehiculos
select * from Orden




---inserts de las tablas 

iNSERT INTO Clientes (ClienteID, Nombre, Apellido, Email, Telefono) VALUES
(1, 'Carla','campos','carla.caMPOS@email.com','88283911'),
(2, 'karina','Gonzalez','karina.gonzalez@email.com','89992222'),
(3, 'Luis','Fernandez','luis.fernandez@email.com','89778333'),
(4, 'tatiana','calvo','tatiana.calvo@email.com','86664444'),
(5, 'Jorge','Martinez','jorge.martinez@email.com','85455555')
;


INSERT INTO Vehiculos (VehiculoID, ClienteID, Marca, Modelo, Año, Placa) VALUES
(1, 1, 'Toyota','Corolla', 2015,'ARC123'),
(2, 1, 'Honda','Civic', 2018, 'XDC456'),
(3, 2, 'Nissan','Sentra', 2020,'MNB789'),
(4, 2, 'Ford','Focus', 2014,'PLD321'),
(5, 3, 'Chevrolet','Spark', 2019,'QWE654'),
(6, 3, 'Toyota','Yaris', 2015,'ZBT987'),
(7, 4, 'Hyundai','Elantra', 2017,'HJK432'),
(8, 4, 'Volkswagen','Jetta', 2016,'VCD741'),
(9, 5, 'Chery','tigo',2025,'kMP852')
;

UPDATE VEHICULOS
SET PLACA = 'ABC123'
WHERE VEHICULOID = 1


INSERT INTO Ordenes (OrdenID, VehiculoID, Fecha, Total, Descripcion, Estatus) VALUES
(1, 1, '2025-09-01',250.00,'Cambio de aceite y filtros', 'Completada'),
(2, 1, '2025-09-02',500.00,'Reparación de frenos', 'En Proceso'),
(3, 2, '2025-08-15',150.00,'Revisión general', 'Pendiente'),
(4, 2, '2025-09-04',320.00,'Cambio de llantas', 'Completada'),
(5, 3, '2025-07-20',420.00,'Cambio de batería', 'Completada'),
(6, 3, '2025-09-03',180.00,'Lavado y pulido', 'Pendiente'),
(7, 4, '2025-09-02',600.00,'Reparación de motor', 'En Proceso'),
(8, 4, '2025-08-10',220.00,'Cambio de frenos traseros', 'Completada'),
(9, 5, '2025-09-01',100.00,'Revisión de luces', 'Pendiente'),
(10, 5, '2025-09-03',450.00,'Cambio de suspensión', 'Completada'),
(11, 6, '2025-09-04',300.00,'Reparación de transmisión', 'En Proceso'),
(12, 6, '2025-07-28',275.00,'Cambio de bujías', 'Pendiente'), 
(13, 7, '2025-09-01',510.00,'Mantenimiento general', 'Completada'),
(14, 7, '2025-08-30',195.00,'Alineación y balanceo', 'En Proceso'),
(15, 8, '2025-09-02',350.00,'Reparación de frenos delanteros', 'Pendiente'),
(16, 8, '2025-09-04',410.00,'Revisión de suspensión', 'Completada'),
(17, 9, '2025-09-03',380.00,'Cambio de aceite', 'En Proceso'),
(18, 9, '2025-08-25',125.00,'Revisión de transmisión', 'Pendiente'),
(19, 1, '2025-09-02',260.00,'Cambio de llanta delantera', 'Completada'),
(20, 2, '2025-09-04',700.00,'Reparación completa de motor', 'Completada')
;



INSERT INTO Orden (OrdenID, VehiculoID, Fecha, Total, Descripcion, Estatus) VALUES
(1, 1, '2025-09-01', 250.00, 'Cambio de aceite y filtros', 'Completada'),
(2, 1, '2025-09-02', 500.00, 'Reparación de frenos', 'En Proceso'),
(3, 2, '2025-08-15', 150.00, 'Revisión general', 'Pendiente'),
(4, 2, '2025-09-04', 320.00, 'Cambio de llantas', 'Completada'),
(5, 3, '2025-07-20', 420.00, 'Cambio de batería', 'Completada'),
(6, 3, '2025-09-03', 180.00, 'Lavado y pulido', 'Pendiente'),
(7, 4, '2025-09-02', 600.00, 'Reparación de motor', 'En Proceso'),
(8, 4, '2025-08-10', 220.00, 'Cambio de frenos traseros', 'Completada'),
(9, 5, '2025-09-01', 100.00, 'Revisión de luces', 'Pendiente'),
(10, 5, '2025-09-03', 450.00, 'Cambio de suspensión', 'Completada'),
(11, 6, '2025-09-04', 300.00, 'Reparación de transmisión', 'En Proceso'),
(12, 6, '2025-07-28', 275.00, 'Cambio de bujías', 'Pendiente'),
(13, 7, '2025-09-01', 510.00, 'Mantenimiento general', 'Completada'),
(14, 7, '2025-08-30', 195.00, 'Alineación y balanceo', 'En Proceso'),
(15, 8, '2025-09-02', 350.00, 'Reparación de frenos delanteros', 'Pendiente'),
(16, 8, '2025-09-04', 410.00, 'Revisión de suspensión', 'Completada'),
(17, 9, '2025-09-03', 380.00, 'Cambio de aceite', 'En Proceso'),
(18, 9, '2025-08-25', 125.00, 'Revisión de transmisión', 'Pendiente'),
(19, 1, '2025-09-02', 260.00, 'Cambio de llanta delantera', 'Completada'),
(20, 2, '2025-09-04', 700.00, 'Reparación completa de motor', 'Completada')
;



Consultas: 
----1. Obtener las órdenes con estatus de “Completadas”  o “En Proceso” y cuyo total sea 
-----superior a $200. 

SELECT * 
FROM Ordenes
WHERE Estatus IN ('Completada', 'En Proceso')
AND Total > 200;


------2. Listar los vehículos de la marca "Toyota", que sean del año 2015 y que su segunda letra de 
-----la placa sea la letra “B”. 

SELECT * 
FROM Vehiculos
WHERE Marca = 'Toyota'
AND Año = 2015
AND SUBSTRING(Placa, 2, 1) = 'B'

------3. Obtener las órdenes que estén “completadas” o que tengan un total mayor a $400 o bien 
----que tengan una fecha de ingreso de este mes.  

 SELECT * FROM ORDENES
WHERE estatus = 'Completada' OR total > 400 OR Fecha > '2025-08-31'

----4. Buscar la información de todos los vehículos que sean de la marca "Honda" o "Toyota". 

SELECT *
FROM Vehiculos
WHERE Marca IN ('Honda', 'Toyota');



----5. Obtener el número de órdenes por estatus. 

SELECT Estatus, COUNT(*) AS Cantidad
FROM Ordenes
GROUP BY Estatus;

----6. Agrupe la cantidad de vehículos por año de fabricación. 



SELECT Año, COUNT(*) AS Cantidad
FROM Vehiculos
GROUP BY Año
ORDER BY Año




----7. Calcular el total pagado en reparaciones para el año 2023.




SELECT COALESCE(SUM(Total), 0) AS Total_2023
FROM Ordenes
WHERE YEAR(Fecha) = 2023


-----8. Buscar los vehículos cuyo modelo comienza con la letra "C" y terminan con la letra "a".

SELECT *
FROM Vehiculos
WHERE Modelo LIKE 'C%a'


-----9. Buscar clientes cuyos apellidos terminen en "z" y sus teléfonos empiezan con "6". 

SELECT *
FROM Clientes
WHERE Apellido LIKE '%z'
  AND Telefono LIKE '6%'

-----10. Buscar todas las órdenes que incluyan la palabra "frenos" en la descripción. 


SELECT *
FROM Ordenes
WHERE Descripcion LIKE '%frenos%'



-----11. Buscar los vehículos cuyo modelo incluya la palabra "Jetta". 

SELECT *
FROM Vehiculos
WHERE Modelo LIKE '%Jetta%';






-----12. Buscar clientes cuyos nombres comiencen con "J" o "M" (sin utilizar el comando "or") 

SELECT *
FROM Clientes
WHERE LEFT(Nombre, 1) IN ('J', 'M')








----13. Buscar modelos de vehículos que comiencen con "F", "H " o bien con la letra "J" (sin 
----utilizar el comando "or")  


SELECT *
FROM Vehiculos
WHERE Modelo JEHFP '^[FHJ]';



----14. Buscar vehículos cuyas marcas comiencen con la "F" y finalicen con "D" 

SELECT *
FROM Vehiculos
WHERE Marca LIKE 'F%D'







-----15. Muestre la información de los vehículos cuya placa su tercera letra sea la letra C 

SELECT *
FROM Vehiculos
WHERE SUBSTRING(Placa, 3, 1) = 'C';

-----16. Buscar clientes cuyos apellidos comiencen con una letra entre el rango de la "A" y la "G"
SELECT *
FROM Clientes
WHERE LEFT(Apellido, 1) BETWEEN 'A' AND 'G';





-----17. Buscar vehículos cuyos modelos NO comiencen con una letra entre el rango de la "A" y 
----la "G" 


SELECT *
FROM Vehiculos
WHERE LEFT(Modelo, 1) NOT BETWEEN 'A' AND 'G';



-----18. Liste todos los nombres de los clientes sin repeticiones 


SELECT DISTINCT Nombre
FROM Clientes;

------19. Muestre la información de cada orden con estatus "Completada"  y al campo tota 
-----agréguele el 13% del IVA 

SELECT OrdenID, VehiculoID, Fecha,
       Total,
       ROUND(Total * 1.13, 2) AS Total_con_IVA_13,
       Descripcion, Estatus
FROM Ordenes
WHERE Estatus = 'Completada';



----20. Muestre la información de las órdenes superiores a 400 y aplíquele un descuento del 
----10% al Total de cada una. 

SELECT OrdenID, VehiculoID, Fecha,
       Total,
       ROUND(Total * 0.90, 2) AS Total_con_Descuento_10,
       Descripcion, Estatus
FROM Ordenes
WHERE Total > 400;


-----21. Obtener el total pagado por los clientes en las órdenes realizadas en el mes de agosto y 
----calcular el promedio diario de ingresos para el mes de agosto 2023 

SELECT 
    SUM(Total) AS Total_Agosto,
    SUM(Total) / 31 AS Promedio_Diario
FROM Ordenes
WHERE YEAR(Fecha) = 2023
  AND MONTH(Fecha) = 8;




-----22. Calcular el total pagado promedio por estatus de las órdenes

SELECT Estatus, AVG(Total) AS Promedio_Total
FROM Ordenes
GROUP BY Estatus;




----23. Muestre los clientes con la información de sus respectivos vehículos 
SELECT c.ClienteID, c.Nombre, c.Apellido, v.VehiculoID, v.Marca, v.Modelo, v.Año, v.Placa
FROM Clientes c
JOIN Vehiculos v ON c.ClienteID = v.ClienteID
ORDER BY c.ClienteID;

-----24. Muestre la información de los clientes y de sus vehículos solo los que sean del año 2015 

SELECT c.ClienteID, c.Nombre, c.Apellido, v.Marca, v.Modelo, v.Año, v.Placa
FROM Clientes c
JOIN Vehiculos v ON c.ClienteID = v.ClienteID
WHERE v.Año = 2015;




-----25. Muestre el nombre del cliente y la cantidad de vehículos tiene cada clientes 
SELECT c.ClienteID, c.Nombre, c.Apellido, COUNT(v.VehiculoID) AS Cantidad_Vehiculos
FROM Clientes c
LEFT JOIN Vehiculos v ON c.ClienteID = v.ClienteID
GROUP BY c.ClienteID, c.Nombre, c.Apellido;



-----26. Muestre la placa y la cantidad de ordenes de servicio tiene cada placa
SELECT v.Placa, COUNT(o.OrdenID) AS Cantidad_Ordenes
FROM Vehiculos v
LEFT JOIN Ordenes o ON v.VehiculoID = o.VehiculoID
GROUP BY v.Placa;