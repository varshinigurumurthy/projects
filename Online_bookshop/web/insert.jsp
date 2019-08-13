<%
String ltr=(String)session.getAttribute("username");
if(ltr==null)
{
	session.invalidate();
%>
<jsp:include page="index.html"/>
<%
	}
else
{
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <center>
<form name="form1" method="post" action="book_insert.jsp" > 

ISBN:<input type="text" name="isbn"><br><br>
Book name:<input type="text" name="Bookname"><br><br>
Author1:<input type="text" name="Author1"><br><br>
Author2:<input type="text" name="Author2"><br><br>
Description:<input type="text" name="Description"><br><br>
Image:<input type="file" name="Image"><br><br>
Edition:<input type="text" name="Edition"><br><br>
Price:<input type="text" name="Price"><br><br>
<input type="submit" name="submit" value="Submit">
</form>
</center>

    </body>
    
</html>
<%
}
%>