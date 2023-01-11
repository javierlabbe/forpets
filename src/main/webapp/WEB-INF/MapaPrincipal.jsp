<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mapa</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<link href="Style.css" rel="stylesheet">
<link href="/assets/css/mapaStyle.css" rel="stylesheet">

<!-- JQUERY -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<script src="https://kit.fontawesome.com/64af136b72.js"
	crossorigin="anonymous"></script>

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
*{
	margin: 0;
	padding: 0;
}

body {
	background-image: url('/assets/img/fondogris.png');
}
</style>

<!--Mapbox-->

<link href='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.css'
	rel='stylesheet' />
<!-- Fin Mapbox-->


</head>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg"
	style="background-color: #48C6AF; height: 120px;">
	<div class="container-fluid">
		<a class="navbar-brand" href="home"> <!--IR AL HOME en href--> <img
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
					href="/index"><strong>Home</strong></a></li>
				<li><a class="nav-link" aria-current="page"
					href="/index/nosotros"><strong>Nosotros</strong></a></li>
				<li><a class="nav-link" aria-current="page" href="/home/perfil"><strong>Mi
							perfil</strong></a></li>
			</ul>

			<!-- Left links -->

			<div class="d-flex align-items-center">
				<div class="row">
					<div class="col">
						<!-- BOTONES -->
						<button type="button" class="btn btn-primary" id="BotonNav1"
							data-bs-toggle="modal" data-bs-target="#modalCierreSesión">Cerrar
							sesión</button>
						<div class="modal fade" id="modalCierreSesión" tabindex="-1"
							aria-labelledby="modalLogout" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h6 class="modal-title fs-5" id="modalLogout">Cerrando
											sesión...</h6>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body" id="modalLogout"></div>
									<h3 style="margin-left: 20%; margin-bottom: 20px">¿Deseas
										cerrar sesión?</h3>
									<a class="btn btn-primary" href="/index/logout" role="button"
										id="BotonNav1" style="margin-left: 35%; margin-bottom: 10px;">Cerrar
										sesión</a> <a class="btn btn-primary" type="button" id="BotonNav1"
										data-bs-dismiss="modal"
										style="margin-left: 35%; margin-bottom: 20px;">Permanecer</a>
								</div>
							</div>
						</div>
						<!-- Fin modal -->
						<!-- BOTONES -->
					</div>
				</div>
			</div>
		</div>
	</div>
