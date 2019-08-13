

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>


        
        <div class="page">
		<div id="header">
			<div class="connect">
				<p>


			</p>

				
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
    <a href ="give_feedback.jsp">Feedback</a>
    
    </li>
	
					<li>
				
		<a href="report.jsp">Report</a>
					</li>
		

				</ul>
			</div>
		
</div>

		<div id="content">

			  <form action="validateLogin.jsp" method="post" style="color: white">
                              <br>
                              Username:<input type="text" name="user" required=""><br>
            <br>
            <br>
            <br>
            Password:<input type="password" name="pass" required=""><br>
       <br>
       <br>
       <br>
       <br>
            <input type="submit" value="login">
        </form>
                           
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
