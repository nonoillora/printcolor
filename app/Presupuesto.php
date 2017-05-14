<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Presupuesto extends Model
{
    protected $table = 'presupuestos';
    protected $fillable = [
        'nombre', 'telefono', 'email', 'comentario', 'idProducto', 'empresa', 'provincia'
    ];
}
