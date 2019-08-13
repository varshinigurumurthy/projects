
<%@page import="com.*,java.util.*"%>  
<%@page import="com.userDAO"%>
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
				
		<a href="report.jsp">Report</a>
					</li>
		

				</ul>
			</div>
		
</div>

		<div id="content">
      
       <h1>VIEW USERS</h1>
        <%  
          String user = (String)request.getAttribute("ctype");
          String a = (String)session.getAttribute("username");
          out.print(a);
  List<user> ulist=userDAO.getallusers();
out.print("count of users"+ulist.size());
request.setAttribute("list",ulist);


Iterator i=ulist.iterator();
%>
<table border="1" width="90%">
 <tr><th> User id</th><th> User Type</th><th>Gender</th><th>Contact no</th><th>Email </th><th>country </th><th>Disable</th></tr>
    <%
while(i.hasNext()){  
user j = (user)i.next();  
%>

  <tr><td>
        <%  
         out.print(j.getUser_id()); 
      %>
      </td><td>
          <%
out.print(j.getUser_type());
%>
      </td>  <td>
        <%
out.print(j.getGender());
%>  
          
      </td>
<td>
    <%
out.print(j.getContact_no());
%>
</td><td>
    <%
out.print(j.getEmail_id());
%>
</td>
<td>
    <%
out.print(j.getCountry());
%>
</td>
<td>
    <a href="disable_user.jsp?user_id=3">disable</a>
    </td></tr>
<%
}  

   

%>
   </table>
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
