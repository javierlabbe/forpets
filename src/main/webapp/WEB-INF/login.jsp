<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>LogIn</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" crossorigin="anonymous" async></script>
   <link href="/Assets/CSS/stylesHome.css" rel="stylesheet">
 
</head>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg" style="background-color: #48C6AF; height: 120px; " >
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
                    <a class="nav-link active" aria-current="page" href="/registro/equipo"><strong>Nosotros</strong></a>
                </li>
            </ul>

            <!-- Left links -->

            <div class="d-flex align-items-center">
            <div class="row">
           <div class="col">
                <a type="button" class="btn btn-primary" id="BotonNav1" href="/registro/usuario">Registrarse</a>
            </div>
        </div>
    </div>
</nav>
<!-- Navbar -->
 

<body>

<section class="vh-100">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6 text-black">

        <div class="px-5 ms-xl-4">
          <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085;"></i>
          <img class="h1 fw-bold mb-0" src="/assets/img/logonegro" height="50px" alt="forpets Logo" loading="lazy"/>
        </div>
        <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

		
		<form action="/home/login" method="POST" style="width: 23rem; height: 800px;">
		   <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Hola nuevamente!</h3>
		   		    	<c:if test="${msgError!=null}">
    		<div class="alert alert-danger" role="alert" style="font-size:16px">
				<c:out value="${msgError}"></c:out>
			</div>
    	</c:if>
            
            <div class="form-outline mb-4">
              <input type="email" id="email" class="form-control form-control-lg" required placeholder="Ingresa tu email" name="email"/>
              <label class="form-label" for="email">Email</label>
            </div>

            <div class="form-outline mb-4">
              <input type="password" id="password" class="form-control form-control-lg" required placeholder="Ingresa tu contraseña" name="password"/>
              <label class="form-label" for="password">Contraseña</label>
            </div>

            <div class="pt-1 mb-4">
            <button type="submit" class="btn mt-3" id="BotonNav2" value="enviar" >Ingresar</button>
            <p>¿Aún no eres parte de la comunidad? <a href="/registro/usuario" class="link-info">Únete</a></p>
            </div>

            <!-- p class="small mb-5 pb-lg-2"><a class="text-muted" href="#!">Forgot password?</a></p>-->

          </form>

        </div>

      </div>
      <div class="col-sm-6 px-0 d-none d-sm-block">
        <img src="/assets/img/perritoLogin.jpg"
          alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position:right ;">
      </div>
    </div>
  </div>
</section>

</body>
<footer class="text-center text-white" style="background-color: #004445; margin-top:0%">
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