package com.vinamra.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.vinamra.dbase.Db;
import com.vinamra.dto.User;

public class LoginService 
{
	public User validate(String username, String password)
	{
		Connection con=Db.getConnect();
		User user=new User();
		try
		{
			PreparedStatement ps=con.prepareStatement("select name,type,email from user where username=? and password=?;");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				user.setName(rs.getString("name"));
				user.setType(rs.getString("type"));
				user.setEmail(rs.getString("email"));
			}
		}
		catch(SQLException sqle)
		{
			sqle.getMessage();
		}
		//user.setType("sorry");
		return user;
	}
}
