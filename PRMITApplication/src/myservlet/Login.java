package myservlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybeans.DBConnector;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id,pass,ty;
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
        id=request.getParameter("username");
        pass=request.getParameter("pass");
		try
		{
			DBConnector dbcon=new DBConnector();
			con=dbcon.getDbcon();
		    pst=con.prepareStatement("select * from users where userid=? and password=?");
			pst.setString(1,id);
			pst.setString(2, pass);
			rs=pst.executeQuery();
			if(rs.next()) {
				HttpSession ses=request.getSession(true);
				ses.setAttribute("userid", id);
				ty=rs.getString("usertype");
				if(ty.equals("admin")) {
					response.sendRedirect("Admin.jsp");
				}
				else
				{
					response.sendRedirect("Student.jsp");
				}
				
			}
			else
			{
				response.sendRedirect("Failure.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
