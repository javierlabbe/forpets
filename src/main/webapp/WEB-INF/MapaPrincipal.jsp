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
<nav class="navbar navbar-expand-lg" style="background-color: #48C6AF; height: 90px;">
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
                    <a class="nav-link active" aria-current="page" href="http://localhost:9082/home"><b>Home</b></a>
                </li>
            </ul>

            <!-- Left links -->
            <div class="d-flex align-items-center">
                <button type="button" class="btn btn-primary" id="BotonNav1">Cerrar Sesi�n</button>
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
        <div class="col">
            <div class="input-group">
            <div class="form-outline">
                <input type="search" id="form1" class="form-control" style="width: 400px; margin-top: 15px;" placeholder="�Qu� buscas?"/>
                <div class="dropdown mt-3">
                    <button class="btn btn dropdown-toggle" type="button" data-bs-toggle="dropdown" style="background-color: #C6D166;">
                    Filtrar
                    </button>
                    <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Parques</a></li>
                    <li><a class="dropdown-item" href="#">Peluquerias caninas</a></li>
                    <li><a class="dropdown-item" href="#">Reportes</a></li>
                    <li><a class="dropdown-item" href="#">Tienda de mascotas</a></li>
                    <li><a class="dropdown-item" href="#">Veterinarias</a></li>
                    </ul>
                </div>
            </div>
            </div>
        </div><br>
        <!--Fin Buscador-->
          
          <div class="row" style="background-color:rgb(255, 255, 255);">

            <!-- ==IMAGEN VETERINARIA== -->
            <div class="col-3">
            <img
                src="/assets/img/VETERINARIA.png"
                class="rounded-circle"
                height="70" style="margin-top: 5px; margin-left: 10px"
                alt="Black and White Portrait of a Man"
                loading="lazy"
                
                />
            </div>
            <!-- ==FIN IMAGEN VETERINARIA==-->

            <!-- ==TITULO VETERINARIA== -->
            <div class="col-8">
            <table>
                <thead>
                <tr>
                    <th>
                    <h6>Veterinaria Patitas Suaves</h6>
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th>
                    <h6 style="color:rgb(143, 142, 142)">Alonso de C�rdova #2445,</h6>
                    </th>
            </tr>
                </tbody>

            </table>
            
            <h6 style="color:rgb(143, 142, 142)">Providencia</h6>
            </div>
            <!-- ==FIN TITULO VETERINARIA== -->
        </div><hr>
        <!-- ==FIN REPORTE== -->

        <div class="row" style="background-color:rgb(255, 255, 255);">

            <!-- ==IMAGEN PARQUE== -->
            <div class="col-3">
            <img
                src="/assets/img/PARQUE.png"
                class="rounded-circle"
                height="70" style="margin-top: 5px; margin-left: 10px"
                alt="Black and White Portrait of a Man"
                loading="lazy"
                
                />
            </div>
            <!-- ==FIN IMAGEN PARQUE==-->

            <!-- ==TITULO PARQUE== -->
            <div class="col-8">
            <table>
                <thead>
                <tr>
                    <th>
                    <h6>Parque para perritos</h6>
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th>
                    <h6 style="color:rgb(143, 142, 142)">Alonso de C�rdova #2475,</h6>
                    </th>
            </tr>
                </tbody>

            </table>
            
            <h6 style="color:rgb(143, 142, 142)">Providencia</h6>
            </div>
            <!-- ==FIN TITULO PARQUE== -->
        </div><hr>
        <!-- ==FIN REPORTE== -->

        <div class="row" style="background-color:rgb(255, 255, 255);">

            <!-- ==IMAGEN COMIDA== -->
            <div class="col-3">
            <img
                src="/assets/img/COMIDA.png"
                class="rounded-circle"
                height="70" style="margin-top: 5px; margin-left: 10px"
                alt="Black and White Portrait of a Man"
                loading="lazy"
                
                />
            </div>
            <!-- ==FIN IMAGEN COMIDA==-->

            <!-- ==TITULO COMIDA== -->
            <div class="col-8">
            <table>
                <thead>
                <tr>
                    <th>
                    <h6>Alimento para mascotas</h6>
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th>
                    <h6 style="color:rgb(143, 142, 142)">Cerro el plomo #257,</h6>
                    </th>
            </tr>
                </tbody>

            </table>
            
            <h6 style="color:rgb(143, 142, 142)">Providencia</h6>
            </div>
            <!-- ==FIN TITULO COMIDA== -->
        </div><hr>
        <!-- ==FIN REPORTE== -->

        <div class="row" style="background-color:rgb(255, 255, 255);">

            <!-- ==IMAGEN PELUQUERIA CANINA== -->
            <div class="col-3">
            <img
                src="/assets/img/PELUQUERIA CANINA.png"
                class="rounded-circle"
                height="70" style="margin-top: 5px; margin-left: 10px"
                alt="Black and White Portrait of a Man"
                loading="lazy"
                
                />
            </div>
            <!-- ==FIN IMAGEN PELUQUERIA CANINA==-->

            <!-- ==TITULO PELUQUERIA CANINA== -->
            <div class="col-8">
            <table>
                <thead>
                <tr>
                    <th>
                    <h6>Peluqueria canina J&M</h6>
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th>
                    <h6 style="color:rgb(143, 142, 142)">Cerro Blanco #242,</h6>
                    </th>
            </tr>
                </tbody>

            </table>
            
            <h6 style="color:rgb(143, 142, 142)">Providencia</h6>
            </div>
            <!-- ==FIN TITULO PELUQUERIA CANINA== -->
        </div><hr>
        <!-- ==FIN REPORTE== -->

        <div class="row" style="background-color:rgb(255, 255, 255);">

            <!-- ==IMAGEN TIENDA== -->
            <div class="col-3">
            <img
                src="/assets/img/JUGUETE.png"
                class="rounded-circle"
                height="70" style=" margin-left: 10px"
                alt="Black and White Portrait of a Man"
                loading="lazy"
                
                />
            </div>
            <!-- ==FIN IMAGEN TIENDA==-->

            <!-- ==TITULO TIENDA== -->
            <div class="col-8">
            <table>
                <thead>
                <tr>
                    <th>
                    <h6>Tienda de mascotas</h6>
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th>
                    <h6 style="color:rgb(143, 142, 142)">Manquehue #565,</h6>
                    </th>
            </tr>
                </tbody>

            </table>
            
            <h6 style="color:rgb(143, 142, 142)">Providencia</h6>
            </div>
            <!-- ==FIN TITULO TIENDA== -->
        </div><hr>
        <!-- ==FIN REPORTE== -->

        </div>
        <div class="col-8" style="height: 690px;">
          <div id='map'>
          </div>
        </div>
      </div>
    </div><br>
	
