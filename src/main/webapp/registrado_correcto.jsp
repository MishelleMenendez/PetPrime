<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<%@ page import="com.productos.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro correcto</title>
</head>
<h1>Registrado correctamente</h1>
<h4>Bienvenido/a:</h4>
<body>
	<%
			String nombre = request.getParameter("name");
			String cedula = "1111111111";
			int estadoCivil = 1;
			String correo = request.getParameter("email");
			String clave = "654321";
			int id_per = Integer.parseInt(request.getParameter("categoria")); // Valor predeterminado o asigna un valor válido si es necesario

			// Verificar si el parámetro no es null antes de intentar convertirlo
			String id_perParam = request.getParameter("id_per");
			if (id_perParam != null && !id_perParam.isEmpty()) {
				id_per = Integer.parseInt(id_perParam);
			}

			Usuario usuario = new Usuario(id_per, estadoCivil, nombre, cedula, correo, clave);
			String resultado = usuario.ingresarVenAd(id_per);
			%>
			<p>
				Su nombre es
				<%=nombre%></p>

			<p>
				Su correo electrónico es
				<%=correo%></p>

			<p>
				Resultado del registro de usuario:
				<%=resultado%></p>
</body>
</html>