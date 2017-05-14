$(document).ready(function () {
    /*$( document ).on( 'click', '.nav-list li', function ( e ) {
     $( this ).addClass( 'active' ).siblings().removeClass( 'active' );
     } );*/
    //$('[data-toggle="tooltip"]').tooltip();
    $('#showEmpresa').on('click', function () {
        showEmpresa();
    });
    //$('.carousel').carousel();
    $('.precioProducto').on('click', function () {
        var precio = $(this).html();
        precio = precio.replace(" \u20ac", "");
    });
    $('.precioProducto').hover(function () {
        $(this).addClass('amarillo');
    }, function () {
        $(this).removeClass('amarillo');
    });

    //esto ajusta la cajita de los titulos para que todoso se vean igual
    var heightCat = 0;

    $('.tituloCat').each(function () {
        if ($(this).height() > heightCat)
            heightCat = $(this).height();
    });
    $('.tituloCat').each(function (index) {
        $(this).height(heightCat);
    });

});


function showEmpresa() {
    if ($('#showEmpresa').prop('checked')) {
        $('#datosEmpresa').removeClass('hidden');
    } else {
        $('#datosEmpresa').addClass('hidden');
    }
}

