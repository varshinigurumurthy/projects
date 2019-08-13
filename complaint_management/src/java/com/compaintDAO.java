
package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import java.sql.Statement;
import java.util.ArrayList;

public class compaintDAO {
    
PreparedStatement ps;
Connection con;
Statement st;
complaint c;
user u;
public int registercomplaint(complaint c){
    int result=0;
    boolean status=false;
try{
    
 ps=dbUtil.con().prepareStatement("insert into complaint values(seqComplaint.nextval,sysdate,?,?,?,?,?)");
ps.setString(1,c.getCtype());
ps.setInt(2,c.getUser_id());
ps.setString(3,c.getDescription());
ps.setString(4 ,c.getStatus());
ps.setDate(5,c.getClosedate());
System.out.println(c.getDescription());

 result =   ps.executeUpdate();
         System.out.println(result);        
}
catch(Exception ae){
            System.out.println(ae);
}
return result;
}


public int registercomplaint( String Ctype, String desc,int uid){
    int result=0;
    boolean status=false;
try{
    
 ps=dbUtil.con().prepareStatement("insert into complaint values(seqComplaint.nextval,sysdate,?,?,?,?,sysdate+15)");
ps.setString(1,Ctype);
ps.setInt(2,uid);
ps.setString(3,desc);
ps.setString(4 ,"O"); 

 result =   ps.executeUpdate();
         System.out.println(result);        
}
catch(Exception ae){
            System.out.println(ae);
}
return result;
}


public int disablecomplaint(int cid)
{  int status=0;
    try {
        PreparedStatement ps=dbUtil.con().prepareStatement("update complaint set status='D'where cid=?");
           ps.setInt(1,cid);
           status = ps.executeUpdate();
         
    }catch (Exception e){
             System.err.println(e);
         }
    return status;

           
}


public boolean showcomplaintstatus(complaint c)
{  boolean status = false;
    try {
        PreparedStatement ps=dbUtil.con().prepareStatement("select status from complaints  where cid = ?");
           ps.setInt(1,c.getCID());
            ResultSet rs = ps.executeQuery();
         status = rs.next();
    }catch (Exception e){
             System.err.println(e);
         }
    return status;

           
}

public static ArrayList<complaint> viewcomplaintreport(String fromdt,String todate){
    ArrayList<complaint> cp = new ArrayList<complaint>();
    Statement stmt;
 boolean status = false;
    try {
         stmt=dbUtil.con().createStatement();
          ResultSet rs =    stmt.executeQuery("select * from complaint where status <> 'D' and cdate between to_date('"+fromdt+"','yyyy-mm-dd') and to_date('"+todate+"','yyyy-mm-dd')");
          while(rs.next()){
              complaint c  = new complaint(rs.getInt(1),rs.getDate(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getDate(7));
              cp.add(c);
          }
          
          
    } catch (Exception e){
             System.err.println(e);
         }
    return cp;

           
}

public static ArrayList<complaint> viewcomplaintreport1(String ctype){
    ArrayList<complaint> cp = new ArrayList<complaint>();
    Statement stmt;
 boolean status = false;
    try {
         stmt=dbUtil.con().createStatement();
          ResultSet rs =    stmt.executeQuery("select * from complaint where status <> 'D' and ctype = '"+ctype+"'");
          while(rs.next()){
              complaint c  = new complaint(rs.getInt(1),rs.getDate(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getDate(7));
              cp.add(c);
          }
          
          
    } catch (Exception e){
             System.err.println(e);
         }
    return cp;

           
}


public static ArrayList<complaint> getallcomplaints(){
    ArrayList<complaint> cp = new ArrayList<complaint>();
    Statement stmt;
 boolean status = false;
    try {
         stmt=dbUtil.con().createStatement();
          ResultSet rs =    stmt.executeQuery("select * from complaint where status <> 'D' ");
          while(rs.next()){
              complaint c  = new complaint(rs.getInt(1),rs.getDate(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getDate(7));
              cp.add(c);
          }
          
          
    } catch (Exception e){
             System.err.println(e);
         }
    return cp;

           
}
     
public static void main(String[] args) {
     String str="2010-03-20";  
    Date dt=Date.valueOf(str);
     
     String str1="2010-03-25";  
    Date dt1=Date.valueOf(str1);
     
 complaint c=new complaint("infrastructure", 2, "jkfdg", "O",dt1);
compaintDAO cd= new compaintDAO();
cd.viewcomplaintreport("2017-03-03","2017-03-30");
System.out.println(cd.viewcomplaintreport("2017-03-03","2017-03-30").size());
// cd.viewcomplaintreport('2017-03-03','2017-03-30');
 //System.out.println(cd.getallcomplaints().size());
//cd.viewallcomplaints();
}


 /*public static void main(String[] args) {
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "varshini", "varshini");
        Statement st=con.createStatement();
       
        int result =   st.executeUpdate("insert into complaint values (1,'10-2-2000','premises',1,'gfks','open','15-2-2000')");
        System.out.println(result);
        
          
       
        st.close();
        con.close();
        }catch(Exception ae){
            System.out.println(ae);
        }
    }
   */ 
}
    

