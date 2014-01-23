<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Home Page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" href="css/jquery-ui.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-ui.js"></script>
	
	<link rel="stylesheet" type="text/css" href="css/stylingsheet.css">
	 <script>
    // increase the default animation speed to exaggerate the effect
    $.fx.speeds._default = 1000;
    $(function() {
        $( "#dialog" ).dialog({
            autoOpen: false,
            show: "blind",
            hide: "explode"
        });
 
        $( "#opener" ).click(function() {
            $( "#dialog" ).dialog( "open" );
            return false;
        });
    });
    </script>
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
		
    	<div class="content">
    
			<div class="video-container" align="center" style="font-size: x-large">
				 Straight from the Doctors.
				<video class="video" src="video/home_video.mp4" controls="controls" tabindex="0" ></video>
			</div>  
		</div>
		
		
    	<div class="footer">
    		
    	</div>
    </div>
    
    
    
    <!-- LOGIN DIV STARTED -->
    <div class="login" align="center">
    <p>
    <font style="font-size: x-large;">Members Login.</font>
    </p>
    
				<form action="login" method="post">
					<table class="logintable" align="center" style="color: white;">
    				<tr>
	    				<td>UserName:</td>
    					<td> <input type="text" name="username" placeholder="Enter UserName Here"/></td>
    				</tr>
    				<tr>
	    				<td> Password: </td>
    					<td> <input type="password" name="password" placeholder="Enter Password Here"/> </td>
    				</tr>
    				<tr>
	    				<td></td>
    					<td><input type="submit" value="Login"" >
    				</tr>
    				<tr>
	    				<td><a href="ForgotPassword.jsp">Forgot Password?</a></td>
	    				<td align="right">
	    				<input type="button" onclick="document.location.href='Registration.jsp'" value="New User"/> 
	    				<%--<button id="opener">New User</button>--%>
	    				</td>
    				</tr>
       				</table>
    			</form>  	
			</div>

	<!-- LOGIN DIV ENDS -->
	
	<!--MODAL WINDOW STARTS 
	<div id="dialog" title="Basic dialog">
    <p>This is an animated dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
	</div>
	MODAL WINDOW ENDS -->
	
	
	<div align="center" class="home-content">
   	<font style="font-size: x-large;">Daily Dose</font>
		<p align="justify" style="margin: 20px">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Today's health care professionals work hard to promote hygiene, 
			prevent and detect disease, cure patients, and when that is impossible,
			reduce their suffering.Still, it is worthwhile to remember...   <a style="color: blue;" href="http://library.thinkquest.org/15569/hist-1.html">Read More...</a>
		</p>
	</div>
	
	<!-- THUMB PIN -->
	<img class="pin" alt="thumbpin" src="img/pin.jpg">
	<!-- THUMB PIN -->
  </body>
</html>
