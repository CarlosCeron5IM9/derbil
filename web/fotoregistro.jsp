
<%@page import="model.*"%>
<%@page import="javax.validation.ReportAsSingleViolation"%>
<%@page import="bd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function ok(){
            alert("Usuario Regitrado");
            window.location="Menu2.jsp";
            
        }
        </script>
    </head>
    <body>
        <%
            Usuario u = (Usuario)session.getAttribute("user");
            session.setAttribute("user",u);
            Data d= new Data();
            
            String ApP2= request.getParameter("ApP");
            String ApM2= request.getParameter("ApM");
            String Nom2 = request.getParameter("Nom");
            String Eda2 = request.getParameter("Edad");
            int Edad2 = Integer.parseInt(Eda2);
            String Sexo2 = request.getParameter("Sexo");
            String Exp2 = request.getParameter("Exp");
            String TipoF2 = request.getParameter("TipoF");
            String Des2 = request.getParameter("Des");
            String Deleg2 = request.getParameter("Deleg");
            String Col2 = request.getParameter("Col");
            String CP1 = request.getParameter("CP");
            int CP2 = Integer.parseInt(CP1);
            String Calle2 = request.getParameter("Calle");
            String NumEI2 = request.getParameter("NumEI");
            String Correo2 = request.getParameter("Correo");
            String Te2 = request.getParameter("Tel");
            int Tel2 = Integer.parseInt(Te2);
            
            
            
            if(u != null){
            //int IdUserF2 = u.getIdUser();
            Fotografos f =d.setFotografos2(1,ApP2, ApM2, Nom2, Edad2, Sexo2, Exp2, TipoF2, Des2, Deleg2, Col2, CP2, Calle2, NumEI2, Correo2, Tel2, Costo);
            
            out.println("<script>ok();</script>");
            } 
        %>
    </body>
</html>
