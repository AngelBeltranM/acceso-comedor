<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\VehiculosModel;

class ConsultaVeController extends Controller
{
   public function index()
   {

      //   $Vehiculos = VehiculosModel::get();

      //   return view('crud.consultaVehiculos',compact('Vehiculos'));
      $datos= DB::table('empleados')
        ->leftJoin('vehiculos','empleados.NoEmp','=','vehiculos.NoEmp')
        ->select('empleados.*','vehiculos.*','empleados.NoEmp as NE')->get();
        return view('crud.consultaVehiculos',['datos'=>$datos]);
   }
}
