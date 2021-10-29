<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Información</title>
    <link rel="preload" href="../css/style.css" as="style">
    <link href="../css/style.css" rel="stylesheet"/>
</head>

<body>

    <header class="contenedor">
        <a href="../index.jsp" class="logo">
            <img src="../Recursos/icons/flexx.png" alt=""/>
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

    <section class="contenedor">
        <div>
            <h1>Flex nos permite...</h1>
        </div>

        <div class="info">
            <div class="img-cont">
                <img src="../Recursos/Img/example.png">
            </div>
            <div class="contenido">
                <ul>
                    <li>Controlar nuestros gastos financieros gracias al sistema de notificaciones</li>
                    <li>Organizar nuestros suscripciones a los proveedores de servicios más conocidos del mercado</li>
                    <li>Gracias al sistema de reportes mediante gráficos se tendrá una visualización cómoda sobre los gastos mensuales</li>
                </ul>
            </div>
        </div>
    </section>
    
    

    <footer>
        <p>Todos los derechos reservados Company FLEX Enterprise - SENATI Assosiation</p>
    </footer>
</body>
</html>