</nav>
<!-- Navbar -->
<body>
	<!-- ============ MAPA ============ -->
	<div class="col" style="height: 690px;">
		<div id='map'></div>
		<br>
	</div>
	<br>
	<!-- ============ FIN MAPA ============ -->
	<!-- ============ AGREGAR UBICACIÓN ============ -->
	<!-- Button trigger modal -->
	<form action="/mapaPrincipal" method="post" action="/upload/form" >
	<div class="col" style="text-align: center; margin-bottom:10px;">
	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#exampleModal1" id="BotonBody2">Agregar
		ubicación</button>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal1" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-3" id="exampleModalLabel">¡Comparte
						un lugar!</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<div class="container">
						<div class="row align-items-start">
								<div class="col">
									<label for="nombre" class="form-label"><b>Nombre</b></label><input
										type="text" class="form-control" id="nombre" name="nombre"
										placeholder="Ej. Parque Inés de Suaréz" required>
									<div class="form-text">Ingrese nombre del lugar</div>
								</div>
						</div>

						<!--==========================================-->

						<div class="row align-items-start">
							<div class="col">
								<label for="etiqueta" class="form-label"><b>Categoría</b></label>
								<select class="form-select" aria-label="Default select example"
									id="etiqueta" name="etiqueta" required>
									<option selected>Seleccione categoría del lugar</option>
									<c:forEach var="etiqueta" items="${listaEtiqueta}">
										<option value="${etiqueta.idEtiqueta}">${etiqueta.descripcion}</option>
									</c:forEach>
								</select>
							</div>
						</div>

						<!--==========================================-->

						<div class="row align-items-start">
							<div class="col">
								<label for="direccion" class="form-label"><b>Dirección</b></label><input
									type="text" class="form-control" id="direccion"
									name="direccion"
									placeholder="Ej. Antonio Varas 1510, Providencia, Región Metropolitana"
									required>
								<div class="form-text">Ingrese dirección del lugar</div>
							</div>
						</div>

						<!--==========================================-->

						<div class="row align-items-start">
							<div class="col">
								<label for="horario" class="form-label"><b>Horario</b></label><input
									type="text" class="form-control" id="horario" name="horario"
									placeholder="Ej. Lunes a Sábado de 09:00 a 20:00" required>
								<div class="form-text">Ingrese horario del lugar</div>
							</div>
						</div>
						<!--==========================================-->

						<div class="row align-items-start">
							<div class="col">
								<div class="mb-3">
									<label for="formFile" class="form-label"><b>Imagen</b></label><input
										class="form-control" type="file" id="formFile"> <span
										class="small" style="color: gray;">Subir imagen del
										lugar</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal" id="BotonBody1">Cancelar</button>
					<input type="submit" class="btn btn-primary" value="Enviar"
						id="BotonBody1">
				</div>
			</div>
		</div>
	</div>
	</form>
	<!-- ============CREAR REPORTE============ -->
	<form action="/mapaPrincipal" method="post" action="/upload/form" >
	<div class="col" style="text-align: center; margin-bottom:10px;">
	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#modalPrincipal" id="BotonBody">Crear reporte</button>
	</div>

	<div id="modalPrincipal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-tittle">Crear reporte</h4>
				</div>
				<div class="modal-body">
					<div class="container">
						<div class="row">
							<div class="col text-center">
								<img src="/assets/img/cat.png"
									class="rounded-circle mx-auto d-block" alt="Foto de la mascota"
									style="border: 1px solid; border-color: rgb(143, 142, 142); width: 200px;"><br>
								<div class="mb-3">
									<label for="formFile" class="col-form-label"></label> <input
										class="form-control" type="file" id="formFile"> <span
										class="small" style="color: gray;">Subir imagen de
										mascota</span>
								</div>
							</div>
						</div>
						<!-- ============ FIN IMAGEN ============ -->

						<div class="row align-items-start">
							<div class="col-8">
									<label for="tituloReporte" class="form-label"><b>Título
											de reporte</b></label><input type="text" class="form-control"
										id="tituloReporte" name="tituloReporte"
										placeholder="Ej: Encontré este gatito" required>
									<div class="form-text">Ingrese título para el reporte</div>
							</div>
							<div class="col">
								<label for="reporte" class="form-label"><b>Tipo de
										reporte</b></label><select class="form-select"
									aria-label="Default select example" id="reporte" name="reporte"
									required>
									<option selected>Seleccione tipo de reporte</option>
									<c:forEach var="reporte" items="${listaReportes}">
										<option value="${reporte.idReporte}">${reporte.descripcion}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<!--===================2=======================-->
						<div class="row align-items-start">
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
								<div class="form-text">Ingrese número de Chip (Opcional)</div>
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
						<div class="row align-items-start">
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
						<div class="row align-items-start">
							<div class="col">
								<label for="exampleFormControlTextarea1" class="form-label"><b>Descripción</b></label>
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3"
									placeholder="Escribe las caracteristicas de tu mascota aquí..."
									required></textarea>
								<div class="form-text">Describe detalladamente a tu
									mascota</div>
								<br>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal" id="BotonBody">Cancelar</button>
					<input type="submit" class="btn btn-primary" value="Enviar"
						id="BotonBody">
				</div>
			</div>
		</div>
	</div>
	</form>
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
								style="color: #C6D166; font-size: 16px" align="left"><strong>Links
										de interés</strong></span></li>
							<li class="nav-item"><a class="link1"
								style="font-size: 13px"
								href="https://www.chileatiende.gob.cl/fichas/51436-ley-de-tenencia-responsable-de-mascotas-y-animales-de-compania-ley-cholito"
								target="_blank" rel="noopener noreferrer">Ley tenencia
									responsable</a></li>
							<li class="nav-item"><a class="link1"
								style="font-size: 13px"
								href="https://registratumascota.cl/inicio.xhtml" target="_blank"
								rel="noopener noreferrer">Registro nacional de mascotas</a></li>
							<li class="nav-item"><span class="footer-title"
								style="color: #C6D166; font-size: 16px" align="left"><strong>Contacto</strong></span>
							</li>
							<li class="nav-item"><a class="link1"
								style="font-size: 13px"
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
					&copy; Forpets <script>document.write(new Date().getFullYear())</script>
				</span>
			</div>
		</div>
	</div>
</footer>

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

<script src="https://kit.fontawesome.com/64af136b72.js"
	crossorigin="anonymous"></script>
<script src='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.js'></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous">
	
</script>
<script src="/assets/js/maps.js"></script>
<script src="/assets/js/mapa.html"></script>
</html>