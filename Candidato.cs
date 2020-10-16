
namespace Entities.Modulos
{
    public class Candidato
    {
        #region DatosPersonales
        public int LlaveDatoPersonal { get; set; }
        public int LlaveUsuario { get; set; }
        public string Nombre { get; set; }
        public string Paterno { get; set; }
        public string Materno { get; set; }
        public string Ciudad { get; set; }
        public string Calle { get; set; }
        public string Numero { get; set; }
        public string Colonia { get; set; }
        public string Telefono { get; set; }
        public string OtroCel { get; set; }
        public string FechaNac { get; set; }
        public string Curp { get; set; }
        public string Rfc { get; set; }
        public string Pasaporte { get; set; }
        public string Cartilla { get; set; }
        public string Genero { get; set; }
        public string EdoCivil { get; set; }
        public string FechaAlta { get; set; }
        public string Mun { get; set; }
        public string Edo { get; set; }

        #endregion

        #region ExperienciaLaboralCampos
        public int LlaveExpLab { get; set; }
        public string Puesto { get; set; }
        public string Funciones { get; set; }
        public string Empresa { get; set; }
        public int NoEmpleados { get; set; }
        public string FechaInicio { get; set; }
        public string FechaFin { get; set; }
        public string RetMensBruta { get; set; }
        public int RetMensualNeta { get; set; }
        public string Pais { get; set; }

        #endregion


    }
}
