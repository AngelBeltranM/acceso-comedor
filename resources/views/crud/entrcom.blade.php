@include ('templates.header')
@include ('templates.menu')

<?php
date_default_timezone_set('America/Monterrey');
$fecha_actual = date("Y-m-d");
date_default_timezone_set('America/Monterrey');
$hora_actual = date("H:i:s");
?>

@if ($message = Session::get('success'))
<div class="alert alert-success alert-dismissible justify-content-center">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <p>{{ $message }}</p>
</div>
@endif
<div class="contenedor">
  <form action="{{url('entrcom')}}" method="post" enctype="multipart/form-data">
    @csrf
    <h1 class="text-center">Registro de entrada para Comandantes</h1>

    <div class="form-group">
      <label for="Fecha de entrada">Número de empleado</label>
      <input type="number" class="form-control" name="Noemp" required>
    </div>

    <div class="row g-3">
      <div class="col">
        <label for="Fecha de entrada">Fecha de entrada</label>
        <input type="date" class="form-control" name="Fecha" value="<?= $fecha_actual ?>">
      </div>


      <div class="col">
        <label for="Hora de salida" class=>Hora de entrada</label>
        <input type="time" class="form-control" name="Hora" value="<?= $hora_actual ?>">
      </div>
    </div>
    <br>

    <div class="row">
      <div class="col text-center ">
        <select class="form-select" name="adscripcion" required>
          <option selected>Adscripcion</option>
          <option value="COMISARÍA Y AYUDANTÍA">COMISARÍA Y AYUDANTÍA</option>
          <option value="JEFATURA DE ESTADO MAYOR">JEFATURA DE ESTADO MAYOR</option>
          <option value="INSP. GRAL. Y ASUNTOS INTERNOS">INSP. GRAL. Y ASUNTOS INTERNOS</option>
          <option value="SECCIÓN 1 (PERSONAL)">SECCIÓN 1 (PERSONAL)</option>
          <option value="SECCIÓN 2 (INTELIGENCIA)">SECCIÓN 2 (INTELIGENCIA)</option>
          <option value="SECCIÓN 3 (OPERACIONES)">SECCIÓN 3 (OPERACIONES)</option>
          <option value="SECCIÓN 4 (ADMINISTRACIÓN)">SECCIÓN 4 (ADMINISTRACIÓN)</option>
          <option value="SECCIÓN 5 (JURÍDICO)">SECCIÓN 5 (JURÍDICO)</option>
          <option value="PRIMER AGRUPAMIENTO">PRIMER AGRUPAMIENTO</option>
          <option value="PRIMER GRUPO">PRIMER GRUPO</option>
          <option value="SEGUNDO GRUPO">SEGUNDO GRUPO</option>
          <option value="TERCER GRUPO">TERCER GRUPO</option>
          <option value="CUARTO GRUPO">CUARTO GRUPO</option>
          <option value="GUARDIA EN PREVENCIÓN">GUARDIA EN PREVENCIÓN</option>
          <option value="BANDA DE GUERRA">BANDA DE GUERRA</option>
          <option value="A DISPOSICIÓN DE S-1">A DISPOSICIÓN DE S-1</option>
          <option value="POLICIAL ESTATAL DE CAMINOS">POLICIAL ESTATAL DE CAMINOS</option>
          <option value="U.C.S">U.C.S</option>
          <option value="A DISPOSICIÓN DE I.G Y A.I.">A DISPOSICIÓN DE I.G Y A.I.</option>
          <option value="A DISPOSICIÓN DEL 1/ER. AGRUPAMIENTO">A DISPOSICIÓN DEL 1/ER. AGRUPAMIENTO</option>
          <option value="A DISPOSICIÓN DE COMISARIA Y AYTIA.">A DISPOSICIÓN DE COMISARIA Y AYTIA.</option>
          <option value="A DISPOSICIÓN DE COMISARIA">A DISPOSICIÓN DE COMISARIA</option>
          <option value="JEFATURA DE CAMPO">JEFATURA DE CAMPO</option>
          <option value="A DISPOSICIÓN DE S-3">A DISPOSICIÓN DE S-3</option>
          <option value="SECRETARIA DE SEGURIDAD PÚBLICA DEL ESTADO">SECRETARIA DE SEGURIDAD PÚBLICA DEL ESTADO</option>
          <option value="DIRECCIÓN GENERAL DE INVESTIGACIÓN">DIRECCIÓN GENERAL DE INVESTIGACIÓN</option>
          <option value="GRUPO DE REACCION ESCOBEDO">GRUPO DE REACCION ESCOBEDO</option>
          <option value="UNIDAD DE IGUALDAD DE GENERO DE LA S.S.P.E.">UNIDAD DE IGUALDAD DE GENERO DE LA S.S.P.E.</option>
          <option value="ALMACEN DE ARMAS">ALMACEN DE ARMAS</option>
          <option value="COMISARIA GENERAL DE LA AGENCIA DE ADMINISTRACION PENITENCIARIA">COMISARIA GENERAL DE LA AGENCIA DE ADMINISTRACION PENITENCIARIA</option>
          <option value="GRUPO FUERZA DE REACCION S.S.P.E.">GRUPO FUERZA DE REACCION S.S.P.E.</option>
          <option value="COMISARIA DE PROTECCION INSTITUCIONAL">COMISARIA DE PROTECCION INSTITUCIONAL</option>
          <option value="OTRA">OTRA</option>
        </select>
      </div>

      <div class="col text-center">
        <select class="form-select" name="estatus">
          <option selected>Estatus</option>
          <option value="ACTIVO">Activo</option>
          <option value="BAJA">Baja</option>
        </select>
      </div>

      <div class="col text-center">
        <select class="form-select" name="Motivo">
          <option selected>Motivo</option>
          <option value="Entrada">Entrada</option>
          <option value="Salida">Salida</option>
        </select>
      </div>
    </div>

    <input type="text" name="TurnoID" value={{Auth::user()->id}} hidden>

    <div class="col-auto p-5 text-center">
      <input class="btn btn-success " type="submit" center value="Guardar">
      <a class="btn btn-primary " href="acceso"> Volver <a />
    </div>

  </form>


  <!----------------------------CSS---------------------->
  <style>
    form {
      margin: 0 auto;
      width: 80%;
      border: 5px #c58845 solid;
      border-radius: 5px;
      padding: 15px;

    }

    .contenedor {
      display: flex;
      margin: 0 auto;
    }
  </style>