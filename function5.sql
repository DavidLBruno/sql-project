CREATE FUNCTION getBandaID(@nombre VARCHAR(100))
RETURNS INT
AS
BEGIN
    DECLARE @bandaID INT;
    SELECT @bandaID = bandaID 
    FROM Banda 
    WHERE nombre = @nombre;
    RETURN @bandaID;
END;
GO

SELECT dbo.getBandaID('El Cuarteto de 3') AS 'bandaID';