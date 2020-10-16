using System;
using System.IO;
using System.Collections.Generic;
using System.Data;
using System.Web.UI;
using System.Web.Services;
using Entities.Modulos;
using Objects.Modulos;

namespace ExamenAFSWeb.Forms.Portal
{
    public partial class BusquedaCandidatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

            }
        }

        [WebMethod]
        public static List<Candidato> GetCandidatos()
        {
            return CandidatoBO.GetCandidatosBO();
        }

        [WebMethod]
        public static string DeleteCandidato(int id)
        {
            return CandidatoBO.EliminaCandidato(id);
        }


    }
}