CREATE DATABASE TUCONCIERTO;

USE TUCONCIERTO;

CREATE TABLE Cliente (
    DNI VARCHAR(15) NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Estadio (
    estadioID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Tipo_Seccion (
    tipoSeccionID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    CONSTRAINT CK_Nombre check (nombre in ('Campo delantero','Campo trasero','Platea baja 1','Platea baja 2','Platea alta 1','Platea alta 2')),
);

CREATE TABLE Seccion (
    seccionID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    ofrece_servicios BIT NOT NULL DEFAULT 0,
    estadioID INT NOT NULL,
    tipoSeccionID INT NOT NULL,
    precio FLOAT NOT NULL,
    CONSTRAINT FK_Estadio FOREIGN KEY (estadioID) REFERENCES Estadio(estadioID),
    CONSTRAINT FK_TipoSeccion FOREIGN KEY (tipoSeccionID) REFERENCES Tipo_Seccion(tipoSeccionID),
    CONSTRAINT CK_Precio check (precio >= 0),
);

CREATE TABLE Banda (
    bandaID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Ubicacion_Asiento (
    ubicacionID INT IDENTITY(1,1) PRIMARY KEY,
    fila VARCHAR(50) NOT NULL,
    columna VARCHAR(50) NOT NULL,
);

CREATE TABLE Asiento (
    asientoID INT IDENTITY(1,1) PRIMARY KEY,
    esta_vendido BIT NOT NULL DEFAULT 0,
    seccionID INT NOT NULL,
    ubicacionID INT NOT NULL,
    CONSTRAINT FK_Ubicacion_Asiento FOREIGN KEY (ubicacionID) REFERENCES Ubicacion_Asiento(ubicacionID),
    CONSTRAINT FK_Seccion_Asiento FOREIGN KEY (seccionID) REFERENCES Seccion(seccionID)
);

CREATE TABLE Compra (
	compraID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	fechaCompra DATE NOT NULL,
	DNI VARCHAR(15) NOT NULL,
    CONSTRAINT FK_Cliente_Compra FOREIGN KEY (DNI)  REFERENCES Cliente(DNI)
);

CREATE TABLE Recital (
    recitalID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    fecha DATE NOT NULL,
    bandaID INT NOT NULL,
    estadioID INT NOT NULL,
    CONSTRAINT fk_Banda_Recital FOREIGN KEY (bandaID) REFERENCES Banda(bandaID),
    CONSTRAINT fk_Estadio_Recital FOREIGN KEY (estadioID) REFERENCES Estadio(estadioID),
);

CREATE TABLE Entrada (
    entradaId INT IDENTITY(1,1) PRIMARY KEY,
    DNI_propietario VARCHAR(15) NOT NULL,
    compraID INT NOT NULL,
    asientoID INT NULL,
    seccionID INT NOT NULL,
    recitalID INT NOT NULL,
    precio FLOAT,
    CONSTRAINT fk_Compra_Entrada FOREIGN KEY (compraID) REFERENCES Compra(compraID),
    CONSTRAINT fk_Asiento_Entrada FOREIGN KEY (asientoID) REFERENCES Asiento(asientoID),
    CONSTRAINT fk_Seccion_Entrada FOREIGN KEY (seccionID) REFERENCES Seccion(seccionID),
    CONSTRAINT fk_Recital_Entrada FOREIGN KEY (recitalID) REFERENCES Recital(recitalID),
);
