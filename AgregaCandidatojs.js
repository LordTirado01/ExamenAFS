function SoloNumeros(e) {
    tecla = (document.all) ? e.keyCode : e.which;

    if (tecla == 8) {
        return true;
    }

    // Patron de entrada, en este caso solo acepta numeros
    patron = /[0-9]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);    //var keyASCII = window.event.keyCode;
}


function AddCandidato() {
    vNombre = $('#Nombre').val();
    vPaterno = $('#Paterno').val();
    vMaterno = $('#Materno').val();
    vCiudad = $('#Ciudad').val();
    vCalle = $('#Calle').val();
    vNumero = $('#Numero').val();
    vColonia = $('#Colonia').val();
    vTelefono = $('#Telefono').val();
    vOtroTel = $('#OtroCel').val();
    vFechNac = $('#DiaNac').val() + "/" + $('#MesNac').val() + "/" +$('#AnioNac').val();
    //vFechaNac = $('#FechaNac').val();
    vCurp = $('#Curp').val();
    vRfc = $('#Rfc').val();
    vPasaporte = $('#Pasaporte').val();
    vCartilla = $('#Cartilla').val();
    vGenero = $('#Genero').val();
    vEdoCivil = $('#EdoCivil').val();
    vMun = $('#Mun').val();
    vEdo = $('#Edo').val();

    //var vNombre = "EDUARDO";
    //var vPaterno = "RAMIREZ";
    //var vMaterno = "FERNANDEZ";
    //var vCiudad = "MEXICO";
    //vCalle = "ANDADOR 34 DEL TEMOLUCO";
    //vNumero = "2";
    //vColonia = "ACUEDUCTO";
    //vTelefono = "99283938449";
    //vOtroTel = "00293384940";
    //vFechNac = "29/10/1945";
    ////vFechaNac = $('#FechaNac').val();
    //vCurp = "RAFE40102902302";
    //vRfc = "RAFE401029023";
    //vPasaporte = "102003";
    //vCartilla = "02939304";
    //vGenero = "MASCULINO";
    //vEdoCivil = "CASADO";
    //vMun = "GUSTAVO A. MADERO";
    //vEdo = "CDMX";

    params = "{ Nombre: '" + vNombre + "', Paterno: '" + vPaterno + "', Materno:'" + vMaterno;
    params = params + "', Ciudad:'" + vCiudad + "', Calle:'" + vCalle + "', Numero:'" + vNumero;
    params = params + "', Colonia:'" + vColonia + "', Telefono:'" + vTelefono + "', OtroTel:'" + vOtroTel;
    params = params + "', FechaNac:'" + vFechNac + "', Curp:'" + vCurp + "', Rfc:'" + vRfc + "', Pasaporte:'" + vPasaporte;
    params = params + "', Cartilla:'" + vCartilla + "', Genero:'" + vGenero + "', EdoCivil:'" + vEdoCivil + "', Mun:'" + vMun;
    params = params + "', Edo:'" + vEdo + "'}";

    if (vNombre != "" || vNombre != null) {
        if (vColonia != "" || vColonia != null) {
            jQuery.ajax({
                type: "POST",
                url: "InformacionCandidato.aspx/AddCandidato",
                data: params,
                contentType: 'application/json; charset=utf-8',
                dataType: "json",
                success: function (msg) {
                    alert('Candidato añadido con éxito');
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(xhr.status);
                    alert(thrownError);
                }
            });
        }
    }



}