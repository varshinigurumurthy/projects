
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
        
     <form action="process.jsp" method="post">
           Complaint type:
           <select name="ctype">
    <option value="other staff">other staff</option>
    <option value="doctor">doctor</option>
    <option value="infrastructure">infrastructure</option>
    <option value="food">food</option>
  </select><br>
  <br>
  <br>
  <br>
  <br>
           Description:
            <textarea cols="40" rows="4" name="desc" ></textarea><br>
            <input type="submit" value="register complaint">
        </form>
        <%
String Ctype = request.getParameter("ctype");
  String a = (String)session.getAttribute("username");
          out.print(a);

%>
<jsp:include page=""/>

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
