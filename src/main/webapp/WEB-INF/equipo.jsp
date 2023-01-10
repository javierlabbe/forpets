<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nosotros</title>
     <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
		
    <link href="/assets/css/EquipoStyles.css" rel="stylesheet">

    <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script>
    
 	<!-- TIPOGRAFIAS -->
 	<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Baloo' rel='stylesheet'>
    <!-- TIPOGRAFIAS -->
	    <style>
        body {
            background-color:white;
            font-family: 'Poppins';
        }
    </style>
</head>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg" style="background-color: #48C6AF; height: 120px;" >
    <div class="container-fluid">
        <a class="navbar-brand" href="/home">
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
                    <a class="nav-link active" aria-current="page" href="/index/nosotros"><strong>Nosotros</strong></a>
                </li>
                <li>
                <a class="nav-link" aria-current="page" href="/mapaPrincipal"><strong>Ver mapa</strong></a>
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
    <div class="container-fluid">
        <div class="row" style="background-color: white; height: 800px; margin-top: 5%;">
            <div class="col" style="background-color: white; height: 800px">
                <div class="row" style="background-color: white;"> 
                    <center><h1>ForPets Team</h1></center>
                </div>
                <div class="row" style="background-color: white; margin-top: 10%;">
                    <div class="col" style="background-color: white;">
                        <center>
                        <img src="../assets/img/julian.jpeg" class="rounded" alt="FotoJulian" style="width: 135px; border: 1px solid;border-color: rgb(143, 142, 142);">
                        <br>
                        <br>
                        <h4>Julián Ordens</h4>
                        <!-- Linkedin -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" target="_blank" rel="noopener noreferrer" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                        <!-- Github -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" target="_blank" rel="noopener noreferrer" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                        </center>
                    </div>
                    <div class="col" style="background-color:white;">
                        <center>
                        <img src="../assets/img/Fran.jfif" class="rounded" alt="FotoFran" style="width: 135px;border: 1px solid;border-color: rgb(143, 142, 142);">
                        <br>
                        <br>
                        <h4>Francisca Lazo</h4>
                        <!-- Linkedin -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="https://www.linkedin.com/in/francisca-lazo-cerpa/" target="_blank" rel="noopener noreferrer" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                        <!-- Github -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="https://github.com/FranMarvelous" target="_blank" rel="noopener noreferrer" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                    </center>
                    </div>
                    <div class="col" style="background-color:white;">
                        <center>
                        <img src="../assets/img/javo.png" class="rounded" alt="FotoJavier" style="width: 135px; height: 135px;border: 1px solid;border-color: rgb(143, 142, 142);">
                        <br>
                        <br>
                        <h4>Javier Labbé</h4>
                        <!-- Linkedin -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="https://www.linkedin.com/in/labbejavier/" target="_blank" rel="noopener noreferrer" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                        <!-- Github -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="https://github.com/javierlabbe" target="_blank" rel="noopener noreferrer" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                    </center>
                    </div>
                </div>
                <div class="row" style="background-color: white; margin-top: 5%;" >
                    <div class="col" style="background-color: white;">
                        <center>
                        <img src="../assets/img/luis.jpeg" class="rounded" alt="FotoLuis" style="width: 135px; border: 1px solid;border-color: rgb(143, 142, 142);">
                        <br>
                        <br>
                        <h4>Luis Serrano</h4>
                        <!-- Linkedin -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="https://www.linkedin.com/in/luis-israel-serrano-miranda-888aa61b9/" target="_blank" rel="noopener noreferrer" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                        <!-- Github -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="https://github.com/luisserranom" target="_blank" rel="noopener noreferrer" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                        </center>
                    </div>
                    <div class="col" style="background-color:white;">
                        <center>
                        <img src="../assets/img/rocio.jpeg" class="rounded" alt="FotoRocio" style="width: 135px; border: 1px solid;border-color: rgb(143, 142, 142);">
                        <br>
                        <br>
                        <h4>Rocio Quezada</h4>
                        <!-- Linkedin -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="https://www.linkedin.com/in/rocio-jiresh-quezada-rodriguez-436008256/" target="_blank" rel="noopener noreferrer" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                        <!-- Github -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="https://github.com/RocioQ01"target="_blank" rel="noopener noreferrer" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                        </center>
                    </div>
                </div>
            </div>
            <div class="col" style="background-color: white; height: 800px; align-items:center; justify-content:center;" >
            <h1 align=center>Nuestra Misión</h1>
            <br>
         <pre align=center style="text-align:center; font-size: 16px; margin-top:45px;">
                El principal objetivo de ForPets es ayudar a toda persona 
            tutora de una mascota, en diferentes áreas de interés.
            
            Nuestro proyecto nace desde la problemática de extraviar un miembro
            importante de la familia, como lo son las mascotas.
            Buscamos como equipo ofrecer una solución digital para buscar y
            encontrar a las mascotas perdidas a nuestro alrededor mediante reportes,
            con el objetivo de conformar una red de apoyo y de rastreo para
            que la búsqueda se realice de manera más rápida y eficaz, complementándose 
            con el antiguo método de búsqueda de voz-a-voz o la cartelería en la calle.
            
            Esperamos cumplir con el objetivo, que nuestro proyecto sea de ayuda
            para la comunidad, promueva la tenencia responsable, y que se genere
            una red de apoyo efectiva y amistosa.

            ¡Les invitamos a registrarse y acceder a la comunidad!

            - ForPets, Santiago de Chile, 2022.
            </pre>
            </div>
        </div>
        
    </div>

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
	                <span class="copyright quick-links" style="color:#C6D166 ;">Copyright &copy; ForPets <script>document.write(new Date().getFullYear())</script>
        </span>
	      </div>
	    </div>
    </div>
  </footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>

</html>