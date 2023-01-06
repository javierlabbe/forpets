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
    <link href="/assets/css/stylesRegUser.css" rel="stylesheet">

    <script src="https://kit.fontawesome.com/64af136b72.js" crossorigin="anonymous"></script>
    
    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <style>
        #rowform {
            margin-bottom: 10px;
        }
        #birthday {
            width: 100%;
        }
        
        body{
        background-image: url('/assets/img/fondogris.png');
        }
    </style>

</head>

<!-- Navbar -->
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
                    <a class="nav-link active" aria-current="page" href="http://localhost:9082/index">Home</a>
                </li>
            </ul>

            <!-- Left links -->
            <div class="d-flex align-items-center">
                <button type="button" class="btn btn-primary" id="BotonNav1">Login</button>
            </div>
        </div>
    </div>
</nav>
<!-- Navbar -->

<body>
	<div class="container-fluid">
	    <div class="row" style="display: grid; place-content: center;">
	        <form action="/registro/usuario" method="post" enctype="multipart/form-data">
	        	<div class="card" style="margin-top: 2%;">
		            <div class="card-body">
		                <div class="row align-items-start" id="rowform">
		                    <h3>Crear tu cuenta de Forpets</h3>
		                    
		                    <c:if test="${msgError!=null}"> 
					    		<div class="alert alert-danger" role="alert">
									<c:out value="${msgError}"></c:out> 
								</div>
					    	</c:if>
		                </div>
		                <div class="row align-items-start" id="rowform">
		                    <div class="col">
		                        <label for="nombre" class="form-label">Nombre</label>
		                        <input type="text" class="form-control" id="nombre" name="nombre" required>
		                        <div class="form-text">Ingrese su nombre</div>
		                    </div>
		                    <div class="col">
		                        <label for="apellidos" class="form-label">Apellidos</label>
		                        <input type="text" class="form-control" id="apellidos" name="apellidos" required>
		                        <div class="form-text">Ingrese su primer apellido</div>
		                    </div>
		                </div>
		                <div class="row align-items-start" id="rowform">
		                    <div class="col">
		                        <label for="birthday" class="form-label">Fecha de nacimiento</label>
		                        <input type="date" class="form-control" id="birthday" name="birthday" required>
		                        <div class="form-text">Ingrese fecha de nacimiento</div>
		                    </div>
		                </div>
		                <div class="row align-items-start" id="rowform">
		                    <div class="col">
		                        <label for="calle" class="form-label">Calle</label>
		                        <input type="text" class="form-control" id="calle" name="calle" required>
		                        <div class="form-text">Ingrese su calle</div>
		                    </div>
		                    <div class="col">
		                        <label for="numDir" class="form-label">Número</label>
		                        <input type="text" class="form-control" id="numDir" name="numDir" required>
		                        <div class="form-text">Ingrese número de dirección</div>
		                    </div>
		                </div>
		                <div class="row align-items-start" id="rowform">
		                     <div class="col">
		                         <label for="region" class="form-label">Región</label>
		                         <select class="form-select" aria-label="Default select example" id="region" name="region">
		                            <option selected>Seleccione región</option>
		                            <c:forEach var="region" items="${listaRegiones}">
			 							<option value="${region.id}">${region.descripcion}</option>			  
			 						</c:forEach>
		                         </select>
		                     </div>
		                     <div class="col">
		                         <label for="comuna" class="form-label">Comuna</label>
		                         <select class="form-select" aria-label="Default select example" id="comuna" name="comuna"  >
		                            <option selected>Seleccione comuna</option>
		                            <c:forEach var="comuna" items="${listaComunas}">
			 							<option value="${comuna.id}">${comuna.descripcion}</option>			  
			 						</c:forEach>
		                         </select>
		                     </div>             
		                </div>
		                <div class="row align-items-start" id="rowform">
		                    <div class="col">
		                        <label for="telefono" class="form-label">Teléfono</label>
		                        <input type="text" class="form-control" id="telefono" name="telefono" required>
		                        <div class="form-text">Ingrese su teléfono</div>
		                    </div>
		                    <div class="col">
		                        <label for="email" class="form-label">Email</label>
		                        <input type="email" class="form-control" id="email" name="email" required>
		                        <div class="form-text">Ingrese su email</div>
		                    </div>
		                </div>
		                <div class="row align-items-start" id="rowform">
		                    <div class="col">
		                        <label for="password" class="form-label">Contraseña</label>
		                        <input type="password" class="form-control" id="password" name="pass1" required>
		                        <div class="form-text">Ingrese su contraseña</div>
		                    </div>
		                    <div class="col">
		                        <label for="password2" class="form-label">Confirmar contraseña</label>
		                        <input type="password" class="form-control" id="password2" name="pass2" required>
		                        <div class="form-text">Confirme su contraseña</div>
		                    </div>
		                </div>
		                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
		                    <input type="submit" class="btn btn-primary" value="Continuar" id="botonBody">
		            	</div>
		            </div>
	        	</div>
	        </form>
	    </div>
    </div>
    
	<script>
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