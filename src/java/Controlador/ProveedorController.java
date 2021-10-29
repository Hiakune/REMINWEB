package Controlador;

import Modelo.Proveedor;
import ModeloDAO.ProveedorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProveedorController extends HttpServlet {

    String listar = "Sevice/proveedores.jsp";
    String add = "crud/proveedor/add.jsp";
    String edit = "crud/proveedor/edit.jsp";
    Proveedor p = new Proveedor();
    ProveedorDAO dao = new ProveedorDAO();
    int id;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProveedorController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProveedorController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {
            String usuario = request.getParameter("txtUsuario");
            String nom = request.getParameter("txtNom");
            p.setId_usuario(usuario);
            p.setNombre_proveedor(nom);
            dao.add(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idprov", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            id = Integer.parseInt(request.getParameter("txtId"));
            String usuario = request.getParameter("txtUsuario");
            String nom = request.getParameter("txtNom");
            p.setId_proveedor(id);
            p.setId_usuario(usuario);
            p.setNombre_proveedor(nom);
            dao.edit(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            id = Integer.parseInt(request.getParameter("id"));
            p.setId_proveedor(id);
            dao.eliminar(id);
            acceso = listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
