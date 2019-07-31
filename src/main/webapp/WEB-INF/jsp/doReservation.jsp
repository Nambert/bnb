<%-- 
    Document   : doReservation
    Created on : Jul 31, 2019, 3:21:48 PM
    Author     : Kosta
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
        <form:form method="POST" modelAttribute="reservation" action="${pageContext.request.contextPath}/client/doReserve">
            <table>
                <tr>
                    <td>
                      Address:  ${storage.adress}
                    </td>
                </tr>
                <tr>
                    <td>
                        Starts: ${reservation.start}
                    </td>
                </tr>
                <tr>
                    <td>

                        Ends: ${reservation.end}
                    </td>
                </tr>
                <tr>
                    <td>

                        Amount of luggage: ${reservation.amount}
                    </td>
                </tr>
                <tr>
                    <td>

                        Cost:  ${reservation.cost}
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Finalize your Reservation!">
        </form:form>
    </body>
</html>
