
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:useBean id="obj" class="com.compaintDAO"/>  
       <%
           out.print(request.getParameter("cid"));
           int cid = Integer.parseInt(request.getParameter("cid"));
           int result = obj.disablecomplaint(cid);
     out.print(result);
 if(result>=1){
           %>
           <jsp:include page="viewcomplaint.jsp"/>
           
           <%               
           }
           else{
          
            %>  
            
            <%

}
%>
    </body>
</html>
