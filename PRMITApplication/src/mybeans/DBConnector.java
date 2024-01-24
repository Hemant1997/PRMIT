package mybeans;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
	private Connection dbcon;
	
	public Connection getDbcon() {
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbcon=DriverManager.getConnection("jdbc:mysql://localhost:3306/prmit?user=root&password=hemant1997");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return dbcon;
	}

}
