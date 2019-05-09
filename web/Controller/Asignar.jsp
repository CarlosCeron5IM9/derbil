
<%@page import="bd.Data"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asignar</title>
        <script>
        function ok(){
            alert("Reporte Asignado");
            window.location="../Menu2.jsp";
            
        }
        </script>
    </head>
    <body>
        <%
            Usuario u = (Usuario) session.getAttribute("user");
            session.setAttribute("user", u);
            
            String IdE= (String) session.getAttribute("IdRE");
            String IdU=request.getParameter("IdUS");
            
            int IdUs= Integer.parseInt(IdU);
            int IdEve= Integer.parseInt(IdE);
            
            Data d= new Data();
            d.Asignar(IdUs, IdEve);
            d.CambiarEstado(IdEve, "Asignado");
            out.println("<script>ok();</script>");
            
        %>
    </body>
</html>
