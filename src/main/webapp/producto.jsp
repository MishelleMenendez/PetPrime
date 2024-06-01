<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PetPrime</title>
<link rel="stylesheet" href="estilo.css">
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
	<div class='centrar'>
		<%
			Producto pro = new Producto();
			String resultado = pro.consultarTodo();
			out.print(resultado);
		%>
	</div>
	<footer>
		<div class="contact-bar">
			<ul>
				<li><a href="https://www.linkedin.com/in/mishelle-menéndez-a65a45310">Linkedin
				</a></li>
			</ul>
		</div>
	</footer>
</body>
</html>