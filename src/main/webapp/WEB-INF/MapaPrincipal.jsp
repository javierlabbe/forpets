<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<style>
* {
	margin: 0;
	padding: 0;
}
</style>

<!--Mapbox-->

<link href='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.css'
	rel='stylesheet' />
<!-- Fin Mapbox-->


</head>
<nav class="navbar navbar-expand-lg"
	style="background-color: #48C6AF; height: 120px;">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"> <!--IR AL HOME en href--> <img
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
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="http://localhost:9082/home">Home</a></li>
			</ul>

			<!-- Left links -->
			<div class="d-flex align-items-center">
				<a class="btn btn-primary" href="http://localhost:9082/index"
					role="button" id="BotonNav1">Cerrar sesión</a>
			</div>
		</div>
	</div>
</nav>
<body>
			<!-- ============ MAPA ============ -->
			<div class="col-8" style="height: 690px;">
				<div id='map'></div>
				<br>
			</div>
		</div>
		<br>
	</div>
	<!-- ============ FIN MAPA ============ -->

	<!-- ============ BOTONES ============ ->
	<!-- Button trigger modal ->
	<div class="col-12 d-grid gap-2 d-md-flex justify-content-md-end">
		<button type="button" class="btn btn-primary" data-bs-toggle="modal"
			id="BotonBody" data-bs-target="#exampleModal">Crear reporte
		</button>

		<button type="button" class="btn btn-primary" data-bs-toggle="modal"
			id="BotonBody" data-bs-target="#exampleModal1" style="">
			Agregar ubicación</button>
	</div>

	<!-- Modal ->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Crear
						reporte</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- ============ FIN BOTONES ============ ->
					<!-- ============ IMAGEN ============ ->
					<div class="container">
						<div class="row">
							<div class="col text-center">
								<img src="/assets/img/cat.png"
									class="rounded-circle mx-auto d-block" alt="Foto de la mascota"
									style="border: 1px solid; border-color: rgb(143, 142, 142); width: 200px;"><br>
								<a class="btn btn-primary" role="button" id="BotonBody">Escoger
									mascota desde perfil</a>
								<div class="mb-3">
									<label for="formFile" class="col-form-label"></label> <input
										class="form-control" type="file" id="formFile"> <span
										class="small" style="color: gray;">Subir imagen de
										mascota</span>
								</div>
							</div>
							<!-- ============ FIN IMAGEN ============ ->

							<!--======================================->
							
							<div class="row align-items-start">
                            <div class="col align-items-end">
                                <label for="reporte" class="form-label"><b>Título de reporte</b>
                                    <input class="form-control" type="text" id="tituloReporte" name="tituloReporte" style="width: 492px;" placeholder="Ej: Busco/Encontré mascota">
                                    <span class="small" style="color: gray;">Ingrese título para su reporte</span>
                                    </label>
                        </div>
                        <div class="col-4">
                            <label for="form-label" id="TipoReporte"><b>Tipo reporte</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione tipo reporte</option>
                                <c:forEach var="reporte" items="${listaReportes}">
			 							<option value="${reporte.id}">${reporte.descripcion}</option>			  
			 						</c:forEach>
                            </select>
                        </div>
                        </div>
                        
                        	<!--======================================->
                        	
                        <div class="row align-items-start">
                            <div class="col-4">
                                <label for="Nombre" class="form-label"><b>Nombre</b>
                                    <input class="form-control" type="text" id="reporte" name="reporte" style="width: 235px;" placeholder="Ej: Michito">
                                    <span class="small" style="color: gray;">Ingrese nombre de la mascota</span>
                                    </label>
                        </div>
                        <div class="col-4">
                            <label for="NChip" class="form-label"><b>Nº Chip</b>
                                <input class="form-control" type="text" id="reporte" name="reporte" style="width: 235px;" placeholder="Ej: 123456789012345">
                                <span class="small" style="color: gray;">Ingrese número de chip (Opcional)</span>
                                </label>
                        </div>
                        <div class="col-4">
                            <label for="especie" id="seleccion"><b>Especie</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione especie de la mascota</option>
                                <c:forEach var="especie" items="${listaEspecies}">
			 							<option value="${especie.id}">${especie.descripcion}</option>			  
			 						</c:forEach>
                            </select>
                        </div>
                        </div>
                        
                        <!--======================================->
                        
                        <div class="row align-items-start">
                            <div class="col">
                                <label for="raza" id="seleccion"><b>Raza</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione raza de la mascota</option>
                                <c:forEach var="raza" items="${listaRazas}">
			 							<option value="${raza.id}">${raza.descripcion}</option>			  
			 						</c:forEach>
                            </select>
                            </div>
                            <div class="col">
                                <label for="patron" id="seleccion"><b>Patrón</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione patrón de su mascota</option>
                                <c:forEach var="patron" items="${listaPatrones}">
			 							<option value="${patron.id}">${patron.descripcion}</option>			  
			 						</c:forEach>
                            </select>
                            </div>
                            <div class="col">
                                <label for="tamaño" id="seleccion"><b>Tamaño</b></label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione tamaño de su mascota</option>
                                <c:forEach var="tamanio" items="${listaTamanios}">
			 							<option value="${tamanio.id}">${tamanio.descripcion}</option>			  
			 						</c:forEach>
                            </select>
                            </div>
                        </div>
                        
                        <!--======================================->
                        
                            <div class="row align-items-start">
                                <div class="col"><br>
                                    <label for="descripcion" class="form-label"><b>Descripción</b></label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Escribe las características de tu mascota aquí..."></textarea>
                            <span class="small" style="color: gray;">Describe detalladamete a tu mascota</span>
                                </div>
                            </div>
        						</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary" id="BotonBody">Cancelar</button>
								<button type="button" class="btn btn-primary" id="BotonBody">Enviar</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	<!-- ============ AGREGAR UBICACIÓN ============ ->
	<!-- ============ Modal ============ ->
	<form action="/agregar/lugar" method="post" enctype="multipart/form-data">
	<div class="modal fade" id="exampleModal1" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">¡Comparte
						un lugar!</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="container">
						<div class="row">
							<div class="col">
								<label for="" class="col-form-label"><b>Nombre del
										lugar</b> <input class="form-control" type="text" id="" name=""
									style="width: 470px;" placeholder="Ej: Parque Inés de Suárez">
								</label>
								<!--=====================================->
								<div class="col">
									<label for="Especie class col-form-label" id="seleccion"><b>Categoría</b></label>
									<select class="form-select" aria-label="Default select example"
										style="width: 470px;">
										<option class="form-control" selected>Seleccione
											categoría</option>
											<c:forEach var="categoria" items="${listaCategorias}">
			 							<option value="${categoria.id}">${categoria.descripcion}</option>			  
			 						</c:forEach>
									</select>
								</div>
								<!--=====================================->
								<label for="" class="col-form-label"><b>Dirección</b> <input
									class="form-control" type="text" id="" name=""
									style="width: 470px;"
									placeholder="Ej: Antonio varas 1510, Providencia, Región Metropolitana">
								</label>
								<!--=====================================->
								<label for="" class="col-form-label"><b>Horario</b> <input
									class="form-control" type="text" id="" name=""
									style="width: 470px;"
									placeholder="Ej: Lunes a sábado de 09:00 a 18:00"> </label><br>
								<!--=====================================->
								<label for="formFile" class="col-form-label"></label> <input
									class="form-control" type="file" id="formFile"
									style="width: 470px;"> <span class="small"
									style="color: gray;">Subir imagen</span>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="BotonBody">Cancelar</button>
					<button type="button" class="btn btn-primary" id="BotonBody">Enviar</button>
				</div>
			</div>
		</div>
	</div>
	</form>
