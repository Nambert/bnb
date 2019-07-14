<%-- 
    Document   : viewCities
    Created on : Jul 14, 2019, 4:26:56 PM
    Author     : Kosta
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View Cities</h1>
        <table>
            <c:forEach var = "i" items="${list}">
                <th>ID</th>
                <th>NAME</th>
                <th>UPDATE</th>
                <th>DELETE</th>
                <tr> 
                    <td>
                        <c:out value="${i.id}"/>
                    </td>
                    <td>
                        <c:out value="${i.name}"/>
                    </td>
                    <td>
                        <button><a href="${pageContext.request.contextPath}/update/${i.id}">Update</a></button>
                    </td>
                    <td>
                        <button><a href="${pageContext.request.contextPath}/delete/${i.id}">Delete</a></button>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <button><a href="/bnb">home</a></button>
    </body>
</html>
