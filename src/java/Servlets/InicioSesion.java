package Servlets;

import SQL.MetodosSQL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class InicioSesion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        HttpSession sesion = request.getSession();
        MetodosSQL metodos = new MetodosSQL();
        String txtNombre_usuariologin = request.getParameter("txtNombre_usuariologin");
        String txtContrasenalogin = request.getParameter("txtContrasenalogin");
        
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
        out.println("<script type=\"text/javascript\">"); //Etiqueta de apertura del script

        boolean iniciarSesion = metodos.buscarUsuarioInicioSesion(txtNombre_usuariologin, txtContrasenalogin);
        if (iniciarSesion == true) {//El usuario puede accesar por que está registrado
            out.println("alert('¡Bienvenido\\nIniciaste sesión como "+txtNombre_usuariologin+"')");
            out.println("location = '/REMINWEB/Sevice/proveedores.jsp'");
            sesion.setAttribute("txtNombre_usuariologin", txtNombre_usuariologin);
        }else {
            out.println("alert('Datos Incorrectos, verifica tus credenciales o date de alta en el sistema')");
            out.println("location = './Bienvenida/acces.jsp'");
        }
        System.out.println("El valor de iniciaSesion dentro del SERVLET es: "+iniciarSesion);
        out.println("</script>");// Etiqueta de Cierre del script
        out.println("</body>");
        out.println("</html>");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
