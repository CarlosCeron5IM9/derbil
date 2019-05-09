
<%@page import="model.ReporteEventos"%>
<%@page import="javax.validation.ReportAsSingleViolation"%>
<%@page import="bd.Data"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Reporte</title>
        <script>
            function ok(){
            alert("Reporte Solucionado");
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
            String Sol= request.getParameter("SolRE");
            
            String IdE= (String)session.getAttribute("IdRE");
            int IdEve= Integer.parseInt(IdE);
            //out.print(IdE);
            
            if(u==null){
                //response.sendRedirect("../index.jsp");
                out.println(u.getNom());
            }
            else{
                int IdUs= u.getIdUser();
                    d.ModEvento(Fe, Des, Sol, IdEve);
                    d.CambiarEstado(IdEve, "Solucionado");
                
                out.println("<script>ok();</script>");
            }
            
        %>
    </body>
</html>
