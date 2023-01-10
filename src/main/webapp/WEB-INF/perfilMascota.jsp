<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	
<!-- CSS -->
<link href="/assets/css/stylesRegUser.css" rel="stylesheet">
   
<!-- JQUERY -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script>

<title>Perfil mascota</title>
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
	<div class="container-fluid">
		<div class="row">
			<div class="col-4 text-center" id="FotoM">
				 
				
				<!-- modal -->
				<div class="modal fade" id="fotoUserModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h1 class="modal-title fs-5" id="exampleModalLabel">Foto del Perfil</h1>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body" id="fotoUserBodyModal">
					      </div>
					      <form action="/perfilMascota/actualizarFotoMascota" method="post" enctype="multipart/form-data">
						      <div class="modal-footer">
								<label class="btn btn-primary" id="buttonModal" for="inputGroupFile01">Editar</label>
								<input type="file" class="form-control" id="inputGroupFile01" style="display: none" name="fotoPerfilPets">
						        <button type="submit" class="btn btn-primary" id="buttonModal">Guardar</button>
						      </div>
					      </form>
					    </div>
					  </div>
					</div>
					<!-- Fin modal -->         
				
				<button class="btn btn" type="button"
					style="background-color: #C6D166; margin-top: 50px;">Sube
					tu foto de perfil</button>
			</div>

			<div class="col">
				<div class="row">
					<div class="col">
						<p style="margin-top: 45px;">
						<h1>Perfil mascota</h1>
						</p>
						<p>
						<h6>Nombre Mascota: <c:out value="${NombreMascota}"></c:out></h6>
						</p>
						<p>
							<h6>Numero Chip: <c:out value="${NChip}"></c:out></h6>
						</p>
						<p>
							<h6>Especie: <c:out value="${Especie}"></c:out></h6>
						</p>
						<p>
							<h6>Color: <c:out value="${Color}"></c:out></h6>
						</p>
						<p>
						<h6>Tamaño: <c:out value="${Tamanio}"></c:out></h6>
						</p>
						<p>
						<h6>Raza: <c:out value="${Raza}"></c:out></h6>
						</p>
						<p>
						<h6>Patrón: <c:out value="${Patron}"></c:out></h6>
						</p>
						<p>
						<h6>Sexo: <c:out value="${Sexo}"></c:out></h6>
						</p>
						<!--  <p><c:out value="${Apellido}"></c:out></p> -->
					</div>
				</div>
				<div class="row">
					<div class="col">
						<p>
						<h1>Mis caractetísticas</h1>
						</p>
						<p>
						<h6><c:out value="${Descripcion}"></c:out>
						</h6>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
</body>
<!-- FOOTER -->
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
<!-- FOOTER -->
<script>
	//Definicion de variables
	var mascotaId = <c:out value="${idMascota}"/>
	//console.log(mascotaId);
	
	//Definicion de funciones
	function fotoMascota() {
		return	$.ajax({
		            method: "get",
		            url: "/apiPerfilMascota/existImgPets",
		            data: { id : mascotaId },
		            success: function (data) {	    
		            	let existFotoPerfil = data;
		            	console.log(existFotoPerfil)
		            	$("#FotoM").find("img").remove();
		            	if (existFotoPerfil) {
		            		$("#FotoM").prepend('<img role="button"  data-bs-toggle="modal" data-bs-target="#fotoUserModal" class="rounded-circle mx-auto d-block" src="data:image/jpeg;base64,${FotoM}" alt="a" width="50px" height="50px" style="margin: 0% 0% 5% 0%;">');
		            	} else {
		            		$("#FotoM").prepend('<img role="button"  data-bs-toggle="modal" data-bs-target="#fotoUserModal" class="rounded-circle mx-auto d-block" src="/assets/img/mascotaGenerico.png" id="FotoM">'); 		            		
		            	}
		            }      		      
		        });
    }
	
	//JQuery
	
    
    $(document).ready(function(){
      	fotoMascota();
      	
    	
    	
    	  $("#botonBody").click(function(){
    		  console.log(usuarioId);
    	  });
    	  
    });
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
</html>