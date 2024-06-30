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

INSERT INTO Tipo_Seccion(nombre)
VALUES ('Campo delantero'),
       ('Campo trasero'),
       ('Platea baja 1'),
       ('Platea baja 2'),
       ('Platea alta 1'),
       ('Platea alta 2');

INSERT INTO Seccion (ofrece_servicios, estadioID,tipoSeccionID,precio, capacidad_maxima)
VALUES (0, 1, 1,60000, 20000),
       (0, 2, 1,65000, 5000),
       (1, 2, 3, 90000, 5000),
       (0, 2, 1, 50000, 5000),
       (1, 3, 5,65000, 10000),
       (0, 3, 1,70000, 25000);

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
INSERT INTO Asiento (esta_vendido, seccionID, ubicacionID)
SELECT
    0, -- 0 para indicar que no está vendido
    ABS(CHECKSUM(NEWID())) % 6 + 1, -- Valor aleatorio entre 1 y 6
    ubicacionID
FROM Ubicacion_asiento;
