<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.seguridad.*"
	session="true" import="com.productos.negocio.*" import="java.util.List"
	import="java.util.*"%>
<%
int perfil = 0;
String usuario = "";
HttpSession sesion = request.getSession();
if (sesion.getAttribute("usuario") == null || (Integer) sesion.getAttribute("perfil") != 3) //Se verifica si existe la variable
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
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="estilo.css">
<link rel="web site icon" type="png" href="img/icono.png">
<title>Insert title here</title>
</head>
<body>

	<nav>
		<ul>
			<li><a href="#" class="logo"><img src="img/logo.png"
					alt="Logo"></a></li>
			<li><a href='carro.jsp'>Carro de Compras</a></li>
			<li><a href='cerrar_sesion.jsp'>Cerrar Sesión</a></li>
		</ul>
	</nav>

	<main>
		<h2>Tu Carrito de compras</h2>
		<h3>Listado de Productos</h3>
		<form name="listadoProductos" action="carro.jsp" class='formulario'>
			<%
			Producto producto = new Producto();
			String tabla = producto.consultarProductos();
			out.print(tabla);
			%>
			<p class='enviar_carro'>
				<input type="submit" name="button" id="button" value="Enviar" />
			</p>
		</form>
		<a href="index.jsp" class="logo"><img src="img/carrito.png"
			alt="Logo"></a>
			<ul>
		<%
		List <String> listaElementos = (List<String>) session.getAttribute("carrito");
		String nompr = "";
		int e = 0;
		Double pr = 0.0;
		Producto p = new Producto();
		if (listaElementos == null) {
			listaElementos = new ArrayList<String>();
			session.setAttribute("carrito", listaElementos);
		}
		String[] elementos = request.getParameterValues("productos");
		int i = 0;
		if (elementos != null) {
			while (i < elementos.length) {
				listaElementos.add(elementos[i]);
				i++;
			}
		}
		for (String tmp : listaElementos) {
			e = Integer.parseInt(tmp);
			nompr = p.consultarNombrePrecio(e);
			pr += p.consultarPrecio(e);
			out.println("<li>" + nompr + "</li>");
		}
		%>
		</ul>
		<p>Precio total: <%=pr%></p>
	</main>
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