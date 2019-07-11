<%-- 
    Document   : insertUser
    Created on : Jul 11, 2019, 8:01:34 PM
    Author     : Kosta
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form:form method="POST" modelAttribute="user" action="${pageContext.request.contextPath}/doRegister">
            <table>
                <tr>
                    <td>USERNAME</td>
                    <td><form:input path="username" /></td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                    <td><form:input path="password" /></td>
                </tr>
                <tr>
                    <td>FIRSTNAME</td>
                    <td><form:input path="firstname" /></td>
                </tr>
                <tr>
                    <td>LASTNAME</td>
                    <td><form:input path="lastname" /></td>
                </tr>
                <tr>
                    <td>EMAIL</td>
                    <td><form:input path="email" /></td>
                </tr>
            </table>
        <tr><input type="submit"></tr>

</form:form>

<button><a href="/bnb">home</a></button>
    </body>
</html>
