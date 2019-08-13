<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<html>
    <head>
        <title>Interface</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
<script>
function addBook() {
window.location.href = "insert.jsp";
}
function updateBook() {
	window.location.href = "book_update.jsp";
	}
function deleteBook() {
	window.location.href = "delete.jsp";
	}
function viewBook() {
	window.location.href = "viewbook.jsp";
	}

</script>

    </head>
    <body>
        <h1><center>Online Book Shop</center></h1>
        <hr>
        <h2 style="float:right"><b>Welcome <%=ltr%></b></h2><br><br><br><br>    
<a href="logout.jsp" style="float:right">Logout</a>

        
    <center>
        <table>
            <tr>
             <td>
            <h1>INSERT</h1>
            <img src="add.png" height="200px" width="200px" onclick="addBook()">
            </td>
            <td></td>
            <td></td>
            <td>
            <h1>DELETE</h1>
        <img src="delete.png" height="200px" width="200px" onclick="deleteBook()">    
            </td>
        </tr>
        <tr>
            <td>
            <h1>UPDATE</h1>
            <img src="update.png" height="200px" width="200px" onclick="updateBook()">
            </td>
            <td></td>
            <td></td>
            <td>    
        <h1>VIEW</h1>
            <img src="view.png" height="200px" width="200px" onclick="viewBook()">
            </td>    
        </tr>
        </table>
    </center>
    </body>
</html>
<%
}
%>