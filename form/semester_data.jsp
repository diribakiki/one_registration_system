<%-- 
    Document   : semester
    Created on : Apr 9, 2024, 11:45:00 AM
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
        <title>JSP Page</title>
    </head>
    <body>
       <%
       int semid=Integer.parseInt(request.getParameter("sem_id"));
       String sname=request.getParameter("sem_name");
      
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into semester(sem_id,sem_name)values('"+semid+"','"+sname+"')");
        
     
       out.println("data is inserted");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
