package com.vinamra.services;

import java.sql.*;

import com.vinamra.dbase.Db;
import com.vinamra.dto.User;

public class PasswordService 
{
  public String findPassword(User forgotpass)
  {
	  Connection con=Db.getConnect();
	  String password=null;
	  try
	  {
		  PreparedStatement ps=con.prepareStatement("select password from user where username=? and security_question=? and answere=? and email=?;");
		  ps.setString(1, forgotpass.getUsername());
		  ps.setString(2, forgotpass.getQuestion());
		  ps.setString(3, forgotpass.getAnswere());
		  ps.setString(4, forgotpass.getEmail());
		  ResultSet rs=ps.executeQuery();
		  while(rs.next())
		  {
			password=rs.getString("password");  
		  }
	  }
	  catch(SQLException sqle)
	  {
		  sqle.getMessage();
	  }
	  return password;
  }
  public void updatePass(String password,String username)
  {
	  Connection con=Db.getConnect();
	  try
	  {
		  PreparedStatement ps=con.prepareStatement("update user set password=? where username=?");
		  ps.setString(1, password);
		  ps.setString(2, username);
		  ps.executeUpdate();
	  }
	  catch(SQLException sqle)
	  {
		  sqle.getMessage();
	  }
  }
}
