<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InformacionCandidato.aspx.cs" Inherits="ExamenAFSWeb.Forms.Portal.InformacionCandidato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script src="../../Scripts/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="../../Scripts/jquery-3.4.1.js" type="text/javascript"></script>
<script src="../../Scripts/bootstrap.js" type="text/javascript"></script>
    <script src="js/AgregaCandidatojs.js" type="text/javascript"></script>
    
<div class="container">
    <div class="row">
        <div class="col-md-5">
            <div class="well well-sm">
                <form class="form-horizontal" method="post">
                    <fieldset>
                        <legend class="text-center header">Datos Personales</legend>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Nombre" name="name" type="text" placeholder="Nombre" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Paterno" name="name" type="text" placeholder="Apellido Paterno" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Materno" name="name" type="text" placeholder="Apellido Materno" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Ciudad" name="name" type="text" placeholder="Ciudad" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Calle" name="name" type="text" placeholder="Calle" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Numero" name="name" type="text" placeholder="Número" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Colonia" name="name" type="text" placeholder="Colonia" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Telefono" name="name" type="text" placeholder="Telefono" class="form-control" onkeypress="return SoloNumeros(event);">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="OtroCel" name="name" type="text" placeholder="Otro Telefono" class="form-control" onkeypress="return SoloNumeros(event);">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
<%--                                <input id="FechaNac" name="name" type="text" placeholder="Fecha de Nacimento" class="form-control">--%>
                              <div class="col-md-3 col-sm-3 col-xs-3">
                                      <span class="help-block text-muted small-font" > Mes</span>
                                      <input type="text" class="form-control" id="MesNac" placeholder="MM" onkeypress="return SoloNumeros(event);" />
                                  </div>
                             <div class="col-md-3 col-sm-3 col-xs-3">
                                      <span class="help-block text-muted small-font" >  Día</span>
                                      <input type="text" class="form-control" id="DiaNac" placeholder="DD" onkeypress="return SoloNumeros(event);" />
                            </div>
                             <div class="col-md-3 col-sm-3 col-xs-3">
                                      <span class="help-block text-muted small-font" >  Año</span>
                                      <input type="text" class="form-control" id="AnioNac" placeholder="YY" onkeypress="return SoloNumeros(event);" />
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Curp" name="name" type="text" placeholder="Curp" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Rfc" name="name" type="text" placeholder="Rfc" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Pasaporte" name="name" type="text" placeholder="Pasaporte" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Cartilla" name="name" type="text" placeholder="Cartilla" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
<%--                                <input id="Genero" name="name" type="text" placeholder="Genero" class="form-control">--%>
                                <label for="state_id" class="control-label">Género</label>
                                <select class="form-control" id="Genero" >
                                    <option value="0">Masculino</option>
                                    <option value="1">Femenino</option>
                                    <option value="2">No binario</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
<%--                                <input id="EdoCivil" name="name" type="text" placeholder="Estado Civil" class="form-control">--%>
                                <label for="state_id" class="control-label">Estado Civil</label>
                                <select class="form-control" id="EdoCivil" >
                                    <option value="0">Casado</option>
                                    <option value="1">Soltero</option>
                                    <option value="2">Otro</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Mun" name="name" type="text" placeholder="Municipio" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Edo" name="name" type="text" placeholder="Estado" class="form-control">
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <div class="col-md-12 text-left">
                                <button type="submit" class="btn btn-primary btn-lg" onclick="AddCandidato();">Agregar Datos Personales</button>
                            </div>
                        </div>
                    </fieldset>
                    <br />
<%--                    <fieldset>
                        <legend class="text-center header">Experiencia laboral</legend>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Puesto" name="name" type="text" placeholder="Puesto" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Funciones" name="name" type="text" placeholder="Funciones" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Empresa" name="name" type="text" placeholder="Empresa" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="NoEmpleados" name="name" type="text" placeholder="No. empleados" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="FechaInicio" name="name" type="text" placeholder="Fecha Inicio" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="FechaFin" name="name" type="text" placeholder="Fecha Fin" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="Pais" name="name" type="text" placeholder="Pais" class="form-control">
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <div class="col-md-10 text-left">
                                <button type="submit" class="btn btn-primary btn-lg">Agregar Experiencia</button>
                            </div>
                        </div>
                    </fieldset>--%>
                </form>
            </div>
        </div>
    </div>
</div>

</asp:Content>

