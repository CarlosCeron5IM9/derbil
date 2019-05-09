
<%@page import="model.*"%>
<%@page import="bd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOTÓGRAFOS ENCONTRADOS</title>
        
    </head>
    <body>
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
                    <h1 class="page-header">Catálogo de fotógrafos</h1>
                </div>
            </div>

        <%
        String Sexo = request.getParameter("Sexo");
        Data d= new Data();
        Fotografos f = d.getFotografoSexo(Sexo);
        
        f.getSexo();
        String ApP = f.getApP();
        String ApM = f.getApM();
        String Nom = f.getNom();
        int Edad = f.getEdad();
        String Col = f.getCol();
        int CP = f.getCP();
        String Calle = f.getCalle();
        String NumEI = f.getNumEI();
        String Correo = f.getCorreo();
        int Tel = f.getTel();
        
        if(f == null){
            response.sendRedirect("../error.jsp");
        }
        %>
        <!-- Fin Encabezado de página / Breadcrumb -->
            <div class="row">
                <!-- Parte central -->
                <div class="col-md-9">
                    <div class="col-md-12" style="border-width: 1px 1px 1px 1px; border-style: solid; border-color: lightgrey;">
                        <h3 style="text-align: center">Fotógrafos encontrados</h3>
                    </div>
                    <!-- Inicio del div central parte de formulario información básica -->
                    <div class="col-md-12" style="border-width: 1px 1px 1px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <br>
                                    <table width="100%" border="3" align="center">
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Edad</th>
                                            <th>Ubicación</th>
                                            <th>Contacto</th>
                                        </tr>
                                        <td><%=Nom%> <%=ApP%> <%=ApM%></td>
                                        <td><%=Edad%></td>
                                        <td>Col. <%=Col%>, CP <%=CP%>, calle <%=Calle%>, No. <%=NumEI%></td>
                                        <td><%=Correo%> <br> +52 55 <%=Tel%></td>
                                    </table>
                                    <br>
                                    <input class="btn btn-danger" type="button" onclick="location.href='catalogoSexo.jsp'" value="Regresar"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
