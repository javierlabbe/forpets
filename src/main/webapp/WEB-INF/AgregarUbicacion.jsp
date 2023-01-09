<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- BOOTSTRAP -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<!-- CSS -->
<link href="/assets/css/Reporte-LugarStyles.css" rel="stylesheet">

<!-- JQUERY -->
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/67de54155a.js"
	crossorigin="anonymous"></script>

<title>Agregar Ubicación</title>
<style>
body{
        background-image: url('/assets/img/fondogris.png');
        }
</style>
</head>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg"
	style="background-color: #48C6AF; height: 120px;">
	<div class="container-fluid">
		<a class="navbar-brand" href="/index"> <!--IR AL HOME en href--> <img
			src="/assets/img/logonegro" height="40px" alt="forpets Logo"
			loading="lazy" style="margin-top: -1px;" />
		</a>

		<!-- Toggle button -->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Collapsible wrapper -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<!-- Left links -->
				<li class="nav-item"><a class="nav-link" aria-current="page"
					href="/index">Home</a></li>
				<li><a class="nav-link" aria-current="page"
					href="/mapa/principal">Ver mapa</a></li>
			</ul>

			<!-- Left links -->

			<div class="d-flex align-items-center">
				<div class="row">
					<div class="col">
						<!-- BOTONES -->
						<a class="btn btn-primary" href="/index/login" role="button"
							id="BotonNav1">Cerrar sesión</a>
						<!-- BOTONES -->
					</div>
				</div>
			</div>
		</div>
	</div>
</nav><br>
<!-- Navbar -->

<body>

<form action="/agregarUbicacion" method="post" action="/upload/form">

	<div class="container-fluid">
		<div class="row" style="display: grid; place-content: center;">
			<div class="card" style="margin-top: 2%;">
				<div class="card-body">
					<div class="row text-center" id="rowform">
						<h3>¡Comparte un lugar!</h3>
					</div>
					<div class="row align-items-start" id="rowform">
						<div class="col">
							<label for="nombreLugar" class="form-label"><b>Nombre
									del lugar</b></label><input type="text" class="form-control"
								id="nombreLugar" name="nombreLugar" placeholder="Ej: Parque Inés de Suárez" required>
							<div class="form-text">Ingrese nombre de la ubicación</div>
						</div>
					</div>
					<!--=========================================================================================-->
					<div class="row align-items-start" id="rowform">
						<div class="col">
							<label for="etiqueta" class="form-label"><b>Categoría</b></label><select
								class="form-select" aria-label="Default select example"
								id="etiqueta" name="etiqueta" required>
								<option selected>Seleccione categoria de la ubicación</option>
								<c:forEach var="etiqueta" items="${listaEtiqueta}">
				 					<option value="${etiqueta.idEtiqueta}">${etiqueta.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
					</div>
					<!--=========================================================================================-->
					<div class="row align-items-start" id="rowform">
						<div class="col">
							<label for="direccion" class="form-label"><b>Dirección</b></label><input
								type="text" class="form-control" id="direccion" name="direccion"
								placeholder="Ej: Antonio Varas 1510, Providencia, RM" required>
							<div class="form-text">Ingrese dirección de la ubicación</div>
						</div>
					</div>
					<!--=========================================================================================-->
					<div class="row align-items-start" id="rowform">
						<div class="col">
							<label for="horario" class="form-label"><b>Horario</b></label><input
								type="text" class="form-control" id="horario" name="horario"
								placeholder="Ej: Lunes a sábado de 09:00 a 20:00" required>
							<div class="form-text">Ingrese horario en el que esta disponible el lugar</div>
						</div>
					</div>
					<!--=========================================================================================-->
					<div class="row align-items-start" id="rowform">
						<div class="mb-3">
							<label for="formFile" class="form-label"></label> <input
								class="form-control" type="file" id="formFile">
						</div>
					</div>
					<!--=========================================================================================-->
			</div>
		</div>
	</div>
	</div>
	</form>
	<br>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
<!-- FOOTER -->
<footer class="text-center text-white"
	style="background-color: #004445;">
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<!-- Grid container -->
				<div class="container pt-4">
					<!-- Section: Social media -->
					<section class="mb-4">
						<!-- Facebook -->
						<ul class="nav flex-column">
							<li class="nav-item"><span class="footer-title"
								style="color: #C6D166; font-size: 20px" align="left"><strong>Links
										de interés</strong></span></li>
							<li class="nav-item"><a class="link1"
								href="https://www.chileatiende.gob.cl/fichas/51436-ley-de-tenencia-responsable-de-mascotas-y-animales-de-compania-ley-cholito">Ley
									tenencia responsable</a></li>
							<li class="nav-item"><a class="link1"
								href="https://registratumascota.cl/inicio.xhtml">Registro
									nacional de mascotas</a></li>
							<li class="nav-item"><span class="footer-title"
								style="color: #C6D166; font-size: 20px" align="left"><strong>Contacto
										y ayuda</strong></span></li>
							<li class="nav-item"><a class="link1"
								href="mailto:holaforpets@gmail.com?Subject=Hola%20ForPets!"><i
									class="fas fa-envelope"></i>holaforpets@gmail.com</a></li>
						</ul>
				</div>
			</div>
			<div class="col" style="margin-left: 200px; margin-top: 35px;">
				<img src="/assets/img/logoverde" alt="" style="height: 50px;">
				<div>
					<ul class="list-inline social-buttons" style="margin-top: 35px;">
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-twitter" style="color: #C6D166;"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-facebook-f" style="color: #C6D166;"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-linkedin-in" style="color: #C6D166;"></i>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="text-center text-dark p-3"
				style="background-color: rgba(0, 0, 0, 0.2);">
				<span class="copyright quick-links" style="color: #C6D166;">Copyright
					&copy; Forpets <script>
						document.write(new Date().getFullYear())
					</script>
				</span>
			</div>
		</div>
	</div>
</footer>
<!-- FIN FOOTER -->
</html>