USE Bolsa_Examen
GO

IF EXISTS (SELECT * FROM SYS.OBJECTS WHERE NAME='spDeleteCandidatosInfo' AND TYPE='P')
 DROP PROCEDURE spDeleteCandidatosInfo
GO

CREATE PROCEDURE spDeleteCandidatosInfo
	@LlaveDatoPersonal INT
AS
BEGIN
	DELETE FROM dbo.DATOS_PERSONALES WHERE LLAVE_DATO_PERSONAL = @LlaveDatoPersonal
END