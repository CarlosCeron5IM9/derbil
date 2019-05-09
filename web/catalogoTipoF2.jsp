
<%@page import="model.*"%>
<%@page import="bd.*"%>
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
      <title>Fotógrafos encontrados.</title>
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
          <%
        String TipoF = request.getParameter("TipoF");
        Data d= new Data();
        Fotografos f = d.getFotografoTipoF(TipoF);
        
        f.getTipoF();
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
                                    <input class="btn btn-danger" type="button" onclick="location.href='catalogoTipoF.jsp'" value="Regresar"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
