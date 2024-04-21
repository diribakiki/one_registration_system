<%-- 
    Document   : student_info_data
    Created on : Apr 11, 2024, 9:57:18 AM
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
        <title>student information Page</title>
    </head>
    <body>
       <%
       String s_id=request.getParameter("S_id");
       String s_name=request.getParameter("S_name");
       String c_id=request.getParameter("C_id");
       String roll_id=request.getParameter("Roll_id");
       String sess_id=request.getParameter("sess_id");
       String gender=request.getParameter("Gender");
       String dob=request.getParameter("dob");
       String age=request.getParameter("age");
       String f_name=request.getParameter("f_name");
       String m_name=request.getParameter("m_name");
       String telephone_no=request.getParameter("telephone_no");
       String mobile_no=request.getParameter("mobile_no");
       String email=request.getParameter("email");
       String pre_addre=request.getParameter("Pre_address");
       String per_add=request.getParameter("per_address");
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into student_info(S_id,S_name,C_id,Roll_id,sess_id,Gender,dob,age,f_name,m_name,telephone_no,mobile_no,email,Pre_address,per_address)"
               + "values('"+s_id+"','"+s_name+"','"+c_id+"','"+roll_id+"','"+sess_id+"','"+gender+"','"+dob+"','"+age+"','"+f_name+"','"+m_name+"','"+telephone_no+"','"+mobile_no+"','"+email+"','"+pre_addre+"','"+per_add+"')");
       
     
       out.println("student information is recorded");

       }catch(Exception e){
       out.println(e);
       }
%>
    </body>
</html>
