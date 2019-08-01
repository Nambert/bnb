<%-- 
    Document   : client
    Created on : Jul 22, 2019, 2:18:35 PM
    Author     : Haris
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client Page</title>

    </head>
    <body>
        <h1>Hello ${username}!</h1><br>

        <h1>Start your Reservation!</h1><br>

        <h3>Choose City</h3>
        <a href="${pageContext.request.contextPath}/client/1">Athens</a>
        <a href="${pageContext.request.contextPath}/client/3">Thessaloniki</a>
        <a href="${pageContext.request.contextPath}/client/viewMyReservations">View my reservations</a>
        <c:url var="logoutUrl" value="/j_spring_security_logout" />
        <form action="${logoutUrl}" id="logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />
        </form>
        <a href="#" onclick="document.getElementById('logout').submit();">Logout</a>

        <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
            <input type="hidden" name="cmd" value="_s-xclick" />
            <input type="hidden" name="hosted_button_id" value="F9U24WQZFMHNN" />
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
            <img alt="" border="0" src="https://www.sandbox.paypal.com/en_GR/i/scr/pixel.gif" width="1" height="1" />
        </form>
    </body>
</html>
