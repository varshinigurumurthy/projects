<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
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
				 <a href="adminLogin.jsp">Admin</a>
				
			</div>
				<div>
				
<a href="index.jsp" class="logo">
<img src="WEB-INF/../img/images/logo (1)-Recovered.png" alt=""></a>
			
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
		

				</ul>
			</div>
		
</div>

		<div id="content">

       <jsp:useBean id="obj" class="com.compaintDAO"/>  
<%
    int result=0;
    int user_id;
    
  String a = (String)session.getAttribute("username");
          out.print(a);

       String Ctype=request.getParameter("ctype");
     //  user_id=Integer.parseInt(request.getParameter("uid"));
       String description=request.getParameter("desc");
         
      String  userid =  (String)session.getAttribute("user_id");
      out.print(userid);
      result=obj.registercomplaint(Ctype,description,1);
      out.print(result);
      %>
   <h1>YOU HAVE SUCCESSFULLLY REGISTERED YOUR COMPLAINT</h1>
   </div>
                    <div id="footer">
			<div>
				<span>Follow us :</span>
				<a href="" class="facebook" target="_blank">facebook</a>
				<a href="" class="twitter" target="_blank">twitter</a>
				<a href="" class="googleplus" target="_blank">googleplus</a>
			</div>
			<p>
				&copy; Copyright 2012. All rights reserved
			</p>
		</div>
	</div>
  
    </body>
</html>
