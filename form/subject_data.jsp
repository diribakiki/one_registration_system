<%-- 
    Document   : subject_data
    Created on : Apr 11, 2024, 12:07:33 PM
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
        <title>subject Page</title>
    </head>
    <body>
       <%
       String subj_id=request.getParameter("Subj_id");
       String subj_name=request.getParameter("Subj_name");
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into subject(Subj_id,Subj_name)"
               + "values('"+subj_id+"','"+subj_name+"')");
       
     
       out.println("subject is recorded");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
