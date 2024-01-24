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
    width: 80%;
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
    <a href="index.jsp">Home</a>
    <a href="About_us.html">About us</a>
    <a href="Admission.html">Admission</a>
    <a href="Departments.jsp">Department</a>
    <a href="Faculty.jsp">Faculty</a>
    <a href="Contact_us.html">Contact us</a>
    
   

   </div> 
   
  <h2 style="color:maroon;text-align: center;">VIDARBHA YOUTH WELFARE SOCIETY'S</h2>
  <h1 style="color:mediumblue;text-align: center;">Prof.Ram Meghe Institute Of Technology and Research,Badnera</h1>

   <script>

       var images=["prmit2.jpg",
                    "IMG2.jpg"];
    var i=0;
    function slides(){
document.getElementById("slideimage").src = images[i];
if(i<(images.length-1))
i++;
else
i=0;

    }
    setInterval(slides,2000)

   </script>

<div class="slideshow">

    <img src="prmit2.jpg" alt="prmit2.jpg" id="slideimage";>
</div> 


<marquee style="color: darkmagenta;font-size: 12pt;">Thank you for visiting our website</marquee>

</body>
</html>