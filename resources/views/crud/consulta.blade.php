@include ('templates.header')
@include ('templates.menu')


<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<link href="https://nightly.datatables.net/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>

<?php
date_default_timezone_set('America/Monterrey');
$fecha_actual=date("Y-m-d");
?>
 <br>
<div class="consulta">
    <h1 class="text-center">Consulta de Asistencia</h1>
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





<div class="row g-2">
    <div class="col">
        <input type="text" id="myInput" onkeyup="myFunction1()" placeholder="Buscar por NumEmpleado..">
     </div>
  <div class="col ">
  Fecha inicio
    <input type="date"  id="inicio" onchange="myFunction()">
    </div>
    <div class="col">
    Fecha fin
    <input type="date"  id="fin" onchange="myFunction()">
    </div>
    <div style="width: 150px;">
    <a onclick="ExportToExcel('xlsx')"  class="btn btn-outline-success">Exportar</a>
    </div>
    <script>
            function ExportToExcel(type, fn, dl) {
          var elt = document.getElementById('exportable');
          var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1",dateNF:'dd/mm/yyyy;@',timeNF:'HH:mm;@',cellDates:true,raw:true });
          return dl ?
          XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }):
          XLSX.writeFile(wb, fn || ('Asistencia.' + (type || 'xlsx')));
    }
    </script>


        <div class="card1">
        <div style="background-color:#c58845" class="alert alert-primary d-flex" role="alert">
                    <div>
                        <h2></h2>
                    </div>
                </div>


    <div class="container">
        <div class="table table-wrapper-scroll-x my-custom-scrollbar table-striped table-hover table-bordered">
            <table id="exportable" class="display nowrap mytables1" style="width:100%">
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
            @foreach($consultas as $consulta)
                <tr>
                    <td>{{ $consulta->NoEmp}}</td>
                    <td>{{ $consulta->f_entrada}}</td>
                    <td>{{ $consulta->h_entrada}}</td>
                    <td>{{ $consulta->f_salida}}</td>
                    <td>{{ $consulta->h_salida}}</td>
                    <td>{{ $consulta->TurnoID }}</td>
                </tr>
            @endforeach
                </tbody>
            </table>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://nightly.datatables.net/js/jquery.dataTables.js"></script>


{{-- <script>

var tables1 = $('.mytables1').DataTable({
      "dom": '<"top"i>rt<"bottom">p<"clear">',
      "pageLength": 5,
      "bLengthChange": false,
      language: {
                url: 'https://cdn.datatables.net/plug-ins/1.12.1/i18n/es-MX.json'
                },
        ordering: false,
        info: false,
    });

    $('#mySearch').on( 'keyup click', function () {
        tables1
        .columns( 0 )
        .search( this.value )
        .draw();

    });


</script> --}}


<script>
    function myFunction1() {

      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("myInput");
      filter = input.value.toUpperCase();
      table = document.getElementById("exportable");
      tr = table.getElementsByTagName("tr");


      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }
      }
    }
    </script>

<script>
  function verify(){
      if(document.getElementById("inicio").value=='' || document.getElementById("fin").value==''){
          return false;
      }
      return true;
  }

  function myFunction() {
      if(!verify())return;

    var inicio, fin, filter, table, tr, td, i, txtValue;
    inicio = document.getElementById("inicio");
    fin = document.getElementById("fin");
    inicio = inicio.value.toUpperCase();
    fin = fin.value.toUpperCase();
    table = document.getElementById("exportable");
    tr = table.getElementsByTagName("tr");



    for (i = 0; i < tr.length; i++) {
      td = tr[i].getElementsByTagName("td")[1];
      if (td) {
        txtValue = td.textContent || td.innerText;

        if (txtValue.slice(1,4) >= inicio.slice(1,4) && txtValue.slice(1,4) <= fin.slice(1,4)) {
          if(txtValue.slice(5,7) >= inicio.slice(5,7) && txtValue.slice(5,7) <= fin.slice(5,7)){
              if(txtValue.slice(8,10) >= inicio.slice(8,10) && txtValue.slice(8,10) <= fin.slice(8,10)){
                  tr[i].style.display = "";
              } else {
          tr[i].style.display = "none";
        }
          } else {
          tr[i].style.display = "none";
        }
        } else {
          tr[i].style.display = "none";
        }
      }
    }
  }
</script>

{{-- <script>
    function myFunction1() {

      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("myInput");
      filter = input.value.toUpperCase();
      table = document.getElementById("exportable");
      tr = table.getElementsByTagName("tr");


      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }
      }
    }
    </script> --}}


  <!----------------------------CSS--------------------->
<style>
  .consulta{
    margin: 0 auto;
    width: 80%;
    text-align:center;
    border: 5px #c58845 solid;
    border-radius: 5px;
    padding: 15px;

  }

  .card1{
    margin: 0 auto;
    width: 900px;
    text-align:center;
    padding: 15px;
  }

  .my-custom-scrollbar {
    position: relative; 
    overflow: auto;
    }
    .table-wrapper-scroll-x {
    display: block;
    }
</style>
