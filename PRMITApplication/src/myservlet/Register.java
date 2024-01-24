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

import mybeans.Add;
import mybeans.DBConnector;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String stud_id,name,email,mobno,gender,birthday,birthmonth,birthyear,address,city,pincode,state,country,temarks,bemarks,bcamarks;
	    stud_id=request.getParameter("stid");
		name=request.getParameter("nm");
		email=request.getParameter("email");
		mobno=request.getParameter("mob");
		gender=request.getParameter("gender");
		birthday=request.getParameter("birthday");
		birthmonth=request.getParameter("birthmonth");
		birthyear=request.getParameter("birthyear");
		address=request.getParameter("address");
		city=request.getParameter("city");
		pincode=request.getParameter("pin");
		state=request.getParameter("state");
		country=request.getParameter("country");
		temarks=request.getParameter("temarks");
		bemarks=request.getParameter("bemarks");
		bcamarks=request.getParameter("bcam");
		try {
			PrintWriter out=response.getWriter();
			Connection con;
			 PreparedStatement pst;
		DBConnector dbcon=new DBConnector();
		 con=dbcon.getDbcon();
		 pst= con.prepareStatement("insert into students values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,? )");
		 pst.setString(1, stud_id);
		 pst.setString(2,name);
		 pst.setString(3,email);
		 pst.setString(4,mobno);
		 pst.setString(5,gender);
		 pst.setString(6,birthday);
		 pst.setString(7, birthmonth);
		 pst.setString(8, birthyear);
		 pst.setString(9,address);
		 pst.setString(10,city);
		 pst.setString(11,pincode);
		 pst.setString(12,state);
		 pst.setString(13, country);
		 pst.setString(14, temarks);
		 pst.setString(15,bemarks);
		 pst.setString(16,bcamarks);
		 int n=pst.executeUpdate();
       if(n>0) {
    	   out.print("user registration successful");
       }
       else
       {
    	   out.println("student Registration fail");
       }
	}
	catch(Exception e)
	{
		System.out.println(e);
		
	}

}
}