<%-- 
    Document   : session_data
    Created on : Apr 11, 2024, 3:15:21 PM
    Author     : hp
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>session Page</title>
    </head>
    <body>
        <%
       String session_id=request.getParameter("session_id");
       String session_year=request.getParameter("session_year");
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into session(session_id,session_year)"
               + "values('"+session_id+"','"+session_year+"')");
       
     
       out.println("session is recorded");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
