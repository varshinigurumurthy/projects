<%-- 
    Document   : viewfeedback
    Created on : 5 Mar, 2017, 4:49:07 PM
    Author     : Varshini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.*,java.util.*"%>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="obj" class="com.feedbackDAO"/>  
        <h1>VIEW FEEDBACK</h1>
       <%  
          String user = (String)request.getAttribute("ctype");
            String a = (String)session.getAttribute("username");
          out.print(a);
   List<feedback> flist=feedbackDAO.getallfeedback();
out.print("count of feedback"+flist.size());
Iterator i=flist.iterator();
%>
<table border="1" width="90%">
<tr><th>Id</th><th>Date</th><th>user id</th><th>Suggestions</th><th>Disable</th></tr>
    <%
while(i.hasNext()){  
feedback j = (feedback)i.next();  
%>

  <tr><td>
        <%  
         out.print(j.getId()); 
      %>
      </td><td>
          <%
out.print(j.getFDate());
%>
      </td>  <td>
        <%
out.print(j.getUser_id());
%>  
          
      </td>
<td>
    <%
out.print(j.getSuggestion());
%>
</td>
<td>
    <a href="disable_feedback.jsp?id=1">disable</a>
    </td></tr>
<%
}  

   

%>
   </table>



  



 
    </body>
</html>
