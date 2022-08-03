@include ('templates.header')
@include ('templates.menu')
<?php
date_default_timezone_set('America/Monterrey');
$fecha_actual = date("Y-m-d");
date_default_timezone_set('America/Monterrey');
$hora_actual = date("H:i:s");
?>

<br>

<div class="card">
    <div class="card-body">

        <div class="contenedor">


            <form action="{{url('/menu')}}" method="POST">
                @csrf
                @include('menu.form');


            </form>
        </div>
    </div>
</div>