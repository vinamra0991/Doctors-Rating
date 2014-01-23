package com.vinamra.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vinamra.services.PasswordService;

public class UpdatePasswordServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
			{
		String password=request.getParameter("password");
		String username=request.getParameter("hiddenuser");
		
		PasswordService uptdpass=new PasswordService();
		uptdpass.updatePass(password,username);
		
		response.sendRedirect("Home.jsp");

	}

}
