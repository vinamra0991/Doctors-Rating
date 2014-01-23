<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Registration</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#0066CC">
  	<center>
  		<h3>Welcome User.<br>
  		Please Register with us.</h3>
  		<form action="Registration" method="post">
  		<table cellpadding="3" cellspacing="4" align="center">
  			<tr>
				<td>Username</td>
				<td><input type="text" name="username"/>  			
  			</tr>
  			<tr>
				<td>Password</td>
				<td><input type="password" name="password"/>  			
  			</tr>
  			<tr>
				<td>Name</td>
				<td><input type="text" name="name"/>  			
  			</tr>
  			<tr>
  				<td>Security Question</td>
  				<td>
  					<select name="question">
  		  				<option value="city">In which city where you born?</option>
  		  				<option value="firstschool">What is the name of your first school?</option>
  					</select>
  				</td>
  			</tr>
  			<tr>
		  		<td>Security Answer</td>
  				<td><input type="text" name="ans"/></td>
  			</tr>
  			<tr>
		  		<td>Email Address </td>
  				<td><input type="text" name="email"/></td>
  			</tr>	
  			<tr>
		  		<td>Type</td>
  				<td>	<select name="type">
  		  				<option value="Doctor">I am a Doctor</option>
  		  				<option value="Patient">I am a patient</option>
  					</select>
  				</td>
  			</tr>	
  			<tr>
	  			<td></td>
  				<td><input type="submit" value="Done" ></td>
    		</tr>
  			
  		</table>
  		</form>  		  	
  	</center>
  </body>
</html>
