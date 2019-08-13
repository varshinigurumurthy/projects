 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="com.*"%>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        
<div class="page">
		
    <div id="header">
			
        <div class="connect">
            <p><a href="Logout.jsp">Logout</a></p>
        </div>
        <div id="container">
            <a href="index.jsp" class="logo">
                <img src="" alt=""></a>
            <ul>
					<li class="selected">
					
	<a href="index.jsp">Home</a>
					</li>
				
	<li>
						<a href="contact.jsp">Contact</a>

		
			</li>
					<li>
	
					<a href="aboutus.jsp">About Us</a>
					
</li>
	<li>	
				
		<a href="report.jsp">Report</a>
					</li>
		

		</div>
		

        <div class="content">
 <jsp:useBean id="obj" class="com.userDAO"/>  
<%
    boolean status=false;
    String login = request.getParameter("user");
    String pass = request.getParameter("pass");
    user u =obj.validateUser(login, pass);
    String ctype = u.getUser_type();
    request.setAttribute("user", login);
    session.setAttribute("username", u.getUser_fname());
             
        
       if(ctype.equals("P")){
   %>
  <jsp:forward page="patient_registration.jsp"/> 
     
   <%
       
   }else if(ctype.equals("D")) {
   %>
   <jsp:forward page="doctor_registration.jsp"/> 
     
   <%
   }
   else{
    %>  
    <jsp:forward page="login.jsp"/>
    <%
       }
    
    %>
   
</div>
</div>
			
<div id="footer">
			<div>
				<span>Follow us :</span>
				<a href="#" class="facebook" target="_blank">facebook</a>
				<a href="#" class="twitter" target="_blank">twitter</a>
				<a href="#" class="googleplus" target="_blank">googleplus</a>
			</div>
			<p>
				&copy; Copyright 2012. All rights reserved
			</p>
		</div>
	</div>
    </body>
</html>
