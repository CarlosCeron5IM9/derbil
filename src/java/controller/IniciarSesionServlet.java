
package controller;

import bd.Data;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;

@WebServlet(name = "IniciarSesionServlet", urlPatterns = {"/iniciarSesion"})
public class IniciarSesionServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            /*index.jsp a iniciarSesion.do*/
            /*Si el usuario esta bien, mandamos a otro.jsp (sesiones)*/
            /*si esta mal error.jsp*/
            Data d = new Data();
            String NomUsuario = request.getParameter("NomUsuario");
            String Pass = request.getParameter("Pass");
            Usuario u = d.getUsuario(NomUsuario, Pass);
            
            if(u == null){
                response.sendRedirect("error.jsp");
            }else{
                HttpSession sesion = request.getSession();
                sesion.setAttribute("user", u);
                response.sendRedirect("editar.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(IniciarSesionServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(IniciarSesionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
