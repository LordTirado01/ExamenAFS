<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BusquedaCandidatos.aspx.cs" Inherits="ExamenAFSWeb.Forms.Portal.BusquedaCandidatos" %>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent1" runat="server">

</asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script src="../../Scripts/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="../../Scripts/jquery-3.4.1.js" type="text/javascript"></script>
<script src="../../Scripts/bootstrap.js" type="text/javascript"></script>
<script src="js/CandidatoInfo.js" type="text/javascript"></script>

<br />
<p><label> Listado de candidatos </label></p>

<div style="height: 300px;overflow: scroll;" id="gridCandidatos">
    
</div>
<link rel="stylesheet" type="text/css" href="css/tCandidatos.css" media="screen" />
<%--<script src="js/TableNavjs.js" type="text/javascript"></script>--%>

<div class="col-md-12 text-left">
<%--     <button type="submit" class="btn btn-primary btn-lg" onclick="location.href='EditarCandidato.aspx'">Agregar</button>--%>
  <a href="InformacionCandidato.aspx"><input type="button"  value="Nuevo Candidato"/></a>
</div>

</asp:Content>