@include ('templates.header')
@include ('templates.menu')


<link href="{{ asset('css/acceso.css') }}" rel="stylesheet">
<script src="{{ asset('js/acceso.js') }}"></script>

<script src="{{ asset('js/reloj.js') }}"></script>

<!-- <link href="{{ asset('libraries/jquery-bootpag/bootstrap.min.css') }}" rel="stylesheet"> -->
<script src="{{ asset('libraries/jquery-bootpag/jquery.bootpag.min.js') }}"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

<div class="contenedor">

    <div class="row div_horario">
        <div class="col-md-4 fecha d-flex align-items-center">
            <label></label>
        </div>
        <div class="col-md-4 reloj d-flex align-items-center">
            <label></label>
        </div>

        <div class="col-md-4 col_numero_empleado d-flex align-items-center">
            <div class="input-group mb-3">
                <input type="text" class="form-control" id="numero_empleado" placeholder="N&uacute;mero de Empleado">
                <button type="submit" class="btn btn-success btn-flat" onclick="javascript:check_entry()"><i class="fas fa-check"></i></button>
            </div>
        </div>
    </div>


    <br>

    <div class="card">
        <div class="card-body">

        <div style="background-color:#c58845" class="alert alert-primary d-flex align-items-center" role="alert">
        <div>
            <h2>Menu</h2>
        </div>
    </div>
    <div class="table-wrapper-scroll-y my-custom-scrollbar">
        <table class="table table-striped table-hover table-bordered" id="menu">
            <thead>
                <tr>
                    <!-- <th scope="col">No.</th> -->
                    <th scope="col">Comidas</th>
                    <th scope="col">Tipo Comida</th>
                </tr>
            </thead>
            <tbody>

            </tbody>

        </table>

    </div>

        </div>
    </div>

    




    <div class="row div_main_data justify-content-center">
        <div class="col-md-4 col_div_img_logo">
            <div style="width: 80% center; ">
                <img src="{{asset('images/fc_logo.png')}}" id="person_logo" alt="person_logo" class="rounded" alt="Imagen Empleado">

            </div>

        </div>

        <!-- Code Reader -->


        <!--<div class="separator-small"></div>

    <div class="row div_registro">-->
        <div class="col-md-4">

            @include('templates.camera')

            <div class="separator-small"></div>
        </div>
        <div class="separator-small"></div>

        <div class="col-md-8">


            <div style="background-color:#c58845" class="alert alert-primary d-flex align-items-center" role="alert">
                <div>
                    <h2>Informaci&oacute;n del Personal</h2>
                </div>
            </div>
            <div class="table-wrapper-scroll-x my-custom-scrollbar">
                <table class="table table-striped table-hover table-bordered" id="table_informacion_personal">
                    <thead>
                        <tr>
                            <!-- <th scope="col">No.</th> -->
                            <th scope="col">No.Emp.</th>
                            <th scope="col">Grado</th>
                            <th scope="col">Nombre Completo</th>
                            <th scope="col">Adscripcion</th>
                            <th scope="col">Genero</th>
                            <th scope="col">Bloque</th>
                            <th scope="col">Estatus</th>
                            <th scope="col">Institucion</th>
                            <th scope="col">Situacion</th>
                            <th scope="col">Observaciones</th>
                        </tr>
                    </thead>
                    <tbody> </tbody>

                </table>

            </div>

            <div class="separator-small"></div>

            <div class="row div_registro">
                <div class="col-md-">

                    <div style="background-color:#c58845" class="alert alert-primary d-flex align-items-center" role="alert">
                        <div>
                            <h2>Registro</h2>
                        </div>
                    </div>
                    <div class="table-wrapper-scroll-x my-custom-scrollbar">
                        <table class="table table-striped table-hover table-bordered" id="table_registro">
                            <thead>
                                <tr>
                                    <th scope="col">No.</th>
                                    <th scope="col">No.Emp.</th>
                                    <th scope="col">Grado</th>
                                    <th scope="col">Nombre Completo</th>
                                    <th scope="col">Adscripcion</th>
                                    <th scope="col">Estatus</th>
                                    <th scope="col">Hora</th>
                                    <th scope="col">Fecha</th>
                                    <th scope="col">Horario</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>

                        </table>
                    </div>
                    <nav class="nav_pagination"> </nav>



                </div>
                <div class="separator-small"></div>






            </div>
        </div>




    </div>
</div>

</div>


@include ('templates.footer')