<%-- 
    Document   : teacher-info_data
    Created on : Apr 11, 2024, 12:30:35 PM
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
        <title>teacher information Page</title>
    </head>
    <body>
         <%
       String teach_id=request.getParameter("teacher_id");
       String teach_name=request.getParameter("teacher_name");
       String teach_eamil=request.getParameter("teacher_eamil");
       String gender=request.getParameter("gender");
       String phone_number=request.getParameter("phone_number");
       String addr=request.getParameter("address");
       String subj_id=request.getParameter("subj_id");
       String join_date=request.getParameter("join_date");
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into teacher_info(teacher_id,teacher_name,teacher_eamil,gender,phone_number,address,subj_id,join_date)"
               + "values('"+teach_id+"','"+teach_name+"','"+teach_eamil+"','"+gender+"','"+phone_number+"','"+addr+"','"+subj_id+"','"+join_date+"')");
       
     
       out.println("teacher information is recorded");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
