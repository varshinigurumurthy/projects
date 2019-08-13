import java.awt.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.swing.*;
import javax.swing.table.*;
 
public class TableFromDatabase extends JInternalFrame 
{
   
	public TableFromDatabase()
    {
    super("All Records");
	
    Vector column = new Vector();
    Vector data = new Vector();
         try
        {
      //	 Class.forName( "com.mysql.jdbc.Driver" );
     //   Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
		//Statement stmt = connection.createStatement();
		
		  Connection con=DBFactory.getConnection();
		  Statement stmt= DBFactory.getStatement(con);
		
		ResultSet rs = stmt.executeQuery("Select * from hkinfo");


		ResultSetMetaData rsmd = rs.getMetaData();
		int columns = rsmd.getColumnCount();

            //  Get column names
         for (int i = 1; i <= columns; i++)
           {
             column.addElement( rsmd.getColumnName(i) );  //add column names to the vector column
   		 System.out.println(rsmd.getColumnName(i));
           }
 
            //  Get row data
            while (rs.next())
            {
                Vector row = new Vector(columns);
                 for (int i = 1; i <= columns; i++)
                {
					 System.out.println("Check:"+columns); //called for each cell of the table
                    row.addElement( rs.getObject(i) );

                }
 
                data.addElement( row );
            }
 
            rs.close();
            stmt.close();
        }
        catch(Exception e)
        {
            System.out.println( e );
        }
 
        //  Create table with database data
 
        JTable table = new JTable(data, column);
		//System.out.println("in internal frame");
		table.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
		table.setSelectionMode(1);

        int v=ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED;
		int h=ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS;
		
        JScrollPane scrollPane = new JScrollPane( table,v, h);
        getContentPane().add( scrollPane);
 
        setClosable(true);
	    setIconifiable(true);
		setMaximizable(true);
	   // setDefaultCloseOperation( EXIT_ON_CLOSE );
        //pack();
	    setSize(800,800);
        setVisible(true);
        //JPanel buttonPanel = new JPanel();
        //getContentPane().add( buttonPanel, BorderLayout.SOUTH );
    }
 
   public static void main(String[] args)
    {
        TableFromDatabase frame = new TableFromDatabase();
        frame.setDefaultCloseOperation( EXIT_ON_CLOSE );
        frame.pack();
		frame.setSize(800,800);
        frame.setVisible(true);
    }
}

