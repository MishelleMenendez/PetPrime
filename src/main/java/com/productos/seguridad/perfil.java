package com.productos.seguridad;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.productos.datos.Conexion;

public class perfil {
	public String mostrarCategoria()
	{
		String combo="<select name=cmbPerfil>";
		String sql="SELECT * FROM tb_perfil";
		ResultSet rs=null;
		Conexion con=new Conexion();
		try
		{
			rs=con.Consulta(sql);
			while(rs.next())
			{
				combo+="<option value="+rs.getInt(1)+ ">"+rs.getString(2)+"</option>";
			}
			combo+="</select>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return combo;
	}
}
