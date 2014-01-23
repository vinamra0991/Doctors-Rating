package com.vinamra.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vinamra.dto.User;
import com.vinamra.services.PasswordService;

public class PasswordServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/Html");
		
		User forgotpass=new User();
		
		forgotpass.setUsername(request.getParameter("username"));
		forgotpass.setQuestion(request.getParameter("question"));
		forgotpass.setAnswere(request.getParameter("ans"));
		forgotpass.setEmail(request.getParameter("email"));
				
		PasswordService pass=new PasswordService();
		String result=pass.findPassword(forgotpass);
		
		
		if(result!=null)
		{
			request.setAttribute("username",request.getParameter("username"));
			RequestDispatcher dispatch=request.getRequestDispatcher("ChangePassword.jsp");
			dispatch.forward(request, response);
		}
		else
		{
			request.setAttribute("errormessage", true);
			RequestDispatcher dispatch=request.getRequestDispatcher("ForgotPassword.jsp");
			dispatch.forward(request, response);
		}
		
	}

}
