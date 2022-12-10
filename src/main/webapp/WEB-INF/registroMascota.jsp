<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/67de54155a.js"
	crossorigin="anonymous"></script>
<title>Registro Mascota</title>
</head>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg"
	style="background-color: #48C6AF; height: 120px;">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"> <!--IR AL HOME en href--> <img
			src="assets/img/logo.png" height="40px" alt="forpets Logo"
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
					aria-current="page" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Ver Mapa</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Hacer
						Reporte</a></li>
			</ul>

			<!-- Left links -->
			<div class="d-flex align-items-center">
				<button type="button" class="btn btn-primary" id="BotonNav1">Cerrar
					Sesión</button>
			</div>
		</div>
	</div>
</nav>
<!-- Navbar -->

<body>
	<!--=============COLUMNA UNO=============-->
	<div class="container-fluid">
		<div class="row">
			<div class="col-4 text-center">
				<img src="assets/img/cat.png" class="rounded-circle mx-auto d-block"
					alt="Foto perfil gato"
					style="margin-top: 50px; border: 1px solid; border-color: rgb(143, 142, 142); width: 230px;">
				<button class="btn btn" type="button"
					style="background-color: #C6D166; margin-top: 50px;">Sube
					tu foto de perfil</button>
			</div>
			<div class="col">
				<div class="row">
					<p style="margin-top: 45px;">
					<h1>Registro mascota</h1>
					</p>
				</div>
				<!--=============COLUMNA DOS=============-->
				<div class="row">
					<div class="col">
						<label for="Nombre" class="col-form-label"><b>Nombre:</b>
							<input class="form-control" type="text" id="nombre" name="nombre"
							placeholder="Ej: Copito"> </label>
					</div>
					<div class="col">
						<label for="Especie class col-form-label" id="seleccion"><b>Especie:</b></label>
						<select class="form-select" aria-label="Default select example"
							style="width: 250px;">
							<option class="form-control" selected>Seleccione especie</option>
							<option class="form-control" value="Especie"></option>
							<option class="form-control" value="Especie"></option>
							<option class="form-control" value="Especie"></option>
						</select>
					</div>
					<div class="col">
						<label for="Especie class col-form-label" id="seleccion"><b>Sexo:</b></label>
						<select class="form-select" aria-label="Default select example"
							style="width: 250px;">
							<option class="form-control" selected>Seleccione sexo</option>
							<option class="form-control" value="Especie">Macho</option>
							<option class="form-control" value="Especie">Hembra</option>
						</select>
					</div>
				</div>
				<!--=============COLUMNA TRES=============-->
				<div class="row">
					<div class="col">
						<label for="Nº Chip" class="col-form-label"><b>Nº
								Chip:</b> <input class="form-control" type="text" id="Nº Chip"
							name="Nº Chip" placeholder="Ej: 123456789012345"> </label>
					</div>
					<div class="col">
						<label for="Especie class col-form-label" id="seleccion"><b>Rango
								etario:</b></label> <select class="form-select"
							aria-label="Default select example" style="width: 250px;">
							<option class="form-control" selected>Seleccione rango
								etario</option>
							<option class="form-control" value="Especie">Cachorro</option>
							<option class="form-control" value="Especie">Adulto</option>
							<option class="form-control" value="Especie">Senior</option>
						</select>
					</div>
					<div class="col">
						<label for="Especie class col-form-label" id="seleccion"><b>Raza:</b></label>
						<select class="form-select" aria-label="Default select example"
							style="width: 250px;">
							<option class="form-control" selected>Seleccione raza</option>
							<option class="form-control" value="Especie"></option>
							<option class="form-control" value="Especie"></option>
							<option class="form-control" value="Especie"></option>
						</select>
					</div>
				</div>
				<!--=============COLUMNA CUATRO=============-->
				<div class="row">
					<div class="col">
						<label for="Color" class="col-form-label"><b>Color:</b> <input
							class="form-control" type="text" id="Color" name="Color"
							placeholder="Ej: Gris"> </label>
					</div>
					<div class="col">
						<label for="Especie class col-form-label" id="seleccion"><b>Patrón:</b></label>
						<select class="form-select" aria-label="Default select example"
							style="width: 250px;">
							<option class="form-control" selected>Seleccione patrón
								de pelaje</option>
							<option class="form-control" value="Especie"></option>
							<option class="form-control" value="Especie"></option>
							<option class="form-control" value="Especie"></option>
						</select>
					</div>
					<div class="col">
						<label for="Especie class col-form-label" id="seleccion"><b>Tamaño:</b></label>
						<select class="form-select" aria-label="Default select example"
							style="width: 250px;">
							<option class="form-control" selected>Seleccione tamaño</option>
							<option class="form-control" value="Especie">Pequeño</option>
							<option class="form-control" value="Especie">Mediano</option>
							<option class="form-control" value="Especie">Grande</option>
						</select>
					</div>
				</div>
				<!--=============COLUMNA CINCO=============-->
				<div class="row">
					<div class="col">
						<label for="exampleFormControlTextarea1" class="form-label"><b>Descripción:</b></label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3"
							placeholder="Escribe sus características especiales aquí..."
							style="width: 910px;"></textarea>
					</div>
					<!--=============COLUMNA BOTÓN=============-->
					<div class="row">
						<div class="col">
							<button class="btn btn" type="button"
								style="background-color: #C6D166; margin-top: 50px;">Continuar</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<!-- FOOTER -->
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
							href="#!" role="button"><i
							class="fab fa-instagram" style="color: #C6D166;"></i> </a>
						<h6 style="color: #C6D166;">¡Síguenos!</h6>
				</div>
			</div>
			<div class="col">
				<img src="assets/img/logo1.png" alt="" style="height: 130px;">
			</div>
			<div class="text-center text-dark p-3"
				style="background-color: rgba(0, 0, 0, 0.2);">
				<p style="color: #C6D166;">FortPets©2022</p>
			</div>
		</div>
	</div>
</footer>
<!-- FOOTER -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
</html>