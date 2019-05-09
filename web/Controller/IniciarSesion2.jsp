
<%@page import="model.Usuario"%>
<%@page import="bd.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Data d = new Data();
            String NomUsuario = request.getParameter("NomUsuario");
            String Pass = request.getParameter("Pass");
            Usuario u = d.getUsuario(NomUsuario, Pass);
            
            if(u == null){
                response.sendRedirect("../error.jsp");
            }else{
                HttpSession sesion = request.getSession();
                sesion.setAttribute("user", u);
                response.sendRedirect("../perfil.jsp");
            }
        %>
    </body>
</html>
