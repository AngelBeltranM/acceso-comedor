@include ('templates.header')
@include ('templates.menu')
<?php
date_default_timezone_set('America/Monterrey');
$fecha_actual = date("Y-m-d");
date_default_timezone_set('America/Monterrey');
$hora_actual = date("H:i:s");
?>

<div class="card">
    <div class="card-body">
        @if (isset($menu))
            <h1>Editar</h1>

            <form action="{{ route('menu.update', $menu) }}" method="post">
            @method('PUT')
            @csrf
                <div class="mb-4">
                    <label for="exampleInputEmail1" class="form-label">Id</label>
                    <input type="text" class="form-control" name="id" value="{{$menu->id}}">
                    <br>
                
                    <div class="mb-4">
                        <label for="exampleInputEmail1" class="form-label">Ingrese la comida</label>
                        <input type="text" class="form-control" name="comida" value="{{$menu->comida}}">
                
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Tipo comida</label>
                        <select name="id_horario" class="form-control">
                            @if ($menu->id_horario === 1)
                            <option value="1" selected>Almuerzo</option>
                            <option value="2">Comida</option>
                            <option value="3">Cena</option>
                            @endif
                            @if ($menu->id_horario === 2)
                            <option value="1">Almuerzo</option>
                            <option value="2" selected>Comida</option>
                            <option value="3">Cena</option>
                            @endif
                            @if ($menu->id_horario === 3)
                            <option value="1">Almuerzo</option>
                            <option value="2">Comida</option>
                            <option value="3" selected>Cena</option>
                            @endif
                        </select>
                    </div>
                
                
                
                    <div class="row g-3">
                        <div class="col">
                            <label for="Fecha de entrada">Fecha</label>
                            <input type="date" class="form-control" name="fecha" value="<?= $fecha_actual ?>">
                        </div>
                
                
                        <div class="col">
                            <label for="Hora de salida" class=>Hora</label>
                            <input type="time" class="form-control" name="hora" value="<?= $hora_actual ?>">
                        </div>
                    </div>
                
                    <br>
                
                
                    <button type="submit" class="btn btn-success" value="guardar">Actualizar</button>
                
                    <a href="/menu" class="btn btn-primary"> Regresar</a>
                
                </div>
            </form>

    

        @endif
        


    </div>
</div>