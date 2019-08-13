import java.sql.*;

public class DBFactory
	{
	static String DRIVER_NAME = "com.mysql.jdbc.Driver";
	static String dbUrl ="jdbc:mysql://localhost:3306/test";
	static String username="root";
	static String password="root";
	static Statement st;
	static PreparedStatement pstm;
	static Connection con;
	static ResultSet rs;
	

   static Connection  getConnection() throws Exception
	{
    Class.forName(DRIVER_NAME);
    Connection con = DriverManager.getConnection(dbUrl,username,password);
	return con;
	}

 static Statement getStatement(Connection con) throws Exception
	 {
		 st = con.createStatement();
          return st  ; 
	 }
	
static PreparedStatement getPreparedStatement(Connection con) throws Exception
	 {
//		 pstm = con.preparedStatement();
          return pstm  ; 
	 }

 	 
static void closeConnection(Connection con)
	{
        if ( con != null ) {
				try {
					con.close();
					 }
				 catch (SQLException e) 
					 {
					e.printStackTrace();
					}
        }
	}

/*
static boolean execute(Statement st)
		{
		  return  st.executeUpdate("insert into emp values('5','saniv','21')");
		  }
		  */
/*static int executeUpdate(Statement st)
		{
		//  return   st.executeUpdate("insert into emp values('5','saniv','21')");
		  }

		 */
/*
static ResultSet executeQuery(Statement st)
		{
	      return st.executeUpdate("select * from emp");
		 }
*/ 
	
}