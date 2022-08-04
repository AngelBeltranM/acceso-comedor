<?php

namespace App\Http\Controllers;

use App\Models\AsistenciaModel;
use App\Models\EmpleadosModel;
use App\Models\VehiculosModel;
use App\Models\Menu;
use Illuminate\Support\Facades\DB;


use Illuminate\Http\Request;

class AccesoController extends Controller
{

   
    public function index()
    {
       
        $menu = Menu::all();

        // $menus = Menu::orderBy('id', 'asc')->get();

        return view('acceso', compact('menu'));
    }

    public function refresh_table_registro()
    {
        $hoy = date('Y-m-d');
        $ayer  = strtotime("-1 day", strtotime($hoy));
        $ayer = date("Y-m-d", $ayer);        

        $asistencias = AsistenciaModel::select('*')->join('empleados', 'regasistencia.NoEmp', 'empleados.NoEmp')->whereIn('f_entrada', array($hoy,$ayer))->orderBy('regasistencia.id', 'desc')->paginate(5);

        return response()->json($asistencias);
    }

    public function check_entry(Request $request)
    {
        $operation_code = 0;
        $numero_empleado = $request->numero_empleado;

        //Chequear si existe
        $empleado = EmpleadosModel::where("NoEmp", "=", $numero_empleado)->get()->toArray();

        if (count($empleado) > 0) {
            
            $asistencias = AsistenciaModel::where("NoEmp", "=", $numero_empleado)->latest()->first();


            $adscripcion = $empleado[0]["Adscripcion"];
            $estatus = $empleado[0]["Estatus"];
            $horario = date("H:i:s");
            $fecha = date("Y-m-d");
            $horarioComida = date('H:i:s');

            if (date("12:00:00") > $horarioComida && date("05:00:00") < $horarioComida) {
                $horarioComida = 1;
            } else if (date("12:00:00") < $horarioComida && date("17:00:00") > $horarioComida) {
                $horarioComida = 2;
            } else if (date("23:50:00") > $horarioComida && date("17:00:00") < $horarioComida) {
                $horarioComida = 3;
            }

            if (isset($assistencias)) {
                if ($asistencias->horario === $horarioComida && $fecha === $asistencias->f_entrada) {
                    $operation_code = 2;
                    return response()->json(array($operation_code));
                }
            }
            

                $asistencia = new AsistenciaModel();
                $asistencia->NoEmp = $numero_empleado;
                $asistencia->f_entrada = $fecha;
                $asistencia->h_entrada = $horario;
                $asistencia->adscripcion = $adscripcion;
                $asistencia->estatus = $estatus;
                $asistencia->TurnoID = $request->id;
                $asistencia->horario = $horarioComida;
                $asistencia->save();

            $vehiculos = VehiculosModel::where("NoEmp", "=", $numero_empleado)->get()->toArray();

            return response()->json(array($operation_code, $empleado, $vehiculos));
        } else {
            $operation_code = 1;
            return response()->json(array($operation_code));
        }
    }

    public function getMenus(){
        $horarioComida = date('H:i:s');

            if (date("12:00:00") > $horarioComida && date("05:00:00") < $horarioComida) {
                $horarioComida = 1;
            } else if (date("12:00:00") < $horarioComida && date("17:00:00") > $horarioComida) {
                $horarioComida = 2;
            } else if (date("23:00:00") > $horarioComida && date("17:00:00") < $horarioComida) {
                $horarioComida = 3;
            }


            $menus = DB::table('menu')->where('id_horario', '=', $horarioComida)->get();
            

            return response()->json(array($menus));
    }
}
