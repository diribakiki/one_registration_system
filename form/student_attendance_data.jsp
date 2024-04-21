<%-- 
    Document   : student_attendance_data
    Created on : Apr 2, 2024, 4:53:22 AM
    Author     : hp
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert</title>
    </head>
    <body>
       <%
       String studentA_id=request.getParameter("Student_att_id");
       String S_attendanceD=request.getParameter("student_att_date");
       String Student_id=request.getParameter("Student_id");
       String Status=request.getParameter("Status");
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into Student_attendance(Student_att_id,student_att_date,Status,Student_id)"
               + "values('"+studentA_id+"','"+S_attendanceD+"','"+Student_id+"','"+Status+"')");
       
     
       out.println("student attendance is taken");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
