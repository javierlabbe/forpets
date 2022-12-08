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
<title>Perfil mascota</title>
<style>
* {
	margin: 0;
	padding: 0;
}
</style>
</head>
<nav class="navbar navbar-expand-lg navbar-light"
	style="margin-bottom: 25px; background-color: #48C6AF;">
	<!-- Container wrapper -->
	<div class="container-fluid">
		<!-- Toggle button -->
		<button class="navbar-toggler" type="button"
			data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>

		<!-- Collapsible wrapper -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<!-- Navbar brand -->
			<a class="navbar-brand mt-2 mt-lg-0" href="#"> <img
				src="assets/img/logo.png" alt="MDB Logo" loading="lazy"
				style="height: 40px;" />
			</a>
			<!-- Left links -->
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="#">Ir a Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Hacer
						Reporte</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Ver Mapa</a>
				</li>
			</ul>
			<!-- Left links -->
		</div>
		<!-- Collapsible wrapper -->

		<!-- Right elements -->
		<div class="d-flex align-items-center">
			<!-- Icon -->
			<a class="text-reset me-3" href="#"> </a>

			<!-- Notifications 
                <div class="dropdown">
                <a
                    class="text-reset me-3 dropdown-toggle hidden-arrow"
                    href="#"
                    id="navbarDropdownMenuLink"
                    role="button"
                    data-mdb-toggle="dropdown"
                    aria-expanded="false"
                >
                    <i class="fas fa-bell"></i>
                    <span class="badge rounded-pill badge-notification bg-danger">1</span>
                </a>
                <ul
                    class="dropdown-menu dropdown-menu-end"
                    aria-labelledby="navbarDropdownMenuLink"
                >
                    <li>
                    <a class="dropdown-item" href="#">Some news</a>
                    </li>
                    <li>
                    <a class="dropdown-item" href="#">Another news</a>
                    </li>
                    <li>
                    <a class="dropdown-item" href="#">Something else here</a>
                    </li>
                </ul>
                </div>-->
			<!-- Avatar -->
			<div class="dropdown">
				<a class="dropdown-toggle d-flex align-items-center hidden-arrow"
					href="#" id="navbarDropdownMenuAvatar" role="button"
					data-mdb-toggle="dropdown" aria-expanded="false">
					<!--<img
                    src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
                    class="rounded-circle"
                    height="25"
                    alt="Black and White Portrait of a Man"
                    loading="lazy"
                    />--> <svg xmlns="http://www.w3.org/2000/svg"
						width="16" height="16" fill="currentColor" class="bi bi-person"
						viewBox="0 0 16 16">
                    <path
							d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
                    </svg>
				</a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdownMenuAvatar">
					<li><a class="dropdown-item" href="#">My profile</a></li>
					<li><a class="dropdown-item" href="#">Settings</a></li>
					<li><a class="dropdown-item" href="#">Logout</a></li>
				</ul>
			</div>
		</div>
		<!-- Right elements -->
	</div>
	<div class="col">
		<div class="col">
			<button type="button" class="btn btn-primary" id="BotonNav"
				style="margin-right: 10px;">Salir</button>
		</div>
	</div>
	<!-- Container wrapper -->
</nav>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-4 text-center">
				<img src="assets/img/Gato.jpg"
					class="rounded-circle mx-auto d-block" alt="Foto perfil gato"
					style="border: 1px solid; border-color: rgb(143, 142, 142); width: 230px;">
				<button class="btn btn" type="button"
					style="background-color: #C6D166; margin-top: 50px;">Sube
					tu foto de perfil</button>
			</div>

			<div class="col">
				<div class="row">
					<div class="col">
						<p>
						<h1>Perfil mascota</h1>
						</p>
						<p>
						<h6>Copito, cachorro</h6>
						</p>
						<p>
						<h6>Nº Chip: 123456789012345</h6>
						</p>
						<p>
						<h6>Especie: Gato</h6>
						</p>
						<p>
						<h6>Color/es: Naranjo claro</h6>
						</p>
						<p>
						<h6>Tamaño: Mediano</h6>
						</p>
						<p>
						<h6>Raza: N/A</h6>
						</p>
						<p>
						<h6>Patrón: Color sólido</h6>
						</p>
						<p>
						<h6>Sexo: Macho</h6>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<p>
						<h1>Mis caractetísticas</h1>
						</p>
						<p>
						<h6>Estoy inscrito en el registro civil de mascotas y tengo
							chip, estoy castrado. Soy asustadizo, no me gustan las manos y
							siempre me escondo de las personas. Tengo una marca en mi oreja
							derecha, la punta de mi cola es blanca y mis ojos son amarillos.
						</h6>
						</p>
					</div>
					<div class="col"></div>
				</div>
			</div>
		</div>
	</div>

</body>
<footer class="container-fluid"
	style="background-color: #004445; margin-top: 50px;">
	<div class="row">
		<div class="col">
			<!-- Grid container -->
			<div class="container pt-4">
				<!-- Section: Social media -->
				<section class="mb-4">
					<!-- Facebook -->
					<a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!"
						role="button" data-mdb-ripple-color="dark"><i
						class="fab fa-facebook-f" style="color: #C6D166;"></i></a>

					<!-- Twitter -->
					<a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!"
						role="button" data-mdb-ripple-color="dark"><i
						class="fab fa-twitter" style="color: #C6D166;"></i></a>



					<!-- Instagram -->
					<a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!"
						role="button"><i
						class="fab fa-instagram" style="color: #C6D166;"></i></a>

					<!-- Linkedin 
                <a
                class="btn btn-link btn-floating btn-lg text-dark m-1"
                href="#!"
                role="button"
                data-mdb-ripple-color="dark"
                ><i class="fab fa-linkedin"></i
                ></a>-->
					<!-- Github 
                <a
                class="btn btn-link btn-floating btn-lg text-dark m-1"
                href="#!"
                role="button"
                data-mdb-ripple-color="dark"
                ><i class="fab fa-github"></i
                ></a>
            </section> -->
					<!-- Section: Social media -->
					<h6 style="color: #C6D166;">¡Siguenos en nuestras redes
						sociels!</h6>
			</div>

			<!-- Grid container -->

			<!-- Copyright -->

			<!-- Copyright -->
		</div>
		<div class="col" style="margin-left: 180px; margin-top: 35px;">
			<img src="assets/img/logo1.png" alt="" style="height: 150px;">
		</div>
		<div class="text-center text-dark p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			<p style="color: #C6D166;">FortPets©2022</p>
		</div>
	</div>
</footer>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
</html>