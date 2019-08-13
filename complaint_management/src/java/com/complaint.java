

package com;

import java.sql.Date;


public class complaint {
   private int CID;

    public int getCID() {
        return CID;
    }

    public Date getCdate() {
        return Cdate;
    }

    public String getCtype() {
        return Ctype;
    }

    public int getUser_id() {
        return user_id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getClosedate() {
        return closedate;
    }

    public void setClosedate(Date closedate) {
        this.closedate = closedate;
    }
   private Date Cdate;
    private String   Ctype;
    private   int    user_id;

   public complaint( String Ctype, int user_id, String description, String status, Date closedate) {
        this.CID = CID;
        this.Cdate = Cdate;
        this.Ctype = Ctype;
        this.user_id = user_id;
        this.description = description;
        this.status = status;
        this.closedate = closedate;
    }
    
    public complaint(int CID, Date Cdate, String Ctype, int user_id, String description, String status, Date closedate) {
        this.CID = CID;
        this.Cdate = Cdate;
        this.Ctype = Ctype;
        this.user_id = user_id;
        this.description = description;
        this.status = status;
        this.closedate = closedate;
    }
     private String description ;
     private String  status;
    private Date closedate;
}
