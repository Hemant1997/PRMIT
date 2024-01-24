<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
    background-image: url(prmit4.jpg);
    background-size: cover;
    background-attachment: fixed;
}
.navbar{
    overflow:hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;

}
.navbar a{
    float: left;
    font-size:16px;
    color:white;
    text-align: center;
    padding: 14px 16px;
    text-decoration:none;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="navbar">
<a href="Admin.jsp">Home</a>
    <a href="NewStudent.jsp">Student Registration</a>
    <a href="Attendance.jsp">Attendance</a>
    <a href="Fees.jsp">Fees management</a>
    <a href="Emarks.jsp">Exam marks</a>

    
   
   </div> 
 <%
String uid;
uid=String.valueOf(session.getAttribute("userid"));

%>

Welcome : <%=uid%>
<% 
if(session.getAttribute("userid")==null)
		response.sendRedirect("Failure.jsp");
%>
 <br><br><br>
<a href="Logout.jsp">Logout</a>

</body>
</html>