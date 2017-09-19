<%-- 
    Document   : login
    Created on : 6/09/2017, 01:28:52 PM
    Author     : jmendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesh" href="/favicon.png">
     
    <link rel="stylesheet" type="text/css" href="css/estilos.css" media="screen" />

   
	<title>ENCUESTA LIDERES</title>
</head>
<body>

          <div class="modal-dialog">
                <div class="loginmodal-container">
                    <h1>ENCUESTA LIDERES</h1><br>
                  <form name="login"  method="post" action="validaSesion.jsp" accept-charset="utf-8">
                    <input type="text" name="email" placeholder="Email">
                    <input type="password" name="password" placeholder="Contraseña">
                    <input type="submit" class="login loginmodal-submit" value="Entrar">
                  </form>
                    
                  <div class="login-help">
                    <a href="#">Registrarse</a> - <a href="#">Recupera tu contraseña</a>
                  </div>
                </div>
            </div>
          </div>     
    
</body>
</html>

