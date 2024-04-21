
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
       String Student_id=request.getParameter("Student_id");
       String Student_name=request.getParameter("Student_name");
       String Course_id=request.getParameter("Course_id");
       String Roll_id=request.getParameter("Roll_id");
       String Gender=request.getParameter("Gender");
       String Age=request.getParameter("Age");
       String Date_of_Birth=request.getParameter("DOB");
       String Father_name=request.getParameter("F_name");
       String Mother_name=request.getParameter("M_name");
       String Telephone_no=request.getParameter("Te_no");
       String Mobile_no=request.getParameter("Mo_no");
       String present_address=request.getParameter("Pre_address");
       String Perment_address=request.getParameter("per_address");
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into student(Student_id,Student_name,Course_id,Roll_id,Gender,Age,DOB,F_name,M_name,Te_no,Mo_no,Pre_address,per_address)"
               + "values('"+Student_id+"','"+Student_name+"','"+Course_id+"','"+Roll_id+"','"+Gender+"','"+Age+"','"+Date_of_Birth+"','"+Father_name+"','"+Mother_name+"','"+Telephone_no+"','"+Mobile_no+"','"+present_address+"','"+Perment_address+"')");
       
     
       out.println("Student is added");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
