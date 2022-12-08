<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
     <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <link href="/assets/css/stylesHome.css" rel="stylesheet">

    <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script>
    
    <style>
        #rowform {
            margin-bottom: 10px;
        }
    </style>

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
                <img class="rounded-circle mx-auto d-block" src="https://cdn-icons-png.flaticon.com/512/149/149071.png"
                    width="200px" height="200px" style="margin: 0% 0% 5% 0%;">
                <button type="button" class="btn btn-primary " id="prueba">
                    Foto de perfil
                </button>
            </div>
            <div class="col">
                <div div class="row align-items-start" id="rowform">
                    <h3>Crear tu cuenta de Forpets</h3>
                </div>
                <form action="/registro/usuario" method="post">
                    <div div class="row align-items-start" id="rowform">
                        <div class="col">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre">
                            <div class="form-text">Ingrese su nombre</div>
                        </div>
                        <div class="col">
                            <label for="apellido1" class="form-label">Primer apellido</label>
                            <input type="text" class="form-control" id="apellido1">
                            <div class="form-text">Ingrese su primer apellido</div>
                        </div>
                        <div class="col">
                            <label for="apellido2" class="form-label">Segundo apellido</label>
                            <input type="text" class="form-control" id="apellido2">
                            <div class="form-text">Ingrese su segundo apellido</div>
                        </div>
                    </div>
                    <div div class="row align-items-start" id="rowform">
                        <div class="col-4">
                            <label for="rut" class="form-label">Rut</label>
                            <input type="text" class="form-control" id="rut">
                            <div class="form-text">Ingrese su rut</div>
                        </div>
                        <div class="col">
                            <label for="birthday" class="form-label">Fecha de nacimiento</label>
                            <input type="date" class="form-control" id="birthday">
                            <div class="form-text">Ingrese fecha de nacimiento</div>
                        </div>
                    </div>
                    <div div class="row align-items-start" id="rowform">
                        <div class="col-4">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email">
                            <div class="form-text">Ingrese su email</div>
                        </div>
                        <div class="col">
                            <label for="telefono" class="form-label">Teléfono</label>
                            <input type="text" class="form-control" id="telefono">
                            <div class="form-text">Ingrese su teléfono</div>
                        </div>
                    </div>
                    <div div class="row align-items-start" id="rowform">
                        <div class="col">
                            <label for="calle" class="form-label">Calle</label>
                            <input type="text" class="form-control" id="calle">
                            <div class="form-text">Ingrese su calle</div>
                        </div>
                        <div class="col">
                            <label for="numDir" class="form-label">Número</label>
                            <input type="number" class="form-control" id="numDir">
                            <div class="form-text">Ingrese número de dirección</div>
                        </div>
                        <div class="col">
                            <label for="comuna" class="form-label">Comuna</label>
                            <select class="form-select" aria-label="Default select example" id="comuna">
                                <option selected>Seleccione comuna</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                    </div>
                    <div div class="row align-items-start" id="rowform">
                        <div class="col-4">
                            <label for="ciudad" class="form-label">Ciudad</label>
                            <select class="form-select" aria-label="Default select example" id="ciudad">
                                <option selected>Seleccione ciudad</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                        <div class="col">
                            <label for="region" class="form-label">Región</label>
                            <select class="form-select" aria-label="Default select example" id="region">
                                <option selected>Seleccione región</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                    </div>
                    <div div class="d-grid gap-2 d-md-flex justify-content-md-end">
                        <input type="submit" class="btn btn-outline-primary" value="Continuar">
                </form>
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
                <p style="color:#C6D166 ;">FortPets©2022</p>
            </div>
        </div>
    </div>
</footer>


</html>