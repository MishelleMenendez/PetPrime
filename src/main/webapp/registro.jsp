<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PetPrime</title>
<link rel="stylesheet" href="registro.css">
</head>
<link rel="web site icon" type="png" href="img/icono.png">
<body>
	<nav>
		<ul>
			<li><a href="index.jsp" class="logo"><img src="img/logo.png" alt="Logo"></a></li>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="registro.jsp">Iniciar Sesión</a></li>
			<li><a href="producto.jsp">Ver Productos</a></li>
			<li><a href="categoria.jsp">Buscar por Categoría</a></li>
		</ul>
	</nav>
	<main>
      <div class="wrapper">
         <div class="title">
            Login Form
         </div>
         <form action='respuesta_login.jsp' method ='post'>
            <div class="field">
               <input name="usuario" required>
               <label>Email Address</label>
            </div>
            <div class="field">
               <input name="clave" required type="password">
               <label>Password</label>
            </div>
            <div class="content">
               <div class="checkbox">
                  <input type="checkbox" id="remember-me">
                  <label for="remember-me">Remember me</label>
               </div>
               <div class="pass-link">
                  <a href="#">Forgot password?</a>
               </div>
            </div>
            <div class="field">
               <input type="submit" value="Login">
            </div>
            <div class="signup-link">
               Not a member? <a href="signup.jsp">Sign up now</a>
            </div>
         </form>
      </div>
      </main>
      <footer>
		<div class="contact-bar">
			<ul>
				<li><a
					href="https://www.linkedin.com/in/mishelle-menéndez-a65a45310"><i
						class='bx bxl-linkedin -circle'></i></a></li>
						
			</ul>
		</div>
	</footer>
   </body>
</html>