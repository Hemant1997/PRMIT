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
 * Servlet implementation class Present
 */
@WebServlet("/Present")
public class Present extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Present() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String roll=request.getParameter("roll");
		String name=request.getParameter("name");
		String fh=request.getParameter("first");
		String sh=request.getParameter("second");
		
		
		try {
			Connection con;
			 PreparedStatement pst;
		DBConnector dbcon=new DBConnector();
		 con=dbcon.getDbcon();
		 pst= con.prepareStatement("insert into attendance values(?,?,?,?)");
		 pst.setString(1,roll);
         pst.setString(2,name);
		 pst.setString(3,fh);
		 pst.setString(4,sh);
	int	n=pst.executeUpdate();
		if(n>0)
		{
			out.print("Attendance is filled");
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