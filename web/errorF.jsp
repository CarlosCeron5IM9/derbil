
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERROR</title>

    <!--  CSS de Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>

    <!-- Librería jQuery personalizada-->
    <script src="js/jquery-example.js"></script>
    
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes incluir archivos JavaScript individuales de los únicos plugins que utilices) -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Referencia a otro archivo css propio, donde se realizan las modificaciones css de los componentes y elementos -->
    <link href="css/personalizado.css" rel="stylesheet">
    <!-- Referencia a otro archivo css propio, donde se realizan las modificaciones css de la página principal -->
    <link href="css/starter-template.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="Profile.html">
                    <img src="img/Derbild.png" style="width: auto; height:90%; display: inline-block; clear: both; "> Derbild
                </a>
            </div>
        <!-- Se especifica los elementos que dispondremos en el menú superior-->
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
           <ul class="nav navbar-nav">
            <li><a href="catalogofotografos.jsp">Catálogo</a></li>
            <li><a href="soporte.jsp">Soporte</a></li>
            <li class="active"><a href="IniciarSesion.jsp">Iniciar sesión</a></li>
            <li><a href="registrarUsuario.jsp">Registrarse</a></li>
          </ul>
          </ul>
        </div>
      </div>
    </nav>
        <h1>¡ERROR!</h1>
        No existe el usuario, <a href="index2.jsp">REGRESAR</a>.
    </body>
</html>
