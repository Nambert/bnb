<%-- 
    Document   : viewMyReservations
    Created on : Aug 1, 2019, 7:39:30 PM
    Author     : Kosta
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
                    Starts
                </th>
                <th>
                    Ends
                </th>
                <th>
                    Amount of luggage
                </th>
                <th>
                    Cost
                </th>
               
            </tr>
            <c:forEach var="reservations" items="${myreservations}">
                <tr>
                    <td>${reservations.storageId.adress}</td>
                    <td>${reservations.start}</td>
                    <td>${reservations.end}</td>
                    <td>${reservations.amount}</td>
                    <td>${reservations.cost}</td>
                    
                </tr> 
            </c:forEach>
        </table>
    </body>
</html>
