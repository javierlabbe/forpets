<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>
     <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <!-- TIPOGRAFIAS -->
 	<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Baloo' rel='stylesheet'>
    <!-- TIPOGRAFIAS -->
	
	<!-- CSS -->
	<link href="/assets/css/stylesRegUser.css" rel="stylesheet">
    
    <!-- JQUERY -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script>
    
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
        <div class="row" style="margin-top: 2%; padding-right: 5%;">
            <div class="col-4" style=" height: 600px;" id="divPerfil1">
                <div class="row justify-content-center" id="divPerfil">
					
					<!-- Modal Foto Perfil -->
					<div class="modal fade" id="fotoUserModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h1 class="modal-title fs-5" id="exampleModalLabel">Foto del Perfil</h1>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body" id="fotoUserBodyModal">
					      </div>
					      <form action="/home/perfil" method="post" enctype="multipart/form-data">
						      <div class="modal-footer">
								<label class="btn btn-primary" id="buttonModal" for="inputGroupFile01">Editar</label>
								<input type="file" class="form-control" id="inputGroupFile01" style="display: none" name="fotoPerfilUser">
						        <button type="submit" class="btn btn-primary" id="buttonModal">Guardar</button>
						      </div>
					      </form>
					    </div>
					  </div>
					</div>
					<!-- Fin modal -->         
                </div>
                     
                <div class="row gap-2 justify-content-center" style="flex-direction: column; align-items: center;">
                
                	<!-- Modal editar Perfil -->
					<div class="modal fade" id="perfilUserModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h1 class="modal-title fs-5" id="exampleModalLabel">Editar Perfil</h1>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" ></button>
					      </div>
					      <form action="/home/actualizar/perfil" method="post" enctype="multipart/form-data">
					      <div class="modal-body" id="fotoUserBodyModal">
			                <div class="row align-items-start" id="rowform">
			                    <div class="col">
			                        <label for="nombre" class="form-label">Nombre</label>
			                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="${nameUser}">
			                        <div class="form-text">Ingrese su nombre</div>
			                    </div>
			                </div>
			                <div class="row align-items-start" id="rowform">
			                    <div class="col">
			                        <label for="apellidos" class="form-label">Apellidos</label>
			                        <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="${lastNameUser}">
			                        <div class="form-text">Ingrese su primer apellido</div>
			                    </div>
			                </div>
			                <div class="row align-items-start" id="rowform">
			                    <div class="col">
			                        <label for="calle" class="form-label">Calle</label>
			                        <input type="text" class="form-control" id="calle" name="calle" placeholder="${calleUser}">
			                        <div class="form-text">Ingrese su calle</div>
			                    </div>
			                    <div class="col">
			                        <label for="numDir" class="form-label">Número</label>
			                        <input type="text" class="form-control" id="numDir" name="numDir" placeholder="${numDirUser}">
			                        <div class="form-text">Ingrese número de dirección</div>
			                    </div>
			                </div>
			                <div class="row align-items-start" id="rowform">
			                     <div class="col">
			                         <label for="region" class="form-label">Región</label>
			                         <select class="form-select" aria-label="Default select example" id="region" name="region">
			                            <option value="0" selected>Seleccione región</option>
			                            <c:forEach var="region" items="${listaRegiones}">
				 							<option value="${region.id}">${region.descripcion}</option>			  
				 						</c:forEach>
			                         </select>
			                     </div>
			                     <div class="col">
			                         <label for="comuna" class="form-label">Comuna</label>
			                         <select class="form-select" aria-label="Default select example" id="comuna" name="comuna"  >
			                            <option value="0" selected>Seleccione comuna</option>
			                            <c:forEach var="comuna" items="${listaComunas}">
				 							<option value="${comuna.id}">${comuna.descripcion}</option>			  
				 						</c:forEach>
			                         </select>
			                     </div>             
			                </div>
					      </div>
						      <div class="modal-footer">
				
						        <button type="submit" class="btn btn-primary" id="buttonModal">Guardar</button>
						      </div>
					      </form>
					    </div>
					  </div>
					</div>
					<!-- Fin modal --> 
                  
                    <button type="button" class="btn btn-primary" id="botonBody" data-bs-toggle="modal" data-bs-target="#perfilUserModal">
                        Editar
                    </button>
                    
                    <a role="button" class="btn btn-primary" id="botonBody" href="/registro/mascota">
                        Añadir Mascota
                    </a>
                </div>
            </div>
            <div class="col" id="rightCol">
                <div class="row align-items-start" id="rowform">
                    <h3>Mi Perfil</h3>
                </div>
                <div class="row align-items-start" id="rowform">
                    <p><c:out value="${nameUser} ${lastNameUser}"></c:out></p>
                    <p><c:out value="${emailUser}"></c:out></p>
                    <p><c:out value="${celUser}"></c:out></p>
                    <p><c:out value="${calleUser} #${numDirUser}, ${comunaUser}, ${regionUser}."></c:out></p>
                </div>
                <div class="row align-items-start" id="rowform">
                    <h3>Mis Mascotas</h3>
                </div>

            </div>
        </div>
    </div>
    
    <script>
    	//Definicion de variables
	    var usuarioId = ${idUser}

	    //Definicion de funciones
	    function fotoMascota() {
			return	$.ajax({
			            method: "get",
			            url: "/apiPerfilMascota/existImgMascota",
			            data: { id : document.getElementById("mascotas").value },
			            success: function (data) {	    
			            	let existFotoPerfil = data;
			            	$("#rowFotoMascota").find("img").remove();
			            	if (existFotoPerfil) {
			            		$("#rowFotoMascota").prepend('<img class="rounded-circle mx-auto d-block" src="data:image/jpeg;base64,${fotoPerfil}" alt="${userName}" width="200px" height="200px" style="margin: 0% 0% 5% 0%;">');
			            	} else {
			            		$("#rowFotoMascota").prepend('<img class="rounded-circle mx-auto d-block" src="/assets/img/mascotaGenerico.png" id="fotoMascota">'); 		            		
			            	}
			            }      		      
			        });
	    }
	    
	    function fotoUsuario() {
	    	return $.ajax({
			            method: "get",
			            url: "/apiUsuario/existImgUser",
			            data: { id : usuarioId },
			            success: function (data) {	    
			            	let existFotoPerfil = data;
			            	$("#divPerfil").find("img").remove();
			            	if (existFotoPerfil) {
			            		$("#divPerfil").prepend('<img role="button"  data-bs-toggle="modal" data-bs-target="#fotoUserModal" class="rounded-circle mx-auto d-block" src="data:image/jpeg;base64,${fotoPerfil}" alt="${userName}" style="margin: 0% 0% 5% 0%;width: 200px;">');
			            		$("#fotoUserBodyModal").prepend('<img class="rounded-circle mx-auto d-block" src="data:image/jpeg;base64,${fotoPerfil}" alt="${userName}" width="200px" height="200px" style="margin: 0% 0% 5% 0%;">');
			            	} else {
			            		$("#divPerfil").prepend('<img role="button"  data-bs-toggle="modal" data-bs-target="#fotoUserModal" class="rounded-circle mx-auto d-block" src="/assets/img/usuario.png" alt="${userName}" style="margin: 0% 0% 5% 0%;width: 200px;">'); 		            		
			            		$("#fotoUserBodyModal").prepend('<img class="rounded-circle mx-auto d-block" src="/assets/img/usuario.png" width="200px" height="200px" style="margin: 0% 0% 5% 0%;">');
			            	}
			            }      		      
			        });
	    }
	    
	    //JQuery
    	$("#mascotas")
		  .change(function(){
			  fotoMascota();
			;})
	    
	    $(document).ready(function(){
	    	fotoUsuario();
   		  	$.getJSON( "/apiUsuario/listaMascotas", {id: usuarioId} ,function( data ) {
   			  console.log(data.length)
   			  if (data.length > 0) {
   				let string = '\
	   				<form action="/perfilMascota" method="post" enctype="multipart/form-data">\
		                 <div class="row align-items-start" id="rowform">\
			                 <div class="col-4">\
			                     <select class="form-select" aria-label="Default select example" id="mascotas" name="idMascota">\
		                        	<c:forEach var="perfilMascota" items="${listaMascotas}">\
										<option value="${perfilMascota.id}">${perfilMascota.nombre}</option>			  \
									</c:forEach>\
			                     </select>\
			                 </div>\
			            </div>\
		                <div class="row align-items-start" id="rowFotoMascota" >\
		                	<img src="" id="fotoMascota">\
		                </div>\
		                <div class="row align-items-center">\
		                	<div class="col">\
		                		<button type="submit" class="btn btn-primary" id="botonBody" style="width: 20%">Ver más</button>\
		                	</div>\
		                </div>\
	           		</form>'
   					
   				$("#rightCol").append(string);
   			  } else {
   				let string = '<p>Aun no cuentas con mascotas añadidas.<br>¡Añade tu primera mascota haciendo click en "Añadir Mascota"!</p>'
   				$("#rightCol").append(string);
   			  }
   			})
   			.done(function() {
   		  		fotoMascota();
   		  	});
   		      
	    	
	    	  $("#botonBody").click(function(){	
	    		  console.log();
	    	  });
	    	  
	    });
	    
		$('select[name="region"]').on('change', function() {
		    let regionId = $(this).val();
		        $.ajax({
		            method: "get",
		            url: "/apiRegion/obtenercomunas",
		            dataType: 'json',
		            data: { id : regionId },
		            success: function (data) {
		    
		            	$("#comuna").find("option").remove();
		            	$("#comuna").append('<option value="0">Seleccione comuna</option>');  
		           for (var i = 0; i < data.length; i++) {
					
					 $("#comuna").append('<option value='+data[i].id+'>'+data[i].descripcion+'</option>');  
				}
		                
		            }
		        
		      
		        });
		//cierre jquery
		    });
    
    </script>
    	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js "
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4 "
        crossorigin="anonymous "></script>
</body>

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


</html>