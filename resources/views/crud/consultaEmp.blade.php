

@include ('templates.header')
@include ('templates.menu')




<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<link href="https://nightly.datatables.net/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />

<?php
date_default_timezone_set('America/Monterrey');
$fecha_actual=date("Y-m-d");
?>
<div class="consulta">
<h1 class="text-center">Consulta</h1>
<div class="row g-3">
    <div class="col">
        <form action="{{url('consulta')}}" method="get">
            {{-- <div class="form-row">
                <div class="col">
                    <input type="text" class="form-control" name="texto" placeholder="N&uacute;mero de Empleado"required>
                </div>
                <div class="col">
                    <input type="submit" class="btn btn-primary btn-lg" value="Buscar">
                    <input type="submit" class="btn btn-success btn-lg" value="Mostrar todo"  href="consulta">
                </div>

            </div> --}}
        </form>
    </div>
    
    <div style="float: left;">
    <select onchange="mostrarTabla()" name="txt" class="form-select"  style="width: 30%;" id="Seleccionar" >
        <option>Seleccionar una tabla</option>
        <option value="empleados">Empleados</option>
        <option value="vehiculos">Vehiculos</option>
        <option value="Asistencia">Asistencia</option>
        <option value="Visitantes">Visitantes</option>
        <option value="Proveedores">Proveedores</option>
    </select>
   </div>
    
    <div class="card1">
    <div style="background-color:#c58845" class="alert alert-primary d-flex" role="alert">
                <div>
                    <h2></h2>
                </div>
            </div>

            <div class="table table-striped table-hover table-bordered" id="cd">
            <div class="container">
                <div class="table table-wrapper-scroll-x my-custom-scrollbar">
                    <table id="vehiculos" class="display nowrap mytables1 hidden" style="width:100%">
                        <thead>
                            <tr>
                                <th>Número de Placas</th>
                                <th>Numero de Empleado</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Color</th>
                                <th>Vigencia</th>
                            </tr>
                        </thead>
                        <tbody>
                    @foreach($vehiculos as $veh)
                        <tr>
                            <td>{{ $veh->NoPlacas}}</td>
                            <td>{{ $veh->NoEmp}}</td>
                            <td>{{ $veh->Marca}}</td>
                            <td>{{ $veh->Modelo}}</td>
                            <td>{{ $veh->Color}}</td>
                            <td>{{ $veh->Vigencia}}</td>
                        </tr>
                    @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        
            <div class="container">
                <div class="table table-wrapper-scroll-x my-custom-scrollbar">
                    <table id="empleados" class="display nowrap mytables1 hidden" style="width:100%">
                        <thead>
                            <tr>
                                <th>Número de empleado</th>
                                <th>Grado</th>
                                <th>Nombre Completo</th>
                                <th>Adscripcion</th>
                                <th>Genero</th>
                                <th>Bloque</th>
                                <th>Estatus</th>
                                <th>Institucion</th>
                                <th>Situacion</th>
                            </tr>
                        </thead>
                        <tbody>
                    @foreach($empleados as $emp)
                        <tr>
                            <td>{{ $emp->NoEmp}}</td>
                            <td>{{ $emp->Grado}}</td>
                            <td>{{ $emp->NombreCompleto}}</td>
                            <td>{{ $emp->Adscripcion}}</td>
                            <td>{{ $emp->Genero}}</td>
                            <td>{{ $emp->Bloque}}</td>
                            <td>{{ $emp->Estatus}}</td>
                            <td>{{ $emp->Institucion}}</td>
                            <td>{{ $emp->Situacion}}</td>
                        </tr>
                    @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            
            <div class="container">
                <div class="table table-wrapper-scroll-x my-custom-scrollbar">
                    <table id="proveedores" class="display nowrap mytables1 hidden" style="width:100%">
                        <thead>
                            <tr>
                                <th>Número de empleado</th>
                                <th>Fecha</th>
                                <th>Nombre Comercial</th>
                                <th>Nombre de empleado del proveedor</th>
                                <th>Asunto</th>
                                <th>Hora de entrada</th>
                                <th>Hora de salida</th>
                                <th>Turno que registro</th>
                            </tr>
                        </thead>
                        <tbody>
                    @foreach($proveedores as $pro)
                        <tr>
                                <td>{{$pro->NoEmp}} </td>
                                <td>{{$pro->Fecha}} </td>
                                <td>{{$pro->Empresa}} </td>
                                <td>{{$pro->NombreProveedor}} </td>
                                <td>{{$pro->Asunto}} </td>
                                <td>{{$pro->h_entrada}} </td>
                                <td>{{$pro->h_salida}} </td>
                                <td>{{$pro->TurnoID  }}</td>
                        </tr>
                    @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        
            <div class="container">
                <div class="table table-wrapper-scroll-x my-custom-scrollbar">
                    <table id="visitantes" class="display nowrap mytables1 hidden" style="width:100%">
                        <thead>
                            <tr>
                                <th>NumEmp</th>
                                <th>Nombre</th>
                                <th>Primer Apellido</th>
                                <th>Segundo Apellido</th>
                                <th>Fecha</th>
                                <th>Asunto</th>
                                <th>Identificación (CIC)</th>
                                <th>Hora de entrada</th>
                                <th>Hora de salida</th>
                                <th>Turno que registro</th>
                            </tr>
                        </thead>
                        <tbody>
                    @foreach($visitantes as $vis)
                        <tr>
                                <td>{{$vis->NoEmp}}</td>
                                <td>{{$vis->Nombre}} </td>
                                <td>{{$vis->ApellidoPaterno}} </td>
                                <td>{{$vis->ApellidoMaterno}} </td>
                                <td>{{$vis->Fecha}} </td>
                                <td>{{$vis->Asunto}} </td>
                                <td>{{$vis->Identificacion}} </td>
                                <td>{{$vis->h_entrada}}</td>
                                <td>{{$vis->h_salida}}</td>
                                <td>{{$vis->TurnoID}}</td>
                        </tr>
                    @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        

            <div class="container">
                <div class="table table-wrapper-scroll-x my-custom-scrollbar">
                    <table id="asistencia" class="display nowrap mytables1 hidden" style="width:100%">
                        <thead>
                            <tr>
                                <th>Número de empleado</th>
                                <th>Fecha de entrada</th>
                                <th>Hora de entrada</th>
                                <th>Fecha de salida</th>
                                <th>Hora de salida</th>
                                <th>Turno que registro</th>
                            </tr>
                        </thead>
                        <tbody>
                    @foreach($asistencia as $asi)
                        <tr>
                            <td>{{ $asi->NoEmp}}</td>
                            <td>{{ $asi->f_entrada}}</td>
                            <td>{{ $asi->h_entrada}}</td>
                            <td>{{ $asi->f_salida}}</td>
                            <td>{{ $asi->h_salida}}</td>
                            <td>{{ $asi->TurnoID }}</td>
                        </tr>
                    @endforeach
                        </tbody>
                    </table>
                </div>
            </div>



    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://nightly.datatables.net/js/jquery.dataTables.js"></script>

