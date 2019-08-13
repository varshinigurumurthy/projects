//Personal Details class
/*
 * CREATE TABLE `test`.`hkinfo` (
  `voucher_no` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_date` DATE NOT NULL DEFAULT 0,
  `agent` VARCHAR(30) NOT NULL DEFAULT '',
  `rate` INTEGER UNSIGNED NOT NULL DEFAULT 0,
  `received_amt` DOUBLE NOT NULL DEFAULT 0,
  `hotel_name` VARCHAR(30) NOT NULL DEFAULT '',
  `final_amt` DOUBLE NOT NULL DEFAULT 0,
  PRIMARY KEY(`voucher_no`)
)
ENGINE = InnoDB;
 * 
 */

import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
import java.awt.event.WindowListener.*;
import javax.swing.border.*;
import java.sql.*;
import java.io.*;
import java.text.SimpleDateFormat;
import java.text.ParsePosition;
import java.util.Date;

public class Personal_Details extends JInternalFrame  
{  
	JScrollPane jsp;
	Container c;	
	public Personal_Details()
	{   
		super("HKTravels Data Entry");
		
		Personal_Details1 PD1 = new Personal_Details1();

		int v=ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED;
		int h=ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED;
		jsp=new JScrollPane(PD1,v,h);
        getContentPane().add(jsp);
		
		setClosable(true);
		setIconifiable(true);
		setMaximizable(true);
//		pack();
		setVisible(true);
		setSize(700,900);
		
	}
}

class Personal_Details1 extends JPanel implements ActionListener
{  
	GridBagLayout gb;
	GridBagConstraints gbc;
	
	TitledBorder titled;
	Border b;	
	JButton Add,Save,ViewData,delete;

	JPanel p=new JPanel();
	
	JLabel lbl[];
	JTextField tf[];
	JTextArea ta[];
	JComboBox jcb[];
	
	PreparedStatement pst;
	Statement st;
	ResultSet rs;
	int a1,b1,c1;
	
