<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ChangePassword.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/stylingsheet.css">
  </head>
  
  <body>
 	<!-- The advertisement div -->
  <div class="adv">
  <marquee behavior="alternate" style="color: white;" > The Advertisements will be flashed here in this space.</marquee>  
  </div>
  <!-- The advertisement div ENDS -->
  
  <div class="container">
  
  		<!-- HEADER STARTS -->
    		<div class="header" align="right">
	    		<img style="border-top-right-radius:30px;border-top-left-radius:30px;" alt="Health" src="img/health.jpg"/>
    			<img class="logo" src="img//logo.gif"/>
			</div>
		<!-- HEADER ENDS -->
		<%@ include file="MenuBar.jsp"%><br/>		
		<!-- CONTENT BEGINS -->
		<div class="content">
			<center>
				<h2>Details Verified<br/>
 		Please reset your Password.</h2>
 		<form action="Update" method="post">
 			<table cellpadding="2" cellspacing="3" align="center">
    			<tr>
    				<td> Reset Password </td>
    				<td> <input type="password" name="password"/> </td>
    			</tr>
 				<tr>
    				<td></td>
    				<td><input type="submit" value="Reset"" >
    			</tr>
    		</table> 		
    		<% String username=(String)request.getAttribute("username"); %>
    		<input type="hidden" name="hiddenuser" value="<%=username%>">
 		</form>
			</center>    
		</div>
		<!-- CONTENT ENDS -->
		
		
    	<div class="footer">Footer</div>
  </div>
 	
 	<script type="text/javascript" src="js/jquery.js"></script>
 	<script type="text/javascript" src="js/changepass.js"></script>
  </body>
</html>
