<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
 <!--Mapbox-->
 <link href='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.css' rel='stylesheet' />
 <!-- Fin Mapbox-->

 <link href="assets/css/estilo.css" rel="stylesheet">
</head>
<nav class="navbar navbar-expand-lg navbar-light" style="margin-bottom:25px;background-color: #48C6AF;">
    <!-- Container wrapper -->
    <div class="container-fluid" >
           <!-- Toggle button -->
           <button
             class="navbar-toggler"
             type="button"
             data-mdb-toggle="collapse"
             data-mdb-target="#navbarSupportedContent"
             aria-controls="navbarSupportedContent"
             aria-expanded="false"
             aria-label="Toggle navigation"
             
           >
             <i class="fas fa-bars"></i>
           </button>
       
           <!-- Collapsible wrapper -->
           <div class="collapse navbar-collapse" id="navbarSupportedContent">
             <!-- Navbar brand -->
             <a class="navbar-brand mt-2 mt-lg-0" href="#">
               <img
                 src="/assets/img/logonegro"
                 alt="Logo ForPets"
                 loading="lazy"
                 style="height:40px;"
               />
             </a>
             <!-- Left links -->
             <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               <li class="nav-item">
                 <a class="nav-link" style="font-weight: bold; " href="#">Nosotros</a>
               </li>
               
             </ul>
             <!-- Left links -->
           </div>
           <!-- Collapsible wrapper -->
       
           <!-- Right elements -->
           <div class="d-flex align-items-center">
             <!-- Icon -->
             <a class="text-reset me-3" href="#">
               
             </a>
  			  <ul
                 class="dropdown-menu dropdown-menu-end"
                 aria-labelledby="navbarDropdownMenuAvatar"
               >
                 <li>
                   <a class="dropdown-item" href="#">My profile</a>
                 </li>
                 <li>
                   <a class="dropdown-item" href="#">Settings</a>
                 </li>
                 <li>
                   <a class="dropdown-item" href="#">Logout</a>
                 </li>
               </ul>
             </div>
           </div>
           <!-- Right elements -->
         </div>
         <div class="row">
           <div class="col">
             <button type="button" class="btn btn-primary" id="BotonNav1" >Iniciar Sesion</button>
           </div>
         </div>
  
         <div class="col">
          <div class="col">
            <button type="button" class="btn btn-primary" id="BotonNav" style="margin-right:10px;">Registrate</button>
          </div>
        </div>
                <!-- Container wrapper -->
         
  </nav>
<body>
<div class="container-fluid" style="height: 1000px;">
        <div class="row">
            <!--info-->
            <div class="col-3" style=" height: 600px;">
                <div class="row " style="border: 0.1px solid black;">
                    <img id="gato" class="rounded mx-auto d-block" src="assets/img/gato.jpeg" width="" alt=" ">
                </div>
                <div class="row">
                    <!--imagen usuario-->
                    <div class="col-4" style=" height: 100px;">
                        <img id="usuario" src="assets/img/persona.jpeg">
                    </div>
                    <!--Fin imagen usuario-->
                
                    <div class="col" style="height: 100px;">
                        <!--Titulo Reporte-->
                        <div class="row" style="height: 50px;">
                            <p>Titulo</p>
                        </div>
                        <!--Fin Titulo Reporte-->
                        <!--Info Reporte-->
                        <div class="row" style=" height: 50px;">
                            <p>ignacio 03/03/2022 </p>
                        </div>
                        <!--Fin Info Reporte-->             
                    </div>
                    <!--Descripccion Reporte-->
                    <div class="row" style=" height: 60px;">
                        <p>Lorem ipsum dolor, sit amet consectetur </p>
                    </div>
                    <!--Fin Descripccion Reporte-->

               
                    
                </div>
                <div class="row">
                    <!--imagen usuario Comentario-->
                    <div class="col-4" style=" height: 80px;">
                        <img id="usuario" src="assets/img/persona.jpeg">
                    </div>
                    <!--Fin imagen usuario-->
                    
                    <div class="col" style="height: 100px;">
                        <!--Nombre Comentario-->
                        <div class="row" style=" height: 50px;">
                            <p>Federico Federico</p>
                        </div>
                        <!--Fin Nombre Comentario-->          
                        <div class="row" style=" height: 49px;">
                            <p>Lorem ipsum dolor sit amet </p>
                        </div>
                        
                    </div>
                </div>
            </div>
            <!--Fin info-->
            <!--Mapa-->
            <div class="col" >
                <div id='map' style="width: 100%; height: 600px;"></div>
            </div>
            <!--Fin Mapa-->
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
	            <a
	              class="btn btn-link btn-floating btn-lg text-dark m-1"
	              href="#!"
	              role="button"
	              data-mdb-ripple-color="dark"
	              ><i class="fab fa-facebook-f" style="color: #C6D166;"></i
	            ></a>
	            <!-- Twitter -->
	            <a
	              class="btn btn-link btn-floating btn-lg text-dark m-1"
	              href="#!"
	              role="button"
	              data-mdb-ripple-color="dark"
	              ><i class="fab fa-twitter" style="color: #C6D166;"></i
	            ></a>
	            <!-- Instagram -->
	            <a
	              class="btn btn-link btn-floating btn-lg text-dark m-1"
	              href="#!"
	              role="button"
	              
	              ><i class="fab fa-instagram" style="color: #C6D166;"></i>
	              </a>
	          <h6 style="color:#C6D166 ;">¡Síguenos!</h6>
	          
	        </div>
	      </div>
	      <div class="col" style="margin-left: 200px; margin-top: 35px;">
	        <img src="/assets/img/logoverde" alt="" style="height: 50px;">
	      </div>
	      <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
	        <p style="color:#C6D166 ;">FortPets©2022</p>
	      </div>
	    </div>
    </div>
  </footer>
  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js " integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4 " crossorigin="anonymous "></script>
<script src='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.js'></script>
<script src="maps.js "></script>
<script type="text/javascript " src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js "></script>
<script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script> 
</html>