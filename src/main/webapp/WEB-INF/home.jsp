<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script>
   <link href="/Assets/CSS/stylesHome.css" rel="stylesheet">
 
</head>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg" style="background-color: #48C6AF; height: 120px; " >
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
                    <a class="nav-link active" aria-current="page" href="/registro/equipo"><strong>Nosotros</strong></a>
                </li>
            </ul>

            <!-- Left links -->

            <div class="d-flex align-items-center">
            <div class="row">
           <div class="col">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ModalForm" id="BotonNav1">Iniciar sesión</button>
                <div class="modal fade" id="ModalForm" tabindex="-1" aria-labelledby="ModalFormLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                      <div class="modal-content">
                        <div class="modal-body">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            <div class="form-area" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                                <h1 class="text-center">Hola nuevamente!</h1>
								<c:if test="${msgError!=null}">
			    	    			<div class="alert alert-danger" role="alert">
										<c:out value="${msgError}"></c:out>
									</div>
			    				</c:if>
						    	<c:if test="${msgOk!=null}">
						    		<div class="alert alert-success" role="alert">
										<c:out value="${msgOk}"></c:out>
									</div>
						    	</c:if>
                                <form>
                                    <div class="mb-3 mt-4" style="color:black;">
                                        <label for="exampleInputEmail1" class="form-label">Email</label>
                                        <input type="email" class="form-control" id="mail" placeholder="Ingresa tu email" required="required">
                                    </div>
                                    <div class="mb-3" style="color:black;">
                                        <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                                        <input type="password" class="form-control" id="password" placeholder="Ingresa tu contraseña" required="required">
                                    </div>
                                    <a type="submit" class="btn mt-3" id="BotonNav2" href="/mapa/mapaPrincipal">Acceder</a>
                                    <br><hr>
                                    <p style="font-weight:bold; color:black;">¿No estás registrada/o?<a href="/registro/usuario"> Regístrate</a></p>
                                </form>
                            </div>
                        </div>
                      </div>
                    </div>
         </div>
                <a type="button" class="btn btn-primary" id="BotonNav1" href="/registro/usuario">Registrarse</a>
            </div>
        </div>
    </div>
</nav>
<!-- Navbar -->
 

<body>
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
<!--div>
    <button type="button" class="btn btn-primary" id="BotonBody">Regístrate!</button>
</div-->
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


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>

</html>