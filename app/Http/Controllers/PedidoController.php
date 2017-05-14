<?php

namespace App\Http\Controllers;

use App\Pedido;
use Illuminate\Http\Request;

class PedidoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function listadoPedidos()
    {
        return view('administracion/pedidos/listadoPedidos', ['title' => 'Pedidos']);
    }

    public function pedidosPendientes()
    {
        return view('administracion/pedidos/pendientes', ['title' => 'Pedidos Pendientes']);
    }

    public function getRegistroClientePedido(){
        return view('pedidos/registroClientePedido',['title'=>'Confirmaci&oacute;n del pedido']);
    }

    public function getrealizarPagoPedido(){
        return view('pedidos/realizarPagoClientePedido',['title'=>'Realizar pago del pedido']);
    }

    public function getPedidoFinalizado(Request $request){
        $request->get('tipoPago');

        $pedido = new Pedido();
        return view('pedidos/realizarPagoPedidoTransferenciaBancaria',['title'=>'Pedido finalizado']);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
