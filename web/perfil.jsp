
<%@page import="model.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.css">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link rel = "stylesheet" href = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.css">
      <script type = "text/javascript" src = "https://code.jquery.com/jquery-2.1.1.min.js"></script>           
      <script src = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.js"></script> 
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.js"></script>
       
      <title>Perfil.</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
      <%
                            Usuario u = (Usuario)session.getAttribute("user");
                            session.setAttribute("user",u);
                            String NomUsuario = u.getNomUsuario();
                                %>
    <!-- Dropdown Structure -->
    <ul id="dropdown" class="dropdown-content">
      <li><a href="Controller/CerrarSesion.jsp">Cerrar<br>Sesión</a></li>
      <li class="divider"></li> 
      <li><a href="FAQs.html">Soporte</a></li>
      <li class="divider"></li>  
      <li><a href="index.html">DERBILD</a></li>
    </ul>
    <nav>
      <div class="nav-wrapper grey darken-3">
          <a href="#.html" class="brand-logo"><img src="img/Logo.png" style="width: 80px; height: 65px;"></a>
          <a href="#!" class="brand-logo center">Perfil</a>
        <ul class="right hide-on-med-and-down">
          <!-- Dropdown Trigger -->
          <li><a class="dropdown-button" href="#!" data-activates="dropdown">Menu<i class="material-icons right">arrow_drop_down</i></a></li>
        </ul>   
      </div>
    </nav> 
    <div class="container">
      <div class="row">
        <br><br><br><br>
      </div>       
    </div>
    <div class="container">
      <div class="row">        
        
            <div class="row">
            <!-- Columna de la izquierda -->
        		<div class="col-md-12" align="center">
        			<img class="img-responsive img-portfolio img-hover" src="img/profile.jpg" style="width: 100px; height: 100px">
        		</div>
                        
        			<p class="text-center"><strong>Perfil de <em><%=NomUsuario%></em></strong></p>

        		<div class="col-md-12 text-center">
    		       <!-- Redes sociales-->
	               <ul class="list-unstyled list-inline list-social-icons">
                        <li>
                            <a href="#"><i class="editIcons icon-facebook-square editSizeIcons"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="editIcons icon-linkedin-square editSizeIcons"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="editIcons icon-twitter-square editSizeIcons"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="editIcons icon-google-plus-square editSizeIcons"></i></a>
                        </li>
                    </ul>
                    <!-- Fin redes sociales -->
        		</div>

        		<div class="col-md-12">
        		<!-- Barra vertical de opciones del perfil de usuairo -->
        			<br>
        			<ul class="list-group list-primary">
        				<a href="#" class="list-group-item">Editar perfil</a>
                                        <br>
    				</ul>
    			</div>
                <!-- Fin Barra vertical de opciones del perfil de usuario -->
            <!-- Fin de Columna de la izquierda -->

            <!-- Parte central -->
            <div class="col-md-9">
                <div class="col-md-12" style="border-width: 1px 1px 1px 1px; border-style: solid; border-color: lightgrey;">
                    <h3 style="text-align: center">Mi perfil </h3>
                </div>
                <!-- Se inicia el form (ojo todos los elementos de formulario deben ir dentro de esta etiqueta-->
                <form name="modifyProfile" id="profileForm" novalidate>
                <!-- Inicio del div central parte de formulario información básica -->
                <div class="col-md-12" style="border-width: 1px 1px 1px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
                	<div class="col-md-8 col-md-offset-2">
    	                
    	                    <div class="control-group form-group">
    	                        <div class="controls">
    	                        	<br >
    	                            <h3>Información básica</h3>
                                    <br>
    	                            <span id="alertName" data-toggle="popover" data-trigger="hover" data-placement="right" title="" data-content="">
                                        <label>Nombre:</label>
                                        NombredeUsuario
    	                            </span>
    	                            <br>
                                    <br>
    	                            <span id="alertSurname" data-toggle="popover" data-trigger="hover" data-placement="right" title="" data-content="">
                                        <label>Apellido Paterno</label>
                                        ApellidoPaterno
    	                            </span>
    	                            <br >
                                    <br>
    	                            <span id="alertQualification" data-toggle="popover" data-trigger="hover" data-placement="right" title="" data-content="">
                                        <label>Apellido Materno:</label>
                                        ApellidoMaterno
    	                            </span>
    	                            <br>
                                    <br>
    	                            <span id="alertEmail" data-toggle="popover" data-trigger="hover" data-placement="right" title="" data-content="">
                                        <label>Correo Electronico</label>
                                        CorreoElectronico
    	                            </span>
                                    <br>
                                    <br>
                                    <label>Fotografias muestra</label>
                                    <br>
                                    <img src="img/foto1.jpg" width="176" height="195" alt="Muestra 1"/>
                                    <img src="img/foto2.jpg" width="176" height="195" alt="Muestra 2"/>
                                    <img src="img/foto3.jpg" width="150" height="195" alt="Muestra 3"/>
    	                            <p class="help-block"></p>
    	                        </div>
    	                    </div>
                    </div>
                    <br>
                </div>
                <!-- Fin del div central parte de formulario información básica -->

            </form>
            <!-- Fin del form -->
            </div>  
            <!-- Fin del div de parte central -->
        </div>
        </div>
        <div class="col s4">
         <!-- Promo Content 3 goes here -->
        </div>
      </div>
    </div>
  </body>
</html>
