<%-- 
    Document   : viewcomplaint
    Created on : 2 Mar, 2017, 3:28:42 PM
    Author     : Admin
--%>
<%@page import="com.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        
         <jsp:useBean id="obj" class="com.compaintDAO"/>  
         <h1>VIEW COMPLAINTS</h1>
       <%  
          String user = (String)request.getAttribute("ctype");
          String a = (String)session.getAttribute("username");
          out.print(a);
List<complaint> list=compaintDAO.getallcomplaints();
out.print("count of complaints:"+list.size());
request.setAttribute("list",list);

%>  
<table border="1" width="90%">  
    <tr><th>Id</th><th>Type</th><th>Description</th><th>Date</th></tr>
    <c:forEach items="${list}" var="c">     
    <tr><td>${c.getCID()}</td>
    <td>${c.getCtype()}</td>
       <td>${c.getDescription()}</td>
          <td>${c.getCdate()}</td>
            </tr>
    </c:forEach>  
</table>
    
    </body>
</html>
