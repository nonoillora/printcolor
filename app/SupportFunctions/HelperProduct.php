<?php

namespace App\SupportFunctions;
/**
 * Created by PhpStorm.
 * User: Antonio
 * Date: 24/01/2017
 * Time: 10:02
 */
class HelperProduct
{
    public function esPresupuesto($id)
    {
        switch ($id) {
            case 8:
            case 17:
            case 22:
            case 23:
            case 31:
                return true;
                break;
            default:
                return false;
                break;
        }
    }
}