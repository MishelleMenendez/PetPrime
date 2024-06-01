<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.seguridad.*"
	session="true"%>
<%
	int perfil = 0;
	String usuario = "";
	HttpSession sesion = request.getSession();
	 if (sesion.getAttribute("usuario") == null || (Integer)sesion.getAttribute("perfil") != 3) //Se verifica si existe la variable
	 {
		 %>
			<jsp:forward page="registro.jsp">
			<jsp:param name="error" value="Debe registrarse en el sistema." />
			</jsp:forward>
		<%
	 }
	 else
	 {
		 usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
		 perfil=(Integer)sesion.getAttribute("perfil");
	 }
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
			<li><a href="#" class="logo"><img src="img/logo.png"
					alt="Logo"></a></li>
			<%
					Pagina pag=new Pagina();
					String menu=pag.mostrarMenu(perfil);
					out.print(menu);
				%>
			<li><a href='cerrar_sesion.jsp'>Cerrar Sesión</a></li>
		</ul>
	</nav>
<body>
	<div class='centrar'>
<section class='menu_user'>
				<h1>Menú de Comprador</h1>
				<h1>
					Bienvenido/a
					<%=usuario %>
				</h1>
			</section> 	
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