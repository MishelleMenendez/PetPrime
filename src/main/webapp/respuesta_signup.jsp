<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<%@ page import="com.productos.seguridad.*"%>
	
<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta charset="utf-8">
<title>Login Form Design | CodeLab</title>
<link rel="stylesheet" href="estilos.css">
<link rel="web site icon" type="png" href="img/icon.png">
</head>
<body>
	<nav>
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="registro.jsp">Iniciar Sesi�n</a></li>
			<li><a href="producto.jsp">Ver Productos</a></li>
			<li><a href="categoria.jsp">Buscar por Categor�a</a></li>
		</ul>
	</nav>
	<%
			String estad="";
			String nombre = request.getParameter("txtnombre");
			String cedula = request.getParameter("cedula");
			int estadoCivil = Integer.parseInt(request.getParameter("cmbECivil"));
			String correo = request.getParameter("correo");
			String clave = request.getParameter("clave");
			int id_per = 3; // Valor predeterminado o asigna un valor v�lido si es necesario

			// Verificar si el par�metro no es null antes de intentar convertirlo
			String id_perParam = request.getParameter("id_per");
			if (id_perParam != null && !id_perParam.isEmpty()) {
				id_per = Integer.parseInt(id_perParam);
			}

			Usuario usuario = new Usuario(id_per, estadoCivil, nombre, cedula, correo, clave);
			String resultado = usuario.ingresarCliente();
			if(usuario.getEstado_civil()==1) {
				estad="Soltero";
			} else if(usuario.getEstado_civil()==2) {
				estad="Casado";
			} else if(usuario.getEstado_civil()==3) {
				estad="Divorciado";
			}else if(usuario.getEstado_civil()==4) {
				estad="Viudo";
			}
			%>
			<p>
				Su nombre es
				<%=nombre%></p>
			<p>
				Su c�dula es
				<%=cedula%></p>
			<p>
				Su estado civil es
				<%=estad%></p>
			<p>
				Su correo electr�nico es
				<%=correo%></p>

			<p>
				Resultado del registro de usuario:
				<%=resultado%></p>

</body>
</html>