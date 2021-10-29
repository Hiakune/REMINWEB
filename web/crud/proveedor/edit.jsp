
<%@page import="Modelo.Proveedor"%>
<%@page import="ModeloDAO.ProveedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                    ProveedorDAO dao = new ProveedorDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idprov"));
                    Proveedor p = (Proveedor) dao.list(id);
                %>
                <h1>Modificar Proveedor</h1>
                <form action="/REMINWEB/ProveedorController">
                    USUARIO:<br>
                    <input class="form-control" type="text" name="txtUsuario" value="<%= p.getId_usuario()%>"><br>
                    PROVEEDOR:<br>
                    <input class="form-control" type="text" name="txtNom" value="<%= p.getNombre_proveedor()%>"><br>
                    <input class="form-control" type="text" name="txtId" value="<%= p.getId_proveedor()%>">
                    <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"><br>
                    <a href="/REMINWEB/ProveedorController?accion=listar">Regresar</a>
                </form>
            </div>
        </div>
    </body>
</html>
