
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
        <title>DERBILD.</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <style>body {
     background-image: url("https://professor-falken.com/wp-content/uploads/2016/09/tra-fico-aglomeracio-n-atasco-difuminado-noche-Fondos-de-Pantalla-HD-professor-falken.com_.jpg");
     background-color: #cccccc;
     background-position: center;
     </style>
    </head>
    <body>
    <nav>
      <div class="nav-wrapper grey darken-3">
          <a href="Profile.html" class="brand-logo"><img src="img/Logo.png" style="width: 80px; height: 65px;"></a>
          <a href="#!" class="brand-logo center">Derbild</a>
          <ul id="nav-mobile" class="right hide-on-med-and-down">
              <%
                            Usuario u = (Usuario)session.getAttribute("user");
                            session.setAttribute("user",u);
                            if(u == null){
                                %>
            <li><a href="index2.jsp"><i class="material-icons left">redo</i>Fotógrafo</a></li>
            <li><a href="IniciarSesion.jsp"><i class="material-icons left">face</i>Iniciar Sesion</a></li>
            <li><a href="registrarUsuario.jsp"><i class="material-icons left">person</i>Registro</a></li>
            <li><a href="catalogofotografos.jsp"><i class="material-icons left">search</i>Catálogo</a></li>
            <li><a href="FAQs.html"><i class="material-icons left">help</i>Soporte</a></li>
            <%
                            }else{

                        %>
            <li><a href="Controller/CerrarSesion.jsp"><i class="material-icons left">person</i>Cerrar Sesión</a></li>
            <li><a href="perfil.jsp"><i class="material-icons left">person</i>Perfil</a></li>
            <li><a href="catalogofotografos.jsp"><i class="material-icons left">search</i>Catálogo</a></li>
            <li><a href="FAQs.html"><i class="material-icons left">help</i>Soporte</a></li>
            <%
                        }
                        %>
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
        <div class="col s1">
          <!-- Promo Content 1 goes here   a perro-->
        </div>
        <div class="col s10">
          <div class="carousel" id="demo-carousel">
            <a class="carousel-item" href="#one!"><img src="https://lorempixel.com/250/250/nature/1"></a>
            <a class="carousel-item" href="#two!"><img src="https://lorempixel.com/250/250/nature/2"></a>
            <a class="carousel-item" href="#three!"><img src="https://lorempixel.com/250/250/nature/3"></a>
            <a class="carousel-item" href="#four!"><img src="https://lorempixel.com/250/250/nature/4"></a>
            <a class="carousel-item" href="#five!"><img src="https://lorempixel.com/250/250/nature/5"></a>
          </div>
        </div>
        <div class="col s1">
         <!-- Promo Content 3 goes here -->
        </div>
      </div>
    </div> 
    <script>
      $('.carousel.carousel-slider').carousel({
          fullWidth: true,
          indicators: true
       });
       $('.moveNextCarousel').click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $('.carousel').carousel('next');
       });
       $('.movePrevCarousel').click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $('.carousel').carousel('prev');
       });
            $('.carousel').carousel();
        setInterval(function() {
          $('.carousel').carousel('next');
        }, 1500);
      </script>
    </body>
</html>
