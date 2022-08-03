<?php

namespace App\Http\Controllers;

use App\Models\Proveedores;
use Illuminate\Http\Request;

class ConsProv extends Controller
{
    public function index(){
        $Prov = Proveedores::all();

        return view('crud.ConsProveedores',compact('Prov'));
    }
}
