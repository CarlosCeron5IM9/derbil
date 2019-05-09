
<%@page import="bd.*"%>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Menú principal</h1>
        <%
        Data d = new Data();
        Usuario u = (Usuario)session.getAttribute("user");
        session.setAttribute("user",u);
        
        if (u == null) {
                response.sendRedirect("error.jsp");
        }else{
           
       out.println("Bienvenido " + u.getNom() ) ;
        
        out.println("IdUser: "+u.getIdUser());
        out.println("<br/>");
        out.println("Nom: "+u.getNom());
        out.println("<br/>");
        
        Rol r = d.getRol(u.getRol());
        
        out.println("Rol: "+r.getDescRol());
        out.println("<br/>");
        out.println("<br/>");
        
        switch(r.getIdRol()){
            case 1:{
                out.println("Opcion cliente");
                break;
            }
            case 2:{
                out.println("Opcion operador");
                response.sendRedirect("registroRE.jsp");
                break;
            }
            case 3:{
                out.println("Opcion gerente de soporte");
                response.sendRedirect(".jsp");
                break;
            }
            case 4:{
                out.println("Opcion ingeniero de soporte");
                response.sendRedirect(".jsp");
                break;
            }
        }        
        }
        
        %>
        
        <hr/>
        <a href="cerrarSesion">Cerrar sesión</a>
    </body>
</html>
