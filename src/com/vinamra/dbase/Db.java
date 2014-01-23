package com.vinamra.dbase;

import java.sql.*;

public class Db
{
	public static Connection getConnect()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Loaded");
			con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/medical_rating","root","root");
			System.out.println("Connected with DB successfully");
		}
		catch(ClassNotFoundException cnfe)
		{
			cnfe.getMessage();
		}
		catch(SQLException ae)
		{
			ae.getMessage();	
		}
		return con;
	}

	/*public static void main(String args[])
	{
		Connection con=Db.getConnect();
		try {
			con.close();
		} catch (SQLException e) {
			e.getMessage();
		}
		
	}*/
}