<!-- ==CREAR REPORTE== -->
	<div class="row-align-items-end">
		<div class="col text-end">
		
		<!-- Button trigger modal -->
<button type="button" class="btn btn" data-bs-toggle="modal" style="background-color: #004445;color: #C6D166;" data-bs-target="#exampleModal">
    Crear reporte
</button>

<button type="button" class="btn btn" data-bs-toggle="modal" style="background-color: #004445;color: #C6D166; margin-right: 10px;" data-bs-target="#exampleModal1">
    Agregar ubicaci�n
</div>
</div>

<div class="row">
		<div class="col">
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
                <div class="row align-items-center">
                    <div class="col text-center">
                    <img src="/assets/img/cat.png" class="rounded-circle mx-auto d-block"
                    alt="Foto de la mascota" style="border: 1px solid; border-color: rgb(143, 142, 142); width: 200px;">
                    <div class="mb-3">
  <label for="formFile" class="form-label"><b>Seleccione imagen de mascota</b></label>
  <input class="form-control" type="file" id="formFile">
</div>
            </div>
                </div><br>
        
                        <div class="row align-items-start">
                            <div class="col align-items-end">
                                <label for="reporte" class="form-label"><b>T�tulo de reporte</b>
                                    <input class="form-control" type="text" id="tituloReporte" name="tituloReporte" style="width: 505px;" placeholder="Ej: Busco/Encontr� mascota">
                                    <span class="small" style="color: gray;">Ingrese t�tulo para su reporte</span>
                                    </label>
                        </div>
                        <div class="col-4">
                            <label for="form-label" id="TipoReporte"><b>Tipo reporte</b></label>
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
                                    <input class="form-control" type="text" id="reporte" name="reporte" style="width: 240px;" placeholder="Ej: Michito">
                                    <span class="small" style="color: gray;">Ingrese nombre de la mascota</span>
                                    </label>
                        </div>
                        <div class="col-4">
                            <label for="reporte" class="form-label"><b>N� Chip</b>
                                <input class="form-control" type="text" id="reporte" name="reporte" style="width: 240px;" placeholder="Ej: 123456789012345">
                                <span class="small" style="color: gray;">Ingrese n�mero de chip (Opcional)</span>
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
                                <label for="form-label" id="seleccion"><b>Patr�n</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione patr�n de su mascota</option>
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                            </select>
                            <span class="small" style="color: gray;">Escoge un patr�n de pelaje/plumaje</span>
                            </div>
                            <div class="col">
                                <label for="form-label" id="seleccion"><b>Tama�o</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione tama�o de su mascota</option>
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                            </select>
                            <span class="small" style="color: gray;">Escoge el tama�o de su mascota</span>
                            </div>
                        </div>
                            <div class="row align-items-start">
                                <div class="col">
                                    <label for="exampleFormControlTextarea1" class="form-label"><b>Descripci�n</b></label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Escribe las caracter�sticas de tu mascota aqu�..." style="width: 775px;"></textarea>
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
	</div>
    </div>
    
    <!-- ==AGREGAR UBICACI�N== -->

