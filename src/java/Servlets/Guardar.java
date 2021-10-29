package Servlets;

import SQL.MetodosSQL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Guardar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        MetodosSQL metodos = new MetodosSQL();

        String txtNombre_usuario = request.getParameter("txtNombre_usuario");
        String txtContrasena = request.getParameter("txtContrasena");
        String txtNombres = request.getParameter("txtNombres");
        String txtApellido_paterno = request.getParameter("txtApellido_paterno");
        String txtApellido_materno = request.getParameter("txtApellido_materno");
        String txtGenero = request.getParameter("txtGenero");
        String txtEmail = request.getParameter("txtEmail");
        String txtCelular = request.getParameter("txtCelular");
        String txtFecha_nac = request.getParameter("txtFecha_nac");

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
        out.println("<script type=\"text/javascript\">"); // Etiqueta de abre del script

        boolean registro = metodos.registrarUsuario(txtNombre_usuario, txtContrasena, txtNombres, txtApellido_paterno, txtApellido_materno, txtGenero, txtEmail, txtCelular, txtFecha_nac);

        if (registro == true) {//El usuario se ha registrado
            out.println("alert('El usuario se ha registrado con éxito :) ')");
            out.println("location='./Bienvenida/acces.jsp'");
        } else {
            out.println("alert('ERROR el usuario no se ha podido registrar :( ')");
            out.println("location='./Bienvenida/acces.jsp'");

        }

        System.out.println("El valor de registro en SERVLET es: " + registro);
        out.println("</script>");  // Etiqueta de cierre del script
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
