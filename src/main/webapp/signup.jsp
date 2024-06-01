<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta charset="utf-8">
<title>Login Form Design | CodeLab</title>
<link rel="stylesheet" href="estilo.css">
<link rel="web site icon" type="png" href="img/icon.png">
</head>
<body>
	<nav>
		<ul>
			<li><a href="index.jsp" class="logo"><img src="img/logo.png"
					alt="Logo"></a></li>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="registro.jsp">Iniciar Sesión</a></li>
			<li><a href="producto.jsp">Ver Productos</a></li>
			<li><a href="categoria.jsp">Buscar por Categoría</a></li>
		</ul>
	</nav>
	<div class='centrar'>
		<section class='menu_user'>
			<article class='centar'>
				<h1>Datos Personales</h1>
				<form action="respuesta_signup.jsp" method="post">
					<label for="nombre">Nombre:</label> <input type="text"
						name="txtnombre" required><br> <br> <label
						for="cedula">Número de Cédula:</label> <input type="text"
						name="cedula" maxlength="10" required><br> <br>
					<label for="cmbECivil">Estado Civil:</label> <select
						name="cmbECivil">
						<option value="1">Soltero</option>
						<option value="2">Casado</option>
						<option value="4">Divorciado</option>
						<option value="3">Viudo</option>
					</select><br> <br> <label for="correo">Correo Electrónico:</label>
					<input type="email" name="correo" required><br> <br>
					<label for="clave">Clave:</label> <input type="password"
						name="clave" minlength="6" required><br> <br>
					<button type="submit">Registrar usuario</button>
					<button type="reset">Limpiar</button>
				</form>
			</article>
		</section>
	</div>
	<footer>
		<div class="contact-bar">
			<ul>
				<li><a href="www.linkedin.com/in/mishelle-menéndez-a65a45310">Linkedin </a></li>
				<!-- Agrega más contactos según sea necesario -->
			</ul>
		</div>
	</footer>

</body>


</html>