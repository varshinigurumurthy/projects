<%-- 
    Document   : viewComplaintdt
    Created on : 6 Mar, 2017, 3:54:17 PM
    Author     : Varshini
--%>
<%@page import="com.*,java.util.*"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <jsp:useBean id="obj" class="com.compaintDAO"/>  
          <h1>VIEW COMPLAINTS w.r.To DATE</h1>
        <%  
 String dt = (String)request.getParameter("fromdate");
         String dt1 = (String)request.getParameter("todate");
    List<complaint> list=compaintDAO.viewcomplaintreport(dt,dt1);
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

    </body>
</html>
