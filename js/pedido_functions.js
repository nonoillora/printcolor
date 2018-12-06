/**
 * Created by Antonio on 16/11/2017.
 */
$(document).ready(function () {
    $('#addNumSeguimientoPedido').on('click', function () {
        alert('e');

        /*$.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            //url: 'admin/pedido/addNumSeguimiento',
            dataType: 'json',
            data: {
                idPedido: $('').val(),
                numSeguimiento: $('#numSeguimientoPedido').val()
            },
            type: 'post',
            beforeSend: function () {
                $('#addNumSeguimientoPedido').prop('disabled', true);
            }, success: function (data) {
                if (data.success) {
                    $('#addNumSeguimientoPedido').prop('disabled', false);
                }
            }
        });*/
    });

});