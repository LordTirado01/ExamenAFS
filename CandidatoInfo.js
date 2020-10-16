$(document).ready(function () {
    GeneraListado();

});

function reload() {
    $(document).ready(function () {
        $('#tCandidatos').DataTable({
            "scrollX": true
        });
        $('.dataTables_length').addClass('bs-select');
    });
}

function Eliminar(id) {
    jQuery.ajax({
        type: "POST",
        url: "BusquedaCandidatos.aspx/DeleteCandidato",
        data: '{id:' + id + '}',
        contentType: 'application/json; charset=utf-8',
        dataType: "json",
        success: function (msg) {
            alert('Registro eliminado satisfactoriamente');
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status);
            alert(thrownError);
        }
    });
}

function Editar(id) {

}

function GeneraListado() {
    jQuery.ajax({
        type: "POST",
        url: "BusquedaCandidatos.aspx/GetCandidatos",
        data: '{}',
        contentType: 'application/json; charset=utf-8',
        dataType: "json",
        success: function (msg) {
            $("#gridCandidatos").empty();
            var table = "<table id='tCandidatos' class='table table-bordered table-striped table-sm' data-toolbar='#toolbar' data-pagination='false' cellspacing='0' width='100%'>";
            table = table + "<thead class='thead-dark'><tr>";
            table = table + "<th class='th-sm' data-field = 'Edición'> Editar </th>";
            table = table + "<th class='th-sm' data-field = 'Edición'> Eliminar </th>";
            table = table + "<th class='th-sm' data-field = 'Exp Laboral'> + Exp. Laboral </th>";
            table = table + "<th class='th-sm' data-field = 'Nombre'> Nombre </th>";
            table = table + "<th class='th-sm' data-field = 'Apellido Paterno'> Apellido Paterno </th>";
            table = table + "<th class='th-sm' data-field = 'Apellido Materno'> Apellido Materno </th>";
            table = table + "<th class='th-sm' data-field = 'Ciudad'> Ciudad </th>";
            table = table + "<th class='th-sm' data-field = 'Calle'> Calle </th>";
            table = table + "<th class='th-sm' data-field = 'Numero'> Numero </th>";
            table = table + "<th class='th-sm' data-field = 'Colonia'> Colonia </th>";
            table = table + "<th class='th-sm' data-field = 'Telefono'> Telefono </th>";
            table = table + "<th class='th-sm' data-field = 'Otro Telefono'> Otro Telefono </th>";
            table = table + "<th class='th-sm' data-field = 'FechaNac'> Fecha de Nacimiento </th>";
            table = table + "<th class='th-sm' data-field = 'Curp'> Curp </th>";
            table = table + "<th class='th-sm' data-field = 'Rfc'> Rfc </th>";
            table = table + "<th class='th-sm' data-field = 'Pasaporte'> Pasaporte </th>";
            table = table + "<th class='th-sm' data-field = 'Cartilla'> Cartilla </th>";
            table = table + "<th class='th-sm' data-field = 'Genero'> Genero </th>";
            table = table + "<th class='th-sm' data-field = 'EdoCivil'> Estado Civil </th>";
            table = table + "<th class='th-sm' data-field = 'FechaAlta'> Fecha de Alta </th>";
            table = table + "<th class='th-sm' data-field = 'Mun'> Mun </th>";
            table = table + "<th class='th-sm' data-field = 'Edo'> Edo </th>";

            table = table + "</tr></thead>";
            table = table + "<tbody><tr>";
            for (var i = 0; i < msg.d.length; i++) {
                table = table + "<td><a href='#' onclick='Editar(" + msg.d[i].LlaveDatoPersonal + "); return false; '> Editar </a></td>";
                table = table + "<td><a href='BusquedaCandidatos.aspx' onclick='Eliminar(" + msg.d[i].LlaveDatoPersonal + "); '> Eliminar </a></td>";
                table = table + "<td><a href='#' onclick='ExpLab(" + msg.d[i].LlaveDatoPersonal + "); '> + Exp. Laboral </a></td>";
                table = table + "<td>" + msg.d[i].Nombre + "</td>";
                table = table + "<td>" + msg.d[i].Paterno + "</td>";
                table = table + "<td>" + msg.d[i].Materno + "</td>";
                table = table + "<td>" + msg.d[i].Ciudad + "</td>";
                table = table + "<td>" + msg.d[i].Calle + "</td>";               
                table = table + "<td>" + msg.d[i].Numero + "</td>";              
                table = table + "<td>" + msg.d[i].Colonia + "</td>";                  
                table = table + "<td>" + msg.d[i].Telefono + "</td>";                 
                table = table + "<td>" + msg.d[i].OtroCel + "</td>";                  
                table = table + "<td>" + msg.d[i].FechaNac + "</td>";                 
                table = table + "<td>" + msg.d[i].Curp + "</td>";                   
                table = table + "<td>" + msg.d[i].Rfc  + "</td>";                   
                table = table + "<td>" + msg.d[i].Pasaporte + "</td>";   
                table = table + "<td>" + msg.d[i].Cartilla + "</td>";    
                table = table + "<td>" + msg.d[i].Genero + "</td>";
                table = table + "<td>" + msg.d[i].EdoCivil + "</td>";    
                table = table + "<td>" + msg.d[i].FechaAlta + "</td>";   
                table = table + "<td>" + msg.d[i].Mun + "</td>";         
                table = table + "<td>" + msg.d[i].Edo + "</td></tr>";         
            }
            table = table + "</tbody></table>";
            $(document).find('div [id="gridCandidatos"]').append(table);
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status);
            alert(thrownError);
        }
    });
}

