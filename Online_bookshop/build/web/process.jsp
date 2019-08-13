<%@ page import="java.sql.*" %>
	
	<% 
	try
	{
		String name = request.getParameter("name");
		String uname = request.getParameter("uname");
		String password = request.getParameter("pwd");
		String email = request.getParameter("email");
		String gender = request.getParameter("gen");
		String mobile = request.getParameter("mob");
		String dob = request.getParameter("dob");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String pin = request.getParameter("pin");
                int Pin=Integer.parseInt(pin);
		/* date('Y-m-d', strtotime($bdate)); */
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		/* String sql = "SELECT username, password FROM Login where username=? and password=?";
		String sql1= "insert into users(Name,Username,Password,Email,Gender,Mobileno,DOB,City,State,Pincode)values('"+name+"','"+uname+"','"+password+"','"+email+"','"+gender+"','"+mobile+"','"+dob+"','"+city+"','"+state+"','"+pin+"')"; */
		/* String sql= "insert into users(Name,Username,Password,Email,Gender,Mobileno,DOB,City,State,Pincode)values(?,?,?,?,?,?,?,?,?,?,)"; */
		
		PreparedStatement stmt=con.prepareStatement("insert into register(name,username,password,email,gender,mobile,dob,city,state,pin)values(?,?,?,?,?,?,?,?,?,?)"); 
                stmt.setString(1,name);
		stmt.setString(2,uname);
		stmt.setString(3,password);
		stmt.setString(4,email);
		stmt.setString(5,gender);
		stmt.setString(6,mobile);
		stmt.setString(7,dob);
		stmt.setString(8,city);
		stmt.setString(9,state);
		stmt.setInt(10,Pin);
		int r = stmt.executeUpdate();  
		out.println("Registered Successfully !!");
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
	
	
	
	
		