
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REPORTE DE EVENTOS</title>

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
                        <%
                            Usuario u = (Usuario)session.getAttribute("user");
                            session.setAttribute("user",u);
                            if(u == null){
                        %>
                        <li class="active"><a href="catalogofotografos.jsp">Catálogo</a></li>
                        <li><a href="soporte.jsp">Soporte</a></li>
                        <li><a href="IniciarSesion.jsp">Iniciar sesión</a></li>
                        <li><a href="registrarUsuario.jsp">Registrarse</a></li>
                        <%
                            }else{
                        %>
                        <li><a href="Profile.html">Perfil</a></li>
                        <li><a href="galeria.jsp">Galeria Privada</a></li>
                        <li><a href="catalogofotografos.jsp">Catálogo</a></li>
                        <li><a href="soporte.jsp">Soporte</a></li>
                        <li><a href="Controller/CerrarSesion.jsp">Cerrar sesión</a></li>
                        <%
                        }
                        %>
                        
                    </ul>
        </div>
      </div>
    </nav>
        <%
            String NomUsuario= u.getNomUsuario();
        %>
        <h1>Bienvenido <%=NomUsuario%></h1>
        <%
            if(u.getRol() ==3 ){
        %>
        <a href="registroRE.jsp">Generar Reporte</a><br>
        <a href="consultarRE.jsp">Ver Reportes</a><br>
       
        <%
        }else
        if(u.getRol() == 4 || u.getRol() == 5){
        %>
        <a href="registroRE.jsp">Generar Reporte</a><br>
        <a href="consultarRE.jsp">Ver Reportes</a><br>
        <a href="eliminarRE.jsp">Cerrar Reporte</a><br>
       
        <%}
        else
        if(u.getRol() == 1){
        %>
        <a href="consultarRE.jsp">Ver Reportes</a><br>
        
        <%}
        else
        if(u.getRol() == 2){
        %>
        <a href="registrarFotografo.jsp">Edite su información</a><br>
        <a href="consultarRE.jsp">Ver Reportes</a><br>
        
        <%}
        %>
    </body>
</html>
