<%-- 
    Document   : add
    Created on : 30/09/2021, 10:09:18 PM
    Author     : HOBBS
--%>

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
            <div class="col-lg-5">
                <h1>Agregar Proveedor</h1>
                <form action="/REMINWEB/ProveedorController">
                    USUARIO:<br>
                    <input class="form-control" type="text" name="txtUsuario"><br>
                    PROVEEDOR:<br>
                    <input class="form-control" type="text" name="txtNom"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><br>
<!--                    <a href="../../Sevice/proveedores.jsp">Regresar</a>-->
                    <a href="/REMINWEB/ProveedorController?accion=listar">Regresar</a>
                </form>
            </div>
        </div>
    </body>
</html>
