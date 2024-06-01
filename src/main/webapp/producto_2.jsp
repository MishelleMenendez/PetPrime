<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="estilo.css">
<link rel="web site icon" type="png" href="img/icono.png">
</head>
<body>

	<nav>
		<ul>
			<li><a href="#" class="logo"><img src="img/logo.png"
					alt="Logo"></a></li>
			<li><a href="producto_2.jsp">Modificar productos</a></li>
			<li><a href='registro_producto.jsp'>Ingresar productos</a></li>
			<li><a href="cerrar_sesion.jsp">Cerrar Sesión</a></li>
		</ul>
	</nav>
	<div class='centrar'>
		<%
		Producto pro = new Producto();
		String resultado = pro.consultarTodo2();
		out.print(resultado);
		%>
	</div>
	<footer>
		<div class="contact-bar">
			<ul>
				<li><a
					href="https://www.linkedin.com/in/mishelle-menéndez-a65a45310">Linkedin
				</a></li>
			</ul>
		</div>
	</footer>
</body>
</html>