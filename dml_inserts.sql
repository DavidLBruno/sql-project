INSERT INTO Cliente (DNI, nombre, apellido, email)
VALUES ('12345678', 'Juan', 'Pérez', 'juan.perez@example.com'),
       ('23456789', 'Ana', 'Gómez', 'ana.gomez@example.com'),
       ('34567890', 'Carlos', 'Martínez', 'carlos.martinez@example.com'),
       ('45678901', 'María', 'Rodríguez', 'maria.rodriguez@example.com'),
       ('56789012', 'Javier', 'Fernández', 'javier.fernandez@example.com'),
       ('67890123', 'Carmen', 'González', 'carmen.gonzalez@example.com'),
       ('78901234', 'Francisco', 'García', 'francisco.garcia@example.com'),
       ('89012345', 'Teresa', 'López', 'teresa.lopez@example.com'),
       ('90123456', 'Sergio', 'Torres', 'sergio.torres@example.com'),
       ('01234567', 'Isabel', 'Ramírez', 'isabel.ramirez@example.com'),
	   ('43126134', 'Bruno', 'David', 'bruno.david9914@gmail.com'),
	   ('25478951', 'Graciela', 'Alfano', 'graci.alfa@gmail.com'),
	   ('42001245', 'Alesandro', 'Romero', 'aelromero@gmail.com'),
	   ('10425647', 'Elma', 'Juarez', 'elmitaj@hotmail.com'),
	   ('5888987', 'Oscar', 'Ripol', 'oscar_ripol@outlook.com'),
	   ('32569987', 'Hernan', 'Armando', 'armateunohernan@gmail.com'),
	   ('45788733', 'Lucio', 'Espindola', 'luchoes@gmail.com'),
	   ('43889992', 'Sandro', 'Ortigoza', 'sandrito2000@gmail.com'),
	   ('25778945', 'Alejandra', 'Suzik', 'alesuzik@gmail.com'),
	   ('18963256', 'Alberto', 'Fernandinho', 'eltitere@gmail.com');

INSERT INTO Estadio (nombre)
VALUES ('Defensores del Bajo'),
	   ('Luna Park'),
	   ('El Monumental'),
	   ('Movistar Arena'),
	   ('Estadio unico de la plata');

	INSERT INTO Banda (nombre)
	VALUES ('El Cuarteto de 3'),
		('Iron Maiden'),
		('Las Pastillas Del Abuelo'),
		('Tan Bionica'),
		('AC/DC');

INSERT INTO Tipo_Seccion(tipoSeccionID, nombre)
VALUES ('Campo delantero'),
       ('Campo trasero'),
       ('Platea baja 1'),
       ('Platea baja 2'),
       ('Platea alta 1'),
       ('Platea alta 2')

INSERT INTO Seccion (ofrece_servicios, estadioID,tipoSeccionID,precio)
VALUES (0, 1, 1,60000),
       (0, 2, 1,65000),
       (1, 2, 3, 90000),
       (0, 2, 1, 50000),
       (1, 3, 5,65000),
       (0, 3, 1,70000),

-- Asientos hasta A10, B10 y C10 en Platea baja 1
INSERT INTO Asiento (fila, columna, esta_vendido, seccionID)
VALUES ('A', '1', 0, 3),
	   ('A', '2', 0, 3),
	   ('A', '3', 0, 3),
	   ('A', '4', 0, 3),
	   ('A', '5', 0, 3),
	   ('A', '6', 0, 3),
	   ('A', '7', 0, 3),
	   ('A', '8', 0, 3),
	   ('A', '9', 0, 3),
	   ('B', '10', 0, 3),
	   ('B', '1', 0, 3),
	   ('B', '2', 0, 3),
	   ('B', '3', 0, 3),
	   ('B', '4', 0, 3),
	   ('B', '5', 0, 3),
	   ('B', '6', 0, 3),
	   ('B', '7', 0, 3),
	   ('B', '8', 0, 3),
	   ('B', '9', 0, 3),
	   ('B', '10', 0, 3),
	   ('C', '1', 0, 3),
	   ('C', '2', 0, 3),
	   ('C', '3', 0, 3),
	   ('C', '4', 0, 3),
	   ('C', '5', 0, 3),
	   ('C', '6', 0, 3),
	   ('C', '7', 0, 3),
	   ('C', '8', 0, 3),
	   ('C', '9', 0, 3),
	   ('C', '10', 0, 3);

