<%-- 
    Document   : login
    Created on : 11-abr-2023, 9:37:23
    Author     : Tecsup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Estilos de Bootstrap -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-5">
            <form name="form" action="/WebJava04/ServletVerifica" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">Usuario</label>
                    <input type="text" name="xnom" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese su usuario">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name="xcla" class="form-control" id="exampleInputPassword1" placeholder="Ingrese su contraseña">
                </div>
                <button type="submit" class="btn btn-primary">Ingresar</button>
                <a class='btn btn-danger' href="index.html">Cancelar</a>
            </form>
        </div>
        <!-- Scripts de Bootstrap -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>

