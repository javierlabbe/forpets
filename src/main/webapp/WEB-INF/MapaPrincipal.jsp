<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
     
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
<link href="Style.css" rel="stylesheet">
<link href="/assets/css/mapaStyle.css" rel="stylesheet">

<style>
*{
  margin: 0;
  padding: 0;
}

</style>

<!--Mapbox-->

<link href='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.css' rel='stylesheet' />
<!-- Fin Mapbox-->


</head>
<nav class="navbar navbar-expand-lg" style="background-color: #48C6AF; height: 120px;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <!--IR AL HOME en href-->
            <img src="/assets/img/logonegro" height="40px" alt="forpets Logo" loading="lazy" style="margin-top: -1px;" />
        </a>

        <!-- Toggle button -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <!-- Left links -->
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Ver Mapa</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Hacer Reporte</a>
                </li>
            </ul>

            <!-- Left links -->
            <div class="d-flex align-items-center">
                <button type="button" class="btn btn-primary" id="BotonNav1">Cerrar Sesión</button>
            </div>
        </div>
    </div>
</nav>
<body>
    <div class="container-fluid text-center-sm" >
      <div class="row">
        <div class="col" style="height: 600px;"  >
          <!--Reporte-->
          <!--Inicio Buscador-->
          <div class="col" >
            <div class="input-group">
              <div class="form-outline">
                <input type="search" id="form1" class="form-control" />
              </div>
              
            </div>
          </div>
          <!--Fin Buscador-->

          
          <!--Inicio Filtro-->
          <div class="row"  >
            <div class="col"  >
              <svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-filter-square-fill" viewBox="0 0 16 16">
                <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm.5 5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1 0-1zM4 8.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm2 3a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5z"/>
              </svg>
            </div>
          </div>
          <!--fin Filtro-->
          
          
          <div class="row" style="background-color:rgb(255, 255, 255);">

            <!-- parte imagen de Reporte-->
            <div class="col" style="border: 0.1 solid black;">
              <img
                  src="https://cdn-icons-png.flaticon.com/512/1976/1976784.png"
                  class="rounded-circle"
                  height="90"
                  alt="Black and White Portrait of a Man"
                  loading="lazy"
                  
                />
            </div>
            <!-- Fin parte imagen de Reporte-->

            <!-- parte Titulo de Reporte-->
            <div class="col" style="background-color:rgb(255, 255, 255);">
              <table>
                <thead>
                  <tr>
                    <th>
                      <h3>Titulo zona</h3>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th>
                      <h6>Lorem ipsum dolor sit amet. </h6>
                    </th>
                  </tr>
                </tbody>

              </table>
              
              <h6>Lorem ipsum dolor sit amet. 
                </h6>
            </div>
            <!-- parte Titulo de Reporte-->
          </div>
          <!--Fin Reporte-->

        </div>
        <div class="col-8" style="height: 600px;">
          <div id='map'>
          </div>
        </div>
      </div>
    </div>
	
	<div class="row">
		<div class="col">
		
		<!-- Button trigger modal -->
<button type="button" class="btn btn" data-bs-toggle="modal" style="background-color: #004445;color: #C6D166;" data-bs-target="#exampleModal">
    Crear reporte
</button>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">
        <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Crear reporte</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <!-- Datos -->
            <div class="container-fluid">
                <div class="row-4 align-items-center">
                    <div class="col-4">
                    <img src="/assets/img/cat.png" class="rounded-circle mx-auto d-block"
                    alt="Foto de la mascota" style="border: 1px solid; border-color: rgb(143, 142, 142); width: 200px;">
                    <button class="btn btn" type="button" style="background-color: #C6D166; margin-top: 20px;">Escoger mascota desde perfil</button>
                    <button class="btn btn" type="button" style="background-color: #C6D166; margin-top: 10px;">Cargar imagenes de mascota</button>
            </div>
                </div>
        
                        <div class="row align-items-start">
                            <div class="col-4">
                                <label for="reporte" class="form-label"><b>Título de reporte</b>
                                    <input class="form-control" type="text" id="reporte" name="reporte" style="width: 230px;" placeholder="Ej: Busco/Encontré">
                                    <span class="small" style="color: gray;">Ingrese título para su reporte</span>
                                    </label>
                        </div>
                        <div class="col-4">
                            <label for="form-label" id="seleccion"><b>Tipo reporte</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione tipo reporte</option>
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                            </select>
                            <span class="small" style="color: gray;">Escoge un tipo de reporte</span>
                        </div>
                        </div>
                        <div class="row align-items-start">
                            <div class="col-4">
                                <label for="reporte" class="form-label"><b>Nombre mascota</b>
                                    <input class="form-control" type="text" id="reporte" name="reporte" style="width: 230px;" placeholder="Ej: Michito">
                                    <span class="small" style="color: gray;">Ingrese nombre de la mascota</span>
                                    </label>
                        </div>
                        <div class="col-4">
                            <label for="reporte" class="form-label"><b>Nº Chip</b>
                                <input class="form-control" type="text" id="reporte" name="reporte" style="width: 230px;" placeholder="Ej: 123456789012345">
                                <span class="small" style="color: gray;">Ingrese número de chip (Opcional)</span>
                                </label>
                        </div>
                        <div class="col-4">
                            <label for="form-label" id="seleccion"><b>Especie</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione especie de la mascota</option>
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                            </select>
                            <span class="small" style="color: gray;">Escoge la especie de su mascota</span>
                        </div>
                        </div>
                        <div class="row align-items-start">
                            <div class="col">
                                <label for="form-label" id="seleccion"><b>Raza</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione raza de la mascota</option>
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                            </select>
                            <span class="small" style="color: gray;">Escoge la raza de su mascota</span>
                            </div>
                            <div class="col">
                                <label for="form-label" id="seleccion"><b>Patrón</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione un patrón de su mascota</option>
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                            </select>
                            <span class="small" style="color: gray;">Escoge un patrón de pelaje/plumaje</span>
                            </div>
                            <div class="col">
                                <label for="form-label" id="seleccion"><b>Tamaño</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione tamaño de su mascota</option>
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                            </select>
                            <span class="small" style="color: gray;">Escoge el tamaño de su mascota</span>
                            </div>
                        </div>
                            <div class="row align-items-start">
                                <div class="col">
                                    <label for="exampleFormControlTextarea1" class="form-label"><b>Descripción</b></label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Escribe las características de tu mascota aquí..." style="width: 740px;"></textarea>
                            <span class="small" style="color: gray;">Describe detalladamete a tu mascota</span>
                                </div>
                            </div>
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn" style="background-color: #C6D166;">Enviar</button>
        </div>
    </div>
    </div>
