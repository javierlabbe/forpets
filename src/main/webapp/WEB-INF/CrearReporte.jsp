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

<title>Crear Reporte</title>

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
</nav>
<!-- Navbar -->

<body>
	<form action="/crearReporte" method="post" action="/upload/form">
		<!--==========================================-->
		<div class="container-fluid">
			<div class="row">
				<div class="col-4 text-center">
					<img src="assets/img/cat.png"
						class="rounded-circle mx-auto d-block" alt="Foto perfil gato"
						style="margin-top: 50px; border: 1px solid; border-color: rgb(143, 142, 142); width: 230px;">
					<button class="btn btn-primary" type="button"
						style="margin-top: 50px;" id="BotonBody">Importar mascota
						desde perfil</button>
					<label for="formFile" class="form-label"></label> <input
						class="form-control" type="file" id="formFile"
						style="width: 400px; margin-left: 25px; margin-top: 20px;">
				</div>
				<div class="col">
					<div class="row">
						<p style="margin-top: 20px;">
						<h1>Crear Reporte</h1>
						</p>
					</div>
					<!--===================1=======================-->
					<div class="row align-items-start" id="rowform">
						<div class="col-8">
							<label for="tituloReporte" class="form-label"><b>Título
									de reporte</b></label><input type="text" class="form-control"
								id="tituloReporte" name="tituloReporte"
								placeholder="Ej: Busco/encontré..." required>
							<div class="form-text">Ingrese título para el reporte</div>
						</div>
						<div class="col">
							<label for="tipoReporte" class="form-label"><b>Tipo
									de reporte</b></label><select class="form-select"
								aria-label="Default select example" id="tipoReporte"
								name="tipoReporte" required>
								<option selected>Seleccione tipo de reporte</option>
							</select>
						</div>
					</div>
					<!--===================2=======================-->
					<div class="row align-items-start" id="rowform">
						<div class="col">
							<label for="Nombre" class="form-label"><b>Nombre</b></label><input
								type="text" class="form-control" id="Nombre" name="Nombre"
								placeholder="Ej: Copito" required>
							<div class="form-text">Ingrese nombre de su mascota</div>
						</div>
						<div class="col">
							<label for="nChip" class="form-label"><b>Nº Chip</b></label><input
								type="text" class="form-control" id="nChip" name="nChip"
								placeholder="Ej: 123456789012345" required>
							<div class="form-text">Ingrese número de Chip de su mascota
								(Opcional)</div>
						</div>
						<div class="col">
							<label for="especie" class="form-label"><b>Especie</b></label> <select
								class="form-select" aria-label="Default select example"
								id="especie" name="especie" required>
								<option selected>Seleccione especie de su mascota</option>
								<c:forEach var="especie" items="${listaEspecies}">
				 					<option value="${especie.idEspecie}">${especie.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
					</div>
					<!--===================3=======================-->
					<div class="row align-items-start" id="rowform">
						<div class="col">
							<label for="raza" class="form-label"><b>Raza</b></label> <select
								class="form-select" aria-label="Default select example"
								id="raza" name="raza" required>
								<option selected>Seleccione raza de su mascota</option>
								<c:forEach var="raza" items="${listaRazas}">
				 					<option value="${raza.idRaza}">${raza.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
						<div class="col">
							<label for="color" class="form-label"><b>Color</b></label> <select
								class="form-select" aria-label="Default select example"
								id="color" name="color" required>
								<option selected>Seleccione color de su mascota</option>
								<c:forEach var="color" items="${listaColores}">
				 					<option value="${color.idColor}">${color.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
						<div class="col">
							<label for="tamanio" class="form-label"><b>Tamaño</b></label> <select
								class="form-select" aria-label="Default select example"
								id="tamanio" name="tamanio" required>
								<option selected>Seleccione tamaño de su mascota</option>
								<c:forEach var="tamanio" items="${listaTamanios}">
				 					<option value="${tamanio.idTamanio}">${tamanio.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
					</div>
					<!--===================4=======================-->
					<div class="row align-items-start" id="rowform">
						<div class="col">
							<label for="exampleFormControlTextarea1" class="form-label"><b>Descripción</b></label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3"
								placeholder="Escribe las caracteristicas de tu mascota aquí..." required></textarea>
							<div class="form-text">Describe detalladamente a tu mascota</div>
							<br>
						</div>
					</div>
				</div>

				<!--==========================================-->
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<input type="submit" class="btn btn-primary" value="Volver"
						id="BotonBody"> <input type="submit"
						class="btn btn-primary" value="Enviar" id="BotonBody">
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

<script>
		$('select[name="especie"]').on('change', function() {
		    let especieId = $(this).val();
		    console.log(especieId)
		        $.ajax({
		            method: "get",
		            url: "/apiEspecie/obtenerRaza",
		            dataType: 'json',
		            data: { id : especieId },
		            success: function (data) {
		    
		            	$("#raza").find("option").remove();
		            	$("#raza").append('<option value="0">Seleccione raza</option>');  
		           for (var i = 0; i < data.length; i++) {
					
					 $("#raza").append('<option value='+data[i].id+'>'+data[i].descripcion+'</option>');  
				}
		                
		            }
		        
		      
		        });
		//cierre jquery
		    });

	</script>

</html>
