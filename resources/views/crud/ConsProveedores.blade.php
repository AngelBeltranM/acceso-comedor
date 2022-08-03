@include ('templates.header')
@include ('templates.menu')

<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<link href="https://nightly.datatables.net/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>

<div class="card1">
    <h5 class="card-header"></h5>
    <div class="card-body">
      <h1 class="text-center">Listado de proveedores en el sistema</h1>
      <p class="card-text">
        {{-- @if ($message = Session::get('success'))
<div class="alert alert-warning alert-dismissible">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
    <p>{{ $message }}</p>
</div>
@endif --}}

<div class="row g-2">
<div class="col">
Fecha inicio
  <input type="date"  id="inicio" onchange="myFunction()">
</div>
<div class="col">
  Fecha fin
  <input type="date"  id="fin" onchange="myFunction()">
</div>
<div class="col">
   <input type="text" id="myInput" onkeyup="myFunction1()" placeholder="Buscar por nombres..">
</div>
<div style="width: 150px;">
      <a onclick="ExportToExcel('xlsx')"  class="btn btn-outline-success btn-sm">Exportar</a>
</div>
<script>
        function ExportToExcel(type, fn, dl) {
    var elt = document.getElementById('cd');
    var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1",dateNF:'dd/mm/yyyy;@',timeNF:'HH:mm;@',cellDates:true,raw:true });
    return dl ?
      XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }):
      XLSX.writeFile(wb, fn || ('Proveedores.' + (type || 'xlsx')));
}
</script>
</div></div> <br>

<div style="background-color:#c58845" class="alert alert-primary d-flex" role="alert">
                <div>
                    <h2></h2>
                </div>
            </div>
        <div class="table table-wrapper-scroll-x my-custom-scrollbar">
            <table class="table table-striped table-hover table-bordered" id="cd">
                <thead>
                    <th>Número de empleado</th>
                    <th>Fecha</th>
                    <th>Nombre Comercial</th>
                    <th>Nombre de empleado del proveedor</th>
                    <th>Asunto</th>
                    <th>Hora de entrada</th>
                    <th>Hora de salida</th>
                    <th>Turno que registro</th>


                </thead>
                <tbody>
                @foreach ($Prov as $item)
                    <tr>
                        <td>{{$item->NoEmp}} </td>
                        <td>{{$item->Fecha}} </td>
                        <td>{{$item->Empresa}} </td>
                        <td>{{$item->NombreProveedor}} </td>
                        <td>{{$item->Asunto}} </td>
                        <td>{{$item->h_entrada}} </td>
                        <td>{{$item->h_salida}} </td>
                        <td>{{ $item->TurnoID }}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>

            <script>
              function myFunction1() {

                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("cd");
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
                  table = document.getElementById("cd");
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
        </div>
      </p>
    </div>
  </div>


<!----------------------------CSS--------------------->
<style>
  .card1{
    margin: 0 auto;
    width: 80%;
    text-align:center;
    border: 5px #c58845 solid;
    border-radius: 5px;
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
