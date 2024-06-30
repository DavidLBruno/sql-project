CREATE PROCEDURE sp_RegistrarEntrada
	@DNI_propietario VARCHAR(15),
    @compraID INT,
    @asientoID INT,
    @seccionID INT,
    @recitalID INT,
	@precio FLOAT
AS
BEGIN
	BEGIN TRANSACTION;
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM Asiento WHERE asientoID = @asientoID AND esta_vendido = 1)
		BEGIN
	        DECLARE @ErrorMessage NVARCHAR(4000) = 'El asiento ya está vendido.';
			THROW 50000, @ErrorMessage, 1;
		END


		INSERT INTO Entrada( DNI_propietario, compraID, asientoID, seccionID, recitalID, precio )
		VALUES (@DNI_propietario, @compraID, @asientoID, @seccionID, @recitalID, @precio);

		UPDATE Asiento
		SET esta_vendido = 1
		WHERE asientoID = @asientoID;


	COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		THROW;
	END CATCH
END;

CREATE PROCEDURE sp_ComprasPorDNI
    @DNIsConAsientos VARCHAR(MAX),
	@recitalID INT,
	@DNIPropietario VARCHAR(20),
	@seccionID INT
AS
BEGIN
	DECLARE @compraID INT;
	BEGIN TRANSACTION;
	BEGIN TRY
    -- Crear una tabla temporal para almacenar DNIs y detalles de asientos
    CREATE TABLE #TempCompras (DNI VARCHAR(20), Fila CHAR(1), Columna VARCHAR(10), asientoId INT, vendido BIT, precio INT);
    -- Insertar los DNIs y detalles de asientos en la tabla temporal
    INSERT INTO #TempCompras (DNI, Fila, Columna, asientoId, vendido, precio)
    SELECT
        SUBSTRING(value, 1, CHARINDEX(' ', value) - 1) AS DNI,
        SUBSTRING(value, CHARINDEX(' ', value) + 1, 1) AS Fila,
        SUBSTRING(value, CHARINDEX(' ', value) + 3, LEN(value)) AS Columna,
		ASI.asientoID AS asientoId,
		ASI.esta_vendido AS vendido,
		SE.precio AS precio
    FROM STRING_SPLIT(@DNIsConAsientos, ',') AS S
	INNER JOIN Ubicacion_Asiento AS UA ON UA.fila = SUBSTRING(value, CHARINDEX(' ', value) + 1, 1) AND UA.columna = SUBSTRING(value, CHARINDEX(' ', value) + 3, LEN(value))
	INNER JOIN Asiento AS ASI ON  UA.ubicacionID = ASI.ubicacionID
	INNER JOIN Seccion AS SE ON SE.seccionID = @seccionID;

	INSERT INTO Compra ( DNI, fechaCompra )
	VALUES ( @DNIPropietario, GETDATE() );
	SET @compraID = SCOPE_IDENTITY();
	PRINT @compraID;
    -- Iterar a través de las compras y llamar a RegistrarEntrada
    DECLARE @currentDNI VARCHAR(20), @currentFila CHAR(1), @currentColumna VARCHAR(10), @currentAsientoId INT, @currentVendido BIT, @currentPrecio INT;
    DECLARE compraCursor CURSOR FOR SELECT DNI, Fila, Columna, asientoId, vendido, precio FROM #TempCompras;
    OPEN compraCursor;
    FETCH NEXT FROM compraCursor INTO @currentDNI, @currentFila, @currentColumna, @currentAsientoId, @currentVendido, @currentPrecio;
    WHILE @@FETCH_STATUS = 0
    BEGIN
		EXEC sp_RegistrarEntrada
				@DNI_propietario = @currentDNI,
				@compraID = @compraID,
				@asientoID = @currentAsientoId,
				@seccionID = @seccionID,
				@recitalID = @recitalID,
				@precio = @currentPrecio;
		FETCH NEXT FROM compraCursor INTO @currentDNI, @currentFila, @currentColumna, @currentAsientoId, @currentVendido, @currentPrecio;
    END;
    CLOSE compraCursor;
    DEALLOCATE compraCursor;

    -- Eliminar la tabla temporal
    DROP TABLE #TempCompras;
		COMMIT;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		THROW;
	END CATCH
END

EXEC sp_ComprasPorDNI @DNIsConAsientos = '43126134 A 1,443008329 A 2,43122122 A 10', @recitalID = 2, @DNIPropietario = '43126134', @seccionID = 1;