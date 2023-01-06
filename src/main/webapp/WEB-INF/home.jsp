<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script>
   <link href="/Assets/CSS/HomeStyles.css" rel="stylesheet">
   <title>Home</title>
    	<!-- TIPOGRAFIAS -->
 	<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Baloo' rel='stylesheet'>
    <!-- TIPOGRAFIAS -->
 	    <style>
        body {
            background-color:white;
            font-family: 'Poppins';
            background-image: url('/assets/img/fondogris.png');
        }
        h4 {
        	font-family:'Baloo';
        	text-shadow: 0 .05rem .1rem rgba(0, 0, 0, .5);
        	font-size: 45px;
        	margin-top: 35px;
        	
        }
    </style>
 
</head>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg" style="background-color: #48C6AF; height: 120px;" >
    <div class="container-fluid">
        <a class="navbar-brand" href="home">
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
                    <a class="nav-link" aria-current="page" href="/index/nosotros"><strong>Nosotros</strong></a>
                </li>
                <li>
                <a class="nav-link" aria-current="page" href="/mapa/mapaPrincipal"><strong>Ver mapa</strong></a>
              	</li>
              	                <li>
                <a class="nav-link" aria-current="page" href="/home/perfil"><strong>Mi perfil</strong></a>
              	</li>
            </ul>

            <!-- Left links -->

            <div class="d-flex align-items-center">
            <div class="row">
           <div class="col">
           		 <!-- BOTONES -->
           		 <button type="button" class="btn btn-primary" id="BotonNav1" data-bs-toggle="modal" data-bs-target="#modalCierreSesión">Cerrar sesión</button>
					<div class="modal fade" id="modalCierreSesión" tabindex="-1" aria-labelledby="modalLogout" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h6 class="modal-title fs-5" id="modalLogout">Cerrando sesión...</h6>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body" id="modalLogout" >
					      </div>
					      	<h3  style="margin-left:20%; margin-bottom:20px" >¿Deseas cerrar sesión?</h3>
					     	<a class="btn btn-primary" href="/index/logout" role="button" id="BotonNav1" style="margin-left:35%; margin-bottom:10px;">Cerrar sesión</a>
					    	<a class="btn btn-primary" type="button" id="BotonNav1" data-bs-dismiss="modal" style="margin-left:35%; margin-bottom:20px;">Permanecer</a>
					    </div>
					  </div>
					</div>
					<!-- Fin modal -->         
                <!-- BOTONES -->
            </div>
        </div>
    </div>
</nav>
<!-- Navbar -->
 

<body>
<!-- CARRUSEL -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
  <div class="carousel-indicators">

    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/assets/img/gato_home.png" class="d-block w-100" alt="Foto gato" >
    </div>
    <div class="carousel-item">
      <img src="/assets/img/Foto_home.png" class="d-block w-100" alt="Foto perro">
    </div>
    <div class="carousel-item">
      <img src="/assets/img/conejo_home.png" class="d-block w-100" alt="Foto conejo">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- CARRUSEL -->

		<h4 align=center>¿Qué puedo hacer en ForPets?</h4>

