
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<%@page import="javax.validation.ReportAsSingleViolation"%>
<%@page import="bd.*"%>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registrado.</title>
        <script>
            function ok(){
            alert("Usuario registrado con éxito");
            window.location="IniciarSesion.jsp";
            
        }
        </script>
    </head>
    <body>
        <%
            Data d= new Data();
            
            String Ro = request.getParameter("Rol");
            int Rol= Integer.parseInt(Ro);
            String NomUsuario = request.getParameter("NomUsuario");
            String Pass= request.getParameter("Pass");
            
            d.setUsu(Rol, NomUsuario, Pass);
            
            out.println("<script>ok();</script>");
        %>
    </body>
</html>
