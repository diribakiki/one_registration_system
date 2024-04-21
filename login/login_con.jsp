

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import ="javax.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert</title>
    </head>
    <body>
        <form action="http://localhost:8080/Online_Registration_Portal/Login/login.html" method="POST">
        </form>
       <%
       String name=request.getParameter("name");
       String password=request.getParameter("password");
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into register(name,password)values('"+name+"','"+password+"')");
        
     
       out.println("data is inserted");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