INSERT INTO Ubicacion_asiento (fila, columna)
VALUES
    ('A', 1),
    ('A', 2),
    ('A', 3),
    ('A', 4),
    ('A', 5),
    ('A', 6),
    ('A', 7),
    ('A', 8),
    ('A', 9),
    ('A', 10),
    ('B', 1),
    ('B', 2),
    ('B', 3),
    ('B', 4),
    ('B', 5),
    ('B', 6),
    ('B', 7),
    ('B', 8),
    ('B', 9),
    ('B', 10),
    ('C', 1),
    ('C', 2),
    ('C', 3),
    ('C', 4),
    ('C', 5),
    ('C', 6),
    ('C', 7),
    ('C', 8),
    ('C', 9),
    ('C', 10),
    ('D', 1),
    ('D', 2),
    ('D', 3),
    ('D', 4),
    ('D', 5),
    ('D', 6),
    ('D', 7),
    ('D', 8),
    ('D', 9),
    ('D', 10),
    ('E', 1),
    ('E', 2),
    ('E', 3),
    ('E', 4),
    ('E', 5),
    ('E', 6),
    ('E', 7),
    ('E', 8),
    ('E', 9),
    ('E', 10),
    ('F', 1),
    ('F', 2),
    ('F', 3),
    ('F', 4),
    ('F', 5),
    ('F', 6),
    ('F', 7),
    ('F', 8),
    ('F', 9),
    ('F', 10);

-- Asientos hasta A10, B10 y C10 en Platea baja 2
INSERT INTO Asiento (fila, columna, esta_vendido, seccionID)
VALUES ('A', '1', 0, 4),
	   ('A', '2', 0, 4),
	   ('A', '3', 0, 4),
	   ('A', '4', 0, 4),
	   ('A', '5', 0, 4),
	   ('A', '6', 0, 4),
	   ('A', '7', 0, 4),
	   ('A', '8', 0, 4),
	   ('A', '9', 0, 4),
	   ('B', '10', 0, 4),
	   ('B', '1', 0, 4),
	   ('B', '2', 0, 4),
	   ('B', '3', 0, 4),
	   ('B', '4', 0, 4),
	   ('B', '5', 0, 4),
	   ('B', '6', 0, 4),
	   ('B', '7', 0, 4),
	   ('B', '8', 0, 4),
	   ('B', '9', 0, 4),
	   ('B', '10', 0, 4),
	   ('C', '1', 0, 4),
	   ('C', '2', 0, 4),
	   ('C', '3', 0, 4),
	   ('C', '4', 0, 4),
	   ('C', '5', 0, 4),
	   ('C', '6', 0, 4),
	   ('C', '7', 0, 4),
	   ('C', '8', 0, 4),
	   ('C', '9', 0, 4),
	   ('C', '10', 0, 4);

-- Asientos hasta A10, B10 y C10 en Platea alta 1
INSERT INTO Asiento (fila, columna, esta_vendido, seccionID)
VALUES ('A', '1', 0, 5),
	   ('A', '2', 0, 5),
	   ('A', '3', 0, 5),
	   ('A', '4', 0, 5),
	   ('A', '5', 0, 5),
	   ('A', '6', 0, 5),
	   ('A', '7', 0, 5),
	   ('A', '8', 0, 5),
	   ('A', '9', 0, 5),
	   ('B', '10', 0, 5),
	   ('B', '1', 0, 5),
	   ('B', '2', 0, 5),
	   ('B', '3', 0, 5),
	   ('B', '4', 0, 5),
	   ('B', '5', 0, 5),
	   ('B', '6', 0, 5),
	   ('B', '7', 0, 5),
	   ('B', '8', 0, 5),
	   ('B', '9', 0, 5),
	   ('B', '10', 0, 5),
	   ('C', '1', 0, 5),
	   ('C', '2', 0, 5),
	   ('C', '3', 0, 5),
	   ('C', '4', 0, 5),
	   ('C', '5', 0, 5),
	   ('C', '6', 0, 5),
	   ('C', '7', 0, 5),
	   ('C', '8', 0, 5),
	   ('C', '9', 0, 5),
	   ('C', '10', 0, 5);

