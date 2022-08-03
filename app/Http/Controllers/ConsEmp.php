<?php

namespace App\Http\Controllers;

use App\Models\EmpleadosModel;
use Illuminate\Http\Request;

class ConsEmp extends Controller
{
    public function index(){
        $Emp = EmpleadosModel::all();

        return view('crud.ConsEmpleados',compact('Emp'));
    }
}
