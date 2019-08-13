/********************************************************************************TThe dsn name is bcg
The database name is hkdb  ,dsn name is Super
*********************************************************************************/
import javax.swing.*;
import javax.swing.event.*;
import javax.swing.border.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.sql.*;
import java.util.*;

/*
* @version 1.0 02/26/07
*  SuperSoft Technologies
* @author Rajiv Gupta
*/

public class HKTravels extends JFrame implements ActionListener, MenuListener
{  	 
	static JDesktopPane jdp;
	Container cp;

	JMenuBar jmb;
	
	JMenu jMenuData; 
	//JMenu jMenuReport;		
//	JMenu jMenuUtil;
//	JMenu jMenuWeb;
//	JMenu jMenuHelp;		
	    
	JMenuItem jmiDentry , jmiSDentry, jmiSMarks,jmiExit,jmiMonth;
	//JMenuItem jmiReport,jmiPrint;
//	JMenuItem jmiCalc,jmiCal,jmiThought,jmiSeason;
//	JMenuItem jmiHelp,jmiAbout;
  //  JMenuItem jAdmin,jmiWeb;

	JToolBar toolBar	= new JToolBar();
	JPanel northPanel	= new JPanel();   //required for toolbar

	JButton[] toolbarButton=new JButton[5];
	String [] toolbarImages= {"note","open","print","about", "exit"};
	String [] toolbarTip= {"Visitor DataEntry","Season Rates","Print","About", "Exit"};
  
	Font f = new Font("Times New Roman",Font.BOLD,14);

//	StudDataEntry sde;
  //	StudMarksEntry sme;
	Dimension screenSize;

public HKTravels()
{
setTitle("Automated Record Management System  HKTravels");

jdp=new JDesktopPane();
setContentPane(jdp); //set  the jdp to content pane 
cp=getContentPane();
cp.setLayout(new BorderLayout());  //makes the toolbar visible

jmb=new JMenuBar();

 jMenuData=new JMenu("Visitor-Entry"); 
 //jMenuReport=new JMenu("Reports"); 	
 //jMenuUtil=new JMenu("Utilities"); 
 //jMenuWeb=new JMenu("Web-Link"); 
// jMenuHelp=new JMenu("Help"); 
 
 //setting  the font of menu's
jMenuData.setFont(f);
//jMenuReport.setFont(f);
//jMenuUtil.setFont(f);
//jMenuWeb.setFont(f);
//jMenuHelp.setFont(f);
//jMenuData.setFont(f);

//setJMenuBar(mb);
setJMenuBar(menuBar());

northPanel.setLayout(new BorderLayout()); //set the layout of the toolbar
addButtons(toolBar); //adding buttons to the toolbar		
northPanel.add("North", toolBar); //adding the toolbar to the panel
cp.add("North",northPanel);		//adding the panel to the contentpane		


 Toolkit t=Toolkit.getDefaultToolkit();
 Dimension d =t.getScreenSize();	//get the screen width & height	
 int width=d.width;
 int height=Toolkit.getDefaultToolkit().getScreenSize().height;
 setBounds(0, 0, width, height); 
/*
Makes the Window visible. If the Window   	and/or its owner are not yet displayable,
both are made displayable. The Window will   	be validated prior to being made visible.
If the Window is already visible, this will 	bring the Window to the front.
*/
show();
WindowListener l=new WindowAdapter()
{
public void windowClosing(WindowEvent we)
{
int confirm=JOptionPane.showOptionDialog(null,"Do You Want To exit?","Exit Information",JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE,null,null,null);
	if (confirm==0)    
		{ 
		   dispose();
		  System.exit(0);
		}	
}
};
addWindowListener(l);
}  //end of ctr

private JMenuBar menuBar(){
    	//Data Menu
		jmiSDentry = new JMenuItem("VisitorDataEntry");
		/*
		Set the key combination which invokes the Menu Item's action listeners without
		navigating the menu hierarchy. It is the		UIs responsibility to do install the correct action.
		*/
		jmiSDentry.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_D, ActionEvent.CTRL_MASK));
		//add the action listener
		jmiSDentry.addActionListener(this);
		//add this menuitem to the Algo Menu
		jMenuData.add(jmiSDentry);	
		jmiSDentry.setFont(f);

		jmiSMarks = new JMenuItem("VisitorSearchEntry");
		jmiSMarks.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_M, ActionEvent.CTRL_MASK));
        jmiSMarks.setHorizontalTextPosition(JMenuItem.RIGHT);
        jmiSMarks.setFont(f);

		jmiSMarks.addActionListener(this);
       jmiSMarks.setBorder(new BevelBorder(BevelBorder.RAISED));  //looks good
		jMenuData.add(jmiSMarks);	
       jMenuData.setBorder(new BevelBorder(BevelBorder.RAISED));  //looks good

		jMenuData.addSeparator();
		//*******************************************************
