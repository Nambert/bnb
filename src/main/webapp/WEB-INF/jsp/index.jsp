<%-- 
    Document   : index
    Created on : Jul 8, 2019, 3:49:46 PM
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
       <a href="${pageContext.request.contextPath}/register">Register</a>
       <a href="${pageContext.request.contextPath}/client/loadClient">Reserve Now!</a>
        <a href="${pageContext.request.contextPath}/host/loadHost">Manage Your Places!</a>
    </body>
</html>
