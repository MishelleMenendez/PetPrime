<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="estilo.css">
<link rel="web site icon" type="png" href="img/icon.png">
</head>
<body>
	<%
		String valor = request.getParameter("cod");
		int cod = Integer.parseInt(valor);
		Producto pro = new Producto();
		pro.modificarProductos(cod);
	%>
	</header>
	<nav>
		<ul>
			<li><a href="index.jsp" class="logo"><img src="img/logo.png"
					alt="Logo"></a></li>
			<li><a href="registro_producto.jsp">Insertar productos</a></li>
			<li><a href="producto_2.jsp">Modificar productos</a></li>
			<li><a href="cerrar_sesion.jsp">Cerrar Sesión</a></li>

		</ul>
	</nav>
	<div class='centrar'>
		<form action="respuesta_modificarProductos.jsp" method="post"
			class='formulario'>
			<h1>Modificar Producto</h1>
			<label class="label">Código de Producto: </label> <input type="text"
				name="cod_pr" value="<%=cod%>" class="input" readonly> <label
				class="label">Categoria: </label>
			<%
            	Categoria cat = new Categoria();
            	String combo = cat.mostrarCategoria();
            	out.print(combo);
            %>

			<label class="label">Nombre: </label> <input type="text"
				class="input" name="nombre_pr"> <label class="label">Precio:
			</label> <input type="number" class="input" value="0.01" step="0.01"
				name="precio_pr" required> <label class="label">Cantidad:
			</label> <input type="number" class="input" value="1"
				placeholder="Ingrese la cantidad de Productos " name="cantidad_pr"
				required>

			<div class='grupo_boton'>
				<input type="submit" class="boton"> <input type="reset"
					class="boton">
			</div>

		</form>
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