</body>-->

<footer class="text-center text-white"
	style="background-color: #004445; margin-top: 50px;">
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<!-- Grid container -->
				<div class="container pt-4">
					<!-- Section: Social media -->
					<section class="mb-4">
						<!-- Facebook -->
						<a class="btn btn-link btn-floating btn-lg text-dark m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><i
							class="fab fa-facebook-f" style="color: #C6D166;"></i></a>
						<!-- Twitter -->
						<a class="btn btn-link btn-floating btn-lg text-dark m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><i
							class="fab fa-twitter" style="color: #C6D166;"></i></a>
						<!-- Instagram -->
						<a class="btn btn-link btn-floating btn-lg text-dark m-1"
							href="#!" role="button"><i class="fab fa-instagram"
							style="color: #C6D166;"></i> </a>
						<h6 style="color: #C6D166;">¡Síguenos!</h6>
				</div>
			</div>
			<div class="col" style="margin-left: 200px; margin-top: 35px;">
				<img src="/assets/img/logoverde" alt="" style="height: 50px;">
			</div>
			<div class="text-center text-dark p-3"
				style="background-color: rgba(0, 0, 0, 0.2);">
				<p style="color: #C6D166;">ForPets©2022</p>
			</div>
		</div>
	</div>
</footer>

<script src="https://kit.fontawesome.com/64af136b72.js"
	crossorigin="anonymous"></script>
<script src='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.js'></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous">
	
</script>
<script src="/assets/js/maps.js"></script>
</html>