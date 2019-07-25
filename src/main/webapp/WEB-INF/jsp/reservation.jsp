<%-- 
    Document   : reservation
    Created on : Jul 22, 2019, 3:09:24 PM
    Author     : Haris
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
           <form:form method="POST" modelAttribute="reservation" action="${pageContext.request.contextPath}/client/reserveSlot">
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
                     <form:select path="storageId">
                            <form:option value="-1">Select shop</form:option>
                            <form:options items="${storages}" itemLabel="${storages.adress}" itemValue="${storages.id}" />
                        </form:select>
                </tr>
            </table>
        <tr><input type="submit"></tr>

</form:form>

    </body>
</html>
