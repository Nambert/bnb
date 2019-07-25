<%-- 
    Document   : viewStorages
    Created on : Jul 21, 2019, 1:11:31 PM
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
        <h1>View Storages</h1>
        <table>
            <th>ADDRESS</th>
            <th>POSTAL CODE</th>
            <th>SPACE</th>
            <th>UPDATE</th>
            <th>DELETE</th>
                <c:forEach var = "i" items="${list}">

                <tr> 
                    <td>
                        <c:out value="${i.adress}"/>
                    </td>
                    <td>
                        <c:out value="${i.postalCode}"/>
                    </td>
                    <td>
                        <c:out value="${i.space}"/>
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
        <button><a href="/host">home</a></button>
    </body>
</html>
