
<%@page import="model.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CATÁLOGO DELEGACIÓN</title>
        <!--  CSS de Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
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
                        <img src="img/Derbild.png" style="width: auto; height:90%; display: inline-block; clear: both; "> Derbild</a>
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
                        <li class="active"><a href="catalogofotografos.jsp">Catálogo</a></li>
                        <li><a href="soporte.jsp">Soporte</a></li>
                        <li><a href="Controller/CerrarSesion.jsp">Cerrar sesión</a></li>
                        <%
                        }
                        %>
                        
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
        <!-- Encabezado de página / Breadcrumb -->
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header" >Catálogo de fotógrafos</h1>
                </div>
            </div>
            <!-- Fin Encabezado de página / Breadcrumb -->
            <div class="row">
                <!-- Parte central -->
                <div class="col-md-9">
                    <div class="col-md-12" style="border-width: 1px 1px 1px 1px; border-style: solid; border-color: lightgrey;">
                        <h3 style="text-align: center">Buscar fotógrafos</h3>
                    </div>
                    <!-- Inicio del div central parte de formulario información básica -->
                    <div class="col-md-12" style="border-width: 1px 1px 1px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <br>
                                    <form id="form" name="form" action="catalogoDeleg2.jsp" method="post">
                                        <label>
                                        Delegación
                                        </label>
                                        <br><br>
                                        <select id="Delegación" name="Deleg">
                                            <option value="" selected disabled hidden>- Seleccione la delegación -</option>
                                            <option value="a">Álvaro Obregón</option>
                                            <option value="b">Azcapotzalco</option>
                                            <option value="c">Benito Juárez</option>
                                            <option value="d">Coyoacán</option>
                                            <option value="e">Cuajimalpa de Morelos</option>
                                            <option value="f">Cuauhtémoc</option>
                                            <option value="g">Gustavo A. Madero</option>
                                            <option value="h">Iztacalco</option>
                                            <option value="i">Iztapalapa</option>
                                            <option value="j">Magdalena Contreras</option>
                                            <option value="k">Miguel Hidalgo</option>
                                            <option value="l">Milpa Alta</option>
                                            <option value="m">Tláhuac</option>
                                            <option value="n">Tlalpan</option>
                                            <option value="o">Venustiano Carranza</option>
                                            <option value="p">Xochimilco</option>
                                        </select>
                                        <br><br>
                                        <input class="btn btn-info" type="submit" name="catalogoDeleg" id="catalogoDeleg" value="Buscar">
                                        <input class="btn btn-danger" type="button" onclick="location.href='catalogofotografos.jsp'" value="Regresar"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>