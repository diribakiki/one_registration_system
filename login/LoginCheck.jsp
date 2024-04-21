<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<html>    
    <head>         
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>login page </title>    
    </head>    
    <body>        
        <%  
            String username=request.getParameter("username");        
            String password=request.getParameter("password");        
            if((username.equals("admin") && password.equals("Admin")))            
            {             
session.setAttribute("username",username);             
response.sendRedirect("http://localhost:8080/Online%20school%20registration%20system/form/admin.jsp");             
    }        
        else if((username.equals("student") && password.equals("Student")))            
            {             
session.setAttribute("username",username);             
response.sendRedirect("http://localhost:8080/Online%20school%20registration%20system/form/student.jsp");    
            
            }    
       else if((username.equals("teacher") && password.equals("Teacher")))            
            {             
session.setAttribute("username",username);             
response.sendRedirect("http://localhost:8080/Online%20school%20registration%20system/form/addTeacher.jsp");    
            
            }  
       
            else if((username.equals("users") && password.equals("Users")))            
            {             
session.setAttribute("username",username);             
response.sendRedirect("http://localhost:8080/Online%20school%20registration%20system/form/users.jsp");    
            
            }  
            else if((username.equals("registral") && password.equals("Registral")))            
            {             
session.setAttribute("username",username);             
response.sendRedirect("#");    
            
            }  
            else if((username.equals("department") && password.equals("Department")))            
            {             
session.setAttribute("username",username);             
response.sendRedirect("#");    
            
            }  
            else if((username.equals("library") && password.equals("Library")))            
            {             
session.setAttribute("username",username);             
response.sendRedirect("#");    
            
            }  
            else  
                
                response.sendRedirect("Error.jsp");        
            %>     
    </body> 
</html>