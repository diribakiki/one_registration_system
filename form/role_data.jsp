<%-- 
    Document   : role_data
    Created on : Apr 11, 2024, 2:58:48 PM
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
        <title>role Page</title>
    </head>
    <body>
        <%
       String role_id=request.getParameter("role_id");
       String role_name=request.getParameter("role_name");
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into role(role_id,role_name)"
               + "values('"+role_id+"','"+role_name+"')");
       
     
       out.println("role is recorded");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
