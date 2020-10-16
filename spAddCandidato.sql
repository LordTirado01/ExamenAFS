USE Bolsa_Examen
GO

IF EXISTS (SELECT * FROM SYS.OBJECTS WHERE NAME='spAddCandidato' AND TYPE='P')
 DROP PROCEDURE spAddCandidato
GO
CREATE PROCEDURE spAddCandidato
	@Nombre NVARCHAR(100),
	@Paterno NVARCHAR(100),
	@Materno VARCHAR(100),
	@Ciudad NVARCHAR(100),
	@Calle NVARCHAR(100),
	@Numero NVARCHAR(100),
	@Colonia NVARCHAR(100),
	@Telefono NVARCHAR(100),
	@OtroTel NVARCHAR(50),
	@FechaNac VARCHAR(50),
	@Curp NVARCHAR(20),
	@Rfc NVARCHAR(15),
	@Pasaporte NVARCHAR(100),
	@Cartilla NVARCHAR(100),
	@Genero NVARCHAR(100),
	@EdoCivil NVARCHAR(100),
	@Mun NVARCHAR(100),
	@Edo NVARCHAR(100)
AS
BEGIN

SET DATEFORMAT DMY;


DECLARE @LlaveUsuario INT

SELECT @LlaveUsuario = MAX(LLAVE_USUARIO) + 1 FROM dbo.DATOS_PERSONALES

INSERT INTO dbo.DATOS_PERSONALES
           (LLAVE_USUARIO
           ,NOMBRE
           ,PATERNO
           ,MATERNO
           ,CIUDAD
           ,CALLE
           ,NUMERO
           ,COLONIA
           ,TELEFONO
           ,OTRO_TEL
           ,FECHA_NAC
           ,CURP
           ,RFC
           ,PASAPORTE
           ,CARTILLA
           ,GENERO
           ,EDO_CIVIL
           ,FECHA_ALTA
           ,MUN
           ,EDO)
     VALUES
           (@LlaveUsuario
           ,@Nombre
           ,@Paterno
           ,@Materno
           ,@Ciudad
           ,@Calle
           ,@Numero
           ,@Colonia
           ,@Telefono
           ,@OtroTel
           ,CONVERT(DATE,@FechaNac,103)
           ,@Curp
           ,@Rfc
           ,@Pasaporte
           ,@Cartilla
           ,@Genero
           ,@EdoCivil
           ,GETDATE()
           ,@Mun
           ,@Edo)
           
	SELECT 'Insertado';

END

