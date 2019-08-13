<%-- 
    Document   : disable_user
    Created on : 6 Mar, 2017, 3:08:27 PM
    Author     : Varshini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:useBean id="obj" class="com.userDAO"/>  
       <%
           out.print(request.getParameter("user_id"));
           int user_id = Integer.parseInt(request.getParameter("user_id"));
           int result = obj.disableuser(user_id);
     out.print(result);
 if(result>=1){
           %>
           <jsp:include page="viewuser.jsp"/>
           
           <%               
           }
           else{
          
            %>  
            
            <%

}
%>
    </body>
</html>
