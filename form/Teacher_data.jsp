
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
       String Teacher_id=request.getParameter("Teacher_id");
       String Tname=request.getParameter("Teacher_name");
       String Gender=request.getParameter("Gender");
       String Email=request.getParameter("eamil");
       String Phone_number=request.getParameter("phone_number");
       String Address=request.getParameter("address");
       String Sub_id=request.getParameter("Subject_id");
       String Join_date=request.getParameter("join_date");
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into teacher(Teacher_id,Teacher_name,Gender,eamil,phone_number,address,Subject_id,join_date)"
               + "values('"+Teacher_id+"','"+Tname+"','"+Gender+"','"+Email+"','"+Phone_number+"','"+Address+"','"+Sub_id+"','"+Join_date+"')");
       
     
       out.println("Teacher is added");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