<!-- TARJETAS -->
	<div class="container-fluid">
    <div class="row">
    <div class="col" style="margin-bottom: 35px; margin-top: 35px; margin-left: 40px;">
		<div class="card" style="width: 18rem;">
  			<img src="/assets/img/elemento5.PNG" class="card-img-top" alt="foto elemento">
  		<div class="card-body">
    		<h5 class="card-title"><strong>Reportar una mascota perdida</strong></h5>
   			<p class="card-text">Si extraviaste a tu mascota y necesitas ayuda,
         puedes reportarla para que la comunidad acceda a la información y se inicie la cadena de búsqueda.</p>
    		<a href="/mapa/mapaPrincipal" class="btn btn-primary" id="BotonNav1">Reportar</a>
  		</div>
		</div>
	</div>
	<div class="col" style="margin-bottom: 35px; margin-top: 35px;">
		<div class="card" style="width: 18rem;">
  			<img src="/assets/img/elemento3.PNG" class="card-img-top" alt="foto elemento">
  		<div class="card-body">
    		<h5 class="card-title"><strong>Agregar lugar de interés</strong></h5>
   			<p class="card-text">Si conoces algún sitio relacionado con mascotas, venta de artículos, servicios, parques petfriendly, entre otros,
   			puedes compartirla con la comunidad!</p>
    		<a href="/mapa/mapaPrincipal" class="btn btn-primary" id="BotonNav1">Agregar lugar</a>
  		</div>
		</div>
	</div>
	<div class="col" style="margin-bottom: 35px; margin-top: 35px;">
		<div class="card" style="width: 18rem;" >
  			<img src="/assets/img/elemento4.PNG" class="card-img-top" alt="foto elemento" style="width: 16.5rem;">
  		<div class="card-body">
    		<h5 class="card-title"><strong>Reportar una mascota encontrada</strong></h5>
   			<p class="card-text">En caso de que hayas encontrado una mascota que parezca pertenecer a una familia,
         puedes reportarla para que la comunidad acceda a la información y se inicie la cadena de búsqueda.</p>
    		<a href="/mapa/mapaPrincipal" class="btn btn-primary" id="BotonNav1">Reportar</a>
  		</div>
		</div>
	</div>
		<div class="col" style="margin-bottom: 35px; margin-top: 35px;">
		<div class="card" style="width: 18rem;">
  			<img src="/assets/img/elemento6.PNG" class="card-img-top" alt="foto elemento" style="width: 15rem;">
  		<div class="card-body">
    		<h5 class="card-title"><strong>Encontrar lugar de interés</strong></h5>
   			<p class="card-text">Explora el mapa para encontrar lugares exclusivos y relacionados con tu mascota,
   			podrás además ver las referencias de los usuarios que han visitado los sitios, y la valoración.</p>
    		<a href="/mapa/mapaPrincipal" class="btn btn-primary" id="BotonNav1">Explorar mapa</a>
  		</div>
		</div>
	</div>
	</div>
	</div>
<!-- TARJETAS -->
</body>

<footer class="text-center text-white" style="background-color: #004445; ">
	<div class="container-fluid">
	    <div class="row">
	      <div class="col">
	        <!-- Grid container -->
	        <div class="container pt-4">
	          <!-- Section: Social media -->
	          <section class="mb-4">
	            <!-- Facebook -->
        <ul class="nav flex-column" >
          <li class="nav-item">
            <span class="footer-title" style="color: #C6D166; font-size: 16px" align="left"><strong>Links de interés</strong></span>
          </li>
          <li class="nav-item">
            <a class="link1"  style="font-size: 13px" href="https://www.chileatiende.gob.cl/fichas/51436-ley-de-tenencia-responsable-de-mascotas-y-animales-de-compania-ley-cholito" target="_blank" rel="noopener noreferrer">Ley tenencia responsable</a>
          </li>
          <li class="nav-item">
            <a class="link1"  style="font-size: 13px" href="https://registratumascota.cl/inicio.xhtml" target="_blank" rel="noopener noreferrer">Registro nacional de mascotas</a>
          </li>
          <li class="nav-item">
            <span class="footer-title" style="color: #C6D166;font-size: 16px" align="left"><strong>Contacto</strong></span>
          </li>
          <li class="nav-item" >
            <a class="link1" style="font-size: 13px" href="mailto:holaforpets@gmail.com?Subject=Hola%20ForPets!"><i class="fas fa-envelope"></i>holaforpets@gmail.com</a>
          </li>
        </ul>
	        </div>
	      </div>
	      <div class="col" style="margin-left: 200px; margin-top: 35px;">
	        <img src="/assets/img/logoverde" alt="" style="height: 50px;">
	       <div> 
	        <ul class="list-inline social-buttons" style=" margin-top: 35px;">
          <li class="list-inline-item">
            <a href="#">
            <i class="fab fa-twitter" style="color: #C6D166;"></i>
          </a>
          </li>
          <li class="list-inline-item">
            <a href="#">
            <i class="fab fa-facebook-f" style="color: #C6D166;"></i>
          </a>
          </li>
          <li class="list-inline-item">
            <a href="#">
            <i class="fab fa-linkedin-in" style="color: #C6D166;"></i>
          </a>
          </li>
        </ul>
        </div>
	      </div>
	      <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
	                <span class="copyright quick-links" style="color:#C6D166 ;">Copyright &copy; Forpets <script>document.write(new Date().getFullYear())</script>
        </span>
	      </div>
	    </div>
    </div>
  </footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>

</html>