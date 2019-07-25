<%-- 
    Document   : welcome
    Created on : Jul 8, 2019, 4:40:33 PM
    Author     : Haris
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <a href="${pageContext.request.contextPath}/registerClient">Register</a> /
        <a href="${pageContext.request.contextPath}/registerHost">Become a Host</a><br>
        <a href="${pageContext.request.contextPath}/customlogin">Login</a>
    </body>
</html>
