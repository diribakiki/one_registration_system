<%-- 
    Document   : admin_data
    Created on : Apr 11, 2024, 6:00:34 PM
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
        <title>admin Page</title>
    </head>
    <body>
         <%
       String admin_id=request.getParameter("admin_id");
       String admin_name=request.getParameter("admin_name");
       String admin_email=request.getParameter("admin_email");
       String admin_phone=request.getParameter("admin_phone");
           
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into admin(admin_id,admin_name,admin_email,admin_phone)"
               + "values('"+admin_id+"','"+admin_name+"','"+admin_email+"','"+admin_phone+"')");
       
     
       out.println("admin data is added");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
