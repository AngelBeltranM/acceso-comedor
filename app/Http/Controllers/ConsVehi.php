<?php

namespace App\Http\Controllers;

use App\Models\VehiculosModel;
use Illuminate\Http\Request;

class ConsVehi extends Controller
{
    public function index(){
        $Vehi = VehiculosModel::all();

        return view('crud.ConsVehiculos',compact('Vehi'));
    }
}
