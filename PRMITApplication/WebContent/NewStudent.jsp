<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
      padding:0px;
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
 <h1> ........Registration Form.....</h1>
    <div class="content">
    </div>
<form action="Register" method="post">
<table>
<tr>
        <td>
            Student_id
        </td>
        <td>
            <input type="text" name="stid">
        </td>
    </tr>
<!-- name  -->
    <tr>
        <td>
            Name
        </td>
        <td>
            <input type="text" name="nm">
        </td>
    </tr>
    <tr>
        <td>
            Email
        </td>
        <td>
            <input type="text" name="email">
        </td>
    </tr>
    <tr>
        <td>
            Mob no
        </td>
        <td>
            <input type="text" name="mob">
        </td>
    </tr>
    <tr><td>Gender</td>
        <td>
            <input type="radio" name="Gender" value="male"/>
            Male
            <input type="radio" name="Gender" value="female/">
            Female
        </td>
        
    </tr>
    <tr>
        <td>

        </td>
    </tr>
    <tr>
        <td>Date of Birth(DOB)</td>
        <td>
        <select name="birthday" id="Birthday_Day">
        <option value="-1">Day:</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
        </select>
        <select name="birthmonth" id="Birthday_Month">
        <option value="-1">Month:</option>
        <option value="January">Jan(1)</option>
        <option value="February">Feb(2)</option>
        <option value="March">Mar(3)</option>
        <option value="April">Apr(4)</option>
        <option value="May">May(5)</option>
        <option value="June">Jun(6)</option>
        <option value="July">Jul(7)</option>
        <option value="August">Aug(8)</option>
        <option value="September">Sep(9)</option>
        <option value="October">Oct(10)</option>
        <option value="November">Nov(11)</option>
        <option value="December">Dec(12)</option>
        </select>
        <select name="birthyear" id="Birthday_Year">
        <option value="-1">Year:</option>
        <option value="2019">2019</option>
        <option value="2018">2018</option>
        <option value="2017">2017</option>
        <option value="2016">2016</option>
        <option value="2015">2015</option>
        <option value="2014">2014</option>
        <option value="2013">2013</option>
        <option value="2012">2012</option>
        <option value="2011">2011</option>
        <option value="2010">2010</option>
        <option value="2009">2009</option>
        <option value="2008">2008</option>
        <option value="2007">2007</option>
        <option value="2006">2006</option>
        <option value="2005">2005</option>
        <option value="2004">2004</option>
        <option value="2003">2003</option>
        <option value="2002">2002</option>
        <option value="2001">2001</option>
        <option value="2000">2000</option>
        <option value="1999">1999</option>
        <option value="1998">1998</option>
        <option value="1997">1997</option>
        <option value="1996">1996</option>
        <option value="1995">1995</option>
        <option value="1994">1994</option>
        <option value="1993">1993</option>
        <option value="1992">1992</option>
        <option value="1991">1991</option>
        <option value="1990">1990</option>
        <option value="1989">1989</option>
        <option value="1988">1988</option>
        <option value="1987">1987</option>
        <option value="1986">1986</option>
        <option value="1985">1985</option>
        <option value="1984">1984</option>
        <option value="1983">1983</option>
        <option value="1982">1982</option>
        <option value="1981">1981</option>
        <option value="1980">1980</option>
        </select>
        </td>
        </tr>
        <!------------------------- Address ---------------------------------->
        <tr>
        <td>Address<br /><br /><br /></td>
        <td><textarea name="address" rows="10" cols="50"></textarea></td>
        </tr>
        <!-------------------------- City ------------------------------------->
        <tr>
        <td>City</td>
        <td><input type="text" name="city" maxlength="50" placeholder="city"/>
       
        </td>
        </tr>
        <!----- -------------------- Pin Code-------------------------------------->
        <tr>
        <td>Pin Code</td>
        <td><input type="Number" name="pin" maxlength="6" placeholder="pincode"/>
        
        </td>
        </tr>
        <!---------------------------- State ----------------------------------->
        <tr>
        <td>State</td>
        <td><input type="text" name="state" maxlength="50" placeholder="state"/>
        (Max 50 Characters Allowed)
        </td>
        </tr>
        <!------------------------------ Country --------------------------------->
        <tr>
        <td>Country</td>
        <td><input type="text" name="country" placeholder="country" /></td>
        </tr>
       
        <!--marks-->

        <tr>
            <td>
                10th marks
            </td>
            <td>
            <input type="text" name="temarks"/>
            </td>
            
        </tr>

        <tr>
            <td>
                12th marks
            </td>
            <td>
            <input type="text" name="bemarks"/>
            </td>
           
        </tr>
        <tr>
            <td>
                Bca marks
            </td>
            <td>
            <input type="text" name="bcam"/>
            </td>
            
        </tr>
        <tr>
        <td>
        <input type="submit" value="Submit"/>
        </td>
        </tr>
</table>


</form>

</body>
</html>