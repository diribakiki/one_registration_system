<%-- 
    Document   : notice_data
    Created on : Apr 11, 2024, 3:30:15 PM
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
        <title>notice Page</title>
    </head>
    <body>
        <%
       String notice_id=request.getParameter("notice_id");
       String noti_title=request.getParameter("notice_title");
       String notice_discription=request.getParameter("n_discription");
       String publish_date=request.getParameter("publish_date");
           
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into notice(notice_id,notice_title,n_discription,publish_date)"
               + "values('"+notice_id+"','"+noti_title+"','"+notice_discription+"','"+publish_date+"')");
       
     
       out.println("notice is stored");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
