 
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
        
 <jsp:useBean id="obj" class="com.userDAO"/>  
<%
    boolean status=false;
    String login = request.getParameter("user");
    String pass = request.getParameter("pass");
    user u =obj.adminvalidate(login, pass);
    String ctype = u.getUser_type();
   // request.setAttribute("user", login);
             
        
       if(ctype.equals("A")){
   %>
  <jsp:forward page="adminview.jsp"/> 
     
   <%
       
   }
       else {
   %>
   <jsp:forward page="login.jsp"/> 
   <%
       }
           %>
  
    </body>
</html>
