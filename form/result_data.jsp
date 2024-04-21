<%-- 
    Document   : result_data
    Created on : Apr 2, 2024, 5:32:37 AM
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
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <script src="valid.js" type="text/javascript"></script>
        <link rel="stylesheet" href="style.css" type="text/css" />
    <body bgcolor="#735b3d" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    </head>
    <body>
         <form action="grade_data.jsp" method="post">
      <%
String c = request.getParameter("c");
String j = request.getParameter("java");
String n = request.getParameter("net");
String v = request.getParameter("vb");
String d = request.getParameter("dbms");
if(!(c == null || c.isEmpty()))
{
    int cmarks = Integer.parseInt(c);
    int jmarks = Integer.parseInt(j);
    int nmarks = Integer.parseInt(n);
    int vmarks = Integer.parseInt(v);
    int dmarks = Integer.parseInt(d);

    int total = cmarks+jmarks+nmarks+vmarks+dmarks;
    int avg = (total)/5;
    int percent = avg;
    String grade ="";

    if(percent < 40){
        grade = "F";
        //request.setAttribute("grade", grade);
    }
    else if(percent >= 40 && percent <=44){
        grade = "D";
    }
    else if(percent >=45 && percent <=49){
        grade = "D+";
    }
    else if(percent >=50 && percent <=54){
        grade = "C-";
    }
    else if(percent >=55 && percent<=59){
        grade = "C";
    }
    else if(percent >=60 && percent <=64){
        grade = "C+";
    }
    else if(percent >=65 && percent<=69){
        grade = "B-";
    }
    else if(percent >=70 && percent <=74){
        grade = "B";
    }
    else if(percent >=75 && percent <=79){
        grade = "B+";
    }
    else if(percent >=80 && percent <=84){
        grade = "A";
    }
    else if (percent >=85 && percent <=100){
        grade = "A+";
    }
    request.setAttribute("Grade", grade);
    
       String Grade_id=request.getParameter("Grade_id");
       String Semid=request.getParameter("semester_id");
       String Stuid=request.getParameter("Student_id");
       String Subjid=request.getParameter("Subject_id");
       String Marks=request.getParameter("Marks");
       String Gponit=request.getParameter("Grade_point");
    //   String grade=request.getParameter("Grade");
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ online_student_registration" ,"root", "root123");
       Statement st=con.createStatement();
       st.executeUpdate("insert into grade(Grade_id,semester_id,Student_id,Subject_id,Marks,Grade_point,Grade)"
               + "values('"+Grade_id+"','"+Semid+"','"+Stuid+"','"+Subjid+"','"+Marks+"','"+Gponit+"','"+grade+"')");
       
     
       out.println("student grade successful is grading and registered!");

       }catch(Exception e){
       out.println(e);
       }
    %>    
    <table>
        <tr>
    <td><b>Grade id</b></td><td></td>
    <td align="center"><%=request.getParameter("Grade_id") %>
    </tr>
    <tr>
    <td><b>semester id</b></td><td></td>
    <td align="center"><%=request.getParameter("semester_id") %>
    </tr>
        <tr>
    <td><b>Student id</b></td><td></td>
    <td align="center"><%=request.getParameter("Student_id") %>
    </tr>
        <tr>
    <td><b>subject id </b></td><td></td>
    <td align="center"><%=request.getParameter("Subject_id") %>
    </tr>
    <tr>
    <td><b>marks</b></td><td></td>
    <td align="center"><%=request.getParameter("Marks") %>
    </tr>
    <tr>
    <td><b>Aggregate Marks</b></td><td></td>
    <td align="center"><%=total %></td>
    </tr>
    <tr>
    <td><b>Grade</b></td><td></td>
    <td align="center"><%=grade %></td>    
    </tr>
    </table>
    <%    
        
}

%>

</body>

</html>
