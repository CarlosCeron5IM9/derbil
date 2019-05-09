
<%@page import="model.*"%>
<%@page import="javax.validation.ReportAsSingleViolation"%>
<%@page import="bd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrado.</title>
        <script>
            function ok(){
            alert("Usuario Regitrado");
            window.location="Sesion.jsp";
            
        }
        </script>
    </head>
    <body>
        <%
            
            Data d= new Data();
            
            String Foto = request.getParameter("Foto");
            String ApP= request.getParameter("ApP");
            String ApM= request.getParameter("ApM");
            String Nom = request.getParameter("Nom");
            String Eda = request.getParameter("Edad");
            int Edad = Integer.parseInt(Eda);
            String Sexo = request.getParameter("Sexo");
            String Exp = request.getParameter("Exp");
            String TipoF = request.getParameter("TipoF");
            String Des = request.getParameter("Des");
            String Deleg = request.getParameter("Deleg");
            String Col = request.getParameter("Col");
            String CP1 = request.getParameter("CP");
            int CP = Integer.parseInt(CP1);
            String Calle = request.getParameter("Calle");
            String NumEI = request.getParameter("NumEI");
            String Correo = request.getParameter("Correo");
            String Te = request.getParameter("Tel");
            int Tel = Integer.parseInt(Te);
            String Costo = request.getParameter("Costo");
            String NomUsu = request.getParameter("NomUsu");
            String Contra = request.getParameter("Contra");
            
            
            
           
            //int IdUserF2 = u.getIdUser();
            d.setFotografos(Foto, ApP, ApM, Nom, Edad, Sexo, Exp, TipoF, Des, Deleg, Col, CP, Calle, NumEI, Correo, Tel, Costo, NomUsu, Contra);
            
            out.println("<script>ok();</script>");
             
        %>
    </body>
</html>