<script>



function mostrarTabla() {
    let tabla = document.getElementById('Seleccionar').value;

    var visitantes = document.getElementById('visitantes');
    var empleados = document.getElementById('empleados');
    var proveedores = document.getElementById('proveedores');
    var vehiculos = document.getElementById('vehiculos');
    var asistencia = document.getElementById('asistencia');

    visitantes.className="display nowrap mytables1 hidden";
    empleados.className="display nowrap mytables1 hidden";
    proveedores.className="display nowrap mytables1 hidden";
    vehiculos.className="display nowrap mytables1 hidden";
    asistencia.className="display nowrap mytables1 hidden";

    switch (tabla) {
        case "empleados":
                empleados.className="display nowrap mytables1";
            break;
        case "vehiculos":
                vehiculos.className="display nowrap mytables1";
            break;
        case "Asistencia":
                asistencia.className="display nowrap mytables1";
            break;
        case "Visitantes":
                visitantes.className="display nowrap mytables1";
            break;
        case "Proveedores":
                proveedores.className="display nowrap mytables1";
            break;
        default:
            break;
    }
   

    
}

   

</script>




  <!----------------------------CSS--------------------->
  <style>
  .consulta{
    margin: 0 auto;
    width: 1010px;
    border: 5px #c58845 solid;
    border-radius: 5px;
    padding: 15px;

  }

  .card1{
    margin: 0 auto;
    width: 920px;
    text-align:center;
    padding: 15px;
  }
  .hidden{
    display: none;
  }

  
