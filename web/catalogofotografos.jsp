
<%@page import="model.*"%>
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
       <style>body {
        background-image: url("https://images.wallpaperscraft.com/image/photographer_hood_camera_138197_2560x1440.jpg");
        background-color: #cccccc;
        background-position: center;
        background-repeat: no-repeat;}
      </style>
      <title>Catálogo.</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <!-- Dropdown Structure -->
    <ul id="dropdown" class="dropdown-content">
           <%
                            Usuario u = (Usuario)session.getAttribute("user");
                            session.setAttribute("user",u);
                            if(u == null){
                                %>
      <li><a href="registrarUsuario.jsp">Registro</a></li>
      <li class="divider"></li>
      <li><a href="IniciarSesion.jsp">Iniciar<br>Sesión</a></li>
      <li class="divider"></li>
      <li><a href="FAQs.html">Soporte</a></li>
      <li class="divider"></li>  
      <li><a href="index.jsp">DERBILD</a></li>
      <%
                            }else{
                        %>
      <li><a href="Controller/CerrarSesion.jsp">Cerrar<br>Sesión</a></li>
      <li class="divider"></li>
      <li><a href="perfil.jsp">Perfil</a></li>
      <li class="divider"></li> 
      <li><a href="FAQs.html">Galería</a></li>
      <li class="divider"></li> 
      <li><a href="FAQs.html">Soporte</a></li>
      <li class="divider"></li>  
      <li><a href="index.jsp">DERBILD</a></li>
      <%
                        }
                        %>
    </ul>
    <nav>
      <div class="nav-wrapper grey darken-3">
          <a href="#.html" class="brand-logo"><img src="img/Logo.png" style="width: 80px; height: 65px;"></a>
          <a href="#!" class="brand-logo center">Catálogo</a>
        <ul class="right hide-on-med-and-down">
          <!-- Dropdown Trigger -->
          <li><a class="dropdown-button" href="#!" data-activates="dropdown">Menu<i class="material-icons right">arrow_drop_down</i></a></li>
        </ul>   
      </div>
    </nav> 
    <div class="container">
      <div class="row">
        <br><br><br><br><br><br>
      </div>       
    </div>
    <div class="container">
      <div class="row">        
        <div class="col s4">
          <!-- Promo Content 1 goes here -->
        </div>
        <div class="col s4">
            <h5 style="color: lightgrey">Seleccione el filtro de búsqueda</h5> 
            
                                        <br>
                                        <button style="color: white" class="btn badge" onclick="location.href='catalogoSexo.jsp'">Sexo</button>
                                        <br><br>
                                        <button style="color: white" class="btn badge" onclick="location.href='catalogoCosto.jsp'">Costo</button>
                                        <br><br>
                                        <button style="color: white" class="btn badge" onclick="location.href='catalogoDeleg.jsp'">Ubicación</button>
                                        <br><br>
                                        <button style="color: white" class="btn badge" onclick="location.href='catalogoTipoF.jsp'">Tipo de fotografía</button>
                                        <br><br>
                                        <button style="color: white" class="btn badge" onclick="location.href='catalogoExp.jsp'">Experiencia</button>
                                        
        </div>
        <div class="col s4">
         <!-- Promo Content 3 goes here -->
        </div>
      </div>
    </div>
  </body>
</html>
