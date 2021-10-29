<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Proveedor"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProveedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/style_prov.css" rel="stylesheet"/>
        <link href="../css/style_prov.css" rel="stylesheet"/>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <title>Proveedores</title>
        <%
            response.setHeader("Cache-Control", "no-Cache, no-store, must-revalidate");

            if (session.getAttribute("txtNombre_usuariologin") == null) {
                response.sendRedirect("/REMINWEB/index.jsp");
            }
        %>
    </head>
    <body>
        <header class="contenedor">
            <div>
                <img src="https://raw.githubusercontent.com/Hiakune/Recursos/main/icons/flexx.png">
            </div>

            <nav class="flex-cont">
                <p>${txtNombre_usuariologin}</p>
                <a href="/REMINWEB/ProveedorController?accion=listar">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-building" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#6f32be" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                    <line x1="3" y1="21" x2="21" y2="21" />
                    <line x1="9" y1="8" x2="10" y2="8" />
                    <line x1="9" y1="12" x2="10" y2="12" />
                    <line x1="9" y1="16" x2="10" y2="16" />
                    <line x1="14" y1="8" x2="15" y2="8" />
                    <line x1="14" y1="12" x2="15" y2="12" />
                    <line x1="14" y1="16" x2="15" y2="16" />
                    <path d="M5 21v-16a2 2 0 0 1 2 -2h10a2 2 0 0 1 2 2v16" />
                    </svg>
                </a>
                <a href="./medios_pago.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-credit-card" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#6f32be" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                    <rect x="3" y="5" width="18" height="14" rx="3" />
                    <line x1="3" y1="10" x2="21" y2="10" />
                    <line x1="7" y1="15" x2="7.01" y2="15" />
                    <line x1="11" y1="15" x2="13" y2="15" />
                    </svg>
                </a>
                <a href="./reportes.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-report-money" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#6f32be" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                    <path d="M9 5h-2a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-12a2 2 0 0 0 -2 -2h-2" />
                    <rect x="9" y="3" width="6" height="4" rx="2" />
                    <path d="M14 11h-2.5a1.5 1.5 0 0 0 0 3h1a1.5 1.5 0 0 1 0 3h-2.5" />
                    <path d="M12 17v1m0 -8v1" />
                    </svg>
                </a>
                <a href="./ayuda.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-help" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#6f32be" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                    <circle cx="12" cy="12" r="9" />
                    <line x1="12" y1="17" x2="12" y2="17.01" />
                    <path d="M12 13.5a1.5 1.5 0 0 1 1 -1.5a2.6 2.6 0 1 0 -3 -4" />
                    </svg>
                </a>
                <a href="./config.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-settings" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#6f32be" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                    <path d="M10.325 4.317c.426 -1.756 2.924 -1.756 3.35 0a1.724 1.724 0 0 0 2.573 1.066c1.543 -.94 3.31 .826 2.37 2.37a1.724 1.724 0 0 0 1.065 2.572c1.756 .426 1.756 2.924 0 3.35a1.724 1.724 0 0 0 -1.066 2.573c.94 1.543 -.826 3.31 -2.37 2.37a1.724 1.724 0 0 0 -2.572 1.065c-.426 1.756 -2.924 1.756 -3.35 0a1.724 1.724 0 0 0 -2.573 -1.066c-1.543 .94 -3.31 -.826 -2.37 -2.37a1.724 1.724 0 0 0 -1.065 -2.572c-1.756 -.426 -1.756 -2.924 0 -3.35a1.724 1.724 0 0 0 1.066 -2.573c-.94 -1.543 .826 -3.31 2.37 -2.37c1 .608 2.296 .07 2.572 -1.065z" />
                    <circle cx="12" cy="12" r="3" />
                    </svg>
                </a>
                <a href="./suscripciones.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-zoom-money" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#6f32be" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                    <circle cx="10" cy="10" r="7" />
                    <path d="M21 21l-6 -6" />
                    <path d="M12 7h-2.5a1.5 1.5 0 0 0 0 3h1a1.5 1.5 0 0 1 0 3h-2.5" />
                    <path d="M10 13v1m0 -8v1" />
                    </svg>
                </a>
                <a type="submit" href="#">
                    <form action="/REMINWEB/CerrarSesion">
                        <button type="submit">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-logout" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#6f32be" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                            <path d="M14 8v-2a2 2 0 0 0 -2 -2h-7a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h7a2 2 0 0 0 2 -2v-2" />
                            <path d="M7 12h14l-3 -3m0 6l3 -3" />
                            </svg>
                        </button>
                    </form>
                </a>
            </nav>
        </header>

        <section>
            <h1>Mis proveedores</h1>

            <div class="proveedores">
                <a href="/REMINWEB/ProveedorController?accion=add">
                    <div class="agreg-prov">
                        <div>
                            <img src="../Recursos/icons/add-icon.png">
                        </div>
                        <div>
                            <p>Nuevo proveedor</p>
                        </div>
                    </div>
                </a>
<!--

                <div class="prov-exampl1">
                    <div>
                        <img src="../Recursos/Img/netflix.png">
                    </div>
                    <div class="nom">
                        <p class="dato">Nombre:</p>
                        <p class="dato-info">Netflix</p>
                    </div>
                    <div class="cant-serv">
                        <p class="dato">Cantidad de Servicios:</p>
                        <p class="dato-info">2</p>
                    </div>
                    <div class="del">
                        <img src="../Recursos/icons/remove.png">
                    </div>
                </div>

                <div class="prov-exampl2">
                    <div>
                        <img src="../Recursos/Img/Agua.png">
                    </div>
                    <div class="nom">
                        <p class="dato">Nombre:</p>
                        <p class="dato-info">Servicio de Agua</p>
                    </div>
                    <div class="cant-serv">
                        <p class="dato">Cantidad de Servicios:</p>
                        <p class="dato-info">1</p>
                    </div>
                    <div class="del">
                        <img src="../Recursos/icons/remove.png">
                    </div>
                </div>-->
            </div>
            <div class="container">
                <br>
                <br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">ID</th>
                            <th class="text-center">USUARIO</th>
                            <th class="text-center">PROVEEDOR</th>
                            <th class="text-center">ACCIONES</th>
                        </tr>
                    </thead>
                    <%
                        ProveedorDAO dao = new ProveedorDAO();
                        List<Proveedor>list = dao.listar();
                        Iterator<Proveedor>iter = list.iterator();
                        Proveedor prov = null;
                        while (iter.hasNext()) {
                            prov = iter.next();

                    %>
                    <tbody class="text-center">
                        <tr>
                            <td><%= prov.getId_proveedor()%></td>
                            <td><%= prov.getId_usuario()%></td>
                            <td><%= prov.getNombre_proveedor()%></td>
                            <td>
                                <a class="btn btn-warning" href="/REMINWEB/ProveedorController?accion=editar&id=<%= prov.getId_proveedor()%>">Editar</a>
                                <a class="btn btn-danger" href="/REMINWEB/ProveedorController?accion=eliminar&id=<%= prov.getId_proveedor()%>">Remove</a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>

            </div>
        </section>

        <footer>
            <p>Todos los derechos reservados Company FLEX Enterprise - SENATI Assosiation</p>
        </footer>
    </body>
</html>