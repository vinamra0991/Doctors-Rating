<%@ page import="com.vinamra.dto.*" %>


<!-- Patient Status Bar Starts-->
					<div class="p_status">
						<% User pat=(User) session.getAttribute("patusername"); %>
			   			<font style="font-size: 18px;" >Welcome <b>Mr.<%=pat.getName()%> !</b></font>
			   			
			   			<div align="right" style="position: absolute; left: 1130px; top: 288px;">
			   				<a href="" style="color: white;">Logout</a>
			   			</div>	
					</div>
<!-- Patient Status Bar Starts-->