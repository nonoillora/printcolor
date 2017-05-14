<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    protected $fillable = [
        'idPedido','idCliente','idLineas','idTipoPago','totalPedido', 'isSent', 'isPaid','num_seguimiento','company_shipping'];
}
