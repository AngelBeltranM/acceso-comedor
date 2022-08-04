<div class="mb-4">
    <label for="exampleInputEmail1" class="form-label">Id</label>
    <input type="text" class="form-control" name="id">
    <br>

    <div class="mb-4">
        <label for="exampleInputEmail1" class="form-label">Ingrese la comida</label>
        <input type="text" class="form-control" name="comida" >

    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Tipo comida</label>
        <select name="id_horario" class="form-control">
            <option value="1">Almuerzo</option>
            <option value="2">Comida</option>
            <option value="3">Cena</option>
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


    <button type="submit" class="btn btn-success" value="guardar">enviar</button>

    <a href="/menu" class="btn btn-primary"> Regresar</a>

</div>