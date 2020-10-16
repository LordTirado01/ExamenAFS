//$("#gridCandidatos").scroll(function () {
//    $('#paginationBlock')
//        .stop()
//        .animate({ "marginLeft": ($("#gridCandidatos").scrollLeft()) + "px" }, 'fast');
//});

$(document).ready(function () {
    $('#tCandidatos').DataTable({
        "scrollX": true
    });
    $('.dataTables_length').addClass('bs-select');
});