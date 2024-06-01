<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<%@ page import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="estilo.css">
<link rel="web site icon" type="png" href="img/icon.png">
</head>
<body>
	<nav>
		<ul>
			<li><a href="index.jsp" class="logo"><img src="img/logo.png"
					alt="Logo"></a></li>
			<li><a href="menu.jsp">Home</a></li>
			<li><a href="registro_producto.jsp">Insertar productos</a></li>
			<li><a href="producto_2.jsp">Modificar productos</a></li>

		</ul>
	</nav>
	<div class="centrar">
	<section class='menu_user'>
		<%
			int id = Integer.parseInt(request.getParameter("id"));
			int categoria = Integer.parseInt(request.getParameter("cmbCategoria"));
			String nombre = request.getParameter("nombre");
			int cantidad = Integer.parseInt(request.getParameter("cantidad"));
			float precio = Integer.parseInt(request.getParameter("precio"));
			String cat = "";
			// Verificar si el parámetro no es null antes de intentar convertirlo
			String id_proParam = request.getParameter("id");
			if (id_proParam != null && !id_proParam.isEmpty()) {
				id = Integer.parseInt(id_proParam);
			}

			Producto p = new Producto(id, nombre, precio, cantidad, categoria);
			Categoria c = new Categoria();
			String resultado = p.ingresarProducto(id, categoria, nombre, cantidad, precio);
			cat = c.obtenerNombreCategoria(categoria);
			%>
		<p>
			El producto
			<%=nombre%></p>
		<p>
			con la categoria
			<%=cat%></p>
		<p>
			con un stock de
			<%=cantidad%></p>
		<p>
			de precio
			<%=precio%>$
		</p>

		<p>
			El producto
			<%=resultado%></p>
	</section>
	</div>
	<footer>
		<div class="contact-bar">
			<ul>
				<li><a href="www.linkedin.com/in/mishelle-menéndez-a65a45310">Linkedin
				</a></li>
			</ul>
		</div>
	</footer>
</body>
</html>