	private static String str;
	String iquery,squery;	//----------14 instead of 22
	String data[]=new String[21];// to get user input 
								                  //    According DB				 According Form
				String field[]={
													//****************************************
													 "Voucher No.",  //0
														  "Booking Date",//1
														  "Agent", //2    (not a  text field)
														  "Rate", //3   (not a  text field)
														  "Hotel Name",//4     
														  "Received Amount",//5
														  
														  
													//	  "Journey Date",//4
													//	  "Gross Amount",//5
														
														 // "Received Date",//7
														 // "Bus Amount",//8
														 // "Bus Report Date",//9
														 // "Return Amount",//10
														 // "Return Date",//11
														 // "SideSceneAmount",//12
														 // "SideScene Date",//13
														 // "Hotel Amount",//14
														 // "Hotel Date",//15
														  //"Hotel Name",//16     //5
														 // "Room type",//17
														 // "No Of Nights",//18
														 // "No Of Rooms",//19
														 // "Total Pax",//20
														  "Final Amount",
														 //*********************************
		

												}	;	

public Personal_Details1()
	{
		int i =0;
		gb=new GridBagLayout();
		gbc=new GridBagConstraints();
		setLayout(gb);
		gbc.insets=new Insets(5,5,5,5);
		
		b=BorderFactory.createEtchedBorder(EtchedBorder.RAISED,Color.black,Color.blue);
		titled=new TitledBorder(b,"HKTravel Data Entry Form");
		titled.setTitleFont(new Font("Monotype corsiva",Font.ITALIC+Font.BOLD,20));
		setBorder(titled);
					

		lbl=new JLabel[10];
		tf=new JTextField[10];
		ta = new JTextArea[2];
		jcb= new JComboBox[10];
	
		
		/////////////////for (i =0; i<11;i++ )
			//for (i =0; i<21;i++ )
		for (i =0; i<6;i++ )  //for 6 components
		{
		//	if (i!= 19 && i!=21)
		//	{ 

			//if ((i!=5)&& (i!= 7)&& (i!= 8)&& (i!= 10))
				if ((i!=2)&& (i!= 3))
				{

				lbl[i]=new JLabel(field[i]);  
			    lbl[i].setFont(new Font("Times new roman",Font.PLAIN+Font.BOLD,16));
				tf[i]=new JTextField(15);
				
				int j = 0;
				addComponent( lbl [i],i,j,1,1);
				j = 1;
				addComponent( tf[i],i,j,1,1);
			   }
				
				else
				{
			//		jcb[i]=new JComboBox();
					int j=0;
			//	lbl[i]=new JLabel(field[i]);  
			  //  lbl[i].setFont(new Font("Times new roman",Font.PLAIN+Font.BOLD,16));
			//	addComponent( lbl [i],i,j,1,1);

								int v=ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED;
								int h=ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER;
						
									if(i==2)  // for agent
									{
												lbl[i]=new JLabel(field[i]);  
											    lbl[i].setFont(new Font("Times new roman",Font.PLAIN+Font.BOLD,16));
												addComponent( lbl [i],i,j,1,1);
												
												jcb[1]=new JComboBox();
												jcb[1].addItem("Mehta");
												jcb[1].addItem("Patel");
												addComponent(jcb[1],i,1,1,1); 
											//	int j=0;         //***************
												j=1;
									}
								
									if(i==3)
									{
													lbl[i]=new JLabel(field[i]);  
										    lbl[i].setFont(new Font("Times new roman",Font.PLAIN+Font.BOLD,16));
											addComponent( lbl [i],i,j,1,1);
											
											jcb[2]=new JComboBox();
											jcb[2].addItem("10");
											jcb[2].addItem("15");
											jcb[2].addItem("20");
											
											addComponent(jcb[2],i,1,1,1); 
									}
			/*		if(i==17)
					{
                    lbl[i]=new JLabel(field[i]);  
			    lbl[i].setFont(new Font("Times new roman",Font.PLAIN+Font.BOLD,16));
				addComponent( lbl [i],i,j,1,1);
				
				jcb[3]=new JComboBox();
				jcb[3].addItem("A/C");
				jcb[3].addItem("non A/C");
				jcb[3].addItem("DLX");
				
				addComponent(jcb[3],i,1,1,1); 
					}
					if(i==19)
					{
					    lbl[i]=new JLabel(field[i]);  
			    lbl[i].setFont(new Font("Times new roman",Font.PLAIN+Font.BOLD,16));
				addComponent( lbl [i],i,j,1,1);
				
				jcb[4]=new JComboBox();
				jcb[4].addItem("1");
				jcb[4].addItem("2");
				jcb[4].addItem("3");
				jcb[4].addItem("4");
				jcb[4].addItem("5");
				jcb[4].addItem("6");
				addComponent(jcb[4],i,1,1,1); 
			
					}
					}
	*/
		 }	//end of else								           // and ^ hear
		}  //end of for
	
		//disabletxtflds();System.out.println("Textfields disabled.");
	p.setLayout(new FlowLayout());

//creating 3 buttons and adding it to the panel p
		Save=new JButton("Save");
		Save.addActionListener(this); 
		Save.setToolTipText("To Save a Visitor Detail Record");

		Add=new JButton("Add");
		Add.addActionListener(this);
		Add.setToolTipText("To Add a  Visitor Detail Record");

		ViewData=new JButton("ViewData");
		ViewData.addActionListener(this);
		ViewData.setToolTipText("To Search for a Visitor record");

		 delete=new JButton("Delete");
		delete.setToolTipText(" To Delete a Record");
		delete.addActionListener(this);

		
		p.add(Add);
		p.add(Save);
		p.add(ViewData);
		p.add(delete);

		addComponent(p,i,0,1,1);//  important
		Save.setEnabled(false);  
	}  //end of ctr