//			jmiMonth = new JMenuItem("MonthlyExpenditure");
		
	//	jmiMonth.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_E, ActionEvent.CTRL_MASK));
		//jmiMonth.addActionListener(this);
		//jMenuData.add(jmiMonth);	
		//jmiMonth.setFont(f);
		//*****************************************************

  jmiExit = new JMenuItem("Exit");
		jmiExit.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_F4, ActionEvent.ALT_MASK));
		jmiExit.setFont(f);
		jmiExit.addActionListener(this);
		jMenuData.add(jmiExit);	
//************************************
//  jmiReport = new JMenuItem("MonthExpenditure");
		//jmiReport.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_R, ActionEvent.ALT_MASK));
	//	jmiReport.addActionListener(this);
//		jmiReport.setFont(f);
	//	jMenuReport.add(jmiReport);	
// jmiPrint = new JMenuItem("Record");
	//	jmiPrint.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_P, ActionEvent.ALT_MASK));
		//jmiPrint.addActionListener(this);
//		jmiPrint.setFont(f);
	//	jMenuReport.add(jmiPrint);	
//*********************************************************
//jmiCalc = new JMenuItem("Calculator");
	//	jmiCalc.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_C, ActionEvent.ALT_MASK));
		//jmiCalc.addActionListener(this);
		//jmiCalc.setFont(f);
//		jMenuUtil.add(jmiCalc);	
//jmiCal = new JMenuItem("SeasonRates");
	//	jmiCal.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_L, ActionEvent.ALT_MASK));
		//jmiCal.addActionListener(this);
		//jmiCal.setFont(f);
		//jMenuUtil.add(jmiCal);	
	//	jMenuUtil.addSeparator();
/*jmiThought = new JMenuItem("Thought for the day");
		jmiThought.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_T, ActionEvent.ALT_MASK));
		jmiThought.addActionListener(this);
		jmiThought.setFont(f);
		jMenuUtil.add(jmiThought);	

jmiSeason = new JMenuItem("Show Season Rates");
		jmiSeason.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_T, ActionEvent.ALT_MASK));
		jmiSeason.addActionListener(this);
		jmiSeason.setFont(f);
		jMenuUtil.add(jmiSeason);	




//*********************************************************

jmiHelp = new JMenuItem("Help");
		//jmiHelp.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_H, ActionEvent.ALT_MASK));
		jmiHelp.addActionListener(this);
		jmiHelp.setFont(f);
		jMenuHelp.add(jmiHelp);	
jmiAbout = new JMenuItem("About");
		//jmiAbout.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_D, ActionEvent.CTRL_MASK));
		jmiAbout.addActionListener(this);
		jmiAbout.setFont(f);
		jMenuHelp.add(jmiAbout);	
/*********************************************************/

/*
jAdmin= new JMenuItem("Administrator");
		jAdmin.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_F4, ActionEvent.ALT_MASK));
		jAdmin.setFont(f);
		jAdmin.addActionListener(this);
	//	jMenuWeb.add(jAdmin);	
jMenuWeb.addSeparator();

jmiWeb = new JMenuItem("WebLink");
		jmiWeb.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_W, ActionEvent.CTRL_MASK));
		jmiWeb.addActionListener(this);
		jmiWeb.setFont(f);
		jMenuWeb.add(jmiWeb);
*/
		jmb.add(jMenuData); 
	//	jmb.add(jMenuReport); 	
	//	jmb.add(jMenuUtil);
		//jmb.add(jMenuWeb);
//		jmb.add(jMenuHelp);
		return jmb;
	}
	
void addButtons(JToolBar toolBar) 
		{
        for (int i=0;i<toolbarButton.length;i++)
			{
        	toolbarButton[i] = new JButton(new ImageIcon("images/"+toolbarImages[i]+".gif"));
	        toolbarButton[i].setToolTipText(toolbarTip[i]);
	        toolbarButton[i].addActionListener(this);
    		toolBar.add(toolbarButton[i]);
	     }        
    }

