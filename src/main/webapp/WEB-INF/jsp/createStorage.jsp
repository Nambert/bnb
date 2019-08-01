<%-- 
    Document   : createStorage
    Created on : Jul 14, 2019, 11:52:17 AM
    Author     : Kosta
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Storage</title>
    </head>
    <body>
        <h1>Create Storage</h1>
        <form:form method="POST" modelAttribute="storage" action="${pageContext.request.contextPath}/doCreateStorage">
            <table>
                <tr>
                    <td>ADDRESS</td>
                    <td><form:input path="adress" /></td>
                </tr>
                <tr>
                    <td>POSTAL CODE</td>
                    <td><form:input path="postalCode" /></td>
                </tr>
                <tr>
                    <td>SPACE</td>
                    <td><form:input path="space" /></td>
                </tr>
                <tr>
                    <td><form:input type="hidden" path="ownerId" value="${id}" /></td>
                </tr>
                <tr>
                    <td>
                        <form:select path="cityId">
                            <form:option value="-1">Select City</form:option>
                            <form:options items="${list}" itemLabel="name" itemValue="id" />
                        </form:select>
                    </td>
                </tr>
            </table>
        <tr><input type="submit"></tr>

</form:form>
    </body>
</html>
