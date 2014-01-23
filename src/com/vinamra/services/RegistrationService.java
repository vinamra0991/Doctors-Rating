package com.vinamra.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.vinamra.dbase.Db;
import com.vinamra.dto.User;

public class RegistrationService 
{

	public void enterDetail(User reguser)
	{
		Connection con=Db.getConnect();
		try
		{
			PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?,?,?);");
			ps.setString(1, reguser.getUsername());
			ps.setString(2, reguser.getPassword());
			ps.setString(3, reguser.getQuestion());
			ps.setString(4, reguser.getAnswere());
			ps.setString(5, reguser.getName());
			ps.setString(6, reguser.getType());
			ps.setString(7, reguser.getEmail());
			ps.executeUpdate();			
		}
		catch(SQLException sqle)
		{
			sqle.getMessage();
		}
	}
}
