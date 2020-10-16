USE Bolsa_Examen
GO

IF EXISTS (SELECT * FROM SYS.OBJECTS WHERE NAME='spUpdateCandidato' AND TYPE='P')
 DROP PROCEDURE spUpdateCandidato
GO
CREATE PROCEDURE spUpdateCandidato
    @LlaveUsuario INT,
	@Nombre NVARCHAR,
	@Paterno NVARCHAR,
	@Materno VARCHAR,
	@Ciudad NVARCHAR,
	@Calle NVARCHAR,
	@Numero NVARCHAR,
	@Colonia NVARCHAR,
	@Telefono NVARCHAR,
	@OtroTel NVARCHAR,
	@FechaNac DATE,
	@Curp NVARCHAR,
	@Rfc NVARCHAR,
	@Pasaporte NVARCHAR,
	@Cartilla NVARCHAR,
	@Genero NVARCHAR,
	@EdoCivil NVARCHAR,
	@Mun NVARCHAR,
	@Edo NVARCHAR
AS
BEGIN
	UPDATE	dbo.DATOS_PERSONALES
	SET		NOMBRE = @Nombre,
			PATERNO = @Paterno,
			MATERNO = @Materno, 
			CIUDAD = @Ciudad,
			CALLE = @Calle,
			NUMERO = @Numero,
			COLONIA = @Colonia,
			TELEFONO = @Telefono,
			OTRO_TEL = @OtroTel,
			FECHA_NAC = @FechaNac,
			CURP = @Curp,
			RFC = @Rfc,
			PASAPORTE = @Pasaporte,
			CARTILLA = @Cartilla,
			GENERO = @Genero,
			EDO_CIVIL = @EdoCivil,
			MUN = @Mun,
			EDO = @Edo
	WHERE	LLAVE_USUARIO = @LlaveUsuario	
	
	SELECT 'Insertado';
END
