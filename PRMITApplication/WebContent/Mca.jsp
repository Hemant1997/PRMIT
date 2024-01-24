<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
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
        .slideshow{
            width: 60%;
            height: 500px;
            margin:auto;
        }
        #slideimage{
            width: 100%;
            height: 500px;
            
        }
            </style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#C0C0C0">

  
        
    <div class="navbar">
        <a href="home_page.html">Home</a>
        <a href="about_us.html">About us</a>
        <a href="Admission.html">Admission</a>
        <a href="Departments.jsp">Department</a>
        <a href="Faculty.jsp">Faculty</a>
        <a href="home_page.html">Contact us</a>
        
       
       </div> 
<h2 style="color:maroon;text-align: center;">VIDARBHA YOUTH WELFARE SOCIETY'S</h2>
        <h1 style="color:mediumblue;text-align: center;">Prof.Ram Meghe Institute Of Technology,Badnera</h1>
      <form name="frm" method="post" action="Login">
          <table>
              <tr>   
                <td>  
                username
                </td>
                <td>
                     <input type="text" name="username" required>
                    </td>
              </tr>

     <tr>
         <td>
             password
         </td>
         <td>
             <input type="password" name="pass" required>
         </td>
     </tr>
     

     <td>
         <input type="submit" value="Login">
     <td>
     <tr>
    </table>
      </form>
</body>
</html>