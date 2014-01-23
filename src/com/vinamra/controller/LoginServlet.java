package com.vinamra.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.vinamra.dto.User;
import com.vinamra.services.LoginService;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		
		//response.setContentType("text/javascript");
		//PrintWriter out=response.getWriter();
		
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		if(username.equals(null) || password.equals(null) || username.equals("") || password.equals(""))
		{
			response.sendRedirect("Home.jsp");
			return;
		}
		
		LoginService userlogin=new LoginService();
		User userdetail=userlogin.validate(username, password);
		
		HttpSession session=request.getSession();
		if(userdetail.getType().equals("sorry"))
		{
			response.sendRedirect("Home.jsp");
		}
		if(userdetail.getType().equals("Doctor"))
		{
			session.setAttribute("docusername",userdetail);
			response.sendRedirect("DoctorHome.jsp");
		}
		if(userdetail.getType().equals("Patient"))
		{
			session.setAttribute("patusername", userdetail);
			response.sendRedirect("PatientHome.jsp");
		}
	}
}
