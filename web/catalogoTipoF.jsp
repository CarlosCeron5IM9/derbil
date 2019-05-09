
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
      <title>Catálogo Tipo de fotógrafo.</title>
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
      <li><a href="registrarUsuario.jsp">Iniciar<br>Sesión</a></li>
      <li class="divider"></li>
      <li><a href="FAQs.html">Soporte</a></li>
      <li class="divider"></li>  
      <li><a href="index.html">DERBILD</a></li>
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
      <li><a href="index.html">DERBILD</a></li>
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
          <form class="col s12" name="reg" action="catalogoTipoF2.jsp" method="POST">
            
            <div class="row">
            </div>
          <div class="row">
            <div class="input-field col s12">
                <select id="Tipo de fotografías" name="TipoF">
                                            <option value="" selected disabled hidden>Seleccione el tipo de fotografía</option>
                                            <option value="a">Artística</option>
                                            <option value="b">Publicitaria</option>
                                            <option value="c">De moda</option>
                                            <option value="d">Documental</option>
                                            <option value="e">De retrato</option>
                                            <option value="f">Periodística</option>
                                            <option value="g">Aérea</option>
                                            <option value="h">Submarina</option>
                                            <option value="i">Nocturna</option>
                                            <option value="j">De paisajes</option>
                                            <option value="k">Astronómica</option>
                                            <option value="l">Científica</option>
                                            <option value="m">Fotomacrografía</option>
                                            <option value="n">Deportiva</option>
                                            <option value="o">Otro</option>
                                        </select>
                <label>Tipo de fotógrafía</label>
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
