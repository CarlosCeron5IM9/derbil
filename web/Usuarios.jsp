
<%@page import="model.Usuario"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USUARIOS</title>

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
        <table>

            <thead>

            <th>N°</th>

            <th>Nombre</th>
            <th>Edad</th>
            <th>Asignar</th>
        </thead>

        <tbody>
            <%
                String url;
                String User;
                String Pass;
                Connection con = null;
                Statement sta = null;
                ResultSet res = null;

                url = "jdbc:mysql://localhost/Derbild";
                User = "root";
                Pass = "n0m3l0";
                
                Usuario u = (Usuario) session.getAttribute("user");
                session.setAttribute("user", u);
                
                String query1="select * from Usuario where Rol=4;"; 
                
                String IdRE= request.getParameter("IdRE");
                session.setAttribute("IdRE", IdRE); 

                try {

                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(url, User, Pass);
                    sta = con.createStatement();

                    res = sta.executeQuery(query1);

                    while (res.next()) {
                        String Id = res.getString("IdUser");
                        String Us = res.getString("NomUsuario");
                        String Ed = res.getString("Edad");
                        
            %>
            <tr>
                <th><%=Id%></th>
                <th><%=Us%></th>
                <th><%=Ed%></th>
                <th><form action="Controller/Asignar.jsp">
                        <button name="IdUS" value=<%=Id%>>Asignar</button>
                    </form></th>

                <%

                        }
                        sta.close();
                        res.close();
                        con.close();
                    } catch (Exception e) {

                    }
                %>
            </tr>
        </tbody>

    </table>
</body>
</html>