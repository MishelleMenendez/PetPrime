<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.seguridad.*"
	session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Usuario usuario = new Usuario();
	String nlogin = request.getParameter("usuario");
	String nclave = request.getParameter("clave");
	HttpSession sesion = request.getSession(); //Se crea la variable de sesi�n
	boolean respuesta = usuario.verificarUsuario(nlogin, nclave);
	if (respuesta) 
	{
		sesion.setAttribute("usuario", usuario.getNombre()); //Se a�ade atributos
		sesion.setAttribute("perfil", usuario.getPerfil()); //Se a�ade atributos
		if(usuario.getPerfil()==3)
			response.sendRedirect("menu_comprador.jsp"); 
		if(usuario.getPerfil()==2)
			response.sendRedirect("menu.jsp"); //Se redirecciona a una p�gina espec�fica
		if(usuario.getPerfil()==1)
			response.sendRedirect("menu_admin.jsp"); 
	} 
	else 
	{
		%>
		<jsp:forward page="registro.jsp">
			<jsp:param name="error"
				value="Datos incorrectos.<br>Vuelva a intentarlo." />
		</jsp:forward>
		<%
	}
	%>
</body>
</html>