<%-- 
    Document   : reservation
    Created on : Jul 22, 2019, 3:09:24 PM
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
        
        <table>
            <tr>
                <th>
                    Address
                </th>
                <th>
                    Postal Code
                </th>
                <th>
                    Available Space
                </th>
            </tr>
            <c:forEach var="storages" items="${storages}">
                <tr>
                    <td>${storages.adress}</td>
                    <td>${storages.postalCode}</td>
                    <td>${storages.space}</td>
                </tr> 
            </c:forEach>
        </table>

    </body>
</html>
