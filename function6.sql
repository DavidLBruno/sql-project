CREATE FUNCTION TotalRecaudado (@bandaID INT, @fecha_1 DATE, @fecha_2 DATE)
RETURNS INT
AS
BEGIN
    DECLARE @totalRecaudado INT;
    
    SELECT @totalRecaudado = ISNULL(SUM(precio),0)
    FROM Entrada e
    WHERE recitalID IN (
        SELECT recitalID
        FROM Recital
        WHERE fecha BETWEEN @fecha_1 AND @fecha_2 AND bandaID = @bandaID
    );

    RETURN @totalRecaudado;
END;
GO


SELECT dbo.TotalRecaudado(1,'2022-06-01','2024-08-08');