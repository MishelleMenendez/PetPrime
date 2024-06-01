<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<%
String res = request.getParameter("cmbCategoria");
int cat = Integer.valueOf(res);
Producto pro = new Producto();
String tabla = pro.buscarProductoCategoria(cat);
Categoria c = new Categoria();
String nombreCategoria = c.obtenerNombreCategoria(cat);
%>
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
			<li><a href="index.jsp" class="logo"><img src="img/logo.png"
					alt="Logo"></a></li>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="registro.jsp">Iniciar Sesión</a></li>
			<li><a href="producto.jsp">Ver Productos</a></li>
			<li><a href="categoria.jsp">Buscar por Categoría</a></li>
		</ul>
	</nav>
<body>

	<h2 class="titulo">Seleccionar Categoría</h2>
	<div class="centrarArriba">
		<form action="respuesta_categoria.jsp" method="post">
			<label for="categoria">Categoría:</label>
			<%
			String mostrar = c.mostrarCategoria();
			out.println(mostrar);
			%>
			<input type="submit" value="Enviar">
		</form>
	</div>
	<div class="centro">
		<p>
			Nombre de la Categoría:
			<%=nombreCategoria%></p>
	</div>
	<div class="centrarArriba">
		<%=tabla%>
	</div>
	<footer>
		<div class="contact-bar">
			<ul>
				<li><a href="www.linkedin.com/in/mishelle-menéndez-a65a45310">Linkedin
				</a></li>
				<!-- Agrega más contactos según sea necesario -->
			</ul>
		</div>
	</footer>
</body>
</html>
