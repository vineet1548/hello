package config;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Configuration implements ServletContextListener {

	public static final Connection conn=getConnection();

	private static Connection getConnection() {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("DB CONNECTED");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root" , "vineetsoni1548");
		}catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("DB ONNECTION FAILURE");
		}
		
		return null;
	}
	public void contextDestroyed(ServletContextEvent sce)
	{
	try {
	conn.close();
	System.out.println("DB DISCONNECTED");
		
	}
	catch(Exception ex) {
		ex.printStackTrace();
		System.out.println("DB CONNECTED FAILURE");
	}
	}
}