public void actionPerformed(ActionEvent e)
		{
	if ((e.getSource()== jmiSDentry)||(e.getSource()==toolbarButton[0]))
			{
//			Student_Details std=new Student_Details();
            Personal_Details std = new Personal_Details();
			jdp.add(std);	
			jdp.moveToFront(std);
		//	jdp.remove(jdp.getSelectedFrame());
		//	jdp.getSelectedFrame().setVisible(false);
		}
			
	//	else if ((e.getSource()==jmiSMarks)||(e.getSource()==toolbarButton[1]))
		//	{
		//	Marks_Details smd=new Marks_Details();	
			//jdp.add(smd);	
		 //   jdp.moveToFront(smd);
//											Admin smd2=new Admin();	
	//							jdp.add(smd2);	
		//						jdp.moveToFront(smd2);

		//	}

		else if ((e.getSource()== jmiExit)||(e.getSource()==toolbarButton[4]))
			{
				int confirm=JOptionPane.showOptionDialog(null,"Do You Want To exit?","Exit Information",JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE,null,null,null);
					if (confirm==0)
							{
							dispose();
							System.exit(0);
						  }	
						  }
//************************************************
		/*else if ((e.getSource()== jmiMonth)||(e.getSource()==toolbarButton[0]))
			{

            Month_Expenditure me = new Month_Expenditure();
			jdp.add(me);	
			jdp.moveToFront(me);
		}
  //**************************************************
			else if ((e.getSource()== jmiReport)||(e.getSource()==toolbarButton[2]))
			{
			JasperReportDemo jrd=new JasperReportDemo();
				jdp.add(jrd);	
				jdp.moveToFront(jrd);
			
			}

			else if ((e.getSource()== jmiPrint)||(e.getSource()==toolbarButton[2]))
			{
			JasperReportDemo1 jrd1=new JasperReportDemo1();
				jdp.add(jrd1);	
				jdp.moveToFront(jrd1);
			
			}



/*


		else if(e.getSource()==jmiCalc)
			{
							  try
								{
								   Runtime r = Runtime.getRuntime();
									r.exec("calc");// not case senstive but takes time
								}
								catch(Exception ee)
								{
								   System.out.println(ee);
									}
			}

		else if(e.getSource()==jmiCal)
			{
			 Nights3 td=new Nights3();
			  jdp.add(td);	
			  jdp.moveToFront(td);
		     }
		else if ((e.getSource()==jmiSeason)||(e.getSource()==toolbarButton[1]))
			//	else if(e.getSource()==jmiSeason)
			{
			// ViewAll va=new ViewAll();
			//  jdp.add(va);	
			//  jdp.moveToFront(va);
			 TableFromDatabase6 td6=new TableFromDatabase6();
			  HKTravels.jdp.add(td6);	
			  td6.moveToFront();	

		     }
		else if(e.getSource()==jmiThought)
			{
    		JOptionPane.showMessageDialog(null,""+new JOptionMessage().getMessage(), "Thought for Today",JOptionPane.PLAIN_MESSAGE);
			}
		else if((e.getSource()==jmiAbout )||(e.getSource()==toolbarButton[3])) 
			{
				new About(null);
     		}
	 else if(e.getSource()==jmiHelp)	
			{
			new Help(this);
			}
     else if ((e.getSource()==jAdmin)) // Administrator menu
			{
/*		JOptionPane.showMessageDialog(null, "You must have Administrator Password to accesss this Feature", "Alert", JOptionPane.WARNING_MESSAGE);
					LoginDialog1 dlg1=new LoginDialog1(null);
							if(!dlg1.succeeded())
									{
										System.out.println("User Cancelled Login");
								  //System.exit(1);
								}

								else	
							   {
*/
						//		System.out.println("user "+dlg1.getLoginName()+" has Logged in");
							
									
						//		Admin smd1=new Admin();	
							//	jdp.add(smd1);	
								//jdp.moveToFront(smd1);
	
			//					   }
	
			//}

//	else if(e.getSource()==jmiWeb )
	//		{
	  //     	 showInBrowser();
		//    }
	}

/*static boolean showInBrowser()
  {
    //String url="www.cambridgeschool.com"; 
    String url1="http://google.com"; 
    String os = System.getProperty("os.name").toLowerCase();
    Runtime rt = Runtime.getRuntime();
    try
    {
            if (os.indexOf( "win" ) >= 0)
            {
              String[] cmd = new String[4];
              cmd[0] = "cmd.exe";   
              cmd[1] = "/C";
              cmd[2] = "start";
              cmd[3] = url1;
              rt.exec(cmd);
            }
           else if (os.indexOf( "mac" ) >= 0)
            {
                rt.exec( "open " + url1);
            }
            else
            {
             String[] browsers = {"epiphany", "firefox", "mozilla", "konqueror",                  "netscape","opera","links","lynx"};
			  StringBuffer cmd = new StringBuffer();
              for (int i=0; i<browsers.length; i++)
              cmd.append( (i==0  ? "" : " || " ) + browsers[i] +" \"" + url1 + "\" ");
              rt.exec(new String[] { "sh", "-c", cmd.toString() });
              }  
        }
    catch (IOException e)
    {
       e.printStackTrace();
        JOptionPane.showMessageDialog(null,
                                            "\n\n The system failed to invoke your default web browser while attempting to access: \n\n " + url1 + "\n\n",
                                            "Browser Error",
                                           JOptionPane.WARNING_MESSAGE);
         return false;
    }
    return true;
  } 
*/

public void menuSelected(MenuEvent e){	}
public void menuDeselected(MenuEvent e){	}
public void menuCanceled(MenuEvent e){  }
	
public static void main(String args[])
{
//new SplashScreen();
//new FlashWindow();
//LoginDialog11 dlg=new LoginDialog11(null);
//WindowUtilities.setNativeLookAndFeel();
//WindowUtilities.setMotifLookAndFeel();
HKTravels mft=new HKTravels();
}
} 
                