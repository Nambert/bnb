<%-- 
    Document   : host
    Created on : Jul 13, 2019, 5:32:23 PM
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
        <h1>Hello host!</h1>
        <a href="${pageContext.request.contextPath}/insertCity">Insert City</a>
        <a href="${pageContext.request.contextPath}/createStorage">Create Storage</a>
        <a href="${pageContext.request.contextPath}/viewCities">View Cities</a>
    </body>
</html>
