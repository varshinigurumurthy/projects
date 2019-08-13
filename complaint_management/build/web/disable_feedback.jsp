<%-- 
    Document   : disable_feedback
    Created on : 6 Mar, 2017, 12:58:07 PM
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
        <jsp:useBean id="obj" class="com.feedbackDAO"/>  
       <%
           out.print(request.getParameter("id"));
           int id = Integer.parseInt(request.getParameter("id"));
          // int result = obj.disablefeedback(id);
           int result = 1;
     out.print(result);
 if(result>=1){
           %>
           <jsp:include page="viewfeedback.jsp"/>
           
           <%               
           }
           else{
          
            %>  
            
            <%

}
%>
    </body>
</html>
