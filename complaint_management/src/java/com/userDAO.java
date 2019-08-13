
package com;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class userDAO {
Statement st;
PreparedStatement ps;
user u;
public user validateUser(String loginid, String password){
         boolean status = false;
         user u=null;
         try{
          
         PreparedStatement ps=dbUtil.con().prepareStatement("select * from CUSER where  login_id = ? and password = ?");
         ps.setString(1,loginid);
         ps.setString(2, password);
         ResultSet rs = ps.executeQuery();
         status = rs.next();
         if(status)
         {
     u=new user(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getInt(11),rs.getString(12),rs.getString(13));
        return u;
         }
   
         }catch (Exception e){
             System.err.println(e);
         }
  
         return u;   
}

public user adminvalidate(String loginid, String password){
         boolean status = false;
         user u=null;
         try{
          
         PreparedStatement ps=dbUtil.con().prepareStatement("select * from CUSER where  login_id = ? and password = ?");
         ps.setString(1,loginid);
         ps.setString(2, password);
         ResultSet rs = ps.executeQuery();
         status = rs.next();
         if(status)
         {
     u=new user(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getInt(11),rs.getString(12),rs.getString(13));
        return u;
         }
   
         }catch (Exception e){
             System.err.println(e);
         }
  
         return u;   
}

public int disableuser(int user_id)
{  int status=0;
    try {
        PreparedStatement ps=dbUtil.con().prepareStatement("update Cuser set status='D'where user_id=?");
           ps.setInt(1,user_id);
           status = ps.executeUpdate();
         
    }catch (Exception e){
             System.err.println(e);
         }
    return status;

           
}

public static ArrayList<user> getallusers(){
    ArrayList<user> up = new ArrayList<user>();
    Statement stmt;
    user u;
 boolean status = false;
    try {
         stmt=dbUtil.con().createStatement();
          ResultSet rs =    stmt.executeQuery("select * from Cuser where status <> 'D' ");
          while(rs.next()){
             u=new user(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getInt(11),rs.getString(12),rs.getString(13));
              up.add(u);
          }
          
          
    } catch (Exception e){
             System.err.println(e);
         }
    return up;

           
}



public int addUser(user us){
   int result =0;
         try{
           boolean status = false;
         PreparedStatement ps=dbUtil.con().prepareStatement("insert into Cuser values(seq_userid.nextval,?,?,?,?,?,?,?,?,?,?,?,?)");
        // ps.setInt(1,us.getUser_id());
         ps.setString(1,us.getUser_type());
          ps.setString(2,us.getLogin_id());
           ps.setString(3,us.getPassword());
            ps.setString(4,us.getUser_fname());
             ps.setString(5,us.getUser_lname());
              ps.setString(6,us.getStatus());
              ps.setString(7,us.getGender());
               ps.setString(8,us.getEmail_id());
                ps.setString(9,us.getContact_no());
                 ps.setInt(10,us.getAge());
               ps.setString(11,us.getCountry());
                 ps.setString(12,us.getAddress());
          result = ps.executeUpdate();
         System.out.println(result);
        
                  }catch(Exception ae){
            System.out.println(ae);
        }
    
    
    return result;         
}

public static void main(String[] args) {
 user u=new user("D", "abcd", "abcd","jhfe","abcd", "A","Male","jdhfg","63563", "hdgf","jhwdgf");    
  //user u= new user("A" ,"aptech","aptech","pqjr","sddgrth","O" ,"Male","hggjgf","665656400",20,"shgf","sdgfkjjef");
  userDAO ud = new userDAO();
  ud.addUser(u);
  
}
        /* 
    public static void main(String[] args) {
      
        try{
           boolean status = false;
         PreparedStatement ps=dbUtil.con().prepareStatement("select * from CUSER where  login_id = ? and password = ?");
         ps.setString(1,"asasadmin");
         ps.setString(2, "aptesasch");
         ResultSet rs = ps.executeQuery();
         status = rs.next();
         System.out.println(status);
    
                     Statement st=dbUtil.con().createStatement(); 
        int result =   st.executeUpdate("insert into Cuser values(2,'Doctor','sd','hr','av','vb','open')");
        System.out.println(result);           
                  }catch(Exception ae){
            System.out.println(ae);
        }
    }*/                                    
   
    
}
