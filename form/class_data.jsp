<%-- 
    Document   : class_data
    Created on : Apr 11, 2024, 5:31:48 PM
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
        <title>class Page</title>
    </head>
    <body>
        <%
       String class_id=request.getParameter("class_id");
       String class_name=request.getParameter("class_name");
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into class(class_id,class_name)"
               + "values('"+class_id+"','"+class_name+"')");
       
     
       out.println("class is added");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
