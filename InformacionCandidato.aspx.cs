using System;
using System.IO;
using System.Collections.Generic;
using System.Data;
using System.Web.UI;
using System.Web.Services;
using Entities.Modulos;
using Objects.Modulos;
using Microsoft.SqlServer.Server;
using Microsoft.Ajax.Utilities;

namespace ExamenAFSWeb.Forms.Portal
{
    public partial class InformacionCandidato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string AddCandidato(string Nombre, string Paterno, string Materno, string Ciudad, string Calle, 
                                            string Numero, string Colonia, string Telefono, string OtroTel, string FechaNac, 
                                            string Curp, string Rfc, string Pasaporte, string Cartilla, string Genero, 
                                            string EdoCivil, string Mun, string Edo)
        {
            return CandidatoBO.InsertaCandidatoBO(Nombre, Paterno, Materno, Ciudad, Calle, Numero, Colonia, Telefono, OtroTel, FechaNac, Curp, Rfc, Pasaporte, Cartilla,
                Genero, EdoCivil, Mun, Edo);
        }

    }
}