
<%@page import="model.ReporteEventos"%>
<%@page import="bd.Data"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EDITAR RE</title>

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
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>""
          <a class="navbar-brand" href="Profile.html"><img src="img/Derbild.png" style="width: auto; height:90%; display: inline-block; clear: both; "> Derbild</a>
        </div>
        <!-- Se especifica los elementos que dispondremos en el menú superior-->
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="Profile.html">Perfil</a></li>
            <li><a href="Galeria.html">Galeria Privada</a></li>
            <li><a href="catalogofotografos.jsp">Catalogo</a></li>
            <li class="active"><a href="index.jsp">Reporte de eventos</a></li>
          </ul>
        </div>
      </div>
    </nav>
        <%
            Usuario u = (Usuario)session.getAttribute("user");
            session.setAttribute("user",u);
            
                String IdE= request.getParameter("IdRE");
                int IdRE= Integer.parseInt(IdE);
                session.setAttribute("IdRE",IdE);
                Data d= new Data();
                ReporteEventos re= d.getReporteEventos(IdRE);
                
                re.getIUser();
                String Fe= re.getFechaRE();
                String De=re.getDescRE();
                String St=re.getStatusRE();
                String Re=re.getRespE();
        %>
        <h1>Reporte de Eventos</h1>
        <form action="Controller/ModificarRepo.jsp" method="post">
            <!--Cliente:<br>
            ID - 1<br>
            Nombre - Carlos Ceron<br>
            Problema - No puede visualizar su información personal<br><br><br>-->
            <h2>Levantar Reporte</h2>
            Fecha del registro de evento: 
            <input type="date" value=<%=Fe%> name="FechaRE" placeholder="DD/MM/AA"/>
            <br><br>
            Descripción del reporte de evento:<br>
            <textarea name="DescRE" value=<%=De%> placeholder="Descripción" style="height: 250px"></textarea>
            <br><br>
            Solución del reporte de evento:<br>
            <textarea name="SolRE"  placeholder="Descripción" style="height: 250px"></textarea>
            <br><br>
            <input type="submit" name="btnRE" value="Registrar Reporte"/>
        </form>
        <a href="cerrarSesion">Cerrar sesión</a>
    </body>
</html>