  public void addComponent(Component comp,int row ,int col,int width,int height)
		{
			gbc.gridx=col;
			gbc.gridy=row;
			gbc.gridwidth=width;
			gbc.gridheight=height;
			gb.setConstraints(comp,gbc);
			this.add(comp);
		}
		
public void actionPerformed(ActionEvent ae) 
		{
			if(ae.getSource()==Add) 
		   {
							enabletxtflds();
							Save.setEnabled(true);
						//	tf[0].requestFocus();			
			}
			
		  if(ae.getSource()==Save)
		{  				
				int i=0,j=0;
		/*----------------------------validation----------------------*/
				System.out.println("1Enters the Save ActionPerformed method");
				try
				{	
			
			
				//***********************************************************
				System.out.println("test_before1........................");

				
				String voucherno=	tf[0].getText();    
				String bookdate=tf[1].getText(); 
System.out.println("voucherno"+voucherno);		
System.out.println("bookdate"+bookdate);		
				String agent=jcb[1].getSelectedItem().toString();  
				String rate=jcb[2].getSelectedItem().toString();   
				
				System.out.println("agent"+agent);		
				System.out.println(" rate"+rate);
				System.out.println("test_before2........................"+rate);

				String hotalname=tf[4].getText();
				System.out.println("Ueeedsafdsafdsafdsaf"+hotalname);
				System.out.println("test_before3........................");

				String receivedamt=tf[5].getText();     //System.out.print(data[6]+" ");
				
				/*String journeydate=tf[4].getText();   //  System.out.print(data[4]+" ");
				String grossamt=tf[5].getText();     //System.out.print(data[5]+" ");
				String receivedamt=tf[6].getText();     //System.out.print(data[6]+" ");
				String receivedate=tf[7].getText();    // System.out.print(data[7]+" ");  System.out.println(tf[8]+" ");System.out.println(tf[9]+" ");
				String busamt=tf[8].getText(); 
				String busrepdate=tf[9].getText();     //System.out.print(data[9]+" ");
				String returnamt=tf[10].getText();  //  System.out.print(data[10]+" ");
				String returndate=tf[11].getText();    // System.out.print(data[11]+" ");
				String sidescamt=tf[12].getText();    //System.out.print(data[12]+" ");
 				String sidescdate	=tf[13].getText(); // System.out.print(ta[0]+" ");
				String hotelamt	=tf[14].getText();
				String hoteldate	=tf[15].getText();
				String hotalname	=tf[16].getText();
				String roomtype	=jcb[3].getSelectedItem().toString();
				String nightsno	=tf[18].getText();
				String roomsno	=jcb[4].getSelectedItem().toString();
				String totalpax	=tf[20].getText();
				//String finalamt	=tf[21].getText();
				//***********************************************************/

				System.out.println("test_after........................");

              //    double gross=Double.parseDouble(grossamt);
			//	   double bus=Double.parseDouble(busamt);
   				//   double rtamt=Double.parseDouble(returnamt);
   				//   double sc=Double.parseDouble(sidescamt);
				//   double hotel=Double.parseDouble(hotelamt);
     				
	    //  double  finalAmt=gross-(bus+returnamt+sidesc+hotel);
				//rate
				   int rate1=Integer.parseInt(rate);
					double  receivedamt1=Double.parseDouble( receivedamt);
					//double due=Due(gross,recamt);
					double finalamt=amountCal(rate1,receivedamt1);
					boolean flag=true;                  //____________________
						int k;
	
		
		for(k=0; k<voucherno.length(); k++)
				{
					
				if((voucherno.charAt(k) >= 'a' && voucherno.charAt(k) <= 'z' || voucherno.charAt(k) >= 'A' && voucherno.charAt(k) <= 'Z') ) 
					{
						tf[0].setText("");
						JOptionPane.showMessageDialog(null,"Enter Only Numbers in Voucher No. Field","alert", JOptionPane.ERROR_MESSAGE);
						tf[0].grabFocus();
						flag=false;	
						return;
					}	
				}

			/*			for(k=0; k<grossamt.length(); k++)
				{
					
				if((grossamt.charAt(k) >= 'a' && grossamt.charAt(k) <= 'z' || grossamt.charAt(k) >= 'A' && grossamt.charAt(k) <= 'Z') ) 
					{
						tf[5].setText("");
						JOptionPane.showMessageDialog(null,"Enter Only Numbers in Gross Amount. Field","alert", JOptionPane.ERROR_MESSAGE);
						tf[5].grabFocus();
						flag=false;	
						return;
					}	
				}
	*/

 for(k=0; k<hotalname.length(); k++)
				{
					
					if(!(hotalname.charAt(k) >= 'a' && hotalname.charAt(k) <= 'z' || hotalname.charAt(k) >= 'A' && hotalname.charAt(k) <= 'Z') ) 
					{
						tf[4].setText("");  //hotelname
						JOptionPane.showMessageDialog(null,"Enter Only Character in Hotel Name Field","alert", JOptionPane.ERROR_MESSAGE);
						tf[4].grabFocus();
						flag=false;	
						return;	
					}	
				}

//********************
					
 /*     if(new Date (journeydate).after(new Date (returndate)))
					{
      JOptionPane.showMessageDialog(null, "Start Date invalid", "Alert", JOptionPane.ERROR_MESSAGE);
										tf[4].setText("");
                      return;
					}
else
	{
	System.out.println("Succsded");
      //JOptionPane.showMessageDialog(null, "Succeded", "Alert", JOptionPane.ERROR_MESSAGE);
    }
//********************/					




/*
		for(k=0; k<grossamt.length(); k++)
				{
					
				if((grossamt.charAt(k) >= 'a' && grossamt.charAt(k) <= 'z' || grossamt.charAt(k) >= 'A' && grossamt.charAt(k) <= 'Z') ) 
					{
						tf[5].setText("");
						JOptionPane.showMessageDialog(null,"Enter Only Numbers in Gross Amount Field","alert", JOptionPane.ERROR_MESSAGE);
						tf[5].grabFocus();
						flag=false;	
						return;
					}	
				}
*/
		for(k=0; k<receivedamt.length(); k++)
				{
					
				if((receivedamt.charAt(k) >= 'a' && receivedamt.charAt(k) <= 'z' || receivedamt.charAt(k) >= 'A' && receivedamt.charAt(k) <= 'Z') ) 
					{
						tf[6].setText("");
						JOptionPane.showMessageDialog(null,"Enter Only Numbers in Received Amount Field","alert", JOptionPane.ERROR_MESSAGE);
						tf[6].grabFocus();
						flag=false;	
						return;
					}	
				}
/*
		for(k=0; k<busamt.length(); k++)
				{
					
				if((busamt.charAt(k) >= 'a' && busamt.charAt(k) <= 'z' || busamt.charAt(k) >= 'A' && busamt.charAt(k) <= 'Z') ) 
					{
						tf[8].setText("");
						JOptionPane.showMessageDialog(null,"Enter Only Numbers in Bus Amount Field","alert", JOptionPane.ERROR_MESSAGE);
						tf[8].grabFocus();
						flag=false;	
						return;
					}	
				}

		for(k=0; k<returnamt.length(); k++)
				{
					
				if((returnamt.charAt(k) >= 'a' && returnamt.charAt(k) <= 'z' || returnamt.charAt(k) >= 'A' && returnamt.charAt(k) <= 'Z') ) 
					{
						tf[10].setText("");
					JOptionPane.showMessageDialog(null,"Enter Only Numbers in Return Amount Field","alert", JOptionPane.ERROR_MESSAGE);

						tf[10].grabFocus();
						flag=false;	
						return;
					}	
				}

		for(k=0; k<sidescamt.length(); k++)
				{
					
				if((sidescamt.charAt(k) >= 'a' && sidescamt.charAt(k) <= 'z' || sidescamt.charAt(k) >= 'A' && sidescamt.charAt(k) <= 'Z') ) 
					{
						tf[12].setText("");
						JOptionPane.showMessageDialog(null,"Enter Only Numbers in Side Scene Amount Field","alert", JOptionPane.ERROR_MESSAGE);
						tf[12].grabFocus();
						flag=false;	
						return;
					}	
				}

		for(k=0; k<hotelamt.length(); k++)
				{
					
				if((hotelamt.charAt(k) >= 'a' && hotelamt.charAt(k) <= 'z' || hotelamt.charAt(k) >= 'A' && hotelamt.charAt(k) <= 'Z') ) 
					{
						tf[14].setText("");
						JOptionPane.showMessageDialog(null,"Enter Only Numbers in Hotel Amount Field","alert", JOptionPane.ERROR_MESSAGE);

						tf[14].grabFocus();
						flag=false;	
						return;
					}	
				}


/*				 for(k=0; k<father_name.length(); k++)
				{
					
					if(!(father_name.charAt(k) >= 'a' && father_name.charAt(k) <= 'z' || father_name.charAt(k) >= 'A' && father_name.charAt(k) <= 'Z') ) 
					{
						tf[3].setText("");
						JOptionPane.showMessageDialog(null,"Enter Only Character in Father's Name Field","alert", JOptionPane.ERROR_MESSAGE);
						tf[3].grabFocus();
						flag=false;	
						return;	
					}	
				}



if(!(valid_date(birth_date)  ))
					{
                                    JOptionPane.showMessageDialog(null, "Enter proper Date format ", "Alert", JOptionPane.ERROR_MESSAGE);
                              return;

					}*/
//comment this rajiv gupta
/*for(k=0; k<bookdate.length(); k++)
				{
					
					if(!(bookdate.charAt(k) >= 'a' && bookdate.charAt(k) <= 'z' || bookdate.charAt(k) >= 'A' && bookdate.charAt(k) <= 'Z') ) 
					{
						tf[1].setText("");
						JOptionPane.showMessageDialog(null,"Enter Proper date format in Booking Date Field","alert", JOptionPane.ERROR_MESSAGE);
						tf[1].grabFocus();
						flag=false;	
						return;	
					}	
				}
				*/
/*                              here
System.out.println("1Enters phoneno");
for(j=0; j<phone_no.length(); j++)
				{
					
					if((phone_no.charAt(j) >= 'a' && phone_no.charAt(j) <= 'z' || phone_no.charAt(j) >= 'A' && phone_no.charAt(j) <= 'Z') ) 
					{
						//System.out.println("string"+tf[9]);
						tf[9].setText("");
						JOptionPane.showMessageDialog(null,"Enter Only Number's in Phone No. Field","alert", JOptionPane.ERROR_MESSAGE);
						tf[9].grabFocus();
						flag=false;	
						return;	
					}	
				}

				

				}

*/


//if(!ref_no.equals("") && !roll_no.equals("") && !student_name.equals("") && !father_name.equals("") && !mother_name.equals("") && !gender.equals("") && !birth_date.equals("") && !standard.equals("") && !division.equals("") && !phone_no.equals("") && !address.equals(""))//include later && !guardian.equals("") && !joining_date.equals("") && !gr_no.equals("")
		   {
	//iquery="insert into studentInfo(refno,rollno,studentname,fathersname,mothersname,gender,birthdate,std,div,phoneno,permanentadd)values('"+ref_no+"',"+roll_no+",'"+student_name+"','"+father_name+"','"+mother_name+"','"+gender+"','"+birth_date+"',"+standard+",'"+division+"',"+phone_no+",'"+address+"')"; //include later '"+guardian+"','"+joining_date+"','"+gr_no+"',
	//************************************************
	//iquery="insert into hkinfo(voucher_no,book_date,agent,rate,journey_date,gross_amt,received_amt,received_date,bus_amt,bus_report_date,return_amt,return_date,sidescene_amt,sidescene_date,hotel_amt,hotel_date,hotel_name,room_type,nights_no,rooms_no,total_pax,final_amt,due_amt)values("+voucherno+",'"+bookdate+"','"+agent+"',"+rate+",'"+journeydate+"',"+grossamt+","+receivedamt+",'"+receivedate+"',"+busamt+",'"+busrepdate+"',"+returnamt+",'"+returndate+"',"+sidescamt+",'"+sidescdate+"',"+hotelamt+",'"+hoteldate+"','"+hotalname+"','"+roomtype+"',"+nightsno+","+roomsno+","+totalpax+","+finalamt+","+due+")"; 
	//**************************************
	iquery="insert into hkinfo(voucher_no,book_date,agent,rate,received_amt,hotel_name,final_amt)values("+voucherno+",'"+bookdate+"','"+agent+"',"+rate+","+receivedamt+",'"+hotalname+"',"+finalamt+")";
					System.out.println(iquery);
					System.out.println("created query");
             
			  Connection con=DBFactory.getConnection();
			  Statement st= DBFactory.getStatement(con);
    		  st.executeUpdate(iquery);
  			  System.out.println("inserted successfully");

        	  DBFactory.closeConnection(con);
			 
			JOptionPane.showMessageDialog(null,"The Student Details are  saved","Record Saved",JOptionPane.INFORMATION_MESSAGE);
							//clearallflds();
							//disabletxtflds();
						tf[0].requestFocus();
						Save.setEnabled(false);
						System.out.println("after qurey");

						

			}//end of save try block.


			//else 
			//        {
			//			JOptionPane.showMessageDialog(null, "Please fill the Empty Fields", "Alert", JOptionPane.ERROR_MESSAGE); 
			//		   }
		}

			catch(Exception e)
			{  System.out.println("Opps!"+e);
				e.printStackTrace();
				JOptionPane.showMessageDialog(this,e,"Error Data not saved in database",JOptionPane.ERROR_MESSAGE);
			}//Save catch
			
		 }   // end ofsave


//class Hkt
//{
//   double gross,total,rate,Final,bus,returnamt,sidesc,hotel;






			if(ae.getSource()==ViewData)
			{
			  TableFromDatabase td1=new TableFromDatabase();
			  HKTravels.jdp.add(td1);	
			  td1.moveToFront();	
			}

		/*	   if(ae.getSource()==Search)
			{
			try
				{   Search srh =new Search();
				
				
						String Sch=JOptionPane.showInputDialog(null,"Enter the Name");
						System.out.println("hello");
						squery="select  * from new_form where CompName='" +Sch+"'";
						System.out.println("hello1");
							st=JProject.con.createStatement();
							 rs=st.executeQuery(squery);
							System.out.println("hello2");
						while(rs.next())
						{
							data1[0]=rs.getString("Status");
							System.out.println(data1[0]);
							data1[1]=rs.getString("Roll No.");
							System.out.println(data1[1]);
							data1[3]=rs.getString("Address");
							System.out.println(data1[3]);
							a1=rs.getInt("CompTel");
							System.out.println(a1);
							b1=rs.getInt("CompFax");
							System.out.println(b1);
						}//End of while
						tf[0].setText(data1[0]);//Compid
						tf[1].setText(data1[1]);//Compname
						ta.setText(data1[3]);//CompAdd
						// String str;
						tf[2].setText(str.valueOf(a1));//CompTel
						tf[4].setText(str.valueOf(b1));//CompFax

				}//End of try of search
			catch(Exception e)
				{
					e.printStackTrace();
				JOptionPane.showMessageDialog(this,e,"Error",JOptionPane.ERROR_MESSAGE);
				}//Serach catch
			
			}//End of if of search*/
  //***************************************************** 	
   	if(ae.getSource()==delete) 
		   {
System.out.println("inside delete.................. ");

//Marks_DetailsDel  mdd =new Marks_DetailsDel();
//HKTravels.jdp.add(mdd);	
//HKTravels.jdp.moveToFront(mdd);
		   }
	//***********************************/		 
			
			} // end of actionPerformed



private double amountCal(int rate1, double receivedamt1) {
	  				double  finalAmt=rate1*receivedamt1;
	  						System.out.println("Gross amount is" + finalAmt);
	  							return finalAmt;
}

/*double Due(double gross,double received)
	{
		double dueAmt=gross-received;
		System.out.println("Due amount is" + dueAmt);
		return dueAmt;
	}
*/
	 public boolean valid_date(String strDate)
	{
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		df.setLenient(false);
		ParsePosition pos = new ParsePosition(0);
		Date date = df.parse(strDate, pos);
		
                // Check all possible things that signal a parsing error
		if ((date == null) || (pos.getErrorIndex() != -1)) 
			return false;
		return true;
    }			



		public void  disabletxtflds()
		{  
			int i,j;
			for( i = 0,j = 0; i<14 ; i++) 
					{ 
//					   if ( i!= 19 && i!=21)
						   
					     tf[i].setEnabled(false);
				     
//					 else 
//						    ta[j].setEnabled(false); j=1;						
					}	
		}
      
	   public void enabletxtflds()
       { 
		   int i,j;
			for( i = 0,j = 0; i<14 ; i++) 
					{ 
//					   if ( i!= 19 && i!=21)
					   
				    // tf[i].setEnabled(true);
				     
//					 else 
//						    ta[j].setEnabled(true); j=1;
					}	
			}
	public void clearallflds()
	{
		int i,j;
			for( i = 0,j = 0; i<14 ; i++) 
					{ 
	   
					   //if ( i!= 19 && i!=21)
//						   
					     tf[i].setText("");
				     
//					 else 
//						    ta[j].setText(""); j=1;
					}
	}
		
}



