package com.productos.negocio;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.Conexion;

public class Producto {

	private int id_producto;
	private int id_categoria;
	private String nombre;
	private int cantidad;
	private double precio;
	private byte foto;


	public Producto(int id_producto, int id_categoria, String nombre, int cantidad, double precio) {
		this.id_producto = id_producto;
		this.id_categoria = id_categoria;
		this.nombre = nombre;
		this.cantidad = cantidad;
		this.precio = precio;
		this.foto = 1;
	}
	public Producto(int id, String nombre, double precio, int can, int cat) {
		this.id_producto = id;
		this.nombre = nombre;
		this.precio = precio;
		this.cantidad = can;
		this.id_categoria = cat;
	}
	
	public Producto() {
		
	}
	
	public int getId_producto() {
		return id_producto;
	}

	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}

	public int getId_categoria() {
		return id_categoria;
	}

	public void setId_categoria(int id_categoria) {
		this.id_categoria = id_categoria;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public byte getFoto() {
		return foto;
	}

	public void setFoto(byte foto) {
		this.foto = foto;
	}

	public String getProductoById(String id)
	{
		String sentencia="SELECT nombre_pr FROM tb_producto WHERE id_pro="+id;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String nombre="";
		try 
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				 nombre = rs.getString(1);						
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print(e.getMessage());
		}
		return nombre;
	}
	
	public String consultarProductos()
	{
		String sql="SELECT * FROM tb_producto GROUP BY id_pro";
		Conexion con=new Conexion();
		String tabla="<table class=carrito><th>Producto</th><th>Precio</th><th>Añadir al carrito</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getString(3)+"</td>"
						+"<td>"+rs.getDouble(5)+"</td>"
						+ "<td><input clas='rdbtn_carro' type=checkbox name=productos value="+rs.getInt(1)+" ></td>"
						+ "</tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	} 	
	
	public String consultarNombrePrecio(int id_pr)
	{
		String sql="SELECT * FROM tb_producto WHERE id_pro = "+id_pr;
		Conexion con=new Conexion();
		String np="";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				np=rs.getString(3)+" "+rs.getDouble(5);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return np;
	}
	
	public Double consultarPrecio(int id_pr)
	{
		String sql="SELECT * FROM tb_producto WHERE id_pro = "+id_pr;
		Conexion con=new Conexion();
		Double p=0.0;
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				p=rs.getDouble(5);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return p;
	}
	
	public void modificarProductos(int codigo)
	{
		Conexion con=new Conexion();
		ResultSet rs = null;
		String sql = "SELECT id_pro, id_cat, nombre_pr, precio_pr, cantidad_pr FROM tb_producto WHERE id_pro="+codigo;
		try 
		{
			rs=con.Consulta(sql);
			while(rs.next()) 
			{
				this.setId_producto(rs.getInt(1));
				this.setId_categoria(rs.getInt(2));
				this.setNombre(rs.getString(3));
				this.setCantidad(rs.getInt(4));
				this.setPrecio(rs.getDouble(5));
			}
		} 
		catch (SQLException e) 
		{
			System.out.print(e.getMessage());

		}
	}
	
	public boolean editarInformacion(Producto p)
	{
		boolean dentro = false;
		Conexion con=new Conexion();
		String sql = "UPDATE tb_producto SET id_cat="+p.getId_categoria()+", nombre_pr='"+p.getNombre()+"', cantidad_pr="
				+p.getCantidad()+", precio_pr="+p.getPrecio()+" WHERE id_pro="+p.getId_producto();
		try 
		{
			con.Ejecutar(sql);
			dentro= true;
		} 
		catch (Exception e) 
		{
			dentro = false;
			System.out.print(e.getMessage());
		}
		return dentro;
	}
	

	public boolean eliminarProducto(int codigo)
	{
		boolean eliminado = false;
		Conexion con=new Conexion();
		String sql = "DELETE FROM tb_producto WHERE id_pro="+codigo;
		try 	
		{
			con.Ejecutar(sql);
			eliminado = true;
		} 
		catch (Exception e) 
		{
			eliminado=false;
			System.out.print(e.getMessage());
		}
		return eliminado;
	}
	
	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pro";
		Conexion con=new Conexion();
		String tabla="<table class=\"tabla\"><thead><tr><th scope=\"col\">ID</th><th scope=\"col\">Producto</th><th scope=\"col\">Cantidad</th><th scope=\"col\">Precio</th></tr></thead><tbody><tr>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				int cod = rs.getInt(1);
				tabla+="<th scope=\"row\">"+rs.getInt(1)+"</th>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt	(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+"</tr>";
			}
			tabla+="</tbody></table>";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
	
		return tabla;
	}
	
	public String consultarTodo2()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pro";
		Conexion con=new Conexion();
		String tabla="<table class=\"tabla\"><thead><tr><th scope=\"col\">ID</th><th scope=\"col\">Producto</th><th scope=\"col\">Cantidad</th><th scope=\"col\">Precio</th></tr></thead><tbody><tr>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				int cod = rs.getInt(1);
				tabla+="<th scope=\"row\">"+rs.getInt(1)+"</th>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt	(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+"<td><a href=\"modificarProductos.jsp?cod="+cod+"\">Modificar</a></td>"
						+"<td><a href=\"eliminarProductos.jsp?cod="+cod+"\">Eliminar</a></td></tr>";
			}
			tabla+="</tbody></table>";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
	
		return tabla;
	}
	
	public String buscarProductoCategoria(int cat)
	{
		String sentencia="SELECT nombre_pr, precio_pr FROM tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3><th>Producto</th><th>Precio</th>";
		try
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
						+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	public String ingresarProducto(int id, int cat,String nombre, int cantidad, double precio)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_producto (id_pro,id_cat,"
				+ "nombre_pr,cantidad_pr,precio_pr)"
				//+ ",foto_pr) "
				+ "VALUES(?,?,?,?,?)";
				//+ ",?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setInt(2,cat);
			pr.setString(3, nombre);
			pr.setInt(4, cantidad);
			pr.setDouble(5, precio);
			if(pr.executeUpdate()==1)
			{
				result="se ingreso correctamente.";
			}
			else
			{
				result="no se ingreso a la base de datos.";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
}