<div class="row">
		<div class="col">
<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">�Comparte un lugar!</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="container-fluid">
                <div class="row align-items-start">
                    <div class="col">
                        <label for="" class="col-form-label"><b>Nombre del lugar</b>
                            <input class="form-control" type="text" id="" name=""
                            style="width: 430px;" placeholder="Ej: Parque In�s de Su�rez">
                        </label>
                    <!--=====================================-->
                    <div class="col">
                    <label for="Especie class col-form-label" id="seleccion"><b>Categor�a</b></label>
                <select class="form-select" aria-label="Default select example" style="width: 430px;">
                    <option class="form-control" selected>Seleccione categor�a</option>
                    <option class="form-control" value="Especie"></option>
                    <option class="form-control" value="Especie"></option>
                    <option class="form-control" value="Especie"></option>
                </select>
                    </div>
                    <!--=====================================-->
                        <label for="" class="col-form-label"><b>Direcci�n</b>
                            <input class="form-control" type="text" id="" name=""
                            style="width: 430px;" placeholder="Ej: Antonio varas 1510,Providencia,Regi�n Metropolitana">
                        </label>
                    <!--=====================================-->
                        <label for="" class="col-form-label"><b>Horario</b>
                                <input class="form-control" type="text" id="" name=""
                                style="width: 430px;" placeholder="Ej: Lunes a s�bado de 09:00 a 18:00">
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
                        <h6 style="color:#C6D166 ;">�S�guenos!</h6>

                </div>
            </div>
            <div class="col" style="margin-left: 200px; margin-top: 35px;">
                <img src="/assets/img/logoverde" alt="" style="height: 50px;">
            </div>
            <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                <p style="color:#C6D166 ;">ForPets�2022</p>
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