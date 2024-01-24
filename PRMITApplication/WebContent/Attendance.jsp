<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="mybeans.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script language="Javascript" type="text/javascript">
            
            
            function createRequestObject() {
                var tmpXmlHttpObject;
                if (window.XMLHttpRequest) {
                        tmpXmlHttpObject = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
                }
            
                return tmpXmlHttpObject;
            }
            
            
            var http = createRequestObject();
            
            function makeGetRequest() {
                fh=document.frm.first.value;
                sf=document.frm.second.value;
                roll=document.frm.roll.value;
                name=document.frm.name.value;
                http.open('get', 'Present?first=' + fh +'&second=' +sf+'&roll=' +roll+'&name=' +name);
                http.onreadystatechange = processResponse;
                http.send(null);
            }
            
            function processResponse() {
                if(http.readyState == 4){
                    var response = http.responseText;
                    document.getElementById('mess').innerHTML = response;
                }
            }
            
            </script>
<style type="text/css">
body{
    background-image: url(about.png);
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
.content{
  
    width:50%;
    padding:40px;
    margin:100px auto;
    font-family: calibri;
}
</style>

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
   <div class="content">
  
<h2>Mca Attendence</h2>
 
    <form name="frm">
    

        <table>
            <tr>
                <td>
                    Roll no
                </td>
                <td>
                    <input type="text" name="roll">
                </td>
            </tr>
       
       <tr>
           <td>
               Name
           </td>
           <td>
               <input type="text" name="name">
        
           </td>
       </tr>
            <tr>
                <td>
                    First half
                </td>
                <td>
                    <input type="text" name="first">
                </td>
            </tr>
            <tr>
                <td>
                    Second half
                </td>
                <td>
                    <input type="text" name="second">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="Submit" onclick="makeGetRequest()">
                </td>
            </tr>
        </table>
    </form>
</div>
<div id="mess"style="color:deeppink;font-family:Verdana">


</div>
</body>
</html>