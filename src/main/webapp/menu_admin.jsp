<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.seguridad.*"
	session="true"%>
<%
int perfil = 0;
String usuario = "";
HttpSession sesion = request.getSession();
if (sesion.getAttribute("usuario") == null || (Integer) sesion.getAttribute("perfil") != 1) //Se verifica si existe la variable
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
			Pagina pag = new Pagina();
			String menu = pag.mostrarMenu(perfil);
			out.print(menu);
			%>
			<li><a href="cerrar_sesion.jsp">Cerrar Sesión</a></li>

		</ul>
	</nav>
	<div class='centrar'>
		<section class='menu_user'>
			<article class='centar'>
				<h1>
					Bienvenido/a
					<%=usuario%>
				</h1>
				<h1>Registro de usuarios vendedores y administradores</h1>

				<form action="registrado_correcto.jsp" method="post">
					<div class="wrapper">
						<div class="field">
							<label>Nombre: </label><input name="name" required>
						</div>
						<div class="field">
							<label>Correo electrónico: </label><input name="email" required>
						</div>
						<div class="field">
							<label for="categoria">Categoría: </label> <select
								name="categoria" id="categoria" required>
								<option value="" disabled selected>Selecciona una
									categoría</option>
								<option value="1">Administrador</option>
								<option value="2">Vendedor</option>
							</select>
						</div>
					</div>
					<input type="submit" value="Registarse">
				</form>
			</article>
		</section>
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