-- Asientos hasta A10, B10 y C10 en Platea alta 2
INSERT INTO Asiento (fila, columna, esta_vendido, seccionID)
VALUES ('A', '1', 0, 6),
	   ('A', '2', 0, 6),
	   ('A', '3', 0, 6),
	   ('A', '4', 0, 6),
	   ('A', '5', 0, 6),
	   ('A', '6', 0, 6),
	   ('A', '7', 0, 6),
	   ('A', '8', 0, 6),
	   ('A', '9', 0, 6),
	   ('B', '10', 0, 6),
	   ('B', '1', 0, 6),
	   ('B', '2', 0, 6),
	   ('B', '3', 0, 6),
	   ('B', '4', 0, 6),
	   ('B', '5', 0, 6),
	   ('B', '6', 0, 6),
	   ('B', '7', 0, 6),
	   ('B', '8', 0, 6),
	   ('B', '9', 0, 6),
	   ('B', '10', 0, 6),
	   ('C', '1', 0, 6),
	   ('C', '2', 0, 6),
	   ('C', '3', 0, 6),
	   ('C', '4', 0, 6),
	   ('C', '5', 0, 6),
	   ('C', '6', 0, 6),
	   ('C', '7', 0, 6),
	   ('C', '8', 0, 6),
	   ('C', '9', 0, 6),
	   ('C', '10', 0, 6);

INSERT INTO Compra (fechaCompra, DNI)
VALUES ('2024-05-24', '12345678'),
		('2024-05-12', '34567890'),
		('2024-03-01', '45678901'), -- mismo cliente hace 2 compras en distintos dias
		('2024-02-05', '45678901'),
		('2024-02-28', '89012345'),
		('2024-03-23', '67890123'),
		('2024-04-27', '90123456');

-- Entradas de Campo Delantero
INSERT INTO Entrada (compraID, bandaID, asientoID, seccionID, estadioID, DNI_propietario, precio)
VALUES  (1, 1, null, 1, 1, '12345678', 150.00), -- misma entrada para misma banda, seccion y dueño
		(1, 1, null, 1, 1, '34567890', 250.00),
		(2, 1, null, 1, 1, '32067890', 250.00),
		(3, 1, null, 1, 1, '39867890', 250.00);

-- Entradas de  Campo Trasero
INSERT INTO Entrada (compraID, bandaID, asientoID, seccionID, estadioID, DNI_propietario, precio)
VALUES  (1, 1, null, 2, 1, '23456789', 200.00),
		(3, 1, null, 2, 1, '43456789', 200.00),
		(4, 1, null, 2, 1, '14345678', 150.00);

-- Entradas de  Platea baja 1
INSERT INTO Entrada (compraID, bandaID, asientoID, seccionID, estadioID, DNI_propietario, precio)
VALUES  (3, 1, 1, 3, 1, '23454789', 300.00),
		(4, 1, 2, 3, 1, '12345478', 450.00);

-- Entradas de  Platea baja 2
INSERT INTO Entrada (compraID, bandaID, asientoID, seccionID, estadioID, DNI_propietario, precio)
VALUES  (3, 1, 2, 4, 1, '43454749', 400.00),
		(4, 1, 3, 4, 1, '12345466', 450.00);

--------------------------------

-- Verificaciones
select * from Cliente
select * from Estadio
select * from Banda
select * from Seccion
select * from Asiento
select * from Compra
select * from Entrada



