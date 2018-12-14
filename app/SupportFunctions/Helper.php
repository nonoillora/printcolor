<?php

namespace App\SupportFunctions;

use DB;
use Dompdf\Dompdf;


class Helper
{
    public static function doBillPDF($tipo, $idPedido)
    {
        $cliente = DB::table('clientes')->select('*')->join('pedidos', 'idCliente', '=', 'id')->where('idPedido', $idPedido)->first();
        $lineas = DB::table('linea_pedidos')
            ->select('*')
            ->whereIn('id', unserialize(DB::table('pedidos')->select('idLineas')->where('idPedido', $idPedido)->first()->idLineas))
            ->get();
        $pedido = DB::table('linea_pedidos')
            ->whereIn('id', unserialize(DB::table('pedidos')->select('idLineas')->where('idPedido', $idPedido)->first()->idLineas))
            ->sum('price');
        $factura = DB::table('facturas')->select('*')->where(['idPedido' => $idPedido])->first();
        $data = array();
        $data['lineas'] = $lineas;
        $data['cliente'] = $cliente;
        $data['pedido'] = $pedido;
        $data['factura'] = $factura;
        $dompdf = new Dompdf();

        view()->share('lineas', $lineas);
        view()->share('cliente', $cliente);
        view()->share('pedido', $pedido);
        view()->share('factura', $factura);
        $dompdf = \PDF::loadView('facturas/factura');
        $dompdf->setPaper('A4', 'portrait');
        if ($tipo == 'download') {
            //para que se adjunte en el mensaje
            return $dompdf->output();
        } else {
            //$dompdf->render();
            //para verlo en la noavegador
            //return $dompdf->download('invoice.pdf');
            return $dompdf->stream($cliente->numIdentificacionPedido . '.pdf');
        }
    }

    public static function saveBillPDF($idPedido)
    {
        $cliente = DB::table('clientes')->select('*')->join('pedidos', 'idCliente', '=', 'id')->where('idPedido', $idPedido)->first();
        $lineas = DB::table('linea_pedidos')
            ->select('*')
            ->whereIn('id', unserialize(DB::table('pedidos')->select('idLineas')->where('idPedido', $idPedido)->first()->idLineas))
            ->get();
        $pedido = DB::table('linea_pedidos')
            ->whereIn('id', unserialize(DB::table('pedidos')->select('idLineas')->where('idPedido', $idPedido)->first()->idLineas))
            ->sum('price');
        $data = array();
        $data['lineas'] = $lineas;
        $data['cliente'] = $cliente;
        $data['pedido'] = $pedido;
        $dompdf = new Dompdf();

        view()->share('lineas', $lineas);
        view()->share('cliente', $cliente);
        view()->share('pedido', $pedido);
        $dompdf = \PDF::loadView('facturas/factura');
        $dompdf->setPaper('A4', 'portrait');
        $status = $dompdf->save(storage_path() . '/app/bills/' . date('Y') . '/' . date('n') . '/' . $cliente->numIdentificacionPedido . '.pdf');
        return $status;
    }

}