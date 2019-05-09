<%@page import="model.Fotografos"%>
<%@page import="bd.*"%>
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
            String NomUsu = request.getParameter("NomUsu");
            String Contra = request.getParameter("Contra");
            Fotografos f = d.getFotografos(NomUsu, Contra);
            
            if(f == null){
                response.sendRedirect("../error.jsp");
            }else{
                HttpSession sesion = request.getSession();
                sesion.setAttribute("user", f);
                
                    response.sendRedirect("../index2.jsp");
                
            }
        %>
    </body>
</html>
