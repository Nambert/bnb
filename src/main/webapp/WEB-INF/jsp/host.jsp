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
        <h1>Hello ${id}!</h1>
        <a href="${pageContext.request.contextPath}/host/insertCity">Insert City</a>
        <a href="${pageContext.request.contextPath}/host/createStorage">Create Storage</a>
        <a href="${pageContext.request.contextPath}/host/viewCities">View Cities</a><br>
        <a href="${pageContext.request.contextPath}/host/viewMyStorages">View My Storages</a><br>
        <c:url var="logoutUrl" value="/j_spring_security_logout" />
        <form action="${logoutUrl}" id="logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />
        </form>
        <a href="#" onclick="document.getElementById('logout').submit();">Logout</a>

    </body>
</html>
