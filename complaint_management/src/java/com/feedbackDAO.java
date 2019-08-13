
package com;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
public class feedbackDAO {
    Statement st;
PreparedStatement ps;
feedback f;

public int addfeedback(feedback f){
      int result =0;
      
           boolean status = false;
             try {
                 PreparedStatement ps=dbUtil.con().prepareStatement("insert into feedback values(?,?,?,?,?,?,?,?)");
                 ps.setInt(1, f.getId());
                  ps.setInt(2,f.getUser_id());
                   ps.setDate(3,f.getFDate());
                   ps.setString(4,f.getSuggestion());
                   ps.setString(5,f.getStatus());
                   ps.setString(6, f.getName());
                   ps.setString(7, f.getContact_no());
                   ps.setString(8, f.getGender());
               result=  ps.executeUpdate();
               System.out.println(result);
             } catch (Exception ae) {
                  System.out.println(ae);
             }
           
    
    
    
    
    return result;
    
    
}
public int disablefeedback(int id)
{  int status=0;
    try {
        PreparedStatement ps=dbUtil.con().prepareStatement("update feedback set status='D'where id=?");
           ps.setInt(1,id);
           status = ps.executeUpdate();
         
    }catch (Exception e){
             System.err.println(e);
         }
    return status;

           
}
public static ArrayList<feedback> getallfeedback(){
    ArrayList<feedback> fp = new ArrayList<feedback>();
    Statement stmt;
 boolean status = false;
    try {
         stmt=dbUtil.con().createStatement();
          ResultSet rs =    stmt.executeQuery("select * from feedback where status <> 'D' ");
          while(rs.next()){
              feedback f  = new feedback(rs.getInt(1),rs.getInt(2),rs.getDate(3),rs.getString(4),rs.getString(5));
              System.out.print(rs.getDate(3)+ " " +rs.getString(4));
              fp.add(f);
          }
          
          
    } catch (Exception e){
             System.err.println(e);
         }
    return fp;

           
}
     

public static void main(String atgs[])
{
String str="2015-03-07";  
    Date dt=Date.valueOf(str);
 
 //feedback f=new feedback(5,6 ,dt,"jkfg","O");
feedbackDAO fd=new feedbackDAO();
fd.getallfeedback();
}
    /*
    Connection con;
Statement st;
    public Connection returnCon() throws Exception {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "varshini", "varshini");
        return con;       
     
    }
    */
}


