<%-- 
    Document   : congrats
    Created on : Jul 29, 2019, 9:28:03 PM
    Author     : Kosta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Congratulations ${username} you made a reservation!</h1>
        
        <a href="${pageContext.request.contextPath}/client/loadClient">Go to start</a>
        
    </body>
</html>
