<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
	
<link href="/assets/css/stylesRegUser.css" rel="stylesheet">
	
<title>Registro Mascota</title>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <!--css bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
    </style>
</head>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg" style="background-color: #48C6AF; height: 120px;" >
    <div class="container-fluid">
        <a class="navbar-brand" href="home">
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
                    <a class="nav-link" aria-current="page" href="/index/nosotros"><strong>Nosotros</strong></a>
                </li>
                <li>
                <a class="nav-link" aria-current="page" href="/mapaPrincipal"><strong>Ver mapa</strong></a>
              	</li>
              	                <li>
                <a class="nav-link" aria-current="page" href="/home/perfil"><strong>Mi perfil</strong></a>
              	</li>
            </ul>

            <!-- Left links -->

            <div class="d-flex align-items-center">
            <div class="row">
           <div class="col">
           		 <!-- BOTONES -->
           		 <button type="button" class="btn btn-primary" id="BotonNav1" data-bs-toggle="modal" data-bs-target="#modalCierreSesión">Cerrar sesión</button>
					<div class="modal fade" id="modalCierreSesión" tabindex="-1" aria-labelledby="modalLogout" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h6 class="modal-title fs-5" id="modalLogout">Cerrando sesión...</h6>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body" id="modalLogout" >
					      </div>
					      	<h3  style="margin-left:20%; margin-bottom:20px" >¿Deseas cerrar sesión?</h3>
					     	<a class="btn btn-primary" href="/index/logout" role="button" id="BotonNav1" style="margin-left:35%; margin-bottom:10px;">Cerrar sesión</a>
					    	<a class="btn btn-primary" type="button" id="BotonNav1" data-bs-dismiss="modal" style="margin-left:35%; margin-bottom:20px;">Permanecer</a>
					    </div>
					  </div>
					</div>
					<!-- Fin modal -->         
                <!-- BOTONES -->
            </div>
        </div>
    </div>
</nav>
<!-- Navbar -->

