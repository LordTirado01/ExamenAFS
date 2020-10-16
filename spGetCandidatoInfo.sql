USE Bolsa_Examen
GO

IF EXISTS (SELECT * FROM SYS.OBJECTS WHERE NAME='spGetCandidatosInfo' AND TYPE='P')
 DROP PROCEDURE spGetCandidatosInfo
GO

CREATE PROCEDURE spGetCandidatosInfo
AS
BEGIN
	SELECT * FROM dbo.DATOS_PERSONALES ORDER BY LLAVE_DATO_PERSONAL DESC
END


