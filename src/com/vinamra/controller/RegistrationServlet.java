package com.vinamra.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vinamra.dto.User;
import com.vinamra.services.RegistrationService;

public class RegistrationServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		User reguser=new User();
		
		reguser.setUsername(request.getParameter("username"));
		reguser.setPassword(request.getParameter("password"));
		reguser.setName(request.getParameter("name"));
		reguser.setQuestion(request.getParameter("question"));
		reguser.setAnswere(request.getParameter("ans"));
		reguser.setEmail(request.getParameter("email"));
		reguser.setType(request.getParameter("type"));
		
		RegistrationService regservice=new RegistrationService();
		regservice.enterDetail(reguser);
		
		response.sendRedirect("Home.jsp");
	}

}
