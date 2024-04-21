<%-- 
    Document   : users_data
    Created on : Apr 11, 2024, 2:27:40 PM
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
        <title>users Page</title>
    </head>
    <body>
        <%
       String user_id=request.getParameter("user_id");
       String user_name=request.getParameter("user_name");
       String password=request.getParameter("password");
       String role_id=request.getParameter("role_id");
       String eamil=request.getParameter("email");
       String phone=request.getParameter("phone");
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into users(user_id,user_name,password,role_id,email,phone)"
               + "values('"+user_id+"','"+user_name+"','"+password+"','"+role_id+"','"+eamil+"','"+phone+"')");
       
     
       out.println("users is added");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
