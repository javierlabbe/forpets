<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
     
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
<link href="Style.css" rel="stylesheet"> 

<style>
*{
  margin: 0;
  padding: 0;
}

</style>

<!--Mapbox-->

<link href='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.css' rel='stylesheet' />
<!-- Fin Mapbox-->


</head>
<nav class="navbar navbar-expand-lg" style="background-color: #48C6AF; height: 120px;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
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
<body>
    <div class="container-fluid text-center-sm" >
      <div class="row" style="border: 0.1px solid black;">
        <div class="col" style="height: 600px; border: 0.1px solid black;"  >
          <!--Reporte-->
          <!--Inicio Buscador-->
          <div class="col" >
            <div class="input-group">
              <div class="form-outline">
                <input type="search" id="form1" class="form-control" />
              </div>
              
            </div>
          </div>
          <!--Fin Buscador-->

          
          <!--Inicio Filtro-->
          <div class="row"  >
            <div class="col"  >
              <svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-filter-square-fill" viewBox="0 0 16 16">
                <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm.5 5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1 0-1zM4 8.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm2 3a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5z"/>
              </svg>
            </div>
          </div>
          <!--fin Filtro-->
          
          
          <div class="row" style="background-color:rgb(255, 255, 255);">

            <!-- parte imagen de Reporte-->
            <div class="col" style="border: 0.1 solid black;">
              <img
                  src="https://cdn-icons-png.flaticon.com/512/1976/1976784.png"
                  class="rounded-circle"
                  height="90"
                  alt="Black and White Portrait of a Man"
                  loading="lazy"
                  
                />
            </div>
            <!-- Fin parte imagen de Reporte-->

            <!-- parte Titulo de Reporte-->
            <div class="col" style="background-color:rgb(255, 255, 255);">
              <table>
                <thead>
                  <tr>
                    <th>
                      <h3>Titulo zona</h3>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th>
                      <h6>Lorem ipsum dolor sit amet. </h6>
                    </th>
                  </tr>
                </tbody>

              </table>
              
              <h6>Lorem ipsum dolor sit amet. 
                </h6>
            </div>
            <!-- parte Titulo de Reporte-->
          </div>
          <!--Fin Reporte-->

        </div>
        <div class="col-8" style="height: 600px;">
          <div id='map' style="width: 100%; height: 100%; background-color:rgb(255, 255, 255); border: 0.1px solid black;"></div>
          
        </div>
      </div>
    </div>

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

 <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script> 
<script src='https://api.mapbox.com/mapbox-gl-js/v2.11.0/mapbox-gl.js'></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
crossorigin="anonymous">
</script>
<script src="maps.js"></script>
<script type="text/javascript " src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js "></script>
</html>