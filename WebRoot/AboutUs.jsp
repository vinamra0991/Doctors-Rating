<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>AboutUs</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
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
			<center>This is the content Section of "About us" Page</center>    
		</div>
		<!-- CONTENT ENDS -->
		
		
    	<div class="footer">Footer</div>
  </div>
  
  </body>
</html>
