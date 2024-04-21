<%-- 
    Document   : grade_forstudent
    Created on : Apr 16, 2024, 10:24:50 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>grade result Page</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
     <script src="valid.js" type="text/javascript"></script>
        <link rel="stylesheet" href="style.css" type="text/css" /> 
    </head>
      <body bgcolor="#735b3d" leftmargin="25" topmargin="25" marginwidth="25" marginheight="25">
        <table id="container" width="900" border="0" cellpadding="0" cellspacing="0">
        <div id="header">
	<div id="logo">
		<h1><a href="#">your grade result is here!<sup></sup></a></h1>
		<h2>Designed by Hidare final year software engineering!</h2>
	</div>
	
</div>
             <tr bordercolor =white>
                                <td width="900" height="16" colspan="4">
                                    <img src="images/spacer.gif" width="900" height="16" alt=""> 
                            <marquee behavior =alternate direction=right> <font size=3 color=blue> <b> <font size=5>W</font>elcome to the <font size=5>O</font>nline<font size=5>R</font>egistration <font size=5>p</font>ortal </font></td>
                                    </tr>
                                    </td>
                                    </tr>
        <tr>
                                     
                                          
                                        <td id="contents" width="540" height="522" align="left" valign="top"><br>
        
       <%
       String sl=(String)session.getAttribute("adminname");
        String a[]=new String[100];
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("SELECT grade,COUNT(Grade)as r FROM grade GROUP BY Grade");
      int i=0;
      while(rs.next()){
          a[i]=rs.getString("r");
          i++;
      }  
%>
<div class="back_image"> 
    <div class="reg" style="padding-top: 35px">
      
        <pre>
<marquee direction="right" behavior="alternate" width="1000px;" height="1000px;" style="margin-right: -50px;">
            <img src="images/school1.jpeg" width="200" height="100"/> <%=a[2]%>
            <img src="images/school2.jpeg" width="200" height="100"/> <%=a[1]%>
            <img src="images/school3.jpeg" height="100" width="200"/> <%=a[0]%>
            <img src="images/school4.jpeg" height="100" width="200"/> <%=a[3]%>
</marquee>
        </pre>
  
    </div>
    </div>
            </table>
    </body>
</html>
    </body>
</html>
