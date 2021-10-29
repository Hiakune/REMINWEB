
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGNUP/LOGIN</title>
    <link rel="preload" href="../css/style.css" as="style">
    <link href="../css/style.css" rel="stylesheet"/>
</head>

<body>
    <header class="contenedor">
        <a href="../index.jsp" class="logo">
            <img src="../Recursos/icons/flexx.png">
        </a>

        <nav class="flex-cont">

            <a href="../index.jsp">Bienvenida</a>

            <a href="Info.jsp">Información</a>

            <a href="acces.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-login" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#000000" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                    <path d="M14 8v-2a2 2 0 0 0 -2 -2h-7a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h7a2 2 0 0 0 2 -2v-2" />
                    <path d="M20 12h-13l3 -3m0 6l-3 -3" />   
                    </svg>
                    <span>Login/SignUp</span>
            </a>
        </nav>
    </header>

    <section class="cont-login">
        <div class="login">
            <h2>INICIO DE SESIÓN</h2>
            <form class="login-form" method="post" action="/REMINWEB/InicioSesion">
                <fieldset>
                    <div class="camp">
                        <label>Usuario:</label>
                        <input type="text" required="" name="txtNombre_usuariologin">
                    </div>
    
                    <div class="camp">
                        <label>Contraseña:</label>
                        <input type="password" required="" name="txtContrasenalogin">
                    </div>
    
                    <a class="recup" href="#">No recuerdo mi contraseña</a>
                    <br><br>
                    <input class="boton boton-ingr" type="submit" value="Ingresar">
                </fieldset>
            </form>
        </div>
    
        <div class="login">
            <h2>REGISTRO DE USUARIO</h2>
            <form class="login-form" method="post" action="/REMINWEB/Guardar">
                <fieldset>

                    <div class="camp">
                        <label>Usuario</label>
                        <input type="text" required="" name="txtNombre_usuario">
                    </div>
                    
                    <div class="camp">
                        <label>Contraseña:</label>
                        <input type="password" required="" name="txtContrasena">
                    </div>
                    
                    <div class="camp">
                        <label>Nombres:</label>
                        <input type="text" required="" name="txtNombres">
                    </div>
                    
                    <div class="camp">
                        <label>Apellido paterno:</label>
                        <input type="text" required="" name="txtApellido_paterno">
                    </div>
                        
                    <div class="camp">
                        <label>Apellido materno:</label>
                        <input type="text" required="" name="txtApellido_materno">
                    </div>
        
                    <div class="camp">
                        <label>Género:</label>
                        <input type="text" required="" name="txtGenero">
                    </div>
        
                    <div class="camp">
                        <label>Email:</label>
                        <input type="text" required="" name="txtEmail">
                    </div>

                    <div class="camp">
                        <label>Celular:</label>
                        <input type="number" required="" name="txtCelular">
                    </div>
        
                    <div class="camp">
                        <label>Nacimiento:(2003/05/27)</label>
                        <input type="text" required="" name="txtFecha_nac">
                    </div>
                    
                    <input class="boton boton-reg" type="submit" value="Registrar">
                </fieldset>
            </form>
        </div>
    </section>

    <footer>
        <p>Todos los derechos reservados Company FLEX Enterprise - SENATI Assosiation</p>
    </footer>
</body>
</html>
