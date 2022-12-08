<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Perfil</title>
     <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <link href="/assets/css/stylesHome.css" rel="stylesheet">

    <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script>

</head>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg" style="background-color: #48C6AF; height: 120px;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <!--IR AL HOME en href-->
            <img src="assets/img/logonegro" height="40px" alt="forpets Logo" loading="lazy" style="margin-top: -1px;" />
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
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Ver Mapa</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Hacer Reporte</a>
                </li>
            </ul>

            <!-- Left links -->
            <div class="d-flex align-items-center">
                <button type="button" class="btn btn-primary" id="BotonNav1">Cerrar Sesión</button>
            </div>
        </div>
    </div>
</nav>
<!-- Navbar -->

<body>
<div class="container-fluid">
        <div class="row align-items-start" style="margin-top: 2%; padding-right: 5%;">
            <div class="col-4 text-center" style=" height: 600px;">
                <img class="rounded-circle mx-auto d-block" src="https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" width="200px" height="200px" style="margin: 0% 0% 5% 0%;">
                <div class="d-grid gap-2 col-6 mx-auto">
                    <button type="button" class="btn btn-primary " id="prueba">
                        Editar Foto de Perfil
                    </button>
                    <button type="button" class="btn btn-primary " id="prueba">
                        Editar Información
                    </button>
                    <button type="button" class="btn btn-primary " id="prueba">
                        Añadir Mascota
                    </button>
                </div>
            </div>
            <div class="col">
                <div div class="row align-items-start" id="rowform">
                    <h3>Mi Perfil</h3>
                </div>
                <div div class="row align-items-start" id="rowform">
                    <p>Diego Riquelme Sotomayor</p>
                    <p>12.345.678-9</p>
                    <p>driquelme@example.com</p>
                    <p>+56 9 1234 5678</p>
                    <p>Eleuterio Ramírez #1170, Santiago, Región Metropolitana</p>
                </div>
                <div div class="row align-items-start" id="rowform">
                    <h3>Mis Mascotas</h3>
                </div>
                <div div class="row align-items-start" id="rowform">
                    <div class="col text-center">
                        <img class="rounded-circle mx-auto d-block" src="https://images.pexels.com/photos/1490908/pexels-photo-1490908.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" width="100px" height="100px" style="margin: 0% 0% 5% 0%;">
                        <button type="button" class="btn btn-primary">Ver más</button>
                    </div>
                    <div class="col text-center">
                        <img class="rounded-circle mx-auto d-block" src="https://images.pexels.com/photos/20787/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" width="100px" height="100px" style="margin: 0% 0% 5% 0%;">
                        <button type="button" class="btn btn-primary">Ver más</button>
                    </div>
                    <div class="col text-center">
                        <img class="rounded-circle mx-auto d-block" src="https://images.pexels.com/photos/4520480/pexels-photo-4520480.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" width="100px" height="100px" style="margin: 0% 0% 5% 0%;">
                        <button type="button" class="btn btn-primary">Ver más</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js "
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4 "
        crossorigin="anonymous "></script>
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
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                            data-mdb-ripple-color="dark"><i class="fab fa-facebook-f" style="color: #C6D166;"></i></a>
                        <!-- Twitter -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                            data-mdb-ripple-color="dark"><i class="fab fa-twitter" style="color: #C6D166;"></i></a>
                        <!-- Instagram -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"><i
                                class="fab fa-instagram" style="color: #C6D166;"></i>
                        </a>
                        <h6 style="color:#C6D166 ;">¡Síguenos!</h6>

                </div>
            </div>
            <div class="col" style="margin-left: 200px; margin-top: 35px;">
                <img src="/assets/img/logoverde" alt="" style="height: 50px;">
            </div>
            <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                <p style="color:#C6D166 ;">ForPets©2022</p>
            </div>
        </div>
    </div>
</footer>

</html>