</div>
		
		</div>
	
	<div class="col">
	
	<!-- Button trigger modal -->
<button type="button" class="btn btn" data-bs-toggle="modal" style="background-color: #004445;color: #C6D166;" data-bs-target="#exampleModal1">
    Agregar ubicación
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">¡Comparte un lugar!</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="container-fluid">
                <div class="row align-items-start">
                    <div class="col">
                        <label for="" class="col-form-label"><b>Nombre del lugar</b>
                            <input class="form-control" type="text" id="" name=""
                            style="width: 430px;" placeholder="Ej: Parque Inés de Suárez">
                        </label>
                    <!--=====================================-->
                    <div class="col">
                    <label for="Especie class col-form-label" id="seleccion"><b>Categoría</b></label>
                <select class="form-select" aria-label="Default select example" style="width: 430px;">
                    <option class="form-control" selected>Seleccione categoría</option>
                    <option class="form-control" value="Especie"></option>
                    <option class="form-control" value="Especie"></option>
                    <option class="form-control" value="Especie"></option>
                </select>
                    </div>
                    <!--=====================================-->
                        <label for="" class="col-form-label"><b>Dirección</b>
                            <input class="form-control" type="text" id="" name=""
                            style="width: 430px;" placeholder="Ej: Antonio varas 1510,Providencia,Región Metropolitana">
                        </label>
                    <!--=====================================-->
                        <label for="" class="col-form-label"><b>Horario</b>
                                <input class="form-control" type="text" id="" name=""
                                style="width: 430px;" placeholder="Ej: Lunes a sábado de 09:00 a 18:00">
                        </label>
                    <!--=====================================-->
                    <label class="control-label">Select File</label>
                    <input id="input-b5" name="input-b5[]" type="file" multiple>
                    <script>
                    $(document).ready(function() {
                    $("#input-b5").fileinput({showCaption: false, dropZoneEnabled: false});
                    });
                    </script>
                    </div>
                </div>
            </div>
            </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn" style="background-color: #C6D166;">Enviar</button>
        </div>
    </div>
    </div>
</div>
	
	</div>
	
	</div>
    

</body>
<footer class="text-center text-white" style="background-color: #004445; margin-top: 50px; ">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <!-- Grid container -->
                <div class="container pt-4">
                    <!-- Section: Social media -->
                    <section class="mb-4">
                        <!-- Facebook -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                            data-mdb-ripple-color="dark"><i class="fab fa-facebook-f" style="color: #C6D166;"></i></a>
                        <!-- Twitter -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                            data-mdb-ripple-color="dark"><i class="fab fa-twitter" style="color: #C6D166;"></i></a>
                        <!-- Instagram -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"><i
                                class="fab fa-instagram" style="color: #C6D166;"></i>
                        </a>
                        <h6 style="color:#C6D166 ;">¡Síguenos!</h6>

                </div>
            </div>
            <div class="col" style="margin-left: 200px; margin-top: 35px;">
                <img src="/assets/img/logoverde" alt="" style="height: 50px;">
            </div>
            <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                <p style="color:#C6D166 ;">ForPets©2022</p>
            </div>
        </div>
    </div>
</footer>

 <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script> 
<script src='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.js'></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
crossorigin="anonymous">
</script>
<script src="/assets/js/maps.js"></script>
</html>