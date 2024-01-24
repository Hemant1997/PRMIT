package myservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybeans.DBConnector;

/**
 * Servlet implementation class Collect
 */
@WebServlet("/Collect")
public class Collect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Collect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		int roll=Integer.parseInt(request.getParameter("roll"));
		String name=request.getParameter("name");
		double fees=Double.parseDouble(request.getParameter("fee"));
		
		
		
		try {
			Connection con;
			 PreparedStatement pst;
		DBConnector dbcon=new DBConnector();
		 con=dbcon.getDbcon();
		 pst= con.prepareStatement("insert into fees values(?,?,?)");
		 pst.setInt(1,roll);
         pst.setString(2,name);
		 pst.setDouble(3,fees);
		 
	int	n=pst.executeUpdate();
		if(n>0)
		{
			out.print("fees updated Successfully...");
		}
		else
		{
			out.println("something went wrong");
		}
		
	}
		catch(Exception e)
		{
			System.out.println(e);
		}

}
	}


