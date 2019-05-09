
<%@page import="model.*"%>
<%@page import="javax.validation.ReportAsSingleViolation"%>
<%@page import="bd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Reporte</title>
        <script>
            function ok(){
            alert("Reporte Regitrado");
            window.location="../Menu2.jsp";
            
        }
        </script>
    </head>
    <body>
        <%
            Usuario u = (Usuario)session.getAttribute("user");
            session.setAttribute("user",u);
            Data d= new Data();
            
            String Fe= request.getParameter("FechaRE");
            String Des= request.getParameter("DescRE");
            
            if(u==null){
                //response.sendRedirect("../index.jsp");
                out.println(f.getNom());
            }
            else{
                int IdUs= u.getIdUser();
                ReporteEventos Re =d.setReporteEventos(IdUs, Fe, Des);
                if(u.getRol() == 4){
                    int IdEve=Re.getIdRE();
                    d.Asignar(IdUs, IdEve); 
                    d.CambiarEstado(IdEve, "Asignado");
                }
                out.println("<script>ok();</script>");
            }
            
        %>
    </body>
</html>
