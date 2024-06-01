<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.seguridad.*"
	session="true"%>
<%@ page import="com.productos.negocio.*"%>

<!DOCTYPE html>
<%
String categoriaSeleccionada = request.getParameter("cmbCategoria");
int idCategoria = (categoriaSeleccionada != null && !categoriaSeleccionada.isEmpty())
		? Integer.parseInt(categoriaSeleccionada)
		: 0;

Categoria c = new Categoria();
String nombreCategoria = c.obtenerNombreCategoria(idCategoria);
Producto p = new Producto();
String resultadoCategoria = p.buscarProductoCategoria(idCategoria);
%>
<%
int perfil = 0;
String usuario = "";
HttpSession sesion = request.getSession();
if (sesion.getAttribute("usuario") == null || (Integer) sesion.getAttribute("perfil") != 2) //Se verifica si existe la variable
{
%>
<jsp:forward page="registro.jsp">
	<jsp:param name="error" value="Debe registrarse en el sistema." />
</jsp:forward>
<%
} else {
usuario = (String) sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
perfil = (Integer) sesion.getAttribute("perfil");
}
%>
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
			<li><a href="registro_producto.jsp">Insertar productos</a></li>
			<li><a href="producto_2.jsp">Modificar productos</a></li>
			<li><a href="cerrar_sesion.jsp">Cerrar Sesión</a></li>

		</ul>
	</nav>
	<div class ="centrar">
	<section class='menu_user'>
		<h1>Registro Producto</h1>
		<form action="validar_registro.jsp" method="post">
			<label for="ID">ID:</label> <input type="text" name="id" required><br>
			<br> <label for="cmbCategoria">Categoria:</label>
			<%
			String opcCategoria = c.mostrarCategoria();
			out.println(opcCategoria);
			%><br>
			<br> <label for="nombre">Nombre:</label> <input type="text"
				name="nombre" required><br> <br> <label
				for="cantidad">Cantidad:</label> <input type="text" name="cantidad"
				required><br> <br> <label for="precio">Precio:</label>
			<input type="text" name="precio" required><br> <br>
			<button type="submit">Añadir producto</button>
			<button type="reset">Limpiar</button>
		</form>
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