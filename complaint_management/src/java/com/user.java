
package com;

public class user {
    private  int user_id;
    private  String user_type;
    private  String login_id;
    private  String password;
    private  String user_lname;
    private  String user_fname;
        private  String status;
        private String gender;
        private String email_id;
         private String contact_no;
          private int age;
         
             private String country;
              private String address;
            

    public user(int user_id, String user_type, String login_id, String password, String user_lname, String user_fname, String status, String gender, String email_id, String contact_no, int age,  String country, String address)
    {
        this.user_id = user_id;
        this.user_type = user_type;
        this.login_id = login_id;
        this.password = password;
        this.user_lname = user_lname;
        this.user_fname = user_fname;
        this.status = status;
        this.gender = gender;
        this.email_id = email_id;
        this.contact_no = contact_no;
        this.age = age;
        this.country = country;
        this.address = address;
    }

   
     public user( String user_type, String login_id, String password, String user_lname, String user_fname, String status, String gender, String email_id, String contact_no,  String country, String address)
    {
       // this.user_id = user_id;
        this.user_type = user_type;
        this.login_id = login_id;
        this.password = password;
        this.user_lname = user_lname;
        this.user_fname = user_fname;
        this.status = status;
        this.gender = gender;
        this.email_id = email_id;
        this.contact_no = contact_no;
        this.age = 18;
        this.country = country;
        this.address = address;
        System.out.println("successful");
    }

    public String getGender() {
        return gender;
    }

    public String getEmail_id() {
        return email_id;
    }

    public String getContact_no() {
        return contact_no;
    }

    public int getAge() {
        return age;
    }

    public String getCountry() {
        return country;
    }

    public String getAddress() {
        return address;
    }
 

    public int getUser_id() {
        return user_id;
    }

    public String getUser_type() {
        return user_type;
    }

    public String getUser_lname() {
        return user_lname;
    }

    public String getUser_fname() {
        return user_fname;
    }

    public String getLogin_id() {
        return login_id;
    }

    public void setLogin_id(String login_id) {
        this.login_id = login_id;
    }
   
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
        
        

}
