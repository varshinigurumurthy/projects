

package com;

import java.sql.Date;


public class feedback {

    public String getGender() {
        return gender;
    }
    private int id;
    private String name;
     private String contact_no;
      private String email;
      private String gender;
    public String getName() {
        return name;
    }

    public String getContact_no() {
        return contact_no;
    }

    public String getEmail() {
        return email;
    }
    

    public Date getFDate() {
        return FDate;
    }

    public feedback(int id, String name, String contact_no, String email, int user_id, Date FDate, String suggestion, String status) {
        this.id = id;
        this.name = name;
        this.contact_no = contact_no;
        this.email = email;
        this.user_id = user_id;
        this.FDate = FDate;
        this.suggestion = suggestion;
        this.status = status;
    }

     public feedback( String name,String gender  ,String contact_no,String email, String suggestion, String status) {
      //  this.id = id;
        this.name = name;
        this.contact_no = contact_no;
        this.gender=gender;
        this.email = email;
        this.user_id = user_id;
        this.FDate = FDate;
        this.suggestion = suggestion;
        this.status = status;
    }

    
    public int getId() {
        return id;
    }

    public int getUser_id() {
        return user_id;
    }

    public feedback(int id, int user_id, Date FDate, String suggestion, String status) {
        this.id = id;
        this.user_id = user_id;
        this.FDate = FDate;
        this.suggestion = suggestion;
        this.status = status;
    }

 
    private int user_id;

    public String getSuggestion() {
        return suggestion;
    }

    public void setSuggestion(String suggestion) {
        this.suggestion = suggestion;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
     private Date FDate;
      private String  suggestion;
      private String status;
}
