@include ('templates.header')
@include ('templates.menu')

<br>

<div class="card">
    <div class="card-body">
        
    <a class="btn btn-primary" href="menu/create">Crear comida </a>
   

    <br> <br> 
        <table class="table table-light">
            <thead class="thead-light">
                <tr>
                    <th>id</th>
                    <th>Comida</th>
                    <th>Tipo Comida</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>

                @foreach($menu as $menus)
                <tr>
                    <th>{{$menus -> id}}</th>
                    <th>{{$menus -> comida}}</th>
                    <th>{{$menus -> id_horario}}</th>

                    <th>
                        <a class="btn btn-warning" href="{{ route('menu.edit', $menus)}}"> Editar</a>
                        
                        <form action="{{ url('/menu/'.$menus->id) }}" method="post">
                            @csrf
                            {{ method_field('DELETE') }}
                            <input type="submit" class="btn btn-danger" onclick="return confirm('¿quieres borrar?')" value="Borrar">
                        </form>

                    </th>

                </tr>

                @endforeach


            </tbody>
        </table>

    </div>
</div>