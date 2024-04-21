<%-- 
    Document   : Adminpage
    Created on : March 6, 2024, 12:32:51 PM
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online school registration portal </title>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600' rel='stylesheet' type='text/css'>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<div align="left">
			
                       
					<div class="entry"> <a href="#" class="image imager">
                                          <img src="images/logout.jpeg" width="50" height="85"alt="" /></a>
					</div>
					</div>	
    </head>
    <body>
        <%
            String username=(String)session.getAttribute("username");
        %>
         <a href ="Logout.jsp">logout</a></h>
        <h1 align="center">Welcome to Admin Page!</h1>
        	<h1><a href="#">Online registration portal</a></h1>
				
		
	<!-- end #header -->
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="http://localhost:8080/test2/index.html">Homepage</a></li>
                        <li><a href="http://localhost:8080/test2/form/addTeacher.jsp">add Teachers</a></li>
			<li><a href="http://localhost:8080/test2/form/student.jsp">Students registration form</a></li>
			<li><a href="http://localhost:8080/Online_Registration_Portal/Form1/Course.jsp"> Subjects form</a></li>
                        <li><a href="http://localhost:8080/Online_Registration_Portal/Form1/addTeacher.jsp">Teachers registration form</a></li>
		</ul>
        <br/><br/>
					
	<marquee direction="left" behavior="alternate" width="1000px;" height="1000px;" style="margin-right: -50px;">
           
             <img src="/images/school1.jpeg"width="500" height="200" alt="UWEZO'S Community Initiative Center"/>         
             <img src="images/school2.jpeg"width="500" height="200" alt="Ethiopia Election logo"/>
             <img src="images/school3.jpeg"width="500" height="200" alt="Old manual system for registration"/>
            <img src="images/school4.jpeg"width="500" height="200" alt="Old manual system during Registration system"/>
             <img src="images/i2.jpeg"width="500" height="200" alt="Old manual system for registration"/></a>
           </marquee>
	
	</div >	
    </body>
</html>
