<%-- 
    Document   : insertCity
    Created on : Jul 14, 2019, 12:21:49 PM
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
        <h1>Insert City</h1>
        <form:form method="POST" modelAttribute="city" action="${pageContext.request.contextPath}/doInsertCity">
            <table>
                <tr>
                    <td>ID</td>
                    <td><form:input path="id" /></td>
                    <td>NAME</td>
                    <td><form:input path="name" /></td>
                </tr>

            </table>
        <tr><input type="submit"></tr>
    </form:form>


<button><a href="/bnb">home</a></button>
</body>
</html>
