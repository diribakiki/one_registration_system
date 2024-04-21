<%-- 
    Document   : batch_data
    Created on : Apr 11, 2024, 5:46:54 PM
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
        <title>batch Page</title>
    </head>
    <body>
        <%
       String batch_id=request.getParameter("batch_id");
       String department_name=request.getParameter("department_name");
       String class_id=request.getParameter("class_id");
       String session_id=request.getParameter("session_id");
           
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into batch(batch_id,department_name,class_id,session_id)"
               + "values('"+batch_id+"','"+department_name+"','"+class_id+"','"+session_id+"')");
       
     
       out.println("bata data is added");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
