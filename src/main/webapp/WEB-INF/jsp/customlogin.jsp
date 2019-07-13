<%-- 
    Document   : login
    Created on : Jul 13, 2019, 4:36:48 PM
    Author     : Haris
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form method="POST" action="dologin">
              <input name="username" type="text" placeholder="Username"/>
            <input name="password" type="password"  placeholder="Password"/>
            <button  type="submit">Log In</button>
            </form>
    </body>
</html>
