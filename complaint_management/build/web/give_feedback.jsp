<%-- 
    Document   : give_feedback
    Created on : 6 Mar, 2017, 1:54:04 PM
    Author     : Varshini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
				<p>


                                    <a href="register.jsp">Register</a>
                                    <a href="login.jsp">Login</a>
                                   <a href="logout.jsp">Logout</a>
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

        <form action= "validatefeedback.jsp"  style="color: white">
            <h1 > Feedback Form</h1>
            <table>
                <tr>
                    <td> Name:</td>
                    <td><input type="text" name="name"   autofocus required=""/> </td>
                </tr>
                
              <tr>
                        <td>Gender:</td>
                        <td>Male<input type="radio" name="gender" value="male" /><br>
                            Female<input type="radio" name="gender" value="female" />
                        </td>
		</tr>

			<tr>
			<td>Contact no:</td>
                        <td><input type="text" name="cno"  maxlength="10"/> 
			</td>
			</tr>


			<tr>
			<td>Email address:</td>
			<td><input type="text" name="email"  required=""/> 
			</td>
			</tr>

  <tr>
                     <td>
                         Suggestion:
                     </td>
                         <td>
                             <textarea cols="40" rows="4" name="sugg" required=""></textarea>
                     </td>
                </tr>
                <tr>
                    <td><input type="submit" value="submit">
                    </td>
                </tr>
                </table>
               </form>
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
</body>
             
  
</html>
