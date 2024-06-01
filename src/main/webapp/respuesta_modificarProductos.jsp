<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int cod = Integer.parseInt(request.getParameter("cod_pr"));
	int cod_cat = Integer.parseInt(request.getParameter("cmbCategoria"));
	String nombre = request.getParameter("nombre_pr");
	Double precio = Double.parseDouble(request.getParameter("precio_pr"));
	int cantidad = Integer.parseInt(request.getParameter("cantidad_pr"));
	Producto pro = new Producto(cod, cod_cat, nombre, cantidad, precio);
	boolean actualizo = pro.editarInformacion(pro);
	if(actualizo == true){
        response.sendRedirect("producto_2.jsp");
	}
	else{
		out.print("ERROR");
	}
%>
</body>
</html>