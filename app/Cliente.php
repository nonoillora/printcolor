<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    protected $fillable = ['full_name',
        'enterprise',
        'phone',
        'nif-cif',
        'address',
        'poblation',
        'posta_code',
        'provence',
        'email',
        'observations'];
}