<body>
	<form action="/registro/mascota" method="post" action="/upload/form" >
		
		<!--<c:out value="${Error}"></c:out>-->
		<c:if test="${Error!=null}"> 
			    		<div class="alert alert-danger" role="alert">
							<c:out value="${Error}"></c:out> 
						</div>
			    	</c:if>
		
		<!--=============COLUMNA UNO=============-->
		<div class="container-fluid">
			<div class="row">
				<div class="col-4 text-center">
					<
						<br>
					<!-- Button trigger modal -->
					
					
					
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
							<label for="nombre" class="col-form-label"><b>Nombre:</b>
								<input class="form-control" type="text" id="nombre" name="nombre"
								placeholder="Ej: Copito" required style="padding-left:-1000px;"> </label>
						</div>
						<div class="col">
							<label for="especie" class="col-form-label" id="seleccion"><b>Especie:</b></label>
							<select class="form-select" aria-label="Default select example" id="especie" name="especie"style="width: 250px;">
								<option class="form-control" value=0>Seleccione especie</option>
								<c:forEach var="especie" items="${listaEspecies}">
				 					<option value="${especie.idEspecie}">${especie.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
						<div class="col">
							<label for="sexo" class="col-form-label" id="seleccion"><b>Sexo:</b></label>
							<select class="form-select" aria-label="Default select example" id="sexo" name="sexo" style="width: 250px;">
								<option class="form-control" value=0>Seleccione sexo</option>
								<c:forEach var="sexo" items="${listaSexos}">
				 					<option value="${sexo.idSexo}">${sexo.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
					</div>
					<!--=============COLUMNA TRES=============-->
					<div class="row">
						<div class="col">
							<label for="nChip" class="col-form-label">
								<b>Nº Chip:</b>
							</label>
							<input class="form-control" type="text" id="nChip" name="nChip" placeholder="Ej: 123456789012345" required>
						</div>
						<div class="col">
							<label for="rangoEtario" class="col-form-label" id="seleccion"><b>Rango Etario:</b></label> 
							<select class="form-select" aria-label="Default select example" id="rangoEtario" name="rangoEtario" style="width: 250px;">
								<option class="form-control" value=0>Seleccione rango etario</option>
								<c:forEach var="rangoEtario" items="${listaRangosEtarios}">
				 					<option value="${rangoEtario.idRangoEtario}">${rangoEtario.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
						<div class="col">
							<label for="raza" class="col-form-label" id="seleccion"><b>Raza:</b></label>
							<select class="form-select" aria-label="Default select example" id="raza" name="raza" style="width: 250px;">
								<option class="form-control" value=0>Seleccione raza</option>
								<c:forEach var="raza" items="${listaRazas}">
				 					<option value="${raza.idRaza}">${raza.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
					</div>
					<!--=============COLUMNA CUATRO=============-->
					<div class="row">
						<div class="col">
							<label for="color" class="col-form-label" id="seleccion"><b>Color:</b> 
							</label>
							<select class="form-select" aria-label="Default select example" id="color" name="color" style="width: 250px;">
								<option class="form-control" value=0>Seleccione color principal</option>
								<c:forEach var="color" items="${listaColores}">
				 					<option value="${color.idColor}">${color.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
						<div class="col">
							<label for="patron" class="col-form-label" id="seleccion"><b>Patrón:</b></label>
							<select class="form-select" aria-label="Default select example" id="patron" name="patron" style="width: 250px;">
								<option class="form-control" value=0>Seleccione patrón de pelaje</option>
								<c:forEach var="patron" items="${listaPatrones}">
				 					<option value="${patron.idPatron}">${patron.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
						<div class="col">
							<label for="tamanio" class="col-form-label" id="seleccion"><b>Tamaño:</b></label>
							<select class="form-select" aria-label="Default select example" id="tamanio" name="tamanio" style="width: 250px;">
								<option class="form-control" value=0>Seleccione tamaño</option>
								<c:forEach var="tamanio" items="${listaTamanios}">
				 					<option value="${tamanio.idTamanio}">${tamanio.descripcion}</option>			  
				 				</c:forEach>
							</select>
						</div>
					</div>
					<!--=============COLUMNA CINCO=============-->
					<div class="row">
						<div class="col">
							<label for="descripcion" class="form-label"><b>Descripción:</b></label>
							<textarea class="form-control" id="descripcion" name="descripcion"
								rows="3"
								placeholder="Escribe sus características especiales aquí..."
								style="width: 910px;"></textarea>
						</div>
						<!--=============COLUMNA BOTÓN=============-->
						<div class="row">
							<div class="col">
								<input  type="submit" class="btn btn-outline-primary btn-lg" value="Enviar" required>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
<!-- FOOTER -->
<footer class="text-center text-white" style="background-color: #004445; ">
	<div class="container-fluid">
	    <div class="row">
	      <div class="col">
	        <!-- Grid container -->
	        <div class="container pt-4">
	          <!-- Section: Social media -->
	          <section class="mb-4">
	            <!-- Facebook -->
        <ul class="nav flex-column" >
          <li class="nav-item">
            <span class="footer-title" style="color: #C6D166; font-size: 16px" align="left"><strong>Links de interés</strong></span>
          </li>
          <li class="nav-item">
            <a class="link1"  style="font-size: 13px" href="https://www.chileatiende.gob.cl/fichas/51436-ley-de-tenencia-responsable-de-mascotas-y-animales-de-compania-ley-cholito" target="_blank" rel="noopener noreferrer">Ley tenencia responsable</a>
          </li>
          <li class="nav-item">
            <a class="link1"  style="font-size: 13px" href="https://registratumascota.cl/inicio.xhtml" target="_blank" rel="noopener noreferrer">Registro nacional de mascotas</a>
          </li>
          <li class="nav-item">
            <span class="footer-title" style="color: #C6D166;font-size: 16px" align="left"><strong>Contacto</strong></span>
          </li>
          <li class="nav-item" >
            <a class="link1" style="font-size: 13px" href="mailto:holaforpets@gmail.com?Subject=Hola%20ForPets!"><i class="fas fa-envelope"></i>holaforpets@gmail.com</a>
          </li>
        </ul>
	        </div>
	      </div>
	      <div class="col" style="margin-left: 200px; margin-top: 35px;">
	        <img src="/assets/img/logoverde" alt="" style="height: 50px;">
	       <div> 
	        <ul class="list-inline social-buttons" style=" margin-top: 35px;">
          <li class="list-inline-item">
            <a href="#">
            <i class="fab fa-twitter" style="color: #C6D166;"></i>
          </a>
          </li>
          <li class="list-inline-item">
            <a href="#">
            <i class="fab fa-facebook-f" style="color: #C6D166;"></i>
          </a>
          </li>
          <li class="list-inline-item">
            <a href="#">
            <i class="fab fa-linkedin-in" style="color: #C6D166;"></i>
          </a>
          </li>
        </ul>
        </div>
	      </div>
	      <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
	                <span class="copyright quick-links" style="color:#C6D166 ;">Copyright &copy; ForPets <script>document.write(new Date().getFullYear())</script>
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
					
					 $("#raza").append('<option value='+data[i].idRaza+'>'+data[i].descripcion+'</option>');  
				}
		                
		            }
		        
		      
		        });
		//cierre jquery
		    });

	</script>

<!-- FOOTER -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous">
</script>


</html>