<%-- 
    Document   : logout
    Created on : 9 Aug, 2021, 1:44:25 PM
    Author     : MRITYUNJAY UPADHYAY
    Project    : MMMUT
--%>
 
<%
    
    session.invalidate();
    
    
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MMMUT</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp'",1000);
            }
            
        </script>
    </head>
    <body bg="black" onload="logout()">
        
         
    </body>
</html>

