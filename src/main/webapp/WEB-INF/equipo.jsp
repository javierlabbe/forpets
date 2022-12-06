<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script>
    <link href="/assets/CSS/styles.css" rel="stylesheet">
    <style>
        body {
            background-color:white
        }
    </style>
</head>

<header class="navbar navbar-expand-lg navbar-light" style="background-color: #48C6AF;">
    <!-- Container wrapper -->
    <div class="container-fluid">
        <!-- Toggle button -->
        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
            data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Navbar brand -->
            <a class="navbar-brand mt-2 mt-lg-0" href="#">
                <img src="../assets/img/logonegro" height="20" alt="LogoNegro"
                    loading="lazy" />
            </a>
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#">Ir a Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Ver Mapa</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Reporte</a>
                </li>
            </ul>
            <!-- Left links -->
        </div>
        <!-- Collapsible wrapper -->

        <!-- Right elements -->
        <div class="d-flex align-items-center">

            <!-- Notifications -->
            <div class="dropdown">
                <a class="text-reset me-3 dropdown-toggle hidden-arrow" href="#" id="navbarDropdownMenuLink"
                    role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                    <i class="fas fa-bell"></i>
                    <span class="badge rounded-pill badge-notification bg-danger">1</span>
                </a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
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
            </div>
            <!-- Avatar -->
            <div class="dropdown">
                <a class="dropdown-toggle d-flex align-items-center hidden-arrow" href="#" id="navbarDropdownMenuAvatar"
                    role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                    <img src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp" class="rounded-circle" height="25"
                        alt="Black and White Portrait of a Man" loading="lazy" />
                </a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuAvatar">
                    <li>
                        <a class="dropdown-item" href="#">My profile</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="#">Settings</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="#">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- Right elements -->
    </div>
    <!-- Container wrapper -->
</header>


<body>
    <div class="container-fluid">
        <div class="row" style="background-color: white; height: 800px; margin-top: 5%;">
            <div class="col" style="background-color: white; height: 800px">
                <div class="row" style="background-color: white;"> 
                    <center><h1>ForPets Team</h1></center>
                </div>
                <div class="row" style="background-color: white; margin-top: 10%;">
                    <div class="col" style="background-color: white;">
                        <center>
                        <img src="../assets/img/julian.jpeg" class="rounded" alt="FotoJulian" style="width: 135px; border: 1px solid;border-color: rgb(143, 142, 142);">
                        <br>
                        <br>
                        <h4>Julián Ordens</h4>
                        <!-- Linkedin -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                        <!-- Github -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                        </center>
                    </div>
                    <div class="col" style="background-color:white;">
                        <center>
                        <img src="../assets/img/Fran.jfif" class="rounded" alt="FotoFran" style="width: 135px;border: 1px solid;border-color: rgb(143, 142, 142);">
                        <br>
                        <br>
                        <h4>Francisca Lazo</h4>
                        <!-- Linkedin -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                        <!-- Github -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                    </center>
                    </div>
                    <div class="col" style="background-color:white;">
                        <center>
                        <img src="../assets/img/javo.png" class="rounded" alt="FotoJavier" style="width: 135px; height: 135px;border: 1px solid;border-color: rgb(143, 142, 142);">
                        <br>
                        <br>
                        <h4>Javier Labbé</h4>
                        <!-- Linkedin -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                        <!-- Github -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                    </center>
                    </div>
                </div>
                <div class="row" style="background-color: white; margin-top: 5%;" >
                    <div class="col" style="background-color: white;">
                        <center>
                        <img src="../assets/img/luis.jpeg" class="rounded" alt="FotoLuis" style="width: 135px; border: 1px solid;border-color: rgb(143, 142, 142);">
                        <br>
                        <br>
                        <h4>Luis Serrano</h4>
                        <!-- Linkedin -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                        <!-- Github -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                        </center>
                    </div>
                    <div class="col" style="background-color:white;">
                        <center>
                        <img src="../assets/img/rocio.jpeg" class="rounded" alt="FotoRocio" style="width: 135px; border: 1px solid;border-color: rgb(143, 142, 142);">
                        <br>
                        <br>
                        <h4>Rocio Quezada</h4>
                        <!-- Linkedin -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                        <!-- Github -->
                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button"
                        data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                        </center>
                    </div>
                </div>
            </div>
            <div class="col" style="background-color: white; height: 800px">
            <center><h1>Nuestra Misión</h1></center>
            <br>
            <pre style="text-align:justify; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                El principal objetivo de ForPets es ayudar a toda persona 
            tutora de una mascota, en diferentes áreas de interés.
            
            Nuestro proyecto nace desde la problemática de perder un miembro
            importante de la familia, como lo son las mascotas.
            Buscamos como equipo ofrecer una solución digital para buscar y
            encontrar a las mascotas perdidas a nuestro al rededor mediante reportes,
            con el objetivo de conformar una red de apoyo y de rastreo para
            que la búsqueda se realice de manera más rápida y eficaz, complementándose 
            con el antiguo método de búsqueda de voz-a-voz o la cartelería en la calle.
            
            Esperamos cumplir con el objetivo, que nuestro proyecto sea de ayuda
            para la comunidad, promueva la tenencia responsable, y que se genere
            una red de apoyo efectiva y amistosa.

            Les invitamos a registrarse y acceder a la comunidad!

            - ForPets, Santiago de Chile, 2022.
            </pre>
            </div>
        </div>
        
    </div>

</body>
<footer class="text-center text-white" style="background-color: #004445; margin-bottom: 0px;">
    <!-- Grid container -->
    <div class="container pt-4">
        <!-- Section: Social media -->
        <section class="mb-4">
            <!-- Facebook -->
            <a class="btn btn-link btn-floating btn-lg m-1" href="#!" role="button"
                style="color:#C6D166 ;"><i class="fab fa-facebook-f"></i></a>

            <!-- Twitter -->
            <a class="btn btn-link btn-floating btn-lg m-1" href="#!" role="button"
                style="color:#C6D166 ;"><i class="fab fa-twitter"></i></a>

            <!-- Google -->
            <a class="btn btn-link btn-floating btn-lg m-1" href="#!" role="button"
                style="color:#C6D166 ;"><i class="fab fa-google"></i></a>

            <!-- Instagram -->
            <a class="btn btn-link btn-floating btn-lg m-1" href="#!" role="button"
                style="color:#C6D166;" ><i class="fab fa-instagram"></i></a>

            <!-- Linkedin -->
            <a class="btn btn-link btn-floating btn-lg m-1" href="#!" role="button"
                style="color:#C6D166;" ><i class="fab fa-linkedin"></i></a>
            <!-- Github -->
            <a class="btn btn-link btn-floating btn-lg m-1" href="#!" role="button"
                style="color:#C6D166;" ><i class="fab fa-github"></i></a>
        </section>
        <!-- Section: Social media -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: #003738; color: #C6D166;">
        ForPets© 2022
    </div>
    
</footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>

</html>