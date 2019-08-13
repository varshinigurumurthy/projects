
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <form action="process.jsp" method="post">
           Complaint type:
           <select name="ctype">
    <option value="other staff">other staff</option>
    <option value="doctor">doctor</option>
    <option value="infrastructure">infrastructure</option>
    <option value="food">food</option>
  </select><br>
           Description:
           <input type="text" name="desc"><br>
            <input type="submit" value="register complaint">
        </form>
        <%
String Ctype = request.getParameter("ctype");
%>
<jsp:include page=""/>
    </body>
</html>
