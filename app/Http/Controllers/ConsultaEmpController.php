<?php

namespace App\Http\Controllers;

use App\Models\AsistenciaModel;
use App\Models\Consulta;
use App\Models\EmpleadosModel;
use App\Models\Proveedores;
use App\Models\VehiculosModel;
use App\Models\Visitantes;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class ConsultaEmpController extends Controller
{
    public function index(){
        $empleados = EmpleadosModel::all();
        $vehiculos = VehiculosModel::all();
        $proveedores = Proveedores::all();
        $visitantes = Visitantes::all();
        $asistencia = AsistenciaModel::all();


       return view('crud.consultaEmp',compact('empleados','vehiculos','proveedores','visitantes','asistencia'));
        
    }

    
}
