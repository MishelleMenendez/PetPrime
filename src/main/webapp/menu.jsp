<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.seguridad.*"
	session="true"%>
<!DOCTYPE html>
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
<link rel="web site icon" type="png" href="img/icono.png">
</head>
<body>
	<nav>
		<ul>
			<li><a href="#" class="logo"><img src="img/logo.png"
					alt="Logo"></a></li>
			<li><a href="registro_producto.jsp">Insertar productos</a></li>
			<li><a href="producto_2.jsp">Modificar productos</a></li>
			<li><a href="cerrar_sesion.jsp">Cerrar Sesión</a></li>
		</ul>
	</nav>
	<div class='centrar'>
		<section class='menu_user'>
			<h1>Menú de Vendedor</h1>
			<h1>
				Bienvenido/a
				<%=usuario%>
			</h1>
			<%
			Pagina pag = new Pagina();
			String menu = pag.mostrarMenu(perfil);
			out.print(menu);
			%>
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