
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
        background-image: url("https://images.wallpaperscraft.com/image/silhouette_photographer_person_123085_2560x1440.jpg");
        background-color: #cccccc;
        background-position: center;
        background-repeat: no-repeat;}
      </style>
      <title>Catálogo Costo.</title>
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
          <a href="Profile.html" class="brand-logo"><img src="img/Logo.png" style="width: 80px; height: 65px;"></a>
          <a href="#!" class="brand-logo center">Catálogo</a>
        <ul class="right hide-on-med-and-down">
          <!-- Dropdown Trigger -->
          <li><a class="dropdown-button" href="#!" data-activates="dropdown">Menu<i class="material-icons right">arrow_drop_down</i></a></li>
        </ul>   
      </div>
    </nav>
    <div class="container">
      <div class="row">
        <br><br><br><br><br><br><br><br><br>
      </div>       
    </div>
    <div class="container">
      <div class="row">        
        <div class="col s4">
          <!-- Promo Content 1 goes here -->
        </div>
        <div class="col s4">
        <div class="row">
          <form class="col s12" name="reg" action="catalogoCosto2.jsp" method="POST">
            
            <div class="row">
            </div>
          <div class="row">
            <div class="input-field col s12">
                <select id="Costo" name="Costo">
                                            <option value="" selected disabled hidden>Seleccione el costo</option>
                                            <option value="a">Menos de $250</option>
                                            <option value="b">Entre $250 y $500</option>
                                            <option value="c">Entre $500 y $1,000</option>
                                            <option value="d">Entre $1,000 y $2,500</option>
                                            <option value="e">Entre $2,500 y $5,000</option>
                                            <option value="f">Entre $5,000 y $7,500</option>
                                            <option value="g">Entre $7,500 y $10,000</option>
                                            <option value="h">Entre $10,000 y $15,000</option>
                                            <option value="i">Más de $15,000</option>
                                        </select>
                <label>Costo</label>
            </div>   
          </div>
          <div class="row">
           <div class="input-field col s12">
             
             <button class="btn waves-effect waves-light" type="submit" name="action">Buscar
             <i class="material-icons right">search</i>
             </button>
               <input class="btn btn-danger" type="button" onclick="location.href='catalogofotografos.jsp'" value="Regresar"/>
               
           </div>   
          </div>
          </form>
        </div>
        </div>
        <div class="col s4">
         <!-- Promo Content 3 goes here -->
        </div>
      </div>
    </div>
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
    </script>
  </body>
</html>
